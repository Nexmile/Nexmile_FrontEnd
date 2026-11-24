import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../account/state/account_controller.dart';
import '../state/support_controller.dart';

/// Whether any way into the support chat shows: this build has a support
/// server, and the server has not switched the chat off on purpose
/// (`chat_enabled: false` in `/v1/app/config`). Not knowing yet counts as on.
bool supportChatOn(BuildContext context, {bool listen = true}) {
  final SupportController chat = listen
      ? context.watch<SupportController>()
      : context.read<SupportController>();
  final AccountController account = listen
      ? context.watch<AccountController>()
      : context.read<AccountController>();
  return chat.isEnabled && account.support?.chatEnabled != false;
}

/// The support bubble, docked in the bottom bar beside the tabs, the way
/// the big apps dock a second destination there. Being part of the bar, it
/// never covers the basket bar or a place-order button.
///
/// The full nexmile CX logo when it fits beside the tabs; the logo's "M"
/// mark in a circle when it does not. Either way a brand-coloured ring
/// glows and turns for a couple of beats, rests, and goes again — and again
/// whenever a reply comes in — rather than animating for ever.
class SupportBubble extends StatefulWidget {
  const SupportBubble({super.key, this.compact = false});

  final bool compact;

  /// As tall as the tab bar it sits beside.
  static const double height = 58;

  /// What the bar must leave free for each shape.
  static const double fullWidth = 116;
  static const double compactWidth = height;

  @override
  State<SupportBubble> createState() => _SupportBubbleState();
}

class _SupportBubbleState extends State<SupportBubble>
    with SingleTickerProviderStateMixin {
  late final AnimationController _glow = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1600),
  )..addStatusListener(_onBeat);

  /// Between bursts: long enough to be calm, short enough to be noticed.
  static const Duration _rest = Duration(seconds: 7);
  static const int _beatsPerBurst = 2;

  Timer? _resting;
  int _beats = 0;
  int _lastUnread = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final SupportController support = context.read<SupportController>();
      if (!support.isEnabled) return;
      support.loadEntry();
      // The server's own switch for the chat, read at launch rather than
      // only when the help page opens.
      final AccountController account = context.read<AccountController>();
      if (account.support == null && !account.supportLoading) {
        account.loadSupport();
      }
      _burst();
    });
  }

  void _burst() {
    _resting?.cancel();
    if (!mounted || AppMotion.reduced(context)) return;
    _beats = 0;
    _glow.forward(from: 0);
  }

  void _onBeat(AnimationStatus status) {
    if (status != AnimationStatus.completed) return;
    if (++_beats < _beatsPerBurst) {
      _glow.forward(from: 0);
      return;
    }
    _glow.value = 0;
    _resting = Timer(_rest, _burst);
  }

  @override
  void dispose() {
    _resting?.cancel();
    _glow.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final SupportController support = context.watch<SupportController>();
    if (!supportChatOn(context)) return const SizedBox.shrink();

    final int unread = support.entry.unread;
    if (unread > _lastUnread) {
      // A reply came in: glow now, not at the next rest's end.
      WidgetsBinding.instance.addPostFrameCallback((_) => _burst());
    }
    _lastUnread = unread;

    // Read aloud, and the server's wording for a festival or a bad day: the
    // picture itself is the brand, not words.
    final String label = support.entry.label ?? l10n.supportBubble;
    final bool compact = widget.compact;
    const double ring = 2.4;
    final BorderRadius radius = BorderRadius.circular(SupportBubble.height);

    final Widget face = Material(
      // White in both themes: the logo is drawn on white, and its black
      // lettering would vanish on a dark face.
      color: Colors.white,
      shape: compact ? const CircleBorder() : const StadiumBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        key: const ValueKey<String>('support-bubble'),
        onTap: () {
          Haptics.tap();
          Navigator.of(context).pushNamed(AppRoutes.support);
        },
        child: SizedBox(
          height: SupportBubble.height - ring * 2,
          width: compact ? SupportBubble.height - ring * 2 : null,
          child: Padding(
            padding: compact
                ? const EdgeInsets.all(5)
                : const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: Image.asset(
                compact
                    ? 'assets/images/nexmile_cx_mark.png'
                    : 'assets/images/nexmile_cx.png',
                key: const ValueKey<String>('support-bubble-logo'),
                height: compact ? null : 16,
                fit: BoxFit.contain,
                excludeFromSemantics: true,
              ),
            ),
          ),
        ),
      ),
    );

    return Semantics(
      button: true,
      label: label,
      child: Badge(
        isLabelVisible: unread > 0,
        label: Text('$unread'),
        backgroundColor: AppColors.orangeDeep,
        offset: const Offset(-2, 0),
        child: AnimatedBuilder(
          animation: _glow,
          child: face,
          builder: (BuildContext context, Widget? face) {
            final double t = _glow.value;
            // 0 → 1 → 0 over a beat.
            final double g = math.sin(math.pi * t);
            return Transform.scale(
              scale: 1 + 0.035 * g,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: compact ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: compact ? null : radius,
                  // The ring, in the brand's two colours, turning as it
                  // glows.
                  gradient: SweepGradient(
                    colors: const <Color>[
                      AppColors.orangeDeep,
                      AppColors.green,
                      AppColors.orangeLight,
                      AppColors.greenDeep,
                      AppColors.orangeDeep,
                    ],
                    transform: GradientRotation(2 * math.pi * t),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColors.orangeDeep
                          .withValues(alpha: 0.18 + 0.42 * g),
                      blurRadius: 8 + 16 * g,
                      spreadRadius: 0.5 + 2.5 * g,
                    ),
                    BoxShadow(
                      color: AppColors.green.withValues(alpha: 0.10 + 0.32 * g),
                      blurRadius: 12 + 18 * g,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(ring),
                  child: face,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// "Need help?" from an order: the chat opens already knowing which one.
class NeedHelpButton extends StatelessWidget {
  const NeedHelpButton({
    super.key,
    required this.orderId,
    this.dense = false,
    this.iconOnly = false,
  });

  final int orderId;
  final bool dense;

  /// For a top bar, where the order number already needs the room.
  final bool iconOnly;

  @override
  Widget build(BuildContext context) {
    if (!supportChatOn(context)) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context);
    void open() => Navigator.of(context).pushNamed(
          AppRoutes.support,
          arguments: SupportArgs(orderId: orderId),
        );
    if (iconOnly) {
      return IconButton(
        key: ValueKey<String>('need-help-icon-$orderId'),
        tooltip: l10n.supportNeedHelp,
        onPressed: open,
        icon: const Icon(Icons.support_agent_rounded),
      );
    }
    return TextButton.icon(
      key: ValueKey<String>('need-help-$orderId'),
      onPressed: open,
      icon: const Icon(Icons.support_agent_rounded, size: 20),
      label: Text(l10n.supportNeedHelp),
      style: TextButton.styleFrom(
        visualDensity: dense ? VisualDensity.compact : null,
      ),
    );
  }
}
