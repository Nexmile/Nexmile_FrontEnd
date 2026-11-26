import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/motion/app_motion.dart';
import '../../core/motion/haptics.dart';
import '../../core/router/app_router.dart';
import '../../core/theme/app_colors.dart';
import '../../generated/l10n/app_localizations.dart';
import '../catalogue/presentation/home_tab.dart';
import '../catalogue/presentation/orders_tab.dart';
import '../catalogue/presentation/widgets/open_cart_bar.dart';
import '../catalogue/state/cart_controller.dart';
import '../support/presentation/support_bubble.dart';

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
            // On every tab, the way the big apps keep it in reach.
            const OpenCartBar(),
            _BottomBar(
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
    required this.itemPadding,
  });

  final int index;
  final ValueChanged<int> onSelect;
  final List<_NavItemData> items;
  final double itemPadding;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    return Material(
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
                  padding: itemPadding,
                  onTap: () => onSelect(i),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// The tabs, and the support bubble docked beside them where it fits. The
/// tabs give up some of their padding before the bubble gives up the full
/// logo; on a narrow phone, or at a large text size, the bubble is the
/// logo's mark in a circle.
class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.index,
    required this.onSelect,
    required this.items,
  });

  final int index;
  final ValueChanged<int> onSelect;
  final List<_NavItemData> items;

  static const double _margin = 16;
  static const double _gap = 10;

  /// The tabs' own width at a given item padding, measured as they will be
  /// drawn: icon, gap, label (at the bar's capped text size).
  double _tabsWidth(BuildContext context, double padding) {
    final ThemeData theme = Theme.of(context);
    final TextScaler scaler = MediaQuery.textScalerOf(context)
        .clamp(maxScaleFactor: _NavItem.maxTextScale);
    double width = 10 + 2; // the pill's padding and border
    for (final _NavItemData item in items) {
      final TextPainter label = TextPainter(
        text: TextSpan(
          text: item.label,
          style: theme.textTheme.titleSmall
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        textDirection: Directionality.of(context),
        textScaler: scaler,
        maxLines: 1,
      )..layout();
      width += padding * 2 + 22 + 10 + label.width;
    }
    return width;
  }

  @override
  Widget build(BuildContext context) {
    final double screen = MediaQuery.sizeOf(context).width;
    final double roomy = screen < 360 ? 14 : 22;
    const double tight = 14;
    final bool chat = supportChatOn(context);

    double padding = roomy;
    bool compact = false;
    if (chat) {
      final double room = screen - _margin * 2 - _gap;
      bool fits(double pad, double bubble) =>
          room - _tabsWidth(context, pad) >= bubble;
      if (fits(roomy, SupportBubble.fullWidth)) {
        padding = roomy;
      } else if (fits(tight, SupportBubble.fullWidth)) {
        padding = tight;
      } else {
        compact = true;
        padding = fits(roomy, SupportBubble.compactWidth) ? roomy : tight;
      }
    }

    return SafeArea(
      top: false,
      minimum: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: _margin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: _FloatingNav(
                index: index,
                onSelect: onSelect,
                items: items,
                itemPadding: padding,
              ),
            ),
            if (chat) ...<Widget>[
              const SizedBox(width: _gap),
              SupportBubble(compact: compact),
            ],
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.data,
    required this.selected,
    required this.padding,
    required this.onTap,
  });

  final _NavItemData data;
  final bool selected;
  final double padding;
  final VoidCallback onTap;

  /// The bar grows with the text only so far.
  static const double maxTextScale = 1.3;

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
            padding: EdgeInsets.symmetric(horizontal: padding, vertical: 13),
            decoration: ShapeDecoration(
              shape: const StadiumBorder(),
              color: selected
                  ? theme.colorScheme.inverseSurface
                  : Colors.transparent,
            ),
            child: MediaQuery.withClampedTextScaling(
              maxScaleFactor: maxTextScale,
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
