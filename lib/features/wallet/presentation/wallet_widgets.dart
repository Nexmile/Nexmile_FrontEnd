import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../catalogue/presentation/widgets/catalogue_widgets.dart';
import '../data/wallet_models.dart';

// ---------------------------------------------------------------------------
// Words and colours for one movement

/// What a movement is, in the customer's words.
String walletEntryTitle(AppLocalizations l10n, WalletTransaction entry) =>
    switch (entry.kind) {
      WalletEntryKind.topUp => l10n.walletEntryTopUp,
      WalletEntryKind.orderPayment => entry.orderNumber == null
          ? l10n.walletEntryOrder
          : l10n.walletEntryOrderNumber(entry.orderNumber!),
      WalletEntryKind.refund => entry.orderNumber == null
          ? l10n.walletEntryRefund
          : l10n.walletEntryRefundNumber(entry.orderNumber!),
      WalletEntryKind.other =>
        entry.description.isEmpty ? l10n.walletTitle : entry.description,
    };

IconData walletEntryIcon(WalletTransaction entry) => switch (entry.kind) {
      WalletEntryKind.topUp => Icons.add_card_rounded,
      WalletEntryKind.orderPayment => Icons.shopping_bag_outlined,
      WalletEntryKind.refund => Icons.replay_rounded,
      WalletEntryKind.other => Icons.receipt_long_outlined,
    };

/// How the money moved: the server's word when it sends one, else what the
/// kind of movement means. Null when neither says.
String? walletMethodLabel(AppLocalizations l10n, WalletTransaction entry) {
  final String? method = entry.method?.toLowerCase();
  if (method != null) {
    return switch (method) {
      'upi' => l10n.walletMethodUpi,
      'card' || 'credit_card' || 'debit_card' => l10n.walletMethodCard,
      'netbanking' || 'net_banking' => l10n.walletMethodNetbanking,
      'wallet' => l10n.walletTitle,
      'refund' => l10n.walletMethodRefund,
      'razorpay' || 'online' || 'gateway' => l10n.walletMethodOnline,
      _ => entry.method![0].toUpperCase() + entry.method!.substring(1),
    };
  }
  return switch (entry.kind) {
    WalletEntryKind.topUp => l10n.walletMethodOnline,
    WalletEntryKind.orderPayment => l10n.walletTitle,
    WalletEntryKind.refund => l10n.walletMethodRefund,
    WalletEntryKind.other => null,
  };
}

String walletStatusLabel(AppLocalizations l10n, WalletEntryStatus status) =>
    switch (status) {
      WalletEntryStatus.success => l10n.walletStatusSuccess,
      WalletEntryStatus.pending => l10n.walletStatusPending,
      WalletEntryStatus.failed => l10n.walletStatusFailed,
    };

/// Green for money in, red for money out, amber while pending, grey once
/// failed: the amount's colour says what happened before it is read.
Color walletAmountColour(ThemeData theme, WalletTransaction entry) {
  final bool dark = theme.brightness == Brightness.dark;
  return switch (entry.status) {
    WalletEntryStatus.pending =>
      dark ? const Color(0xFFFFB74D) : const Color(0xFFB26A00),
    WalletEntryStatus.failed => theme.colorScheme.onSurfaceVariant,
    WalletEntryStatus.success => entry.isCredit
        ? (dark ? AppColors.greenLight : const Color(0xFF0F8A0F))
        : (dark ? const Color(0xFFFF8A80) : const Color(0xFFC62828)),
  };
}

/// "+₹500" or "−₹249.50", always left to right.
String walletSignedAmount(WalletTransaction entry) =>
    '${entry.isCredit ? '+' : '−'}${formatRupees(entry.amount.abs())}';

/// "#1042": the wallet's own id for a movement.
String walletEntryId(WalletTransaction entry) => '#${entry.id}';

