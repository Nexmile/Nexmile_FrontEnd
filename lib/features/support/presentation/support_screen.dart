import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../account/presentation/account_sheets.dart' show openLink;
import '../../account/state/account_controller.dart';
import '../../catalogue/data/order_models.dart';
import '../../catalogue/data/storefront_repository.dart';
import '../../catalogue/presentation/reorder_flow.dart';
import '../data/support_models.dart';
import '../state/support_controller.dart';

/// The support chat. The assistant answers first and says it is the
/// assistant on every message; a person answers later, under their own
/// name, when it cannot help. The phone number stays one tap away.
class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key, this.args = const SupportArgs()});

  final SupportArgs args;

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  late final TextEditingController _composer = TextEditingController(
    text: context.read<SupportController>().draft,
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<SupportController>().open(
            orderId: widget.args.orderId,
            language: Localizations.localeOf(context).languageCode,
          );
      // For the call button: the number lives with the rest of the help
      // contacts.
      context.read<AccountController>().loadSupport();
      // Whether the platform can be reached at all, when this was opened
      // from somewhere other than the bubble.
      context.read<SupportController>().loadEntry();
    });
  }

  @override
  void dispose() {
    _composer.dispose();
    super.dispose();
  }

  void _say(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(text)));
  }

  Future<void> _send([String? text]) async {
    final String content = (text ?? _composer.text).trim();
    if (content.isEmpty) return;
    Haptics.tap();
    if (text == null) _composer.clear();
    await context.read<SupportController>().send(content);
  }

  Future<void> _handover() async {
    final String failed = AppLocalizations.of(context).supportActionFailed;
    final String? promise = await context.read<SupportController>().handover();
    if (promise == null) _say(failed);
  }

  Future<void> _close() async {
    final String failed = AppLocalizations.of(context).supportActionFailed;
    final bool closed = await context.read<SupportController>().close();
    if (!closed) _say(failed);
  }

  /// What a button under an answer does. Each goes somewhere and fetches
  /// what it shows there; nothing is read out of the assistant's words.
  Future<void> _run(SupportAction action) async {
    Haptics.select();
    final NavigatorState navigator = Navigator.of(context);
    final StorefrontRepository orders = context.read<StorefrontRepository>();
    final String failed = AppLocalizations.of(context).supportActionFailed;
    final int? orderId = action.orderId;
    try {
      switch (action.code) {
        case 'talk_to_person':
          await _handover();
        case 'close_thread':
          await _close();
        case 'select_order' when orderId != null:
          final String closed = AppLocalizations.of(context).supportClosed;
          switch (await context.read<SupportController>().selectOrder(orderId)) {
            case OrderPick.failed:
              _say(failed);
            case OrderPick.closed:
              _say(closed);
            // A note in the chat says it; the chat carries on.
            case OrderPick.sent || OrderPick.notFound || OrderPick.unavailable:
              break;
          }
        case 'track_order' when orderId != null:
          await navigator.pushNamed(
            AppRoutes.liveTracking,
            arguments: OrderArgs(orderId: orderId),
          );
        case 'view_order' when orderId != null:
          await navigator.pushNamed(
            AppRoutes.orderStatus,
            arguments: OrderArgs(orderId: orderId),
          );
        case 'call_rider' when orderId != null:
          // The number comes from tracking, never from the message.
          final String? phone = (await orders.track(orderId)).riderPhone;
          if (!mounted) return;
          if (phone == null) return _say(failed);
          await openLink(context, Uri(scheme: 'tel', path: phone));
        case 'reorder' when orderId != null:
          final Order order = await orders.order(orderId);
          if (!mounted) return;
          await reorder(context, order);
        case 'leave_review' when orderId != null:
          final Order order = await orders.order(orderId);
          if (!mounted) return;
          await navigator.pushNamed(
            AppRoutes.rateOrder,
            arguments: RateOrderArgs(order: order),
          );
      }
    } on Object {
      _say(failed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final SupportController chat = context.watch<SupportController>();
    final String? phone = context.watch<AccountController>().support?.phone;
    final SupportConversation? thread = chat.thread;
    final bool closed = thread?.isClosed ?? false;
    final List<SupportMessage> messages = chat.messages;

    final List<Widget> rows = <Widget>[
      for (final SupportMessage message in messages)
        _MessageRow(
          message: message,
          onRetry: () => chat.retry(message),
          onRate: (String value) => chat.rate(message, value),
          onAction: _run,
        ),
      if (chat.isWaiting) const _TypingRow(),
      if (chat.replyTimedOut)
        _NoticeRow(
          text: l10n.supportTookTooLong,
          action: l10n.retry,
          onAction: chat.askAgain,
        ),
      // A person owns the thread: no dots, no timeout, just the promise.
      // The composer stays open; what the customer writes reaches them.
      if (chat.isHandedOver && !closed)
        _NoticeRow(
          key: const ValueKey<String>('support-handed-over'),
          icon: Icons.support_agent_rounded,
          text: l10n.supportHandedOverNote,
        ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.supportTitle),
        actions: <Widget>[
          if (phone != null)
            IconButton(
              key: const ValueKey<String>('support-call'),
              tooltip: l10n.helpCall,
              icon: const Icon(Icons.call_rounded),
              onPressed: () => openLink(context, Uri(scheme: 'tel', path: phone)),
            ),
          if (thread != null && !closed)
            PopupMenuButton<String>(
              key: const ValueKey<String>('support-menu'),
              onSelected: (String choice) => choice == 'person'
                  ? _handover()
                  : _close(),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                if (thread.status == ConversationStatus.open)
                  PopupMenuItem<String>(
                    value: 'person',
                    child: Text(l10n.supportTalkToPerson),
                  ),
                PopupMenuItem<String>(
                  value: 'close',
                  child: Text(l10n.supportMarkSolved),
                ),
              ],
            ),
        ],
      ),
      body: Column(
        children: <Widget>[
          if (chat.isDemo)
            _Banner(
              icon: Icons.science_outlined,
              text: l10n.supportDemoBanner,
              colour: AppColors.orangeDeep,
            ),
          if (chat.isOffline)
            _Banner(
              key: const ValueKey<String>('support-offline'),
              icon: Icons.cloud_off_rounded,
              text: l10n.supportOffline,
              colour: theme.colorScheme.onSurfaceVariant,
            ),
          if (chat.notice case final SupportNotice notice)
            _Banner(
              key: const ValueKey<String>('support-notice'),
              icon: Icons.info_outline_rounded,
              text: switch (notice) {
                SupportNotice.orderNotFound => l10n.supportOrderNotFound,
                SupportNotice.orderLookupDown => l10n.supportOrderLookupDown,
              },
              colour: theme.colorScheme.onSurfaceVariant,
              onClose: context.read<SupportController>().dismissNotice,
            ),
          if (chat.problem == SupportProblem.slowDown)
            _Banner(
              icon: Icons.hourglass_bottom_rounded,
              text: l10n.supportSlowDown,
              colour: theme.colorScheme.onSurfaceVariant,
            ),
          if (chat.problem == SupportProblem.unreachable ||
              chat.isUnavailable)
            _Unreachable(
              phone: phone,
              onRetry: chat.isLoading
                  ? null
                  : () async {
                      final SupportController support =
                          context.read<SupportController>();
                      final String language =
                          Localizations.localeOf(context).languageCode;
                      await support.loadEntry();
                      await support.open(
                        orderId: widget.args.orderId,
                        language: language,
                      );
                    },
            ),
          Expanded(
            child: messages.isEmpty && !chat.isWaiting
                ? (chat.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _EmptyChat(
                        onSuggest: thread == null || closed ? null : _send,
                      ))
                // Newest at the foot, and opened there.
                : ListView.builder(
                    key: const ValueKey<String>('support-thread'),
                    reverse: true,
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                    itemCount: rows.length,
                    itemBuilder: (BuildContext context, int i) =>
                        rows[rows.length - 1 - i],
                  ),
          ),
          if (closed)
            _ClosedBar(
              onStartNew: chat.isLoading
                  ? null
                  : () => chat.startNew(
                        orderId: widget.args.orderId,
                        language: Localizations.localeOf(context).languageCode,
                      ),
            )
          else
            _Composer(
              controller: _composer,
              // Open while a reply is on its way: a second thought typed
              // while waiting must not be lost. Read-only offline, or with
              // no thread to post to.
              enabled: thread != null && !chat.isOffline,
              onChanged: chat.saveDraft,
              onSend: _send,
            ),
        ],
      ),
    );
  }
}

