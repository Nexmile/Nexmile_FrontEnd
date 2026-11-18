import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show RenderAbstractViewport;
import 'package:provider/provider.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/reveal.dart';
import '../../../core/motion/skeleton.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../auth/data/auth_failure.dart';
import '../data/cart_models.dart';
import '../data/menu_filters.dart';
import '../data/storefront_models.dart';
import '../state/cart_controller.dart';
import '../state/storefront_controller.dart';
import 'widgets/catalogue_widgets.dart';
import 'widgets/customise_sheet.dart';
import 'widgets/menu_browser.dart';
import 'widgets/menu_toolbar.dart';

/// One restaurant: its menu, and the basket that belongs to it.
class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key, required this.args});

  final RestaurantArgs args;

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  /// Search, diet, and sort for this visit. Kept here rather than in the
  /// controller: they belong to this one look at this one menu, and the next
  /// restaurant should open unfiltered.
  MenuFilters _filters = MenuFilters.none;

  final TextEditingController _search = TextEditingController();
  final FocusNode _searchFocus = FocusNode();

  /// The top of the results, just under the pinned toolbar.
  final GlobalKey _resultsTop = GlobalKey();

  /// One per section heading, by the section's place in the full menu, so
  /// the Menu button can jump to it.
  final Map<int, GlobalKey> _headings = <int, GlobalKey>{};

  // Worked out once per menu rather than once per keystroke.
  RestaurantMenu? _facetsMenu;
  MenuFacets? _facets;

  @override
  void initState() {
    super.initState();
    _searchFocus.addListener(_onSearchFocus);
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    _searchFocus
      ..removeListener(_onSearchFocus)
      ..dispose();
    _search.dispose();
    super.dispose();
  }

  MenuFacets _facetsOf(RestaurantMenu menu) {
    if (!identical(menu, _facetsMenu)) {
      _facetsMenu = menu;
      _facets = MenuFacets.of(menu);
    }
    return _facets!;
  }

  GlobalKey _headingKey(int index) =>
      _headings.putIfAbsent(index, () => GlobalKey());

  void _setFilters(MenuFilters next) {
    if (next == _filters) return;
    setState(() => _filters = next);
    // Results start from the top of the menu. A filter applied halfway down a
    // long menu would otherwise leave the customer looking at whatever dish
    // happened to slide into that spot.
    WidgetsBinding.instance.addPostFrameCallback((_) => _showResults());
  }

  void _clearFilters() {
    _search.clear();
    _setFilters(MenuFilters.none);
  }

  /// Scrolls back up to the first result, if it has scrolled past. When
  /// [pin] is set, scrolls down to it too, which brings the toolbar up to the
  /// top of the screen.
  void _showResults({bool pin = false}) {
    final BuildContext? top = _resultsTop.currentContext;
    if (!mounted || top == null) return;
    Scrollable.ensureVisible(
      top,
      duration: AppMotion.quick,
      curve: AppMotion.enter,
      alignmentPolicy: pin
          ? ScrollPositionAlignmentPolicy.explicit
          : ScrollPositionAlignmentPolicy.keepVisibleAtStart,
    );
  }

  /// Searching starts with the toolbar at the top and results under it, so
  /// the keyboard covers dishes rather than the field the customer is typing
  /// into.
  void _onSearchFocus() {
    if (_searchFocus.hasFocus) _showResults(pin: true);
  }

  Future<void> _openFilterSheet(RestaurantMenu menu) async {
    _searchFocus.unfocus();
    final MenuFilters? next = await showMenuFilterSheet(
      context: context,
      menu: menu,
      facets: _facetsOf(menu),
      current: _filters,
    );
    // Null means the customer backed out, so the menu stays as it was.
    if (next != null && mounted) _setFilters(next);
  }

  Future<void> _browse(List<MenuMatch> sections) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final int? index = await showMenuSections(
      context: context,
      sections: sections,
      current: _currentSection(sections),
      titleOf: (MenuMatch match) => _sectionTitle(l10n, match.section),
    );
    if (index == null || !mounted) return;
    await _jumpTo(index);
  }

  Future<void> _jumpTo(int index) async {
    final GlobalKey key = _headingKey(index);
    final BuildContext? target = key.currentContext;
    if (target == null) return;
    await Scrollable.ensureVisible(
      target,
      duration: AppMotion.settled,
      curve: AppMotion.enter,
    );
    // Dishes below the screen are only estimated until they are laid out, so
    // a long jump can land a little short. The scroll has laid them out by
    // now, and a second, instant pass lands on the heading exactly.
    final BuildContext? settled = key.currentContext;
    if (!mounted || settled == null || !settled.mounted) return;
    await Scrollable.ensureVisible(settled);
  }

  /// The last section whose heading has scrolled up to the toolbar, or the
  /// first section when none has yet.
  int? _currentSection(List<MenuMatch> sections) {
    if (sections.isEmpty) return null;
    int current = sections.first.index;
    for (final MenuMatch match in sections) {
      final BuildContext? heading = _headings[match.index]?.currentContext;
      final RenderObject? box = heading?.findRenderObject();
      if (heading == null || box == null || !box.attached) continue;
      final double reveal =
          RenderAbstractViewport.of(box).getOffsetToReveal(box, 0).offset;
      if (reveal > Scrollable.of(heading).position.pixels + 1) break;
      current = match.index;
    }
    return current;
  }

  static String _sectionTitle(AppLocalizations l10n, MenuSection section) =>
      section.isUncategorised ? l10n.moreDishesTitle : section.name;

  Future<void> _load() async {
    if (!mounted) return;
    final String id = widget.args.restaurantId;
    await context.read<StorefrontController>().openRestaurant(id);
    if (!mounted) return;
    // Carts are per-restaurant, so this shop's basket is fetched alongside its
    // menu rather than kept globally.
    await context.read<CartController>().load(id);
  }

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  /// Adds one of [item]. Anything with a required option group has to go
  /// through the sheet — the API rejects the bare add with a 422 otherwise.
  Future<void> _add(MenuItem item) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController cart = context.read<CartController>();
    final String restaurantId = widget.args.restaurantId;

    if (item.optionGroups.isNotEmpty) {
      final CustomiseResult? result = await showCustomiseSheet(
        context: context,
        item: item,
      );
      if (result == null || !mounted) return;
      final AuthFailure? failure = await cart.addItem(
        restaurantId,
        menuItemId: item.id,
        quantity: result.quantity,
        optionIds: result.optionIds,
        notes: result.notes,
      );
      if (failure != null) {
        _showError(cart.firstError() ?? failure.message(l10n));
      }
      return;
    }

    final AuthFailure? failure =
        await cart.addItem(restaurantId, menuItemId: item.id);
    if (failure != null) {
      _showError(cart.firstError() ?? failure.message(l10n));
    }
  }

  Future<void> _remove(MenuItem item) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController cart = context.read<CartController>();
    final CartLine? line = cart.soleLineFor(item.id);

    // Split across several option combinations — which one to take away is the
    // customer's call, so send them to the cart rather than guessing.
    if (line == null) {
      Navigator.of(context).pushNamed(
        AppRoutes.cart,
        arguments: CartArgs(restaurantId: widget.args.restaurantId),
      );
      return;
    }

    final AuthFailure? failure = await cart.setQuantity(
      widget.args.restaurantId,
      cartItemId: line.id,
      quantity: line.quantity - 1,
    );
    if (failure != null) {
      _showError(cart.firstError() ?? failure.message(l10n));
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final StorefrontController storefront = context.watch<StorefrontController>();
    final Restaurant? restaurant = storefront.current;
    final RestaurantMenu? menu = storefront.menu;

    if (storefront.isMenuLoading) {
      return Scaffold(
        appBar: AppBar(),
        body: const MenuSkeleton(),
      );
    }

    if (restaurant == null) {
      return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: EmptyState(
            emoji: '📡',
            title: l10n.somethingWentWrong,
            subtitle: (storefront.menuFailure ?? AuthFailure.unknown)
                .message(l10n),
            action: OutlinedButton(onPressed: _load, child: Text(l10n.retry)),
          ),
        ),
      );
    }

    final bool hasMenu = menu != null && !menu.isEmpty;
    final List<MenuMatch> matches =
        hasMenu ? _filters.apply(menu) : const <MenuMatch>[];
    final int shown =
        matches.fold<int>(0, (int n, MenuMatch m) => n + m.items.length);
    final bool narrowed = _filters.hasQuery || _filters.activeCount > 0;
    // Hidden while typing: over the keyboard it would sit on the results.
    final bool canBrowse =
        matches.length > 1 && MediaQuery.viewInsetsOf(context).bottom == 0;

    return Scaffold(
      floatingActionButton:
          canBrowse ? MenuBrowseButton(onPressed: () => _browse(matches)) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: RefreshIndicator(
        color: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.surface,
        displacement: 28,
        onRefresh: _load,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: <Widget>[
            _RestaurantHeader(restaurant: restaurant),
            SliverToBoxAdapter(
              child: _RestaurantSummary(restaurant: restaurant),
            ),
            if (!hasMenu)
              SliverToBoxAdapter(
                child: EmptyState(
                  emoji: '📋',
                  title: l10n.menuEmptyTitle,
                  subtitle: l10n.menuEmptySubtitle,
                ),
              )
            else ...<Widget>[
              const SliverToBoxAdapter(child: SizedBox(height: 12)),
              SliverPersistentHeader(
                pinned: true,
                delegate: MenuToolbarDelegate(
                  height: MenuToolbar.heightFor(context),
                  builder: (BuildContext context, bool raised) => MenuToolbar(
                    search: _search,
                    searchFocus: _searchFocus,
                    filters: _filters,
                    facets: _facetsOf(menu),
                    raised: raised,
                    onChanged: _setFilters,
                    onOpenSheet: () => _openFilterSheet(menu),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: KeyedSubtree(
                  key: _resultsTop,
                  // At zero the empty state below says it, with its own
                  // way back.
                  child: narrowed && shown > 0
                      ? _ResultsLine(count: shown, onClear: _clearFilters)
                      : const SizedBox(width: double.infinity),
                ),
              ),
              if (matches.isEmpty)
                SliverToBoxAdapter(
                  child: EmptyState(
                    emoji: '🔍',
                    title: l10n.searchNoResultsTitle,
                    subtitle: l10n.menuNoMatchSubtitle,
                    action: OutlinedButton(
                      onPressed: _clearFilters,
                      child: Text(l10n.clearAll),
                    ),
                  ),
                )
              else
                for (final MenuMatch match in matches) ...<Widget>[
                  // Keyed by the section's place in the full menu, so hiding
                  // one section does not hand its rows to the next.
                  SliverToBoxAdapter(
                    key: ValueKey<String>('menu-heading-${match.index}'),
                    child: SectionHeader(
                      key: _headingKey(match.index),
                      title: _sectionTitle(l10n, match.section),
                      trailing: Text(
                        l10n.itemsInCart(match.items.length),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                  SliverPadding(
                    key: ValueKey<String>('menu-dishes-${match.index}'),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverList.separated(
                      itemCount: match.items.length,
                      separatorBuilder: (_, __) => const Divider(height: 28),
                      itemBuilder: (BuildContext context, int index) {
                        final MenuItem item = match.items[index];
                        // Keyed by dish, so a dish a new filter brings in
                        // arrives with the same small lift as on first load.
                        return Reveal(
                          key: ValueKey<int>(item.id),
                          index: index,
                          child: _MenuRow(
                            item: item,
                            canOrder: restaurant.isOpen,
                            onAdd: () => _add(item),
                            onRemove: () => _remove(item),
                          ),
                        );
                      },
                    ),
                  ),
                ],
            ],
            const SliverToBoxAdapter(child: SizedBox(height: 120)),
          ],
        ),
      ),
      bottomNavigationBar: _CartBar(restaurantId: widget.args.restaurantId),
    );
  }
}

class _RestaurantHeader extends StatelessWidget {
  const _RestaurantHeader({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 240,
      // The bar fades from transparent-over-photo to solid as it collapses,
      // so the back arrow never sits on a colour it cannot be read against.
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: _CollapsedTitle(name: restaurant.name),
      flexibleSpace: FlexibleSpaceBar(
        // Parallax: the photo drifts at half the scroll speed, which is what
        // gives a flat banner a sense of depth.
        collapseMode: CollapseMode.parallax,
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _PhotoCarousel(restaurant: restaurant),
            // Two scrims rather than one: the top keeps the back arrow legible
            // on a bright photo, the bottom lets the summary below sit against
            // something rather than a hard edge.
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: <Color>[Colors.black54, Colors.transparent],
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: <Color>[
                    Theme.of(context).colorScheme.surface,
                    Theme.of(context)
                        .colorScheme
                        .surface
                        .withValues(alpha: 0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// The restaurant's name in the collapsed bar.
///
/// Invisible while the photo is showing, since the name is printed just
/// below it, and faded in over the last stretch of the collapse. Deep in a
/// long menu, it is the only thing on screen that says whose menu it is.
class _CollapsedTitle extends StatelessWidget {
  const _CollapsedTitle({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final FlexibleSpaceBarSettings? bar =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    double collapsed = 1;
    if (bar != null && bar.maxExtent > bar.minExtent) {
      collapsed = ((bar.maxExtent - bar.currentExtent) /
              (bar.maxExtent - bar.minExtent))
          .clamp(0.0, 1.0);
    }
    return Opacity(
      opacity: ((collapsed - 0.7) / 0.3).clamp(0.0, 1.0),
      child: Text(
        name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.w800),
      ),
    );
  }
}

/// The merchant's photographs, hero first.
///
/// One picture is not a carousel: with nothing to swipe to, this is exactly
/// the single image the header always drew, with no dots and no page view to
/// swallow a horizontal drag.
class _PhotoCarousel extends StatefulWidget {
  const _PhotoCarousel({required this.restaurant});

  final Restaurant restaurant;

  @override
  State<_PhotoCarousel> createState() => _PhotoCarouselState();
}

class _PhotoCarouselState extends State<_PhotoCarousel> {
  final PageController _controller = PageController();
  int _index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Restaurant restaurant = widget.restaurant;
    final List<RestaurantPhoto> photos = restaurant.gallery;

    if (photos.length < 2) {
      return FoodImage(
        seed: restaurant.id,
        url: photos.isEmpty ? restaurant.logoUrl : photos.first.url,
        size: double.infinity,
        radius: 0,
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        PageView.builder(
          // Named so a test can tell this carousel from the home banners.
          key: const Key('restaurant-photos'),
          controller: _controller,
          itemCount: photos.length,
          onPageChanged: (int i) => setState(() => _index = i),
          itemBuilder: (BuildContext context, int i) {
            final RestaurantPhoto photo = photos[i];
            return Semantics(
              image: true,
              // The merchant's caption where they wrote one. Not drawn on the
              // picture: it arrives in whatever language they typed it in, and
              // the app is read in twenty-three.
              label: photo.caption,
              child: FoodImage(
                seed: '${restaurant.id}-${photo.id}',
                url: photo.url,
                size: double.infinity,
                radius: 0,
              ),
            );
          },
        ),
        // Above the bottom scrim, which is where the page starts washing the
        // photo out into the surface colour.
        PositionedDirectional(
          start: 0,
          end: 0,
          bottom: 58,
          child: _PhotoDots(count: photos.length, index: _index),
        ),
      ],
    );
  }
}

class _PhotoDots extends StatelessWidget {
  const _PhotoDots({required this.count, required this.index});

  final int count;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (int i = 0; i < count; i++)
          AnimatedContainer(
            duration: AppMotion.quick,
            curve: AppMotion.enter,
            margin: const EdgeInsets.symmetric(horizontal: 3),
            // The current dot stretches rather than growing rounder, so the
            // position reads at a glance on a busy photograph.
            width: i == index ? 18 : 6,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: i == index ? 0.95 : 0.5),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
      ],
    );
  }
}

class _RestaurantSummary extends StatelessWidget {
  const _RestaurantSummary({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            restaurant.name,
            style: theme.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 6),
          Text(
            restaurant.area.isEmpty
                ? restaurant.serviceCategory
                : '${restaurant.serviceCategory} · ${restaurant.area}',
            style: theme.textTheme.bodyMedium,
          ),
          if (restaurant.description.isNotEmpty) ...<Widget>[
            const SizedBox(height: 6),
            Text(restaurant.description, style: theme.textTheme.bodySmall),
          ],
          const SizedBox(height: 12),
          // The badge is the way in to the reviews. Hidden entirely when there
          // is no rating: a tap that leads to an empty list is a dead end, and
          // an unrated shop is not a badly rated one.
          if (restaurant.hasRating) ...<Widget>[
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(
                AppRoutes.reviews,
                arguments: ReviewsArgs(restaurantId: restaurant.id),
              ),
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RatingBadge(rating: restaurant.rating!),
                    const SizedBox(width: 8),
                    Text(
                      l10n.ratingsCount(restaurant.ratingCount),
                      style: theme.textTheme.bodySmall,
                    ),
                    const Icon(Icons.chevron_right_rounded, size: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
          Wrap(
            spacing: 10,
            runSpacing: 8,
            children: <Widget>[
              _Fact(
                icon: Icons.schedule_rounded,
                label: l10n.minutesAway(restaurant.avgPrepTimeMinutes),
              ),
              if (restaurant.distanceKmLabel != null)
                _Fact(
                  icon: Icons.near_me_rounded,
                  label: l10n.kilometresAway(restaurant.distanceKmLabel!),
                ),
              if (restaurant.minOrderValue > 0)
                _Fact(
                  icon: Icons.shopping_bag_outlined,
                  label: l10n.minimumOrder(
                    formatRupees(restaurant.minOrderValue),
                  ),
                ),
              if (restaurant.supportsPickup)
                _Fact(
                  icon: Icons.storefront_rounded,
                  label: l10n.pickupLabel,
                ),
            ],
          ),
          if (!restaurant.isOpen) ...<Widget>[
            const SizedBox(height: 14),
            ClosedNotice(restaurant: restaurant),
          ],
        ],
      ),
    );
  }
}

class _Fact extends StatelessWidget {
  const _Fact({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
          const SizedBox(width: 6),
          // Wraps rather than overflowing: on a narrow phone at large text a
          // Malayalam "minimum order" runs wider than the screen, and the
          // amount at its end is the part that matters.
          Flexible(child: Text(label, style: theme.textTheme.labelMedium)),
        ],
      ),
    );
  }
}

/// How many dishes are left, and the way back to the whole menu.
class _ResultsLine extends StatelessWidget {
  const _ResultsLine({required this.count, required this.onClear});

  final int count;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 6, 8, 0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              l10n.menuMatchCount(count),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          TextButton(
            onPressed: onClear,
            style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
            child: Text(l10n.clearAll),
          ),
        ],
      ),
    );
  }
}

