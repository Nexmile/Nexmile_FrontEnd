import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/haptics.dart';
import '../../../core/router/app_router.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../auth/data/auth_failure.dart';
import '../data/cart_models.dart';
import '../data/order_models.dart';
import '../state/cart_controller.dart';

/// Whether [order] can be put back in a basket: delivered, from a
/// restaurant the app can name.
bool canReorder(Order order) =>
    order.status == OrderStatus.delivered && order.restaurantId != null;

/// "Reorder": that order, back in its restaurant's basket, then the cart.
///
/// The server replaces the restaurant's basket rather than adding to it, so a
/// basket with something in it is never overwritten without asking. The call
/// waits behind a spinner the customer cannot dismiss: it is destructive, and
/// a second tap must not send it twice. Dishes that could not come back are
/// named once the cart is open.
Future<void> reorder(BuildContext context, Order order) async {
  final String? restaurantId = order.restaurantId;
  if (restaurantId == null) return;
  final AppLocalizations l10n = AppLocalizations.of(context);
  final CartController cart = context.read<CartController>();
  final NavigatorState navigator = Navigator.of(context, rootNavigator: true);
  final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);

  void say(String message) => messenger
    ..clearSnackBars()
    ..showSnackBar(SnackBar(content: Text(message)));

  final OpenCart? waiting = cart.openCartFor(restaurantId);
  if (waiting != null && waiting.itemCount > 0) {
    final bool replace = await showDialog<bool>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text(l10n.reorderReplaceTitle),
            content: Text(
              l10n.reorderReplaceBody(
                waiting.restaurantName.isNotEmpty
                    ? waiting.restaurantName
                    : (order.restaurantName ?? l10n.appName),
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(l10n.cancelLabel),
              ),
              FilledButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(l10n.reorderReplace),
              ),
            ],
          ),
        ) ??
        false;
    if (!replace || !context.mounted) return;
  }

  Haptics.tap();
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => const PopScope(
      canPop: false,
      child: Center(child: CircularProgressIndicator()),
    ),
  );
  final (Reorder? result, AuthFailure? failure) = await cart.reorder(order.id);
  navigator.pop();

  if (result == null) {
    say(cart.firstError() ?? (failure ?? AuthFailure.unknown).message(l10n));
    return;
  }
  if (result.cart.isEmpty) {
    say(l10n.reorderNothingAvailable);
    return;
  }

  Haptics.success();
  navigator.pushNamed(
    AppRoutes.cart,
    arguments: CartArgs(restaurantId: restaurantId),
  );
  if (result.skipped.isNotEmpty) {
    say(l10n.reorderSkipped(result.skipped.join(', '), result.skipped.length));
  }
}
