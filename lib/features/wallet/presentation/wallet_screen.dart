import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/motion/reveal.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/empty_illustration.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../auth/data/auth_failure.dart';
import '../../auth/data/auth_user.dart';
import '../../auth/state/auth_controller.dart';
import '../../catalogue/presentation/widgets/catalogue_widgets.dart';
import '../data/payment_gateway.dart';
import '../data/wallet_models.dart';
import '../state/wallet_controller.dart';
import 'wallet_widgets.dart';

/// Which movements the list shows.
enum _Filter { all, added, spent }

/// The wallet: the balance up top, adding money under it, and every
/// movement below, to filter, search and open.
///
/// Re-reads on open and on pull, never trusting a balance from earlier in the
/// session, because a refund can land while the app is in the background.
/// The balance only ever changes on the server's word: after it has checked
/// a payment's signature, never on the gateway's say-so alone.
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  /// The amounts most people add. Tapping one fills the field rather than
  /// paying straight away, so a mis-tap costs nothing.
  static const List<int> _presets = <int>[100, 200, 500, 1000];

  /// What the server sends: the latest movements, not the whole history.
  static const int _serverPage = 50;

  final TextEditingController _amount = TextEditingController();
  final TextEditingController _search = TextEditingController();

  _Filter _filter = _Filter.all;
  bool _searching = false;
  DateTimeRange? _range;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<WalletController>().load(),
    );
    _amount.addListener(() => setState(() {}));
    _search.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _amount.dispose();
    _search.dispose();
    super.dispose();
  }

  double? get _entered => double.tryParse(_amount.text.trim());

  bool _valid(WalletController wallet) {
    final double? amount = _entered;
    return amount != null &&
        amount >= WalletController.minTopUp &&
        amount <= wallet.maxAddable;
  }

  /// Why the amount typed cannot be added, once there is something typed.
  String? _amountError(AppLocalizations l10n, WalletController wallet) {
    final double? amount = _entered;
    if (amount == null) return null;
    if (amount < WalletController.minTopUp) {
      return l10n.walletBelowMin(formatRupees(WalletController.minTopUp));
    }
    if (amount > wallet.maxAddable) {
      return l10n.walletAboveMax(formatRupees(wallet.maxAddable));
    }
    return null;
  }

  Future<void> _add() async {
    final WalletController wallet = context.read<WalletController>();
    final double? amount = _entered;
    // The controller refuses a second attempt while one is running; this
    // is the first of the two guards.
    if (amount == null || !_valid(wallet) || wallet.isAdding) return;
    FocusScope.of(context).unfocus();
    Haptics.tap();

    final AppLocalizations l10n = AppLocalizations.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AuthUser? user = context.read<AuthController>().user;

    final TopUpOutcome outcome = await wallet.addMoney(
      amount,
      PayerDetails(name: user?.name, email: user?.email, phone: user?.phone),
    );
    if (!mounted) return;

    final String? message = switch (outcome) {
      TopUpOutcome.added => l10n.walletMoneyAdded(formatRupees(amount)),
      TopUpOutcome.cancelled => null,
      TopUpOutcome.paymentFailed => l10n.walletPaymentFailed,
      TopUpOutcome.confirming => l10n.walletPaymentConfirming,
      TopUpOutcome.rejected => wallet.rejection ?? l10n.somethingWentWrong,
      TopUpOutcome.unavailable => l10n.walletTopUpUnavailable,
      TopUpOutcome.failed => l10n.somethingWentWrong,
    };
    if (outcome == TopUpOutcome.added) {
      Haptics.success();
      _amount.clear();
    }
    if (message != null) {
      messenger
        ..clearSnackBars()
        ..showSnackBar(SnackBar(content: Text(message)));
    }
  }

  Future<void> _pickRange(List<WalletTransaction> entries) async {
    final DateTime now = DateTime.now();
    DateTime first = DateTime(now.year - 1, now.month, now.day);
    for (final WalletTransaction entry in entries) {
      final DateTime? at = entry.createdAt?.toLocal();
      if (at != null && at.isBefore(first)) first = at;
    }
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(first.year, first.month, first.day),
      lastDate: DateTime(now.year, now.month, now.day),
      initialDateRange: _range,
    );
    if (picked != null && mounted) setState(() => _range = picked);
  }

  void _clearFilters() {
    setState(() {
      _filter = _Filter.all;
      _range = null;
      _searching = false;
    });
    _search.clear();
  }

  bool get _filtered =>
      _filter != _Filter.all || _range != null || _search.text.trim().isNotEmpty;

  List<WalletTransaction> _visible(
    AppLocalizations l10n,
    List<WalletTransaction> entries,
  ) {
    final String query = _search.text.trim().toLowerCase();
    final DateTimeRange? range = _range;
    return <WalletTransaction>[
      for (final WalletTransaction entry in entries)
        if (switch (_filter) {
              _Filter.all => true,
              _Filter.added => entry.isCredit,
              _Filter.spent => !entry.isCredit,
            } &&
            (range == null || _within(entry.createdAt?.toLocal(), range)) &&
            (query.isEmpty || _matches(l10n, entry, query)))
          entry,
    ];
  }

  static bool _within(DateTime? at, DateTimeRange range) {
    if (at == null) return false;
    final DateTime day = DateTime(at.year, at.month, at.day);
    return !day.isBefore(range.start) && !day.isAfter(range.end);
  }

  static bool _matches(
    AppLocalizations l10n,
    WalletTransaction entry,
    String query,
  ) =>
      <String?>[
        '${entry.id}',
        '#${entry.id}',
        entry.orderNumber,
        entry.reference,
        entry.description,
        walletEntryTitle(l10n, entry),
      ].any((String? field) => field?.toLowerCase().contains(query) ?? false);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    final WalletController wallet = context.watch<WalletController>();
    final Wallet? data = wallet.wallet;
    final AuthFailure? failure = wallet.failure;
    // At the ceiling there is nothing to add; say so instead of offering a
    // field that every amount fails.
    final bool full =
        data != null && wallet.maxAddable < WalletController.minTopUp;
    final bool canAdd = data != null && !full && !wallet.isAdding;
    final Color page = theme.colorScheme.surfaceContainerLow;

    final List<WalletTransaction> all =
        data?.transactions ?? const <WalletTransaction>[];
    final List<WalletTransaction> shown = _visible(l10n, all);

    return Scaffold(
      backgroundColor: page,
      appBar: AppBar(
        backgroundColor: page,
        surfaceTintColor: Colors.transparent,
        title: Text(l10n.walletTitle),
      ),
      body: RefreshIndicator(
        color: theme.colorScheme.primary,
        onRefresh: wallet.load,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          children: <Widget>[
            WalletBalanceCard(
              balance: data?.balance,
              isLoading: wallet.isLoading && data == null,
              hidden: wallet.isBalanceHidden,
              updatedAt: wallet.updatedAt,
              onToggleHidden: () {
                Haptics.select();
                wallet.toggleBalanceHidden();
              },
            ),
            if (failure != null && data == null) ...<Widget>[
              const SizedBox(height: 14),
              WalletLoadFailed(
                message: failure.message(l10n),
                onRetry: wallet.isLoading ? null : wallet.load,
              ),
            ],
            const SizedBox(height: 16),
            _AddMoneyCard(
              amount: _amount,
              presets: _presets,
              entered: _entered,
              full: full,
              canAdd: canAdd,
              valid: _valid(wallet),
              error: _amountError(l10n, wallet),
              onAdd: _add,
            ),
            const SizedBox(height: 26),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    l10n.walletTransactions,
                    style: theme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w800),
                  ),
                ),
                IconButton(
                  key: const ValueKey<String>('wallet-search-toggle'),
                  tooltip: l10n.walletSearch,
                  isSelected: _searching,
                  onPressed: () => setState(() {
                    _searching = !_searching;
                    if (!_searching) _search.clear();
                  }),
                  icon: const Icon(Icons.search_rounded),
                  selectedIcon: const Icon(Icons.search_off_rounded),
                ),
                IconButton(
                  key: const ValueKey<String>('wallet-date-filter'),
                  tooltip: l10n.walletDateFilter,
                  isSelected: _range != null,
                  onPressed: all.isEmpty ? null : () => _pickRange(all),
                  icon: const Icon(Icons.calendar_month_outlined),
                  selectedIcon: const Icon(Icons.calendar_month_rounded),
                ),
              ],
            ),
            const SizedBox(height: 4),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  for (final (_Filter value, String label) in <(_Filter, String)>[
                    (_Filter.all, l10n.walletFilterAll),
                    (_Filter.added, l10n.walletFilterAdded),
                    (_Filter.spent, l10n.walletFilterSpent),
                  ]) ...<Widget>[
                    WalletFilterChip(
                      key: ValueKey<String>('wallet-filter-${value.name}'),
                      label: label,
                      selected: _filter == value,
                      onTap: () {
                        Haptics.select();
                        setState(() => _filter = value);
                      },
                    ),
                    const SizedBox(width: 8),
                  ],
                ],
              ),
            ),
            AnimatedSize(
              duration: AppMotion.quick,
              curve: AppMotion.enter,
              alignment: Alignment.topCenter,
              child: !_searching
                  ? const SizedBox(width: double.infinity)
                  : Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: TextField(
                        key: const ValueKey<String>('wallet-search'),
                        controller: _search,
                        autofocus: true,
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          hintText: l10n.walletSearchHint,
                          prefixIcon: const Icon(Icons.search_rounded),
                          isDense: true,
                          filled: true,
                          fillColor: theme.colorScheme.surfaceContainerLowest,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: theme.colorScheme.outline,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: theme.colorScheme.outline,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
            if (_range != null) ...<Widget>[
              const SizedBox(height: 10),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: InputChip(
                  key: const ValueKey<String>('wallet-range'),
                  avatar: const Icon(Icons.event_rounded, size: 18),
                  label: Text(_rangeLabel(context, _range!)),
                  onDeleted: () => setState(() => _range = null),
                ),
              ),
            ],
            const SizedBox(height: 12),
            if (data == null && wallet.isLoading)
              const WalletListSkeleton()
            else if (data != null && all.isEmpty)
              const WalletEmpty()
            else if (data != null && shown.isEmpty)
              WalletNoMatches(onClear: _clearFilters)
            else if (data != null)
              ..._groups(context, shown),
            if (data != null && all.length >= _serverPage && !_filtered)
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  l10n.walletLatestOnly(all.length),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// The list by day, newest first, each day a card of its own.
  List<Widget> _groups(BuildContext context, List<WalletTransaction> entries) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    final List<Widget> out = <Widget>[];
    final List<(String, List<WalletTransaction>)> days =
        <(String, List<WalletTransaction>)>[];
    for (final WalletTransaction entry in entries) {
      final String day = _dayLabel(context, l10n, entry.createdAt?.toLocal());
      if (days.isEmpty || days.last.$1 != day) {
        days.add((day, <WalletTransaction>[]));
      }
      days.last.$2.add(entry);
    }
    int index = 0;
    for (final (String day, List<WalletTransaction> group) in days) {
      out.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 6, 4, 8),
          child: Text(
            day,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
      out.add(
        WalletPanel(
          child: Column(
            children: <Widget>[
              for (int i = 0; i < group.length; i++) ...<Widget>[
                if (i > 0)
                  Divider(
                    height: 1,
                    indent: 68,
                    color: theme.colorScheme.outlineVariant,
                  ),
                Reveal(
                  index: index++,
                  child: WalletTransactionTile(
                    entry: group[i],
                    onTap: () => showWalletTransaction(context, group[i]),
                  ),
                ),
              ],
            ],
          ),
        ),
      );
      out.add(const SizedBox(height: 14));
    }
    return out;
  }

  static String _dayLabel(
    BuildContext context,
    AppLocalizations l10n,
    DateTime? at,
  ) {
    if (at == null) return '—';
    final DateTime now = DateTime.now();
    final DateTime today = DateTime(now.year, now.month, now.day);
    final DateTime day = DateTime(at.year, at.month, at.day);
    if (day == today) return l10n.walletToday;
    if (day == today.subtract(const Duration(days: 1))) {
      return l10n.walletYesterday;
    }
    return MaterialLocalizations.of(context).formatMediumDate(day);
  }

  static String _rangeLabel(BuildContext context, DateTimeRange range) {
    final MaterialLocalizations words = MaterialLocalizations.of(context);
    return '${words.formatShortMonthDay(range.start)} – '
        '${words.formatShortMonthDay(range.end)}';
  }
}