/// A time today, or a day and a time before that.
String walletWhen(BuildContext context, DateTime at) {
  final MaterialLocalizations words = MaterialLocalizations.of(context);
  final String time = words.formatTimeOfDay(
    TimeOfDay.fromDateTime(at),
    alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
  );
  final DateTime now = DateTime.now();
  final bool today =
      at.year == now.year && at.month == now.month && at.day == now.day;
  return today ? time : '${words.formatShortMonthDay(at)}, $time';
}

// ---------------------------------------------------------------------------
// Building blocks

/// A white card on the tinted page, the way each part of the wallet sits.
class WalletPanel extends StatelessWidget {
  const WalletPanel({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: padding,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.8),
        ),
      ),
      child: child,
    );
  }
}

/// The balance: big, on the brand's green, with a way to hide it from the
/// person sitting next to you.
class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({
    super.key,
    required this.balance,
    required this.isLoading,
    required this.hidden,
    required this.updatedAt,
    required this.onToggleHidden,
  });

  final double? balance;
  final bool isLoading;
  final bool hidden;
  final DateTime? updatedAt;
  final VoidCallback onToggleHidden;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    const Color soft = Color(0xD9FFFFFF);

    final Widget amount;
    if (isLoading) {
      amount = Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.22),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    } else if (hidden && balance != null) {
      amount = Semantics(
        label: l10n.walletBalanceHiddenLabel,
        excludeSemantics: true,
        child: Text(
          '₹ ••••••',
          key: const ValueKey<String>('wallet-balance-hidden'),
          textDirection: TextDirection.ltr,
          style: theme.textTheme.displaySmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            letterSpacing: 2,
          ),
        ),
      );
    } else {
      amount = FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: balance == null
            ? Text(
                '—',
                style: theme.textTheme.displaySmall
                    ?.copyWith(color: Colors.white, fontWeight: FontWeight.w800),
              )
            : AnimatedRupees(
                balance!,
                key: const ValueKey<String>('wallet-balance'),
                style: theme.textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
      );
    }

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xFF1B6E0A),
            AppColors.greenDeep,
            Color(0xFF45A514),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: theme.brightness == Brightness.dark
            ? null
            : <BoxShadow>[
                BoxShadow(
                  color: AppColors.greenDeep.withValues(alpha: 0.28),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ],
      ),
      child: Stack(
        children: <Widget>[
          // One quiet circle for depth; nothing else decorates the card.
          PositionedDirectional(
            end: -36,
            top: -46,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.07),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 8, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.18),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.account_balance_wallet_rounded,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        l10n.walletBalance,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: soft,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    IconButton(
                      key: const ValueKey<String>('wallet-hide'),
                      tooltip: hidden
                          ? l10n.walletShowBalance
                          : l10n.walletHideBalance,
                      onPressed: balance == null ? null : onToggleHidden,
                      color: Colors.white,
                      icon: Icon(
                        hidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12),
                  child: AnimatedSwitcher(
                    duration: AppMotion.quick,
                    child: KeyedSubtree(
                      key: ValueKey<bool>(hidden),
                      child: amount,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.walletBalanceHint,
                  style: theme.textTheme.bodySmall?.copyWith(color: soft),
                ),
                if (updatedAt != null) ...<Widget>[
                  const SizedBox(height: 14),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.schedule_rounded, size: 14, color: soft),
                      const SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          l10n.walletUpdatedAt(
                            walletWhen(context, updatedAt!.toLocal()),
                          ),
                          key: const ValueKey<String>('wallet-updated'),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: soft,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// One of the four quick amounts: filled green once chosen.
class WalletQuickAmount extends StatelessWidget {
  const WalletQuickAmount({
    super.key,
    required this.label,
    required this.selected,
    required this.enabled,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color ink = selected ? Colors.white : theme.colorScheme.onSurface;
    return Semantics(
      button: true,
      selected: selected,
      enabled: enabled,
      child: Opacity(
        opacity: enabled ? 1 : 0.4,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: enabled ? onTap : null,
            borderRadius: BorderRadius.circular(12),
            child: AnimatedContainer(
              duration: AppMotion.quick,
              curve: AppMotion.enter,
              height: 44,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: selected
                    ? AppColors.greenDeep
                    : theme.colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: selected
                      ? AppColors.greenDeep
                      : theme.colorScheme.outline,
                ),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  label,
                  textDirection: TextDirection.ltr,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// All, money added, money spent.
class WalletFilterChip extends StatelessWidget {
  const WalletFilterChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      showCheckmark: false,
      onSelected: (_) => onTap(),
      selectedColor: AppColors.greenDeep,
      backgroundColor: theme.colorScheme.surfaceContainerLowest,
      side: BorderSide(
        color: selected ? AppColors.greenDeep : theme.colorScheme.outline,
      ),
      labelStyle: theme.textTheme.labelLarge?.copyWith(
        color: selected ? Colors.white : theme.colorScheme.onSurface,
        fontWeight: FontWeight.w700,
      ),
      shape: const StadiumBorder(),
    );
  }
}

/// One movement in the list: what, when, how, its id, the amount and how it
/// ended.
class WalletTransactionTile extends StatelessWidget {
  const WalletTransactionTile({
    super.key,
    required this.entry,
    required this.onTap,
  });

  final WalletTransaction entry;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    final Color colour = walletAmountColour(theme, entry);
    final DateTime? at = entry.createdAt?.toLocal();
    final String? method = walletMethodLabel(l10n, entry);
    final String detail = <String>[
      if (at != null)
        MaterialLocalizations.of(context).formatTimeOfDay(
          TimeOfDay.fromDateTime(at),
          alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
        ),
      if (method != null) method,
      walletEntryId(entry),
    ].join(' · ');

    return InkWell(
      key: ValueKey<String>('wallet-entry-${entry.id}'),
      onTap: () {
        Haptics.select();
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
        child: Row(
          children: <Widget>[
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: colour.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(walletEntryIcon(entry), size: 20, color: colour),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    walletEntryTitle(l10n, entry),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    detail,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  walletSignedAmount(entry),
                  textDirection: TextDirection.ltr,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: colour,
                    fontWeight: FontWeight.w800,
                    decoration: entry.status == WalletEntryStatus.failed
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  walletStatusLabel(l10n, entry.status),
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: entry.status == WalletEntryStatus.success
                        ? theme.colorScheme.onSurfaceVariant
                        : colour,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Everything about one movement, with a way to copy its id and to share it
/// as a plain receipt.
Future<void> showWalletTransaction(
  BuildContext context,
  WalletTransaction entry,
) =>
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (BuildContext context) => _TransactionSheet(entry: entry),
    );

class _TransactionSheet extends StatelessWidget {
  const _TransactionSheet({required this.entry});

  final WalletTransaction entry;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    final Color colour = walletAmountColour(theme, entry);
    final DateTime? at = entry.createdAt?.toLocal();
    final String title = walletEntryTitle(l10n, entry);
    final String? method = walletMethodLabel(l10n, entry);
    final String? when = at == null
        ? null
        : '${MaterialLocalizations.of(context).formatMediumDate(at)}, '
            '${MaterialLocalizations.of(context).formatTimeOfDay(
              TimeOfDay.fromDateTime(at),
              alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
            )}';
    final String? note = entry.description.trim().isEmpty ||
            entry.description.trim() == title
        ? null
        : entry.description.trim();

    final List<(String, String)> rows = <(String, String)>[
      if (when != null) (l10n.walletDetailDate, when),
      (l10n.walletDetailId, walletEntryId(entry)),
      (l10n.walletDetailType, entry.isCredit ? l10n.walletCredit : l10n.walletDebit),
      if (method != null) (l10n.walletDetailMethod, method),
      (l10n.walletDetailStatus, walletStatusLabel(l10n, entry.status)),
      if (entry.orderNumber != null) (l10n.walletDetailOrder, entry.orderNumber!),
      if (entry.reference != null) (l10n.walletDetailReference, entry.reference!),
      if (entry.balanceAfter != null)
        (l10n.walletDetailBalanceAfter, formatRupees(entry.balanceAfter!)),
    ];

    void copyId() {
      Haptics.select();
      Clipboard.setData(ClipboardData(text: walletEntryId(entry)));
      ScaffoldMessenger.of(context)
        ..clearSnackBars()
        ..showSnackBar(SnackBar(content: Text(l10n.walletIdCopied)));
    }

    void share() {
      // A plain-text receipt from what the wallet itself holds; nothing in
      // it that the customer could not read on this sheet.
      final String text = <String>[
        l10n.walletTitle,
        title,
        walletSignedAmount(entry),
        for (final (String label, String value) in rows) '$label: $value',
        if (note != null) note,
      ].join('\n');
      SharePlus.instance.share(
        ShareParams(text: text, subject: l10n.walletDetailsTitle),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        key: const ValueKey<String>('wallet-details'),
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            l10n.walletDetailsTitle,
            style: theme.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 18),
          Center(
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: colour.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(walletEntryIcon(entry), color: colour, size: 26),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(
            walletSignedAmount(entry),
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: colour,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: colour.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                walletStatusLabel(l10n, entry.status),
                style: theme.textTheme.labelMedium?.copyWith(
                  color: colour,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.fromLTRB(14, 6, 14, 6),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: <Widget>[
                for (int i = 0; i < rows.length; i++) ...<Widget>[
                  if (i > 0)
                    Divider(height: 1, color: theme.colorScheme.outlineVariant),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 11),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            rows[i].$1,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: Text(
                            rows[i].$2,
                            textAlign: TextAlign.end,
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (note != null) ...<Widget>[
            const SizedBox(height: 12),
            Text(note, style: theme.textTheme.bodySmall),
          ],
          const SizedBox(height: 18),
          Row(
            children: <Widget>[
              Expanded(
                child: OutlinedButton.icon(
                  key: const ValueKey<String>('wallet-copy-id'),
                  onPressed: copyId,
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  icon: const Icon(Icons.copy_rounded, size: 18),
                  label: Text(l10n.walletCopyId),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: FilledButton.icon(
                  key: const ValueKey<String>('wallet-share'),
                  onPressed: share,
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.greenDeep,
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  icon: const Icon(Icons.ios_share_rounded, size: 18),
                  label: Text(l10n.walletShareDetails),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Filters that leave nothing: say so, with the way out.
class WalletNoMatches extends StatelessWidget {
  const WalletNoMatches({super.key, required this.onClear});

  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    return WalletPanel(
      key: const ValueKey<String>('wallet-no-matches'),
      padding: const EdgeInsets.fromLTRB(20, 22, 20, 14),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.filter_alt_off_outlined,
            size: 34,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 8),
          Text(
            l10n.walletNoMatches,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
          TextButton(onPressed: onClear, child: Text(l10n.walletClearFilters)),
        ],
      ),
    );
  }
}

/// Three still rows while the first read is out.
class WalletListSkeleton extends StatelessWidget {
  const WalletListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final Color block = Theme.of(context).colorScheme.surfaceContainerLow;
    Widget bar(double width, double height) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: block,
            borderRadius: BorderRadius.circular(6),
          ),
        );
    return WalletPanel(
      child: Column(
        children: <Widget>[
          for (int i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 42,
                    height: 42,
                    decoration:
                        BoxDecoration(color: block, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        bar(140, 12),
                        const SizedBox(height: 8),
                        bar(90, 10),
                      ],
                    ),
                  ),
                  bar(56, 14),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

/// The first read failed and there is nothing to show yet.
class WalletLoadFailed extends StatelessWidget {
  const WalletLoadFailed({
    super.key,
    required this.message,
    required this.onRetry,
  });

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color foreground = theme.colorScheme.error;

    return Container(
      padding: const EdgeInsets.fromLTRB(14, 10, 8, 10),
      decoration: BoxDecoration(
        color: foreground.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: foreground.withValues(alpha: 0.35)),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.cloud_off_rounded, size: 19, color: foreground),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(color: foreground),
            ),
          ),
          TextButton(
            onPressed: onRetry,
            style: TextButton.styleFrom(foregroundColor: foreground),
            child: Text(AppLocalizations.of(context).retry),
          ),
        ],
      ),
    );
  }
}
