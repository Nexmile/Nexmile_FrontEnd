import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/motion/app_motion.dart';
import '../../../../core/motion/haptics.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/cart_models.dart';
import '../../state/cart_controller.dart';
import 'catalogue_widgets.dart';

/// The basket left behind, on every main screen: the restaurant, a way back
/// to its menu, "View cart", and a way to put it aside.
///
/// Shows the first basket not closed. Closing is "not now": it comes back
/// when that basket changes, and on the next launch; nothing is deleted.
class OpenCartBar extends StatelessWidget {
  const OpenCartBar({super.key, this.safeArea = false});

  /// True where the bar is the last thing on screen, not above a tab bar.
  final bool safeArea;

  @override
  Widget build(BuildContext context) {
    final CartController carts = context.watch<CartController>();
    final OpenCart? cart = carts.barCart;

    final Widget bar = AnimatedSwitcher(
      duration: AppMotion.quick,
      switchInCurve: AppMotion.enter,
      transitionBuilder: (Widget child, Animation<double> animation) =>
          SizeTransition(
        sizeFactor: animation,
        alignment: Alignment.bottomCenter,
        child: FadeTransition(opacity: animation, child: child),
      ),
      child: cart == null
          ? const SizedBox(width: double.infinity, key: ValueKey<String>('none'))
          : _Card(
              key: ValueKey<String>('open-cart-${cart.restaurantId}'),
              cart: cart,
              onClose: () {
                Haptics.select();
                carts.closeBar(cart);
              },
            ),
    );
    return safeArea ? SafeArea(top: false, child: bar) : bar;
  }
}

class _Card extends StatelessWidget {
  const _Card({super.key, required this.cart, required this.onClose});

  final OpenCart cart;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color accent = isDark ? AppColors.greenLight : AppColors.greenDeep;

    void openCart() {
      Haptics.tap();
      Navigator.of(context).pushNamed(
        AppRoutes.cart,
        arguments: CartArgs(restaurantId: cart.restaurantId),
      );
    }

    void openMenu() => Navigator.of(context).pushNamed(
          AppRoutes.restaurant,
          arguments: RestaurantArgs(restaurantId: cart.restaurantId),
        );

    return Padding(
      key: const ValueKey<String>('open-cart-bar'),
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
      child: Material(
        color: theme.colorScheme.surfaceContainerLowest,
        elevation: isDark ? 2 : 10,
        shadowColor: Colors.black.withValues(alpha: 0.22),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: theme.colorScheme.outlineVariant),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: openCart,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 6, 10),
            child: Row(
              children: <Widget>[
                FoodImage(
                  seed: cart.restaurantId,
                  url: cart.imageUrl,
                  emoji: '🍽️',
                  size: 48,
                  radius: 24,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        cart.restaurantName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                      InkWell(
                        key: const ValueKey<String>('open-cart-menu'),
                        onTap: openMenu,
                        borderRadius: BorderRadius.circular(6),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  l10n.viewMenu,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurface,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_rounded,
                                size: 18,
                                color: accent,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 140),
                  child: FilledButton(
                    key: const ValueKey<String>('open-cart-view'),
                    onPressed: openCart,
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.greenDeep,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(0, 48),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          l10n.viewCart,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          l10n.itemsInCart(cart.itemCount),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: Colors.white.withValues(alpha: 0.85),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  key: const ValueKey<String>('open-cart-close'),
                  tooltip: l10n.closeLabel,
                  onPressed: onClose,
                  visualDensity: VisualDensity.compact,
                  icon: Icon(
                    Icons.close_rounded,
                    size: 20,
                    color: theme.colorScheme.onSurfaceVariant,
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
