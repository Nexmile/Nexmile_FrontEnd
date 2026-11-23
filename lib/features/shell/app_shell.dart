import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/motion/app_motion.dart';
import '../../core/motion/haptics.dart';
import '../../core/motion/reveal.dart';
import '../../core/router/app_router.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_theme.dart';
import '../../generated/l10n/app_localizations.dart';
import '../catalogue/data/cart_models.dart';
import '../catalogue/presentation/home_tab.dart';
import '../catalogue/presentation/orders_tab.dart';
import '../catalogue/presentation/widgets/catalogue_widgets.dart';
import '../catalogue/state/cart_controller.dart';

/// Signed-in home: Delivery and History on a floating bar, plus the basket
/// bar. The profile is the avatar at the top of either, not a tab.
///
/// Tabs are kept alive in an [IndexedStack] so switching away and back does not
/// reset the search query, the category filter or a scroll position — which is
/// what customers expect from every delivery app.
class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  /// Tabs the customer has actually opened.
  ///
  /// [IndexedStack] builds every child eagerly, which would make the profile
  /// tab call `GET /v1/profile` on launch even for someone who never opens it.
  /// Building a tab only once visited avoids that wasted request while still
  /// keeping its state alive from then on.
  final Set<int> _visited = <int>{0};

  int _index = 0;

  @override
  void initState() {
    super.initState();
    // Carts live on the server, one per restaurant, so an unfinished basket
    // survives a reinstall. `GET /v1/carts` is what surfaces it.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<CartController>().loadOpenCarts();
    });
  }

  void _select(int index) {
    if (index != _index) Haptics.select();
    setState(() {
      _index = index;
      _visited.add(index);
    });
  }

  /// Search is a screen you push into from the header field, not a tab.
  ///
  /// A tab implies somewhere you go and stay; searching is a thing you do and
  /// come back from, and the header field is where every customer reaches for
  /// it anyway.
  void _openSearch({bool voice = false}) => Navigator.of(
    context,
  ).pushNamed(AppRoutes.search, arguments: SearchArgs(startWithVoice: voice));

  void _openHome() => _select(0);

  Widget _tab(int index) {
    if (!_visited.contains(index)) return const SizedBox.shrink();
    switch (index) {
      case 0:
        return HomeTab(
          onOpenSearch: () => _openSearch(),
          onOpenVoiceSearch: () => _openSearch(voice: true),
        );
      default:
        return OrdersTab(onBrowse: _openHome);
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);

    // Back from any other tab goes Home first, the way delivery apps behave;
    // only back from Home reaches the exit question.
    return PopScope<Object?>(
      canPop: _index == 0,
      onPopInvokedWithResult: (bool didPop, _) {
        if (!didPop && _index != 0) _select(0);
      },
      child: Scaffold(
        // The pages run under the floating bar, the way the big apps do; each
        // leaves room at its foot so its last item can scroll clear of it.
        extendBody: true,
        body: IndexedStack(
          index: _index,
          children: <Widget>[for (int i = 0; i < 2; i++) _tab(i)],
        ),
        // The unfinished-basket bar rides above the bottom bar on Delivery;
        // History has its own actions.
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (_index == 0) const _OpenCartBar(),
            _FloatingNav(
              index: _index,
              onSelect: _select,
              items: <_NavItemData>[
                _NavItemData(
                  label: l10n.deliveryLabel,
                  icon: Icons.home_outlined,
                  selectedIcon: Icons.home_rounded,
                ),
                _NavItemData(
                  label: l10n.navHistory,
                  icon: Icons.receipt_long_outlined,
                  selectedIcon: Icons.receipt_long_rounded,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// "You left something at ___" — an unfinished basket, from `GET /v1/carts`.
///
/// Only the first is offered. There can be several, one per restaurant, but a
/// stack of bars would eat the screen and the rest are one tap away inside
/// their own restaurants.
class _OpenCartBar extends StatelessWidget {
  const _OpenCartBar();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<OpenCart> carts = context.watch<CartController>().openCarts;

    if (carts.isEmpty) return const SizedBox.shrink();
    final OpenCart cart = carts.first;

    // Slides up from behind the navigation bar the first time an unfinished
    // basket is found, rather than appearing mid-air.
    return Reveal(
      from: AxisDirection.up,
      duration: AppMotion.settled,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        child: Material(
          color: AppColors.greenDeep,
          borderRadius: BorderRadius.circular(AppTheme.radius),
          elevation: 8,
          shadowColor: AppColors.greenDeep.withValues(alpha: 0.45),
          child: InkWell(
            borderRadius: BorderRadius.circular(AppTheme.radius),
            onTap:
                () => Navigator.of(context).pushNamed(
                  AppRoutes.cart,
                  arguments: CartArgs(restaurantId: cart.restaurantId),
                ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          cart.restaurantName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          l10n.itemsInCart(cart.itemCount),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Rupees(
                    cart.grandTotal,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItemData {
  const _NavItemData({
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;
}

/// The bottom bar: a white pill floating over the page, the chosen tab a dark
/// pill inside it with its icon in colour.
class _FloatingNav extends StatelessWidget {
  const _FloatingNav({
    required this.index,
    required this.onSelect,
    required this.items,
  });

  final int index;
  final ValueChanged<int> onSelect;
  final List<_NavItemData> items;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    return SafeArea(
      top: false,
      minimum: const EdgeInsets.only(bottom: 12),
      child: Center(
        // Never wider than the screen: on a small phone at large text the
        // labels shorten rather than push the bar off the edge.
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width - 32,
          ),
          child: Material(
            color: theme.colorScheme.surface,
            elevation: isDark ? 2 : 10,
            shadowColor: Colors.black.withValues(alpha: 0.28),
            shape: StadiumBorder(
              side: BorderSide(color: theme.colorScheme.outlineVariant),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  for (int i = 0; i < items.length; i++)
                    Flexible(
                      child: _NavItem(
                        data: items[i],
                        selected: i == index,
                        onTap: () => onSelect(i),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.data,
    required this.selected,
    required this.onTap,
  });

  final _NavItemData data;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color ink = selected
        ? theme.colorScheme.onInverseSurface
        : theme.colorScheme.onSurface;
    return Semantics(
      button: true,
      selected: selected,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: const StadiumBorder(),
          onTap: onTap,
          child: AnimatedContainer(
            duration: AppMotion.quick,
            curve: AppMotion.enter,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width < 360 ? 14 : 22,
              vertical: 13,
            ),
            decoration: ShapeDecoration(
              shape: const StadiumBorder(),
              color: selected
                  ? theme.colorScheme.inverseSurface
                  : Colors.transparent,
            ),
            child: MediaQuery.withClampedTextScaling(
              maxScaleFactor: 1.3,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    selected ? data.selectedIcon : data.icon,
                    size: 22,
                    color: selected ? AppColors.orange : ink,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      data.label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: ink,
                        fontWeight: selected ? FontWeight.w700 : FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