/// The badge on one of the restaurant's most ordered dishes.
class _BestsellerTag extends StatelessWidget {
  const _BestsellerTag();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Icon(
          Icons.local_fire_department_rounded,
          size: 14,
          color: AppColors.orangeDeep,
        ),
        const SizedBox(width: 2),
        Flexible(
          child: Text(
            AppLocalizations.of(context).bestseller,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelSmall?.copyWith(
              color: AppColors.orangeDeep,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.4,
            ),
          ),
        ),
      ],
    );
  }
}

class _MenuRow extends StatelessWidget {
  const _MenuRow({
    required this.item,
    required this.canOrder,
    required this.onAdd,
    required this.onRemove,
  });

  final MenuItem item;
  final bool canOrder;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController cart = context.watch<CartController>();
    final int quantity = cart.quantityOfMenuItem(item.id);
    final bool orderable = canOrder && item.isAvailable;

    return Opacity(
      opacity: item.isAvailable ? 1 : 0.55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    VegMark(isVeg: item.isVeg),
                    if (item.containsEgg) ...<Widget>[
                      const SizedBox(width: 6),
                      Text('🥚', style: theme.textTheme.labelSmall),
                    ],
                    if (item.percentOff != null) ...<Widget>[
                      const SizedBox(width: 8),
                      Text(
                        l10n.percentOff(item.percentOff!),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: AppColors.orangeDeep,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                    if (item.isBestseller) ...<Widget>[
                      const SizedBox(width: 8),
                      const Flexible(child: _BestsellerTag()),
                    ],
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  item.name,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                // Null until three people have rated it, and hidden rather
                // than shown as zero: a dish nobody has rated yet is not a bad
                // dish.
                if (item.hasRating) ...<Widget>[
                  const SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      RatingBadge(rating: item.rating!),
                      const SizedBox(width: 6),
                      Text(
                        '(${item.ratingCount})',
                        textDirection: TextDirection.ltr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
                const SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    Rupees(
                      item.price,
                      style: theme.textTheme.titleSmall
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    if (item.compareAtPrice != null) ...<Widget>[
                      const SizedBox(width: 8),
                      Flexible(
                        child: Rupees(
                          item.compareAtPrice!,
                          struck: true,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ],
                ),
                if ((item.description ?? '').isNotEmpty) ...<Widget>[
                  const SizedBox(height: 6),
                  Text(
                    item.description!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
                if (!item.isAvailable) ...<Widget>[
                  const SizedBox(height: 6),
                  Text(
                    l10n.soldOut,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.error,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 14),
          Column(
            children: <Widget>[
              FoodImage(seed: '${item.id}', url: item.imageUrl, size: 96),
              const SizedBox(height: 8),
              SizedBox(
                width: 104,
                child: QuantityControl(
                  quantity: quantity,
                  enabled: orderable && !cart.isMutating,
                  onAdd: onAdd,
                  onRemove: onRemove,
                ),
              ),
              if (item.optionGroups.isNotEmpty) ...<Widget>[
                const SizedBox(height: 4),
                Text(
                  l10n.customisable,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelSmall,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

/// Floating summary of this restaurant's basket.
class _CartBar extends StatelessWidget {
  const _CartBar({required this.restaurantId});

  final String restaurantId;

  @override
  Widget build(BuildContext context) {
    final CartController controller = context.watch<CartController>();
    final Cart? cart = controller.cart;

    final bool visible = cart != null && !cart.isEmpty;
    // Kept mounted and slid out of view rather than removed, so adding the
    // first item slides the bar up from the bottom edge instead of making the
    // page jump by its height.
    return AnimatedSlide(
      offset: visible ? Offset.zero : const Offset(0, 1.4),
      duration: AppMotion.settled,
      curve: visible ? AppMotion.spring : AppMotion.exit,
      child: AnimatedOpacity(
        opacity: visible ? 1 : 0,
        duration: AppMotion.quick,
        child: IgnorePointer(
          ignoring: !visible,
          child: _CartBarBody(cart: cart, restaurantId: restaurantId),
        ),
      ),
    );
  }
}

class _CartBarBody extends StatelessWidget {
  const _CartBarBody({required this.cart, required this.restaurantId});

  final Cart? cart;
  final String restaurantId;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Cart? cart = this.cart;
    if (cart == null) return const SizedBox(height: 0);

    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Material(
        color: AppColors.greenDeep,
        borderRadius: BorderRadius.circular(AppTheme.radius),
        elevation: 10,
        shadowColor: AppColors.greenDeep.withValues(alpha: 0.5),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppTheme.radius),
          onTap: () => Navigator.of(context).pushNamed(
            AppRoutes.cart,
            arguments: CartArgs(restaurantId: restaurantId),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        l10n.itemsInCart(cart.itemCount),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelMedium
                            ?.copyWith(color: Colors.white70),
                      ),
                      Rupees(
                        cart.totals.grandTotal,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Text(
                    l10n.viewCart,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward_rounded,
                    color: Colors.white, size: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