/// One message, drawn by who wrote it.
class _MessageRow extends StatelessWidget {
  const _MessageRow({
    required this.message,
    required this.onRetry,
    required this.onRate,
    required this.onAction,
  });

  final SupportMessage message;
  final VoidCallback onRetry;
  final ValueChanged<String> onRate;
  final ValueChanged<SupportAction> onAction;

  @override
  Widget build(BuildContext context) {
    return switch (message.sender) {
      SupportSender.customer => _Mine(message: message, onRetry: onRetry),
      SupportSender.system => _NoticeRow(text: message.content),
      SupportSender.ai || SupportSender.agent => _Theirs(
          message: message,
          onRate: onRate,
          onAction: onAction,
        ),
    };
  }
}

class _Mine extends StatelessWidget {
  const _Mine({required this.message, required this.onRetry});

  final SupportMessage message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool failed = message.state == DeliveryState.failed;
    final bool sending = message.state == DeliveryState.sending;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.78,
            ),
            child: Opacity(
              opacity: sending ? 0.7 : 1,
              child: Container(
                padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                decoration: const BoxDecoration(
                  color: AppColors.greenDeep,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: Text(
                  message.content,
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(color: Colors.white, height: 1.35),
                ),
              ),
            ),
          ),
          const SizedBox(height: 3),
          if (failed)
            InkWell(
              key: ValueKey<String>('support-retry-${message.clientId}'),
              onTap: onRetry,
              borderRadius: BorderRadius.circular(6),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.error_outline_rounded,
                      size: 14,
                      color: theme.colorScheme.error,
                    ),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        '${l10n.supportNotSent} · ${l10n.retry}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.error,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          else
            Text(
              sending ? '…' : _time(context, message.createdAt),
              style: theme.textTheme.labelSmall
                  ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            ),
        ],
      ),
    );
  }
}

