import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/haptics.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../address/state/address_controller.dart';
import '../../auth/data/auth_failure.dart';
import '../data/cart_models.dart';
import '../data/order_models.dart';
import '../state/cart_controller.dart';
import '../state/orders_controller.dart';
import 'widgets/catalogue_widgets.dart';
import 'widgets/checkout_sheet.dart';
import '../../../core/motion/nexmile_loader.dart';

/// One restaurant's basket, and the way out of it.
class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.args});

  final CartArgs args;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    // Re-read on entry: prices, availability and the minimum can all have moved
    // since the menu screen last saw them.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<CartController>().load(widget.args.restaurantId);
      context.read<AddressController>().load();
    });
  }

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _applyCoupon() async {
    final String? applied = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext context) =>
          _CouponSheet(restaurantId: widget.args.restaurantId),
    );
    if (applied == null || !mounted) return;
    Haptics.success();
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context).couponAppliedTitle(applied)),
        ),
      );
  }

  Future<void> _removeCoupon() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController cart = context.read<CartController>();
    final AuthFailure? failure =
        await cart.removeCoupon(widget.args.restaurantId);
    if (failure != null) _showError(cart.firstError() ?? failure.message(l10n));
  }

  Future<void> _setQuantity(CartLine line, int quantity) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController cart = context.read<CartController>();
    final AuthFailure? failure = await cart.setQuantity(
      widget.args.restaurantId,
      cartItemId: line.id,
      quantity: quantity,
    );
    if (failure != null) _showError(cart.firstError() ?? failure.message(l10n));
  }

  Future<void> _clear() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool confirmed = await showDialog<bool>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text(l10n.clearCartTitle),
            content: Text(l10n.clearCartMessage),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(l10n.cancelLabel),
              ),
              FilledButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(l10n.clearCart),
              ),
            ],
          ),
        ) ??
        false;
    if (!confirmed || !mounted) return;

    final CartController cart = context.read<CartController>();
    final AuthFailure? failure = await cart.empty(widget.args.restaurantId);
    if (!mounted) return;
    if (failure != null) {
      _showError(failure.message(l10n));
      return;
    }
    Navigator.of(context).pop();
  }

  /// Removes every sold-out line in one go, which is the only thing the
  /// customer can do about them.
  Future<void> _dropUnavailable(Cart cart) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController controller = context.read<CartController>();
    for (final CartLine line
        in cart.lines.where((CartLine l) => !l.isAvailable)) {
      final AuthFailure? failure =
          await controller.removeLine(widget.args.restaurantId, line.id);
      if (failure != null) {
        _showError(controller.firstError() ?? failure.message(l10n));
        return;
      }
    }
  }

  Future<void> _checkout(Cart cart) async {
    final Order? order = await showCheckoutSheet(
      context: context,
      cart: cart,
      restaurantId: widget.args.restaurantId,
    );
    if (order == null || !mounted) return;

    // The server empties the cart on success, so going back cannot place it
    // twice — replace this screen rather than stacking the order on top of it.
    // The celebration then replaces itself with tracking.
    context.read<OrdersController>().load();
    ScaffoldMessenger.of(context).clearSnackBars();
    Navigator.of(context).pushReplacementNamed(
      AppRoutes.orderPlaced,
      arguments: OrderPlacedArgs(order: order),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController controller = context.watch<CartController>();
    final Cart? cart = controller.cart;

    if (controller.isLoading && cart == null) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.cartTitle)),
        body: const NexmileLoader(),
      );
    }

    if (cart == null || cart.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.cartTitle)),
        body: SingleChildScrollView(
          child: EmptyState(
            emoji: '🛒',
            title: l10n.cartEmptyTitle,
            subtitle: l10n.cartEmptySubtitle,
            action: FilledButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.browseRestaurants),
            ),
          ),
        ),
      );
    }

    final List<CartLine> unavailable =
        cart.lines.where((CartLine l) => !l.isAvailable).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.cartTitle),
        actions: <Widget>[
          IconButton(
            onPressed: controller.isMutating ? null : _clear,
            icon: const Icon(Icons.delete_outline_rounded),
            tooltip: l10n.clearCart,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: <Widget>[
          Text(
            cart.restaurant.name,
            style: theme.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 4),
          Text(
            cart.fulfilmentType == FulfilmentType.pickup
                ? l10n.pickupLabel
                : l10n.deliveryLabel,
            style: theme.textTheme.bodySmall,
          ),
          if (!cart.restaurant.isOpen) ...<Widget>[
            const SizedBox(height: 12),
            _Warning(message: l10n.closedRightNow),
          ],
          if (unavailable.isNotEmpty) ...<Widget>[
            const SizedBox(height: 12),
            _Warning(
              message: l10n.unavailableItemsNotice(
                unavailable.map((CartLine l) => l.name).join(', '),
              ),
              action: TextButton(
                onPressed:
                    controller.isMutating ? null : () => _dropUnavailable(cart),
                child: Text(l10n.removeUnavailable),
              ),
            ),
          ],
          if (!cart.meetsMinimum) ...<Widget>[
            const SizedBox(height: 12),
            _Warning(
              message: l10n.minimumNotMet(
                formatRupees(cart.minimumOrderValue),
              ),
            ),
          ],
          const SizedBox(height: 16),
          for (final CartLine line in cart.lines) ...<Widget>[
            _CartLineRow(
              line: line,
              enabled: !controller.isMutating,
              onChanged: (int quantity) => _setQuantity(line, quantity),
            ),
            const Divider(height: 28),
          ],
          _CouponRow(
            coupon: cart.appliedCoupon,
            saving: cart.appliedCoupon?.discount ?? cart.totals.discountTotal,
            enabled: !controller.isMutating,
            onApply: _applyCoupon,
            onRemove: _removeCoupon,
          ),
          const SizedBox(height: 16),
          _BillDetails(cart: cart),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: FilledButton(
          onPressed: cart.canCheckout && !controller.isMutating
              ? () => _checkout(cart)
              : null,
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.greenDeep,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(52),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              l10n.placeOrderFor(formatRupees(cart.totals.grandTotal)),
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}

class _Warning extends StatelessWidget {
  const _Warning({required this.message, this.action});

  final String message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.error.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(12),
        border:
            Border.all(color: theme.colorScheme.error.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.error_outline_rounded,
                  size: 18, color: theme.colorScheme.error),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: theme.textTheme.bodySmall
                      ?.copyWith(color: theme.colorScheme.error),
                ),
              ),
            ],
          ),
          if (action != null)
            Align(alignment: AlignmentDirectional.centerEnd, child: action!),
        ],
      ),
    );
  }
}

