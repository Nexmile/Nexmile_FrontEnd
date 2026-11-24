import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/motion/haptics.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../../address/data/address.dart';
import '../../../address/presentation/address_flow.dart';
import '../../../address/state/address_controller.dart';
import '../../../auth/data/auth_failure.dart';
import '../../../wallet/state/wallet_controller.dart';
import '../../data/delivery_instruction.dart';
import '../../state/cart_controller.dart';
import 'catalogue_widgets.dart';

/// Where a code is typed. Answers with the code once the server accepts it;
/// a refusal stays on the sheet, in the server's own words, under the field.
Future<String?> showCouponSheet(BuildContext context, String restaurantId) =>
    showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext context) =>
          _CouponSheet(restaurantId: restaurantId),
    );

/// The note for the kitchen. Answers with the new text, possibly empty, or
/// null if the customer backed out.
Future<String?> showCartNoteSheet(BuildContext context, String note) =>
    showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext context) => _NoteSheet(initial: note),
    );

/// Picks one of the saved addresses, or adds one. Answers with the address
/// chosen, or null if the customer backed out.
Future<Address?> showDeliveryAddressSheet(
  BuildContext context, {
  required int? selectedId,
}) async {
  // -1 asks for the add flow, which runs once this list closes.
  final int? chosen = await showModalBottomSheet<int>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (BuildContext context) => _AddressSheet(selectedId: selectedId),
  );
  if (chosen == null || !context.mounted) return null;
  if (chosen == -1) return addAddress(context);
  for (final Address address in context.read<AddressController>().addresses) {
    if (address.id == chosen) return address;
  }
  return null;
}

/// How the order is paid: the wallet, if there is one, and cash for the rest.
/// Answers with whether to use the wallet, or null if nothing changed.
Future<bool?> showPayUsingSheet(
  BuildContext context, {
  required bool useWallet,
  required double total,
}) =>
    showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (BuildContext context) =>
          _PayUsingSheet(useWallet: useWallet, total: total),
    );

/// How much of [total] the wallet pays. Zero when it is switched off or
/// there is no wallet; the server makes the same sum and has the last word.
double walletShareOf(WalletController wallet, double total, {required bool use}) {
  if (!use || !wallet.isAvailable || wallet.balance <= 0) return 0;
  return wallet.balance < total ? wallet.balance : total;
}

class _SheetTitle extends StatelessWidget {
  const _SheetTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.w800),
      );
}

ButtonStyle _primaryButton() => FilledButton.styleFrom(
      backgroundColor: AppColors.greenDeep,
      foregroundColor: Colors.white,
      minimumSize: const Size.fromHeight(50),
    );

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
          _SheetTitle(l10n.couponApplyTitle),
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
            style: _primaryButton(),
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

class _NoteSheet extends StatefulWidget {
  const _NoteSheet({required this.initial});

  final String initial;

  @override
  State<_NoteSheet> createState() => _NoteSheetState();
}

class _NoteSheetState extends State<_NoteSheet> {
  late final TextEditingController _note =
      TextEditingController(text: widget.initial);

  @override
  void dispose() {
    _note.dispose();
    super.dispose();
  }

  void _save() => Navigator.of(context).pop(_note.text.trim());

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
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
          _SheetTitle(l10n.noteToRestaurant),
          const SizedBox(height: 16),
          TextField(
            key: const ValueKey<String>('cart-note-field'),
            controller: _note,
            autofocus: true,
            // For the whole order; a request about one dish goes on that
            // dish, where the kitchen sees it printed under it.
            maxLength: maxOrderNoteLength,
            maxLines: 3,
            minLines: 2,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              hintText: l10n.cartOrderNoteHint,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8),
          FilledButton(
            onPressed: _save,
            style: _primaryButton(),
            child: Text(l10n.cartNoteSave),
          ),
        ],
      ),
    );
  }
}

class _AddressSheet extends StatelessWidget {
  const _AddressSheet({required this.selectedId});

  final int? selectedId;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<Address> addresses = context.watch<AddressController>().addresses;
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;

    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
            child: _SheetTitle(l10n.cartChooseAddress),
          ),
          Flexible(
            child: RadioGroup<int>(
              groupValue: selectedId,
              onChanged: (int? value) {
                Haptics.select();
                Navigator.of(context).pop(value);
              },
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 8),
                children: <Widget>[
                  for (final Address address in addresses)
                    RadioListTile<int>(
                      value: address.id,
                      activeColor: green,
                      controlAffinity: ListTileControlAffinity.trailing,
                      secondary: Icon(
                        addressLabelIcon(address.label),
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      title: Text(
                        addressLabelName(l10n, address.label),
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        address.summary,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ListTile(
                    leading: Icon(Icons.add_rounded, color: green),
                    title: Text(
                      l10n.addAddress,
                      style: TextStyle(
                        color: green,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    onTap: () => Navigator.of(context).pop(-1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PayUsingSheet extends StatefulWidget {
  const _PayUsingSheet({required this.useWallet, required this.total});

  final bool useWallet;
  final double total;

  @override
  State<_PayUsingSheet> createState() => _PayUsingSheetState();
}

class _PayUsingSheetState extends State<_PayUsingSheet> {
  late bool _useWallet = widget.useWallet;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final WalletController wallet = context.watch<WalletController>();
    final double share = walletShareOf(wallet, widget.total, use: _useWallet);
    final double rest = widget.total - share;
    final bool hasBalance = wallet.isAvailable && wallet.balance > 0;

    final String cashLine = share <= 0
        ? l10n.cartCashFull
        : rest <= 0
            ? l10n.cartCashNothing
            : l10n.cartCashRest(formatRupees(rest));

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _SheetTitle(l10n.cartPayUsing),
            const SizedBox(height: 16),
            if (wallet.isAvailable) ...<Widget>[
              _PayOption(
                icon: Icons.account_balance_wallet_outlined,
                title: l10n.walletTitle,
                subtitle: l10n.walletAvailable(formatRupees(wallet.balance)),
                trailing: hasBalance
                    ? Switch(
                        key: const ValueKey<String>('pay-wallet-switch'),
                        value: _useWallet,
                        onChanged: (bool value) {
                          Haptics.select();
                          setState(() => _useWallet = value);
                        },
                      )
                    : TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed(AppRoutes.wallet);
                        },
                        child: Text(l10n.walletAddMoney),
                      ),
              ),
              const SizedBox(height: 10),
            ],
            _PayOption(
              icon: Icons.payments_outlined,
              title: l10n.payOnDelivery,
              subtitle: cashLine,
              trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Icon(
                  rest > 0
                      ? Icons.check_circle_rounded
                      : Icons.radio_button_unchecked_rounded,
                  color: rest > 0
                      ? (theme.brightness == Brightness.dark
                          ? AppColors.greenLight
                          : AppColors.greenDeep)
                      : theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(_useWallet),
              style: _primaryButton(),
              child: Text(l10n.cartDone),
            ),
          ],
        ),
      ),
    );
  }
}

class _PayOption extends StatelessWidget {
  const _PayOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(14, 12, 4, 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 21, color: theme.colorScheme.onSurface),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 2),
                Text(subtitle, style: theme.textTheme.bodySmall),
              ],
            ),
          ),
          trailing,
        ],
      ),
    );
  }
}
