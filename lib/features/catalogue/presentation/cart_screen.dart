import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/motion/nexmile_loader.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../address/data/address.dart';
import '../../address/presentation/address_flow.dart';
import '../../address/state/address_controller.dart';
import '../../auth/data/auth_failure.dart';
import '../../wallet/state/wallet_controller.dart';
import '../data/cart_models.dart';
import '../data/order_models.dart';
import '../data/order_note.dart';
import '../state/cart_controller.dart';
import '../state/orders_controller.dart';
import 'widgets/cart_sheets.dart';
import 'widgets/catalogue_widgets.dart';

/// One restaurant's basket, and the way out of it: the dishes, the savings,
/// the doorstep, the bill, and a bar that says where it goes, how it is paid
/// and places it.
class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.args});

  final CartArgs args;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  /// Delivery or pickup once the customer has switched; until then, the
  /// cart's own.
  FulfilmentType? _fulfilment;

  /// The address picked here; until then, the one the storefront uses.
  int? _addressId;

  String _note = '';
  final Set<DeliveryInstruction> _instructions = <DeliveryInstruction>{};
  bool _noCutlery = false;

  /// On by default whenever there is a balance to spend, the way Swiggy Money
  /// works: money the customer put in the wallet is money they meant to use.
  bool _useWallet = true;

  bool _billOpen = false;

  /// The server empties the cart the moment the order is placed. The last
  /// one stays on screen while this page gives way to the celebration,
  /// rather than flashing "Your cart is empty" on the way out.
  Cart? _lastCart;
  bool _ordered = false;

  @override
  void initState() {
    super.initState();
    // Re-read on entry: prices, availability and the minimum can all have moved
    // since the menu screen last saw them, and a refund may have reached the
    // wallet.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<CartController>().load(widget.args.restaurantId);
      context.read<AddressController>().load();
      context.read<WalletController>().load();
    });
  }

  FulfilmentType _fulfilmentOf(Cart cart) => _fulfilment ?? cart.fulfilmentType;

  Address? _addressFrom(AddressController addresses) {
    final int? id = _addressId ?? addresses.deliveryAddress?.id;
    if (id == null) return null;
    for (final Address address in addresses.addresses) {
      if (address.id == id) return address;
    }
    return null;
  }

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _applyCoupon() async {
    final String? applied =
        await showCouponSheet(context, widget.args.restaurantId);
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

  Future<void> _setFulfilment(Cart cart, FulfilmentType type) async {
    if (type == _fulfilmentOf(cart)) return;
    Haptics.select();
    setState(() => _fulfilment = type);
    final AppLocalizations l10n = AppLocalizations.of(context);
    // Pickup carries no delivery fee, so the bill is priced again for it.
    final AuthFailure? failure = await context
        .read<CartController>()
        .load(widget.args.restaurantId, fulfilmentType: type);
    if (failure != null) _showError(failure.message(l10n));
  }

  void _addMore() {
    // From the menu, the menu is right underneath. From anywhere else it is
    // opened in this page's place, so its cart bar comes straight back here.
    if (widget.args.fromMenu) {
      Navigator.of(context).pop();
      return;
    }
    Navigator.of(context).pushReplacementNamed(
      AppRoutes.restaurant,
      arguments: RestaurantArgs(restaurantId: widget.args.restaurantId),
    );
  }

  Future<void> _editNote() async {
    final String? note = await showCartNoteSheet(context, _note);
    if (note == null || !mounted) return;
    setState(() => _note = note);
  }

  void _toggleInstruction(DeliveryInstruction instruction) {
    Haptics.select();
    setState(() {
      if (!_instructions.remove(instruction)) _instructions.add(instruction);
    });
  }

  Future<void> _pickAddress() async {
    final Address? chosen = await showDeliveryAddressSheet(
      context,
      selectedId: _addressFrom(context.read<AddressController>())?.id,
    );
    if (chosen == null || !mounted) return;
    setState(() => _addressId = chosen.id);
  }

  Future<void> _choosePayment(double total) async {
    final bool? useWallet =
        await showPayUsingSheet(context, useWallet: _useWallet, total: total);
    if (useWallet == null || !mounted) return;
    setState(() => _useWallet = useWallet);
  }

  Future<void> _placeOrder(Cart cart) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartController controller = context.read<CartController>();
    final WalletController wallet = context.read<WalletController>();
    final OrdersController orders = context.read<OrdersController>();
    final FulfilmentType type = _fulfilmentOf(cart);
    final bool delivery = type == FulfilmentType.delivery;
    final Address? address = _addressFrom(context.read<AddressController>());

    // The button reads "Add address" until there is one; the order follows
    // on the next tap, with the address in view.
    if (delivery && address == null) {
      await _pickAddress();
      return;
    }

    final double total = cart.totals.grandTotal;
    final double share = walletShareOf(wallet, total, use: _useWallet);
    Haptics.tap();
    final (Order? order, AuthFailure? failure) = await controller.checkout(
      widget.args.restaurantId,
      fulfilmentType: type,
      // Cash on delivery pays whatever the wallet does not; an order the
      // wallet covers whole has nothing left to collect.
      paymentMethod: share > 0 && share >= total ? 'wallet' : 'cod',
      useWallet: share > 0,
      addressId: delivery ? address?.id : null,
      note: composeOrderNote(
        note: _note,
        // The doorstep means nothing at the counter.
        instructions:
            delivery ? _instructions : const <DeliveryInstruction>{},
        noCutlery: _noCutlery,
      ),
    );

    // The balance can change between reading it and ordering, on another
    // device or with a refund landing, and the server refuses rather than
    // guess; either way the wallet is read again.
    if (share > 0) unawaited(wallet.load());
    if (!mounted) return;
    if (order == null) {
      // Everything is checked again on the server at this point — stock,
      // hours, the radius, the minimum — so its own words are the most
      // accurate thing to show.
      _showError(
        controller.firstError() ?? (failure ?? AuthFailure.unknown).message(l10n),
      );
      return;
    }

    // Set before the rebuild the emptied cart has already scheduled.
    _ordered = true;
    unawaited(orders.load());
    ScaffoldMessenger.of(context).clearSnackBars();
    // The server emptied the cart, so going back cannot place it twice —
    // replace this page rather than stacking the order on top of it. The
    // celebration then replaces itself with tracking.
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
    if (controller.cart != null) _lastCart = controller.cart;
    final Cart? cart = controller.cart ?? (_ordered ? _lastCart : null);

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

    final FulfilmentType fulfilment = _fulfilmentOf(cart);
    final bool delivery = fulfilment == FulfilmentType.delivery;
    final Address? address =
        delivery ? _addressFrom(context.watch<AddressController>()) : null;
    final WalletController wallet = context.watch<WalletController>();
    final double total = cart.totals.grandTotal;
    final double share = walletShareOf(wallet, total, use: _useWallet);
    final bool busy = controller.isMutating || _ordered;
    final List<CartLine> unavailable =
        cart.lines.where((CartLine l) => !l.isAvailable).toList();

    final String payLabel = share <= 0
        ? l10n.payOnDelivery
        : share >= total
            ? l10n.walletTitle
            : l10n.cartWalletAndCash;

    Widget gutter(Widget child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: child,
        );
    const EdgeInsets headingPadding = EdgeInsets.fromLTRB(20, 24, 20, 10);

    final Color page = theme.colorScheme.surfaceContainerLow;

    return Scaffold(
      backgroundColor: page,
      appBar: AppBar(
        backgroundColor: page,
        surfaceTintColor: Colors.transparent,
        titleSpacing: 0,
        title: _CartTitle(
          name: cart.restaurant.name,
          detail: '${l10n.itemsInCart(cart.itemCount)} · '
              '${delivery ? l10n.deliveryLabel : l10n.pickupLabel}',
        ),
        actions: <Widget>[
          IconButton(
            onPressed: busy ? null : _clear,
            icon: const Icon(Icons.delete_outline_rounded),
            tooltip: l10n.clearCart,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 4, bottom: 28),
        children: <Widget>[
          if (cart.restaurant.supportsPickup) ...<Widget>[
            gutter(
              _FulfilmentSwitch(
                value: fulfilment,
                enabled: !busy,
                onChanged: (FulfilmentType type) =>
                    _setFulfilment(cart, type),
              ),
            ),
            const SizedBox(height: 12),
          ],
          if (cart.totals.discountTotal > 0) ...<Widget>[
            gutter(_SavedBanner(amount: cart.totals.discountTotal)),
            const SizedBox(height: 12),
          ],
          if (!cart.restaurant.isOpen) ...<Widget>[
            gutter(_Warning(message: l10n.closedRightNow)),
            const SizedBox(height: 12),
          ],
          if (unavailable.isNotEmpty) ...<Widget>[
            gutter(
              _Warning(
                message: l10n.unavailableItemsNotice(
                  unavailable.map((CartLine l) => l.name).join(', '),
                ),
                action: TextButton(
                  onPressed: busy ? null : () => _dropUnavailable(cart),
                  child: Text(l10n.removeUnavailable),
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
          if (!cart.meetsMinimum) ...<Widget>[
            gutter(
              _Warning(
                message: l10n.minimumNotMet(
                  formatRupees(cart.minimumOrderValue),
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
          gutter(
            _Panel(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  for (int i = 0; i < cart.lines.length; i++) ...<Widget>[
                    if (i > 0) const _Rule(indent: 16),
                    _CartLineRow(
                      line: cart.lines[i],
                      enabled: !busy,
                      onChanged: (int quantity) =>
                          _setQuantity(cart.lines[i], quantity),
                    ),
                  ],
                  const _Rule(),
                  _ActionRow(
                    icon: Icons.add_circle_outline_rounded,
                    title: l10n.cartAddMoreItems,
                    onTap: busy ? null : _addMore,
                  ),
                  const _Rule(indent: 52),
                  _ActionRow(
                    key: const ValueKey<String>('cart-note'),
                    icon: Icons.edit_note_rounded,
                    title: _note.isEmpty
                        ? l10n.cartAddNote
                        : l10n.noteToRestaurant,
                    detail: _note.isEmpty ? null : _note,
                    onTap: busy ? null : _editNote,
                  ),
                  const _Rule(indent: 52),
                  _CutleryRow(
                    value: _noCutlery,
                    onChanged: busy
                        ? null
                        : (bool value) {
                            Haptics.select();
                            setState(() => _noCutlery = value);
                          },
                  ),
                ],
              ),
            ),
          ),
          SectionHeader(
            title: l10n.cartSavingsCorner,
            caps: true,
            padding: headingPadding,
          ),
          gutter(
            _CouponRow(
              coupon: cart.appliedCoupon,
              saving: cart.appliedCoupon?.discount ?? cart.totals.discountTotal,
              enabled: !busy,
              onApply: _applyCoupon,
              onRemove: _removeCoupon,
            ),
          ),
          if (delivery) ...<Widget>[
            SectionHeader(
              title: l10n.cartDeliveryInstructions,
              caps: true,
              padding: headingPadding,
            ),
            _InstructionChips(
              selected: _instructions,
              onToggle: busy ? null : _toggleInstruction,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: Text(
                l10n.cartInstructionsNote,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
          const SizedBox(height: 20),
          gutter(
            _BillCard(
              cart: cart,
              delivery: delivery,
              walletShare: share,
              open: _billOpen,
              onToggle: () {
                Haptics.select();
                setState(() => _billOpen = !_billOpen);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: _CheckoutBar(
        delivery: delivery,
        address: address,
        restaurantName: cart.restaurant.name,
        prepMinutes: cart.restaurant.avgPrepTimeMinutes,
        payLabel: payLabel,
        total: total,
        busy: busy,
        enabled: cart.canCheckout && !controller.isLoading,
        onAddress: busy ? null : _pickAddress,
        onPay: busy ? null : () => _choosePayment(total),
        onPlace: () => _placeOrder(cart),
      ),
    );
  }
}

/// Latin capitals take wide tracking; Indic scripts have no capitals, and
/// their clusters must not be pulled apart.
bool _isLatin(String text) => text.runes.every((int rune) => rune < 0x0250);

Color _greenOn(ThemeData theme) =>
    theme.brightness == Brightness.dark ? AppColors.greenLight : AppColors.greenDeep;

class _CartTitle extends StatelessWidget {
  const _CartTitle({required this.name, required this.detail});

  final String name;
  final String detail;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.w800),
        ),
        Text(
          detail,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}

/// A white card on the tinted page, the way each part of the cart sits.
class _Panel extends StatelessWidget {
  const _Panel({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.7),
        ),
        boxShadow: isDark
            ? null
            : <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 14,
                  offset: const Offset(0, 5),
                ),
              ],
      ),
      child: child,
    );
  }
}

class _Rule extends StatelessWidget {
  const _Rule({this.indent = 0});

  final double indent;

  @override
  Widget build(BuildContext context) => Divider(
        height: 1,
        thickness: 1,
        indent: indent,
        endIndent: indent == 0 ? 0 : 16,
        color: Theme.of(context).colorScheme.outlineVariant,
      );
}

/// Delivery or pickup, as two halves of one pill.
class _FulfilmentSwitch extends StatelessWidget {
  const _FulfilmentSwitch({
    required this.value,
    required this.enabled,
    required this.onChanged,
  });

  final FulfilmentType value;
  final bool enabled;
  final ValueChanged<FulfilmentType> onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    Widget half(FulfilmentType type, IconData icon, String label) {
      final bool selected = type == value;
      final Color ink =
          selected ? Colors.white : theme.colorScheme.onSurfaceVariant;
      return Expanded(
        child: Semantics(
          selected: selected,
          button: true,
          child: InkWell(
            key: ValueKey<String>('fulfil-${type.name}'),
            borderRadius: BorderRadius.circular(12),
            onTap: enabled ? () => onChanged(type) : null,
            child: AnimatedContainer(
              duration: AppMotion.quick,
              curve: AppMotion.enter,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                color: selected ? AppColors.greenDeep : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(icon, size: 18, color: ink),
                  const SizedBox(width: 6),
                  Flexible(
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: ink,
                        fontWeight: FontWeight.w800,
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

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      child: Row(
        children: <Widget>[
          half(
            FulfilmentType.delivery,
            Icons.delivery_dining_rounded,
            l10n.deliveryLabel,
          ),
          half(
            FulfilmentType.pickup,
            Icons.storefront_rounded,
            l10n.pickupLabel,
          ),
        ],
      ),
    );
  }
}

/// "You saved ₹50 on this order", across the top while the bill takes money
/// off.
class _SavedBanner extends StatelessWidget {
  const _SavedBanner({required this.amount});

  final double amount;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = _greenOn(theme);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
      decoration: BoxDecoration(
        color: isDark ? green.withValues(alpha: 0.14) : AppColors.greenWash,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: green.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.celebration_rounded, size: 18, color: green),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              AppLocalizations.of(context).cartSavedBanner(formatRupees(amount)),
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge?.copyWith(
                color: green,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
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
        borderRadius: BorderRadius.circular(14),
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
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
                  const SizedBox(height: 2),
                  Rupees(line.unitPrice, style: theme.textTheme.bodySmall),
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
                  // Zero removes the line server-side, so the minus button
                  // needs no special case at the boundary.
                  onRemove: () => onChanged(line.quantity - 1),
                ),
                const SizedBox(height: 8),
                AnimatedRupees(
                  line.lineTotal,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// A plain row in the dishes card: an icon, what it does, and where it goes.
class _ActionRow extends StatelessWidget {
  const _ActionRow({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.detail,
  });

  final IconData icon;
  final String title;
  final String? detail;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 13, 12, 13),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 22, color: theme.colorScheme.onSurfaceVariant),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  if (detail != null) ...<Widget>[
                    const SizedBox(height: 2),
                    Text(
                      detail!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall
                          ?.copyWith(fontStyle: FontStyle.italic),
                    ),
                  ],
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}

class _CutleryRow extends StatelessWidget {
  const _CutleryRow({required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color green = _greenOn(theme);
    return InkWell(
      key: const ValueKey<String>('cart-no-cutlery'),
      onTap: onChanged == null ? null : () => onChanged!(!value),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 6, 4, 6),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.no_meals_outlined,
              size: 22,
              color: value ? green : theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    l10n.cartNoCutlery,
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  AnimatedSize(
                    duration: AppMotion.quick,
                    curve: AppMotion.enter,
                    alignment: AlignmentDirectional.topStart,
                    child: value
                        ? Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              l10n.cartNoCutleryThanks,
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(color: green),
                            ),
                          )
                        : const SizedBox(width: double.infinity),
                  ),
                ],
              ),
            ),
            Checkbox(
              value: value,
              activeColor: green,
              checkColor: theme.brightness == Brightness.dark
                  ? AppColors.black
                  : Colors.white,
              onChanged: onChanged == null
                  ? null
                  : (bool? next) => onChanged!(next ?? false),
            ),
          ],
        ),
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
    final Color green = _greenOn(theme);

    final Widget icon = Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (applied == null ? AppColors.orangeDeep : green)
            .withValues(alpha: 0.12),
      ),
      child: Icon(
        applied == null ? Icons.percent_rounded : Icons.check_rounded,
        size: 20,
        color: applied == null ? AppColors.orangeDeep : green,
      ),
    );

    return Material(
      color: applied == null
          ? theme.colorScheme.surfaceContainerLowest
          : Color.alphaBlend(
              green.withValues(alpha: isDark ? 0.16 : 0.08),
              theme.colorScheme.surfaceContainerLowest,
            ),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: applied == null && enabled ? onApply : null,
        child: Container(
          padding: const EdgeInsetsDirectional.fromSTEB(14, 14, 8, 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: applied == null
                  ? theme.colorScheme.outlineVariant.withValues(alpha: 0.7)
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

/// The doorstep chips, in a row that scrolls to the page edge.
class _InstructionChips extends StatelessWidget {
  const _InstructionChips({required this.selected, required this.onToggle});

  final Set<DeliveryInstruction> selected;
  final ValueChanged<DeliveryInstruction>? onToggle;

  static IconData _icon(DeliveryInstruction instruction) =>
      switch (instruction) {
        DeliveryInstruction.leaveAtDoor => Icons.door_front_door_outlined,
        DeliveryInstruction.noBell => Icons.notifications_off_outlined,
        DeliveryInstruction.noCall => Icons.phone_disabled_outlined,
        DeliveryInstruction.security => Icons.shield_outlined,
        DeliveryInstruction.pet => Icons.pets_rounded,
      };

  static String _label(AppLocalizations l10n, DeliveryInstruction instruction) =>
      switch (instruction) {
        DeliveryInstruction.leaveAtDoor => l10n.instructionLeaveAtDoor,
        DeliveryInstruction.noBell => l10n.instructionNoBell,
        DeliveryInstruction.noCall => l10n.instructionNoCall,
        DeliveryInstruction.security => l10n.instructionSecurity,
        DeliveryInstruction.pet => l10n.instructionPet,
      };

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = _greenOn(theme);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (final DeliveryInstruction instruction
                in DeliveryInstruction.values) ...<Widget>[
              if (instruction != DeliveryInstruction.values.first)
                const SizedBox(width: 10),
              Builder(
                builder: (BuildContext context) {
                  final bool on = selected.contains(instruction);
                  return Semantics(
                    selected: on,
                    button: true,
                    child: Material(
                      color: on
                          ? Color.alphaBlend(
                              green.withValues(alpha: isDark ? 0.18 : 0.1),
                              theme.colorScheme.surfaceContainerLowest,
                            )
                          : theme.colorScheme.surfaceContainerLowest,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(
                          color: on
                              ? green
                              : theme.colorScheme.outlineVariant
                                  .withValues(alpha: 0.9),
                          width: on ? 1.4 : 1,
                        ),
                      ),
                      child: InkWell(
                        key: ValueKey<String>('instruction-${instruction.name}'),
                        borderRadius: BorderRadius.circular(16),
                        onTap: onToggle == null
                            ? null
                            : () => onToggle!(instruction),
                        child: SizedBox(
                          width: 104,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      _icon(instruction),
                                      size: 22,
                                      color: on
                                          ? green
                                          : theme.colorScheme.onSurface,
                                    ),
                                    const Spacer(),
                                    AnimatedScale(
                                      scale: on ? 1 : 0,
                                      duration: AppMotion.quick,
                                      curve: AppMotion.spring,
                                      child: Icon(
                                        Icons.check_circle_rounded,
                                        size: 16,
                                        color: green,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  _label(l10n, instruction),
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    height: 1.25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// The bill, folded to its total. A tap opens every line of it.
class _BillCard extends StatelessWidget {
  const _BillCard({
    required this.cart,
    required this.delivery,
    required this.walletShare,
    required this.open,
    required this.onToggle,
  });

  final Cart cart;
  final bool delivery;
  final double walletShare;
  final bool open;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CartTotals totals = cart.totals;
    final Color green = _greenOn(theme);
    final bool saved = totals.discountTotal > 0;
    final double rest = totals.grandTotal - walletShare;

    return _Panel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          InkWell(
            key: const ValueKey<String>('cart-bill'),
            onTap: onToggle,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 14, 10, 14),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.receipt_long_outlined,
                      size: 21,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          l10n.toPay,
                          style: theme.textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                        Text(l10n.cartInclTaxes, style: theme.textTheme.bodySmall),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            if (saved) ...<Widget>[
                              Flexible(
                                child: Rupees(
                                  totals.grandTotal + totals.discountTotal,
                                  struck: true,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              const SizedBox(width: 6),
                            ],
                            Flexible(
                              child: AnimatedRupees(
                                totals.grandTotal,
                                style: theme.textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                        if (saved)
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: green.withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              l10n.cartSavedTag(
                                formatRupees(totals.discountTotal),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: green,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  AnimatedRotation(
                    turns: open ? 0.5 : 0,
                    duration: AppMotion.quick,
                    curve: AppMotion.enter,
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedSize(
            duration: AppMotion.quick,
            curve: AppMotion.enter,
            alignment: Alignment.topCenter,
            child: !open
                ? const SizedBox(width: double.infinity)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const _Rule(indent: 16),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 14),
                        child: Column(
                          children: <Widget>[
                            BillRow(
                              label: l10n.itemTotal,
                              amount: totals.itemsTotal,
                            ),
                            if (totals.packagingFee > 0)
                              BillRow(
                                label: l10n.packagingLabel,
                                amount: totals.packagingFee,
                              ),
                            if (delivery)
                              BillRow(
                                label: l10n.deliveryFeeLabel,
                                amount: totals.deliveryFee,
                                // Free delivery is an earned thing; showing
                                // "₹0" hides that.
                                freeLabel: cart.freeDeliveryApplied ||
                                        totals.deliveryFee == 0
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
                              BillRow(
                                label: l10n.taxesAndCharges,
                                amount: totals.taxTotal,
                              ),
                            if (walletShare > 0) ...<Widget>[
                              const Divider(height: 20),
                              BillRow(
                                label: l10n.walletPaidFromWallet,
                                amount: -walletShare,
                                highlight: true,
                              ),
                              BillRow(
                                label: l10n.walletPayOnDelivery,
                                amount: rest,
                                emphasis: true,
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

/// Fixed to the bottom: where it goes, how it is paid, and the button.
class _CheckoutBar extends StatelessWidget {
  const _CheckoutBar({
    required this.delivery,
    required this.address,
    required this.restaurantName,
    required this.prepMinutes,
    required this.payLabel,
    required this.total,
    required this.busy,
    required this.enabled,
    required this.onAddress,
    required this.onPay,
    required this.onPlace,
  });

  final bool delivery;
  final Address? address;
  final String restaurantName;
  final int prepMinutes;
  final String payLabel;
  final double total;
  final bool busy;
  final bool enabled;
  final VoidCallback? onAddress;
  final VoidCallback? onPay;
  final VoidCallback onPlace;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final bool needsAddress = delivery && address == null;
    final Color green = _greenOn(theme);

    final Address? place = address;
    final String where = !delivery
        ? l10n.cartPickupFrom(restaurantName)
        : place == null
            ? l10n.cartNoAddress
            : l10n.cartDeliverTo(addressLabelName(l10n, place.label));
    final String? whereDetail = !delivery
        ? (prepMinutes > 0 ? l10n.cartReadyIn(prepMinutes) : null)
        : place == null
            ? l10n.cartNoAddressHint
            : place.summary;
    final IconData whereIcon = !delivery
        ? Icons.storefront_rounded
        : place == null
            ? Icons.add_location_alt_outlined
            : addressLabelIcon(place.label);

    final String payHeading = l10n.cartPayUsing.toUpperCase();
    final String totalHeading = l10n.cartTotal.toUpperCase();

    // A fixed bar has to leave room for the page above it, so it grows with
    // the text only so far.
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.5,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerLowest,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
          border: isDark
              ? Border(top: BorderSide(color: theme.colorScheme.outline))
              : null,
          boxShadow: isDark
              ? null
              : <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 18,
                    offset: const Offset(0, -4),
                  ),
                ],
        ),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              InkWell(
                key: const ValueKey<String>('cart-deliver-to'),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(22)),
                onTap: delivery ? onAddress : null,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 14, 8, 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.orangeDeep.withValues(alpha: 0.12),
                        ),
                        child: Icon(
                          whereIcon,
                          size: 19,
                          color: AppColors.orangeDeep,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              where,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall
                                  ?.copyWith(fontWeight: FontWeight.w800),
                            ),
                            if (whereDetail != null)
                              Text(
                                whereDetail,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall,
                              ),
                          ],
                        ),
                      ),
                      if (delivery)
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 8),
                          child: Text(
                            needsAddress ? l10n.addLabel : l10n.cartChange,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: green,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      if (delivery)
                        Icon(Icons.chevron_right_rounded, color: green),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                indent: 16,
                endIndent: 16,
                color: theme.colorScheme.outlineVariant,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 16, 12),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: InkWell(
                        key: const ValueKey<String>('cart-pay-using'),
                        borderRadius: BorderRadius.circular(12),
                        onTap: onPay,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 6, 4, 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Text(
                                      payHeading,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelSmall?.copyWith(
                                        color: theme.colorScheme.onSurfaceVariant,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing:
                                            _isLatin(payHeading) ? 1.2 : 0.2,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_up_rounded,
                                    size: 18,
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 2),
                              Text(
                                payLabel,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleSmall
                                    ?.copyWith(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 6,
                      child: _PlaceButton(
                        total: total,
                        totalHeading: totalHeading,
                        label: needsAddress ? l10n.addAddress : l10n.cartPlaceOrder,
                        busy: busy,
                        onPressed: enabled && !busy ? onPlace : null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlaceButton extends StatelessWidget {
  const _PlaceButton({
    required this.total,
    required this.totalHeading,
    required this.label,
    required this.busy,
    required this.onPressed,
  });

  final double total;
  final String totalHeading;
  final String label;
  final bool busy;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool live = onPressed != null || busy;
    final Color fill = live
        ? AppColors.greenDeep
        : theme.colorScheme.onSurface.withValues(alpha: 0.12);
    final Color ink = live
        ? Colors.white
        : theme.colorScheme.onSurface.withValues(alpha: 0.38);

    return Semantics(
      button: true,
      enabled: onPressed != null,
      child: Material(
        color: fill,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          key: const ValueKey<String>('cart-place-order'),
          borderRadius: BorderRadius.circular(14),
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 56),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(14, 8, 8, 8),
              child: busy
                  ? const Center(
                      child: SizedBox.square(
                        dimension: 22,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.4,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Row(
                      children: <Widget>[
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              AnimatedRupees(
                                total,
                                style: theme.textTheme.titleSmall?.copyWith(
                                  color: ink,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                totalHeading,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: ink.withValues(alpha: 0.8),
                                  fontWeight: FontWeight.w700,
                                  letterSpacing:
                                      _isLatin(totalHeading) ? 1.0 : 0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: Text(
                            label,
                            maxLines: 2,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: ink,
                              fontWeight: FontWeight.w800,
                              height: 1.15,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_right_rounded, color: ink, size: 26),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