/// The assistant or a person. Never alike: the assistant has its spark and
/// its label on every message, a person their first name and a plain
/// bubble with a border.
class _Theirs extends StatelessWidget {
  const _Theirs({
    required this.message,
    required this.onRate,
    required this.onAction,
  });

  final SupportMessage message;
  final ValueChanged<String> onRate;
  final ValueChanged<SupportAction> onAction;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isAi = message.sender == SupportSender.ai;
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;
    final List<SupportAction> actions = <SupportAction>[
      for (final SupportAction action in message.actions)
        // A destination needs its order; without one there is nowhere to go.
        if (action.orderId != null ||
            action.code == 'talk_to_person' ||
            action.code == 'close_thread')
          action,
    ];
    final String name = isAi
        ? l10n.supportAiLabel
        : l10n.supportAgentLabel(message.agentName ?? '');

    final Widget avatar = isAi
        ? CircleAvatar(
            radius: 15,
            backgroundColor: green.withValues(alpha: 0.14),
            child: Icon(Icons.auto_awesome_rounded, size: 16, color: green),
          )
        : CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.orangeDeep,
            child: Text(
              (message.agentName ?? '?').characters.first.toUpperCase(),
              style: theme.textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          );

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          avatar,
          const SizedBox(width: 8),
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width * 0.78,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    key: ValueKey<String>('support-sender-${message.id}'),
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: isAi ? green : AppColors.orangeDeep,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                    decoration: BoxDecoration(
                      color: isAi
                          ? theme.colorScheme.surfaceContainerLow
                          : theme.colorScheme.surfaceContainerLowest,
                      border: isAi
                          ? null
                          : Border.all(
                              color: AppColors.orangeDeep.withValues(alpha: 0.5),
                              width: 1.4,
                            ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: Text(
                      message.content,
                      style: theme.textTheme.bodyMedium?.copyWith(height: 1.35),
                    ),
                  ),
                  if (actions.isNotEmpty) ...<Widget>[
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: <Widget>[
                        for (final SupportAction action in actions)
                          OutlinedButton(
                            key: ValueKey<String>(
                              action.code == 'select_order'
                                  ? 'support-action-select_order-'
                                      '${action.orderId}'
                                  : 'support-action-${action.code}',
                            ),
                            onPressed: () => onAction(action),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: green,
                              side: BorderSide(color: green.withValues(alpha: 0.6)),
                              minimumSize: const Size(0, 38),
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            // The label alone: it is the server's finished,
                            // translated text, and already names the order.
                            // The title is only for building one's own.
                            child: Text(action.label),
                          ),
                      ],
                    ),
                  ],
                  const SizedBox(height: 2),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        _time(context, message.createdAt),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      if (isAi) ...<Widget>[
                        const SizedBox(width: 4),
                        _Thumb(
                          key: ValueKey<String>('support-up-${message.id}'),
                          up: true,
                          chosen: message.feedback == 'up',
                          tooltip: l10n.supportHelpful,
                          onTap: () => onRate('up'),
                        ),
                        _Thumb(
                          key: ValueKey<String>('support-down-${message.id}'),
                          up: false,
                          chosen: message.feedback == 'down',
                          tooltip: l10n.supportNotHelpful,
                          onTap: () => onRate('down'),
                        ),
                      ],
                    ],
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