/// Adding money: the amount, four quick amounts, and the one button.
class _AddMoneyCard extends StatelessWidget {
  const _AddMoneyCard({
    required this.amount,
    required this.presets,
    required this.entered,
    required this.full,
    required this.canAdd,
    required this.valid,
    required this.error,
    required this.onAdd,
  });

  final TextEditingController amount;
  final List<int> presets;
  final double? entered;
  final bool full;
  final bool canAdd;
  final bool valid;
  final String? error;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    final WalletController wallet = context.watch<WalletController>();
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;
    final double ceiling = full ? WalletController.maxTopUp : wallet.maxAddable;

    final String busyLabel = switch (wallet.phase) {
      TopUpPhase.verifying => l10n.walletConfirmingPayment,
      _ => l10n.walletOpeningPayment,
    };

    return WalletPanel(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            runSpacing: 2,
            children: <Widget>[
              Text(
                l10n.walletAddMoney,
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w800),
              ),
              Text(
                l10n.walletAmountRange(
                  formatRupees(WalletController.minTopUp),
                  formatRupees(ceiling),
                ),
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (full) ...<Widget>[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: green.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.info_outline_rounded, size: 18, color: green),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      l10n.walletFull(formatRupees(WalletController.maxBalance)),
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],
          TextField(
            key: const ValueKey<String>('wallet-amount'),
            controller: amount,
            enabled: canAdd,
            keyboardType: TextInputType.number,
            // Whole rupees only: no sign, no decimal point, no zero-padded
            // tricks, and never more digits than the ceiling has.
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              FilteringTextInputFormatter.deny(RegExp(r'^0+')),
              LengthLimitingTextInputFormatter(5),
            ],
            textInputAction: TextInputAction.done,
            onSubmitted: (_) {
              if (valid && canAdd) onAdd();
            },
            style: theme.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.w800),
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(start: 16, end: 6),
                child: Text(
                  '₹',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              prefixIconConstraints:
                  const BoxConstraints(minWidth: 0, minHeight: 0),
              hintText: l10n.walletEnterAmount,
              hintStyle: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              errorText: error,
              filled: true,
              fillColor: theme.colorScheme.surfaceContainerLow,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: green, width: 1.6),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: theme.colorScheme.error),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    BorderSide(color: theme.colorScheme.error, width: 1.6),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              for (int i = 0; i < presets.length; i++) ...<Widget>[
                if (i > 0) const SizedBox(width: 8),
                Expanded(
                  child: WalletQuickAmount(
                    key: ValueKey<String>('wallet-preset-${presets[i]}'),
                    label: '+${formatRupees(presets[i].toDouble())}',
                    selected: entered == presets[i].toDouble(),
                    enabled: canAdd && presets[i] <= wallet.maxAddable,
                    onTap: () {
                      Haptics.select();
                      amount.text = '${presets[i]}';
                    },
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 16),
          FilledButton(
            key: const ValueKey<String>('wallet-add'),
            onPressed: valid && canAdd ? onAdd : null,
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.greenDeep,
              foregroundColor: Colors.white,
              disabledBackgroundColor:
                  wallet.isAdding ? AppColors.greenDeep : null,
              disabledForegroundColor: wallet.isAdding ? Colors.white : null,
              minimumSize: const Size.fromHeight(54),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: AnimatedSwitcher(
              duration: AppMotion.quick,
              child: wallet.isAdding
                  ? Row(
                      key: ValueKey<TopUpPhase>(wallet.phase),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox.square(
                          dimension: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.4,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: Text(
                            busyLabel,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      valid
                          ? l10n.walletAddAmount(formatRupees(entered!))
                          : l10n.walletAddMoney,
                      key: const ValueKey<String>('idle'),
                      style: const TextStyle(fontWeight: FontWeight.w800),
                    ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.verified_user_outlined,
                size: 15,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  l10n.walletSecuredBy,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// For [EmptyIllustration] users elsewhere: the wallet's own picture.
const IconData walletIcon = Icons.account_balance_wallet_rounded;

/// The empty list: a picture, what it is, and what will fill it.
class WalletEmpty extends StatelessWidget {
  const WalletEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    return WalletPanel(
      key: const ValueKey<String>('wallet-empty'),
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
      child: Column(
        children: <Widget>[
          const EmptyIllustration(icon: walletIcon, size: 120),
          const SizedBox(height: 14),
          Text(
            l10n.walletEmptyTitle,
            textAlign: TextAlign.center,
            style:
                theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 6),
          Text(
            l10n.walletEmptyBody,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