class _CartLineRow extends StatelessWidget {
  const _CartLineRow({
    required this.line,
    required this.enabled,
    required this.onChanged,
  });

  final CartLine line;
  final bool enabled;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Opacity(
      opacity: line.isAvailable ? 1 : 0.55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: VegMark(isVeg: line.isVeg),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  line.name,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    decoration:
                        line.isAvailable ? null : TextDecoration.lineThrough,
                  ),
                ),
                if (line.options.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 2),
                  Text(line.optionsLabel, style: theme.textTheme.bodySmall),
                ],
                if ((line.notes ?? '').isNotEmpty) ...<Widget>[
                  const SizedBox(height: 2),
                  Text(
                    line.notes!,
                    style: theme.textTheme.bodySmall
                        ?.copyWith(fontStyle: FontStyle.italic),
                  ),
                ],
                if (!line.isAvailable) ...<Widget>[
                  const SizedBox(height: 4),
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
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              QuantityControl(
                quantity: line.quantity,
                enabled: enabled,
                onAdd: () => onChanged(line.quantity + 1),
                // Zero removes the line server-side, so the minus button needs
                // no special case at the boundary.
                onRemove: () => onChanged(line.quantity - 1),
              ),
              const SizedBox(height: 6),
              Rupees(
                line.lineTotal,
                style: theme.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// "Apply a coupon", or the one applied and what it saves.
class _CouponRow extends StatelessWidget {
  const _CouponRow({
    required this.coupon,
    required this.saving,
    required this.enabled,
    required this.onApply,
    required this.onRemove,
  });

  final AppliedCoupon? coupon;
  final double saving;
  final bool enabled;
  final VoidCallback onApply;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AppliedCoupon? applied = coupon;
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;

    final Widget icon = Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (applied == null ? AppColors.orangeDeep : green)
            .withValues(alpha: 0.12),
      ),
      child: Icon(
        applied == null ? Icons.local_offer_outlined : Icons.check_rounded,
        size: 19,
        color: applied == null ? AppColors.orangeDeep : green,
      ),
    );

    return Material(
      color: applied == null
          ? theme.colorScheme.surfaceContainerLow
          : green.withValues(alpha: isDark ? 0.16 : 0.08),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: applied == null && enabled ? onApply : null,
        child: Container(
          padding: const EdgeInsetsDirectional.fromSTEB(14, 12, 8, 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: applied == null
                  ? theme.colorScheme.outline
                  : green.withValues(alpha: 0.4),
            ),
          ),
          child: Row(
            children: <Widget>[
              icon,
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      applied == null
                          ? l10n.couponApplyTitle
                          : l10n.couponAppliedTitle(applied.code),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    if (applied != null && saving > 0)
                      Text(
                        l10n.couponSaving(formatRupees(saving)),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: green,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    else if (applied?.title != null)
                      Text(
                        applied!.title!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                  ],
                ),
              ),
              if (applied == null)
                Icon(
                  Icons.chevron_right_rounded,
                  color: theme.colorScheme.onSurfaceVariant,
                )
              else
                TextButton(
                  onPressed: enabled ? onRemove : null,
                  style: TextButton.styleFrom(
                    foregroundColor: theme.colorScheme.error,
                  ),
                  child: Text(l10n.couponRemove),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Where a code is typed. Closes with the code once the server accepts it;
/// a refusal stays on the sheet, in the server's own words, under the field.
class _CouponSheet extends StatefulWidget {
  const _CouponSheet({required this.restaurantId});

  final String restaurantId;

  @override
  State<_CouponSheet> createState() => _CouponSheetState();
}

class _CouponSheetState extends State<_CouponSheet> {
  final TextEditingController _code = TextEditingController();
  String? _error;

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  Future<void> _apply() async {
    final String code = _code.text.trim().toUpperCase();
    if (code.isEmpty) return;
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NavigatorState navigator = Navigator.of(context);
    final CartController cart = context.read<CartController>();
    setState(() => _error = null);
    final AuthFailure? failure = await cart.applyCoupon(widget.restaurantId, code);
    if (!mounted) return;
    if (failure != null) {
      setState(() => _error = cart.firstError('code') ??
          cart.firstError() ??
          failure.message(l10n));
      return;
    }
    navigator.pop(code);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool busy = context.watch<CartController>().isMutating;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        20,
        0,
        20,
        20 + MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            l10n.couponApplyTitle,
            style: theme.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _code,
            autofocus: true,
            enabled: !busy,
            textCapitalization: TextCapitalization.characters,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => _apply(),
            onChanged: (_) {
              if (_error != null) setState(() => _error = null);
            },
            decoration: InputDecoration(
              labelText: l10n.couponCodeLabel,
              errorText: _error,
              errorMaxLines: 3,
              prefixIcon: const Icon(Icons.local_offer_outlined),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: busy ? null : _apply,
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.greenDeep,
              foregroundColor: Colors.white,
              minimumSize: const Size.fromHeight(50),
            ),
            child: busy
                ? const SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.2,
                      color: Colors.white,
                    ),
                  )
                : Text(l10n.couponApply),
          ),
        ],
      ),
    );
  }
}

class _BillDetails extends StatelessWidget {
  const _BillDetails({required this.cart});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartTotals totals = cart.totals;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              l10n.billDetailsTitle,
              style: theme.textTheme.titleSmall
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(height: 12),
          BillRow(label: l10n.itemTotal, amount: totals.itemsTotal),
          if (totals.packagingFee > 0)
            BillRow(label: l10n.packagingLabel, amount: totals.packagingFee),
          if (cart.fulfilmentType == FulfilmentType.delivery)
            BillRow(
              label: l10n.deliveryFeeLabel,
              amount: totals.deliveryFee,
              // Free delivery is an earned thing; showing "₹0" hides that.
              freeLabel: cart.freeDeliveryApplied || totals.deliveryFee == 0
                  ? l10n.freeLabel
                  : null,
            ),
          if (totals.discountTotal > 0)
            BillRow(
              label: l10n.discountLabel,
              amount: -totals.discountTotal,
              highlight: true,
            ),
          if (totals.taxTotal > 0)
            BillRow(label: l10n.taxesAndCharges, amount: totals.taxTotal),
          const Divider(height: 24),
          BillRow(
            label: l10n.toPay,
            amount: totals.grandTotal,
            emphasis: true,
          ),
        ],
      ),
    );
  }
}