class _Thumb extends StatelessWidget {
  const _Thumb({
    super.key,
    required this.up,
    required this.chosen,
    required this.tooltip,
    required this.onTap,
  });

  final bool up;
  final bool chosen;
  final String tooltip;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return IconButton(
      tooltip: tooltip,
      visualDensity: VisualDensity.compact,
      iconSize: 16,
      isSelected: chosen,
      onPressed: chosen ? null : onTap,
      icon: Icon(
        up ? Icons.thumb_up_outlined : Icons.thumb_down_outlined,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      selectedIcon: Icon(
        up ? Icons.thumb_up_rounded : Icons.thumb_down_rounded,
        color: theme.brightness == Brightness.dark
            ? AppColors.greenLight
            : AppColors.greenDeep,
      ),
    );
  }
}

/// The assistant at work: named, so the wait is attributed to it and not to
/// a person.
class _TypingRow extends StatelessWidget {
  const _TypingRow();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color green = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : AppColors.greenDeep;
    return Padding(
      key: const ValueKey<String>('support-typing'),
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 15,
            backgroundColor: green.withValues(alpha: 0.14),
            child: Icon(Icons.auto_awesome_rounded, size: 16, color: green),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(18),
            ),
            child: const _Dots(),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              l10n.supportTyping,
              style: theme.textTheme.labelSmall
                  ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            ),
          ),
        ],
      ),
    );
  }
}

class _Dots extends StatefulWidget {
  const _Dots();

  @override
  State<_Dots> createState() => _DotsState();
}

class _DotsState extends State<_Dots> with SingleTickerProviderStateMixin {
  late final AnimationController _beat = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1100),
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Still, not hidden, when the phone asks for less motion.
    if (AppMotion.reduced(context)) {
      _beat.stop();
    } else if (!_beat.isAnimating) {
      _beat.repeat();
    }
  }

  @override
  void dispose() {
    _beat.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color colour = Theme.of(context).colorScheme.onSurfaceVariant;
    return AnimatedBuilder(
      animation: _beat,
      builder: (BuildContext context, Widget? _) => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          for (int i = 0; i < 3; i++)
            Padding(
              padding: EdgeInsets.only(left: i == 0 ? 0 : 4),
              child: Opacity(
                opacity: 0.35 +
                    0.65 *
                        (1 -
                                ((_beat.value * 3 - i).abs().clamp(0.0, 1.0)))
                            .clamp(0.0, 1.0),
                child: CircleAvatar(radius: 3.5, backgroundColor: colour),
              ),
            ),
        ],
      ),
    );
  }
}

/// The app talking, not a person: centred and quiet, never a bubble.
class _NoticeRow extends StatelessWidget {
  const _NoticeRow({
    super.key,
    required this.text,
    this.action,
    this.onAction,
    this.icon,
  });

