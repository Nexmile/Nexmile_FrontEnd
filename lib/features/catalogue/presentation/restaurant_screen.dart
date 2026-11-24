import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show RenderAbstractViewport;
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/motion/reveal.dart';
import '../../../core/motion/skeleton.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../account/state/account_controller.dart';
import '../../auth/data/auth_failure.dart';
import '../data/cart_models.dart';
import '../data/menu_filters.dart';
import '../data/storefront_models.dart';
import '../state/cart_controller.dart';
import '../state/storefront_controller.dart';
import 'widgets/catalogue_widgets.dart';
import 'widgets/customise_sheet.dart';
import 'widgets/dish_photo_viewer.dart';
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

  /// The search field is out: the customer tapped Search over the photo, or
  /// has a query. Closes again once the query is empty and the field let go.
  bool _searchOpen = false;

  /// Sections the customer folded away, by their place in the full menu.
  final Set<int> _folded = <int>{};

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
    // Veg mode opens every menu on veg dishes; the chip clears it as usual.
    if (context.read<AccountController>().vegMode) {
      _filters = const MenuFilters(diet: MenuDiet.veg);
    }
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
    _searchFocus.unfocus();
    if (_searchOpen) setState(() => _searchOpen = false);
    _setFilters(MenuFilters.none);
  }

  /// Search over the photo: opens the field above the chips and puts the
  /// cursor in it; focusing then brings the bar to the top of the screen.
  void _openSearch() {
    if (!_searchOpen) setState(() => _searchOpen = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _searchFocus.requestFocus();
    });
  }

  void _toggleSection(int index) {
    Haptics.select();
    setState(() {
      if (!_folded.remove(index)) _folded.add(index);
    });
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
    if (_searchFocus.hasFocus) {
      _showResults(pin: true);
    } else if (_searchOpen && _search.text.isEmpty) {
      setState(() => _searchOpen = false);
    }
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
    // A section picked from the Menu button is one the customer wants open.
    if (_folded.remove(index)) {
      setState(() {});
      await WidgetsBinding.instance.endOfFrame;
      if (!mounted) return;
    }
    final GlobalKey key = _headingKey(index);
    final BuildContext? target = key.currentContext;
    if (target == null || !target.mounted) return;
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

  /// Whether [_load] has run. Until it has, the controller may still hold
  /// the last restaurant visited, which must not flash up for a frame.
  bool _loadStarted = false;

  Future<void> _load() async {
    if (!mounted) return;
    final String id = widget.args.restaurantId;
    _loadStarted = true;
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
        arguments: CartArgs(
          restaurantId: widget.args.restaurantId,
          fromMenu: true,
        ),
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

    if (!_loadStarted || storefront.isMenuLoading) {
      final Restaurant? preview = widget.args.preview;
      if (preview == null) {
        return Scaffold(
          appBar: AppBar(),
          body: const MenuSkeleton(),
        );
      }
      // Opened from a card: its photo and name are already known, so they
      // show at once, and the card's photo grows into this banner. Built in
      // the same shape as the loaded page, so the banner stays put when the
      // menu arrives under it.
      return Scaffold(
        body: RefreshIndicator(
          color: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.surface,
          displacement: 28,
          onRefresh: _load,
          child: CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            slivers: <Widget>[
              _RestaurantHeader(
                restaurant: preview,
                heroTag: widget.args.heroTag,
              ),
              const SliverToBoxAdapter(child: MenuSkeleton()),
            ],
          ),
        ),
      );
    }

    if (restaurant == null) {
      return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: EmptyState(
            emoji: '📡',
            alert: true,
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
    final bool searching = _searchOpen || _filters.hasQuery;
    // Hidden while typing: over the keyboard it would sit on the results.
    final bool canBrowse =
        matches.length > 1 && MediaQuery.viewInsetsOf(context).bottom == 0;

    return Scaffold(
      floatingActionButton:
          canBrowse ? MenuBrowseButton(onPressed: () => _browse(matches)) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: RefreshIndicator(
        color: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.surface,
        displacement: 28,
        onRefresh: () {
          Haptics.tap();
          return _load();
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: <Widget>[
            _RestaurantHeader(
              restaurant: restaurant,
              heroTag: widget.args.heroTag,
              onSearch: hasMenu ? _openSearch : null,
              interactive: true,
            ),
            SliverToBoxAdapter(
              child: _RestaurantSummary(
                restaurant: restaurant,
                preview: widget.args.preview,
              ),
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
              SliverPersistentHeader(
                pinned: true,
                delegate: MenuToolbarDelegate(
                  height: MenuToolbar.heightFor(context, withSearch: searching),
                  builder: (BuildContext context, bool raised) => MenuToolbar(
                    search: _search,
                    searchFocus: _searchFocus,
                    filters: _filters,
                    facets: _facetsOf(menu),
                    raised: raised,
                    showSearch: searching,
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
                for (final (int position, MenuMatch match)
                    in matches.indexed) ...<Widget>[
                  if (position > 0)
                    SliverToBoxAdapter(
                      key: ValueKey<String>('menu-band-${match.index}'),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 22),
                        child: _Band(),
                      ),
                    ),
                  // Keyed by the section's place in the full menu, so hiding
                  // one section does not hand its rows to the next.
                  SliverToBoxAdapter(
                    key: ValueKey<String>('menu-heading-${match.index}'),
                    child: _SectionHeading(
                      key: _headingKey(match.index),
                      title: _sectionTitle(l10n, match.section),
                      count: match.items.length,
                      // Searching and filtering keep every section open, or a
                      // fold could hide the very dish that was asked for.
                      folded: !narrowed && _folded.contains(match.index),
                      onToggle:
                          narrowed ? null : () => _toggleSection(match.index),
                    ),
                  ),
                  if (narrowed || !_folded.contains(match.index))
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
                              photoTag: dishPhotoTag(match.index, item.id),
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

/// How far the bar has folded: 0 over the full photo, 1 down to a plain bar.
/// Read from the settings [SliverAppBar] gives everything inside it.
double _foldOf(BuildContext context) {
  final FlexibleSpaceBarSettings? bar =
      context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
  if (bar == null || bar.maxExtent <= bar.minExtent) return 1;
  return ((bar.maxExtent - bar.currentExtent) / (bar.maxExtent - bar.minExtent))
      .clamp(0.0, 1.0);
}

/// The photo, full bleed, with round buttons floating on it and the white
/// sheet of the page rising over its bottom edge.
///
/// As the page scrolls the photo folds into a plain bar: the buttons lose
/// their dark discs, their icons turn from white to ink, and the name fades
/// in, so nothing is ever white on white.
class _RestaurantHeader extends StatelessWidget {
  const _RestaurantHeader({
    required this.restaurant,
    this.heroTag,
    this.onSearch,
    this.interactive = false,
  });

  final Restaurant restaurant;

  /// The tag of the card photo this page was opened from, if any.
  final Object? heroTag;

  /// Opens the menu search. Null while the menu is still loading.
  final VoidCallback? onSearch;

  /// Save and share, once the full restaurant has loaded.
  final bool interactive;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final double photo =
        (MediaQuery.sizeOf(context).height * 0.36).clamp(240.0, 340.0);

    return SliverAppBar(
      pinned: true,
      expandedHeight: photo,
      automaticallyImplyLeading: false,
      backgroundColor: theme.colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      leadingWidth: 64,
      leading: Center(
        child: _BarButton(
          icon: Icons.arrow_back_rounded,
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
          onTap: () => Navigator.of(context).maybePop(),
        ),
      ),
      titleSpacing: 0,
      title: _CollapsedTitle(name: restaurant.name),
      actions: <Widget>[
        // A narrow phone has room for the search icon, not the word too.
        if (onSearch != null)
          MediaQuery.sizeOf(context).width < 360
              ? _BarButton(
                  icon: Icons.search_rounded,
                  tooltip: l10n.searchShort,
                  onTap: onSearch!,
                )
              : _SearchPill(onTap: onSearch!),
        if (interactive) ...<Widget>[
          const SizedBox(width: 8),
          _BarButton(
            icon: restaurant.isFavourite
                ? Icons.favorite_rounded
                : Icons.favorite_border_rounded,
            tooltip: l10n.favouriteSave,
            tint: restaurant.isFavourite ? const Color(0xFFE5484D) : null,
            onTap: () {
              Haptics.tap();
              context.read<StorefrontController>().toggleFavourite(restaurant);
            },
          ),
          const SizedBox(width: 8),
          _BarButton(
            icon: Icons.share_rounded,
            tooltip: l10n.shareLabel,
            onTap: () => SharePlus.instance.share(
              ShareParams(text: l10n.shareRestaurantText(restaurant.name)),
            ),
          ),
        ],
        const SizedBox(width: 12),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(_SheetCap.height),
        child: _SheetCap(),
      ),
      flexibleSpace: _PhotoBackdrop(
        child: FlexibleSpaceBar(
          // Parallax: the photo drifts at half the scroll speed, which is
          // what gives a flat banner a sense of depth.
          collapseMode: CollapseMode.parallax,
          background: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _PhotoCarousel(restaurant: restaurant, heroTag: heroTag),
              // Keeps the buttons and the status bar legible on a bright
              // photo, and clears before the middle of it.
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0, -0.2),
                    colors: <Color>[Colors.black54, Colors.transparent],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// White status-bar icons over the photo, dark ones once it has folded into
/// a light bar.
class _PhotoBackdrop extends StatelessWidget {
  const _PhotoBackdrop({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bool onPhoto = _foldOf(context) < 0.75;
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: onPhoto || dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: child,
    );
  }
}

/// The rounded top of the page's sheet, with its handle, sitting on the
/// bottom of the photo. Squares off and loses the handle as the bar folds.
class _SheetCap extends StatelessWidget {
  const _SheetCap();

  static const double height = 22;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final double fold = _foldOf(context);
    return Container(
      height: height,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(26 * (1 - fold))),
      ),
      child: Opacity(
        opacity: 1 - fold,
        child: Container(
          width: 40,
          height: 4,
          decoration: BoxDecoration(
            color: theme.colorScheme.outlineVariant,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}

/// A round button on the photo: a dark disc and a white icon, fading to a
/// plain ink icon as the photo folds away.
class _BarButton extends StatelessWidget {
  const _BarButton({
    required this.icon,
    required this.tooltip,
    required this.onTap,
    this.tint,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  /// A colour that holds whatever the background, such as a saved heart.
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final double fold = _foldOf(context);
    final Color ink = Theme.of(context).colorScheme.onSurface;
    return Tooltip(
      message: tooltip,
      child: Material(
        color: Color.lerp(
          Colors.black.withValues(alpha: 0.42),
          Colors.transparent,
          fold,
        ),
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: SizedBox.square(
            dimension: 40,
            child: Icon(
              icon,
              size: 22,
              color: tint ?? Color.lerp(Colors.white, ink, fold),
            ),
          ),
        ),
      ),
    );
  }
}

/// "Search" over the photo. Searches this menu, not the whole app.
class _SearchPill extends StatelessWidget {
  const _SearchPill({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final double fold = _foldOf(context);
    final Color ink =
        Color.lerp(Colors.white, theme.colorScheme.onSurface, fold)!;
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.2,
      child: Material(
        color: Color.lerp(
          Colors.black.withValues(alpha: 0.42),
          Colors.transparent,
          fold,
        ),
        shape: const StadiumBorder(),
        child: InkWell(
          customBorder: const StadiumBorder(),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 9, 16, 9),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.search_rounded, size: 21, color: ink),
                const SizedBox(width: 6),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 96),
                  child: Text(
                    AppLocalizations.of(context).searchShort,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: ink,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
    return Opacity(
      opacity: ((_foldOf(context) - 0.7) / 0.3).clamp(0.0, 1.0),
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
  const _PhotoCarousel({required this.restaurant, this.heroTag});

  final Restaurant restaurant;

  /// Put on the first photo, the one the card showed.
  final Object? heroTag;

  @override
  State<_PhotoCarousel> createState() => _PhotoCarouselState();
}

class _PhotoCarouselState extends State<_PhotoCarousel> {
  final PageController _controller = PageController();
  int _index = 0;

  Widget _withHero(Widget photo) {
    final Object? tag = widget.heroTag;
    return tag == null ? photo : Hero(tag: tag, child: photo);
  }

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
      return _withHero(
        FoodImage(
          seed: restaurant.id,
          url: photos.isEmpty ? restaurant.logoUrl : photos.first.url,
          size: double.infinity,
          radius: 0,
        ),
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
              child: i == 0
                  ? _withHero(
                      FoodImage(
                        seed: '${restaurant.id}-${photo.id}',
                        url: photo.url,
                        size: double.infinity,
                        radius: 0,
                      ),
                    )
                  : FoodImage(
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

/// The top of the page's sheet: who, where, how long, what is good about
/// them, and what is on offer.
class _RestaurantSummary extends StatelessWidget {
  const _RestaurantSummary({required this.restaurant, this.preview});

  final Restaurant restaurant;

  /// The card this page was opened from. `GET /v1/restaurants/{id}` has no
  /// customer position, so it carries no delivery window; the card's is
  /// used instead, so the page never says "20 min" right after the card
  /// said "25–30 min".
  final Restaurant? preview;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;
    final String eta = deliveryWindow(l10n, restaurant, preview);

    final String place = <String>[
      if (restaurant.distanceKmLabel != null)
        l10n.kilometresAway(restaurant.distanceKmLabel!),
      if (restaurant.area.isNotEmpty)
        restaurant.area
      else if (restaurant.serviceCategory.isNotEmpty)
        restaurant.serviceCategory,
    ].join(' · ');

    // What is good about them, from what the API knows. Only true things,
    // each with a tick.
    final List<String> highlights = <String>[
      if (restaurant.isPureVeg) l10n.vegModeBadge,
      if (restaurant.hasFreeDelivery) l10n.freeDelivery,
      if ((restaurant.rating ?? 0) >= MenuFilters.topRatedThreshold)
        topRatedLabel(l10n),
      if (restaurant.supportsPickup) l10n.pickupLabel,
    ];

    final TextStyle? quiet = theme.textTheme.bodyMedium?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(text: restaurant.name),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(start: 6),
                              child: _InfoButton(restaurant: restaurant, eta: eta),
                            ),
                          ),
                        ],
                      ),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  if (restaurant.hasRating) ...<Widget>[
                    const SizedBox(width: 12),
                    _RatingBlock(restaurant: restaurant),
                  ],
                ],
              ),
              if (place.isNotEmpty) ...<Widget>[
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on_outlined,
                      size: 18,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        place,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: 6),
              Row(
                children: <Widget>[
                  Icon(Icons.bolt_rounded, size: 19, color: green),
                  const SizedBox(width: 5),
                  Flexible(
                    child: Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: eta,
                            style: TextStyle(
                              color: green,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          if (restaurant.minOrderValue > 0)
                            TextSpan(
                              text: ' · ${l10n.minimumOrder(
                                formatRupees(restaurant.minOrderValue),
                              )}',
                              style: quiet,
                            ),
                        ],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (highlights.isNotEmpty) ...<Widget>[
          const SizedBox(height: 14),
          SizedBox(
            height: MediaQuery.textScalerOf(context).scale(38).clamp(38.0, 56.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: highlights.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (BuildContext context, int i) =>
                  _Highlight(label: highlights[i]),
            ),
          ),
        ],
        if (!restaurant.isOpen)
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
            child: _NoticeBanner(child: ClosedNotice(restaurant: restaurant)),
          ),
        if (restaurant.offers.isNotEmpty) ...<Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Divider(height: 1),
          ),
          _OffersRow(offers: restaurant.offers),
        ] else
          const SizedBox(height: 16),
        const _Band(),
      ],
    );
  }
}

/// The delivery window, the card's when this page's answer has none, or the
/// kitchen time as a last resort.
String deliveryWindow(
  AppLocalizations l10n,
  Restaurant restaurant,
  Restaurant? preview,
) =>
    switch ((restaurant, preview)) {
      (final Restaurant r, _) when r.hasEtaRange =>
        l10n.etaRange(r.etaMinMinutes!, r.etaMaxMinutes!),
      (_, final Restaurant p) when p.id == restaurant.id && p.hasEtaRange =>
        l10n.etaRange(p.etaMinMinutes!, p.etaMaxMinutes!),
      _ => l10n.minutesAway(restaurant.avgPrepTimeMinutes),
    };

/// The grey strip between the parts of the page.
class _Band extends StatelessWidget {
  const _Band();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: 8,
      color: theme.brightness == Brightness.dark
          ? theme.colorScheme.surfaceContainerLow
          : const Color(0xFFF2F3F5),
    );
  }
}

/// The rating, and how many people it is from. The way in to the reviews.
class _RatingBlock extends StatelessWidget {
  const _RatingBlock({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutes.reviews,
        arguments: ReviewsArgs(restaurantId: restaurant.id),
      ),
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Transform.scale(
              scale: 1.15,
              alignment: AlignmentDirectional.topEnd,
              child: RatingBadge(rating: restaurant.rating!),
            ),
            const SizedBox(height: 6),
            Text(
              AppLocalizations.of(context)
                  .ratingByCount(compactCount(restaurant.ratingCount)),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                decorationColor: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 18, 950, 2.3K+, 15K+, 1.2M+: short enough to sit under a badge.
String compactCount(int n) {
  String trim(double v) {
    final String one = ((v * 10).floor() / 10).toStringAsFixed(1);
    return one.endsWith('.0') ? one.substring(0, one.length - 2) : one;
  }

  if (n < 1000) return '$n';
  if (n < 10000) return '${trim(n / 1000)}K+';
  if (n < 1000000) return '${n ~/ 1000}K+';
  return '${trim(n / 1000000)}M+';
}

/// One true thing about the restaurant, with a tick.
class _Highlight extends StatelessWidget {
  const _Highlight({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isDark
            ? theme.colorScheme.surfaceContainerHigh
            : const Color(0xFFF2F4F7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.check_rounded,
            size: 17,
            color: isDark ? AppColors.greenLight : AppColors.greenDeep,
          ),
          const SizedBox(width: 6),
          Text(label, maxLines: 1, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }
}

/// A soft yellow box for what the customer must know before ordering.
class _NoticeBanner extends StatelessWidget {
  const _NoticeBanner({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF332B12) : const Color(0xFFFFF8E1),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isDark ? const Color(0xFF6B5A1E) : const Color(0xFFF3E2A6),
        ),
      ),
      child: Align(alignment: AlignmentDirectional.centerStart, child: child),
    );
  }
}

/// The best offer, and the rest behind "3 offers".
class _OffersRow extends StatefulWidget {
  const _OffersRow({required this.offers});

  final List<RestaurantOffer> offers;

  @override
  State<_OffersRow> createState() => _OffersRowState();
}

class _OffersRowState extends State<_OffersRow> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<RestaurantOffer> offers = widget.offers;
    final bool more = offers.length > 1;

    Widget line(RestaurantOffer offer, {bool first = false}) => Padding(
          padding: EdgeInsets.only(top: first ? 0 : 12),
          child: Row(
            children: <Widget>[
              Container(
                width: 26,
                height: 26,
                decoration: const BoxDecoration(
                  color: Color(0xFF3D7BF7),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.percent_rounded,
                  size: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 12),
              // Worded and translated by the server: printed as sent.
              Expanded(
                child: Text(
                  offer.label,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        );

    return InkWell(
      onTap: more ? () => setState(() => _open = !_open) : null,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 14, 16, 16),
        child: AnimatedSize(
          duration: AppMotion.quick,
          curve: AppMotion.enter,
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: line(offers.first, first: true)),
                  if (more) ...<Widget>[
                    const SizedBox(width: 8),
                    Text(
                      l10n.offersCount(offers.length),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    AnimatedRotation(
                      turns: _open ? 0.5 : 0,
                      duration: AppMotion.quick,
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
              if (_open)
                for (final RestaurantOffer offer in offers.skip(1)) line(offer),
            ],
          ),
        ),
      ),
    );
  }
}

/// The (i) beside the name: everything else worth knowing, in a sheet.
class _InfoButton extends StatelessWidget {
  const _InfoButton({required this.restaurant, required this.eta});

  final Restaurant restaurant;
  final String eta;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Tooltip(
      message: l10n.restaurantAbout,
      child: InkResponse(
        radius: 18,
        onTap: () => showModalBottomSheet<void>(
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          builder: (BuildContext context) =>
              _InfoSheet(restaurant: restaurant, eta: eta),
        ),
        child: Icon(
          Icons.info_outline_rounded,
          size: 22,
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

class _InfoSheet extends StatelessWidget {
  const _InfoSheet({required this.restaurant, required this.eta});

  final Restaurant restaurant;
  final String eta;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              restaurant.name,
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 4),
            Text(
              restaurant.area.isEmpty
                  ? restaurant.serviceCategory
                  : '${restaurant.serviceCategory} · ${restaurant.area}',
              style: theme.textTheme.bodyMedium,
            ),
            if (restaurant.description.isNotEmpty) ...<Widget>[
              const SizedBox(height: 10),
              Text(restaurant.description, style: theme.textTheme.bodyMedium),
            ],
            const SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 8,
              children: <Widget>[
                _Fact(icon: Icons.schedule_rounded, label: eta),
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
                if (restaurant.packagingFee > 0)
                  _Fact(
                    icon: Icons.takeout_dining_outlined,
                    label:
                        '${l10n.packagingLabel} ${formatRupees(restaurant.packagingFee)}',
                  ),
                if (restaurant.supportsPickup)
                  _Fact(
                    icon: Icons.storefront_rounded,
                    label: l10n.pickupLabel,
                  ),
              ],
            ),
          ],
        ),
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

/// One of the restaurant's most ordered dishes: a short green bar and the
/// word, the way a busy kitchen's favourites are marked on the big apps.
class _BestsellerTag extends StatelessWidget {
  const _BestsellerTag();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color green = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : AppColors.greenDeep;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: SizedBox(
            width: 34,
            height: 5,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ColoredBox(color: green.withValues(alpha: 0.18)),
                FractionallySizedBox(
                  alignment: AlignmentDirectional.centerStart,
                  widthFactor: 0.7,
                  child: ColoredBox(color: green),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 7),
        Flexible(
          child: Text(
            AppLocalizations.of(context).bestseller,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
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
    required this.photoTag,
    required this.canOrder,
    required this.onAdd,
    required this.onRemove,
  });

  final MenuItem item;

  /// From [dishPhotoTag]: the thumbnail grows into the full-screen photo.
  final Object photoTag;
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
                    VegMark(isVeg: item.isVeg, size: 18),
                    if (item.containsEgg) ...<Widget>[
                      const SizedBox(width: 6),
                      Text('🥚', style: theme.textTheme.labelSmall),
                    ],
                    if (item.percentOff != null) ...<Widget>[
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          l10n.percentOff(item.percentOff!),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: AppColors.orangeDeep,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  item.name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                if (item.isBestseller) ...<Widget>[
                  const SizedBox(height: 6),
                  const _BestsellerTag(),
                ],
                // Null until three people have rated it, and hidden rather
                // than shown as zero: a dish nobody has rated yet is not a bad
                // dish.
                if (item.hasRating) ...<Widget>[
                  const SizedBox(height: 6),
                  Row(
                    children: <Widget>[
                      RatingBadge(rating: item.rating!),
                      const SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          '(${item.ratingCount})',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.ltr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
                const SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    if (item.compareAtPrice != null) ...<Widget>[
                      Flexible(
                        child: Rupees(
                          item.compareAtPrice!,
                          struck: true,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                    Flexible(
                      child: Rupees(
                        item.price,
                        style: theme.textTheme.titleSmall
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                if ((item.description ?? '').isNotEmpty) ...<Widget>[
                  const SizedBox(height: 8),
                  Text(
                    item.description!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
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
          const SizedBox(width: 16),
          _DishAside(
            item: item,
            photoTag: photoTag,
            control: QuantityControl(
              quantity: quantity,
              enabled: orderable && !cart.isMutating,
              onAdd: onAdd,
              onRemove: onRemove,
            ),
          ),
        ],
      ),
    );
  }
}

/// A dish's photo, large, with the ADD button sitting over its bottom edge.
/// A dish without a photo gets the button alone rather than a stand-in
/// picture: a column of placeholders says nothing about the food.
class _DishAside extends StatelessWidget {
  const _DishAside({
    required this.item,
    required this.photoTag,
    required this.control,
  });

  final MenuItem item;
  final Object photoTag;
  final Widget control;

  static const double photo = 132;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String? url = item.imageUrl;
    final bool hasPhoto = url != null && url.isNotEmpty;

    final Widget note = item.optionGroups.isEmpty
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              l10n.customisable,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          );

    if (!hasPhoto) {
      return SizedBox(
        width: photo,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 26),
            SizedBox(width: 104, child: control),
            note,
          ],
        ),
      );
    }

    return SizedBox(
      width: photo,
      child: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              _DishThumbnail(item: item, heroTag: photoTag, size: photo),
              Positioned(
                bottom: -18,
                child: SizedBox(width: 104, child: control),
              ),
            ],
          ),
          const SizedBox(height: 22),
          note,
        ],
      ),
    );
  }
}

/// A dish's photo in its row. Tapped, it opens full screen.
class _DishThumbnail extends StatelessWidget {
  const _DishThumbnail({
    required this.item,
    required this.heroTag,
    this.size = 96,
  });

  final MenuItem item;
  final Object heroTag;
  final double size;

  @override
  Widget build(BuildContext context) {
    final Widget photo = FoodImage(
      seed: '${item.id}',
      url: item.imageUrl,
      size: size,
      radius: 18,
    );
    final String? url = item.imageUrl;
    // Only a real photo is worth opening; the emoji fallback is not.
    if (url == null || url.isEmpty) return photo;
    return Semantics(
      button: true,
      image: true,
      label: item.name,
      child: GestureDetector(
        onTap: () => showDishPhoto(context, item: item, heroTag: heroTag),
        child: Hero(tag: heroTag, child: photo),
      ),
    );
  }
}

/// A section's name, how many dishes it has, and the caret that folds it.
class _SectionHeading extends StatelessWidget {
  const _SectionHeading({
    super.key,
    required this.title,
    required this.count,
    required this.folded,
    this.onToggle,
  });

  final String title;
  final int count;
  final bool folded;

  /// Null while searching or filtering, when every section stays open.
  final VoidCallback? onToggle;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onToggle,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 12, 12),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    AppLocalizations.of(context).itemsInCart(count),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            if (onToggle != null)
              AnimatedRotation(
                turns: folded ? 0.5 : 0,
                duration: AppMotion.quick,
                child: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  size: 30,
                  color: theme.colorScheme.onSurface,
                ),
              ),
          ],
        ),
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
            arguments: CartArgs(restaurantId: restaurantId, fromMenu: true),
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
                      // The count rolls up and the total counts to its new
                      // value, so each dish visibly lands in the basket.
                      AnimatedSwitcher(
                        duration: AppMotion.quick,
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0, 0.5),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            ),
                          );
                        },
                        layoutBuilder: (Widget? current, List<Widget> previous) =>
                            Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[...previous, if (current != null) current],
                        ),
                        child: Text(
                          l10n.itemsInCart(cart.itemCount),
                          key: ValueKey<int>(cart.itemCount),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelMedium
                              ?.copyWith(color: Colors.white70),
                        ),
                      ),
                      AnimatedRupees(
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