  final String text;
  final String? action;
  final VoidCallback? onAction;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle? style = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
      fontStyle: icon == null ? FontStyle.italic : null,
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 4, 24, 14),
      child: Column(
        children: <Widget>[
          if (icon == null)
            Text(text, textAlign: TextAlign.center, style: style)
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(text, textAlign: TextAlign.center, style: style),
                ),
              ],
            ),
          if (action != null)
            TextButton(onPressed: onAction, child: Text(action!)),
        ],
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({
    super.key,
    required this.icon,
    required this.text,
    required this.colour,
    this.onClose,
  });

  final IconData icon;
  final String text;
  final Color colour;

  /// Shown as a small cross when the note can be put aside.
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      color: colour.withValues(alpha: 0.1),
      child: Row(
        children: <Widget>[
          Icon(icon, size: 18, color: colour),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colour,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          if (onClose != null)
            IconButton(
              tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
              onPressed: onClose,
              visualDensity: VisualDensity.compact,
              constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
              padding: EdgeInsets.zero,
              icon: Icon(Icons.close_rounded, size: 18, color: colour),
            ),
        ],
      ),
    );
  }
}

/// The support platform cannot be reached, so nothing typed now would be
/// saved, and asking for a person would not get through either: the phone
/// number first, and a way to try again.
class _Unreachable extends StatelessWidget {
  const _Unreachable({required this.phone, required this.onRetry});

  final String? phone;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Container(
      key: const ValueKey<String>('support-down'),
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      color: theme.colorScheme.error.withValues(alpha: 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(l10n.supportUnreachable, style: theme.textTheme.bodySmall),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              if (phone != null)
                FilledButton.icon(
                  key: const ValueKey<String>('support-down-call'),
                  onPressed: () =>
                      openLink(context, Uri(scheme: 'tel', path: phone)),
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.greenDeep,
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.call_rounded, size: 18),
                  label: Text(l10n.helpCall),
                ),
              OutlinedButton.icon(
                key: const ValueKey<String>('support-down-retry'),
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded, size: 18),
                label: Text(l10n.retry),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _EmptyChat extends StatelessWidget {
  const _EmptyChat({required this.onSuggest});

  final ValueChanged<String>? onSuggest;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color green = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : AppColors.greenDeep;
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
      children: <Widget>[
        Center(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: green.withValues(alpha: 0.12),
            child: Icon(Icons.auto_awesome_rounded, size: 28, color: green),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          l10n.supportEmptyTitle,
          textAlign: TextAlign.center,
          style:
              theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 8),
        Text(
          l10n.supportEmptyBody,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium
              ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            for (final String suggestion in <String>[
              l10n.supportSuggestWhere,
              l10n.supportSuggestMissing,
              l10n.supportSuggestRefund,
            ])
              ActionChip(
                label: Text(suggestion),
                onPressed: onSuggest == null ? null : () => onSuggest!(suggestion),
              ),
          ],
        ),
      ],
    );
  }
}

class _Composer extends StatelessWidget {
  const _Composer({
    required this.controller,
    required this.enabled,
    required this.onChanged,
    required this.onSend,
  });

  final TextEditingController controller;
  final bool enabled;
  final ValueChanged<String> onChanged;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Material(
      color: theme.colorScheme.surface,
      child: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: theme.colorScheme.outline)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: TextField(
                  key: const ValueKey<String>('support-composer'),
                  controller: controller,
                  enabled: enabled,
                  minLines: 1,
                  maxLines: 5,
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    hintText: l10n.supportComposerHint,
                    isDense: true,
                    filled: true,
                    fillColor: theme.colorScheme.surfaceContainerLow,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              IconButton.filled(
                key: const ValueKey<String>('support-send'),
                tooltip: l10n.supportSend,
                onPressed: enabled ? onSend : null,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.greenDeep,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.send_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ClosedBar extends StatelessWidget {
  const _ClosedBar({required this.onStartNew});

  final VoidCallback? onStartNew;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    return SafeArea(
      top: false,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: theme.colorScheme.outline)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              l10n.supportClosed,
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 8),
            FilledButton(
              key: const ValueKey<String>('support-start-new'),
              onPressed: onStartNew,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.greenDeep,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(46),
              ),
              child: Text(l10n.supportStartNew),
            ),
          ],
        ),
      ),
    );
  }
}

String _time(BuildContext context, DateTime at) =>
    MaterialLocalizations.of(context).formatTimeOfDay(
      TimeOfDay.fromDateTime(at),
      alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
    );
