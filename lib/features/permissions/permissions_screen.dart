import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/motion/app_motion.dart';
import '../../core/push/push_service.dart';
import '../../core/router/app_router.dart';
import '../../core/services/preferences_service.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/gradient_button.dart';
import '../../generated/l10n/app_localizations.dart';
import '../address/data/location_service.dart';
import 'permission_onboarding.dart';

/// The permission pages a fresh install sees, one permission per page.
///
/// Each page says what the permission is for before the system prompt
/// appears. The prompt itself gives one line and two buttons, and a refusal
/// there is costly: Android stops asking after the second one and iOS after
/// the first. So the reasons come first, on a page the customer reads at
/// their own pace, and the prompt only appears after they tap Allow.
///
/// "Not now" is always there and always works. Every feature still asks for
/// what it needs when it needs it, so skipping here loses nothing.
class PermissionsScreen extends StatefulWidget {
  const PermissionsScreen({super.key, required this.args});

  final PermissionsArgs args;

  @override
  State<PermissionsScreen> createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  int _index = 0;
  bool _busy = false;

  List<AppPermission> get _steps => widget.args.steps;

  Future<void> _allow() async {
    final LocationService location = context.read<LocationService>();
    final PushService push = context.read<PushService>();
    setState(() => _busy = true);

    try {
      switch (_steps[_index]) {
        case AppPermission.location:
          await location.requestPermission();
        case AppPermission.notifications:
          await push.requestPermission();
      }
    } catch (_) {
      // Whatever the answer, or if the prompt failed to show, the customer
      // moves on. Each feature asks again when it needs to.
    }
    if (!mounted) return;
    setState(() => _busy = false);
    _next();
  }

  void _next() {
    if (_index < _steps.length - 1) {
      setState(() => _index++);
    } else {
      _finish();
    }
  }

  Future<void> _finish() async {
    final NavigatorState navigator = Navigator.of(context);
    setState(() => _busy = true);
    await context.read<PreferencesService>().markPermissionsAsked();
    if (!mounted) return;
    navigator.pushNamedAndRemoveUntil(
      widget.args.next,
      (Route<void> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AppPermission step = _steps[_index];
    final _PageContent content = _contentFor(step, l10n);

    return PopScope(
      // Back steps back through the pages before it leaves them.
      canPop: _index == 0,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (!didPop && _index > 0 && !_busy) setState(() => _index--);
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              if (_steps.length > 1)
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                  child: _Progress(index: _index, total: _steps.length),
                ),
              Expanded(
                child: AnimatedSwitcher(
                  duration: AppMotion.settled,
                  switchInCurve: AppMotion.enter,
                  switchOutCurve: AppMotion.exit,
                  transitionBuilder:
                      (Widget child, Animation<double> animation) =>
                          FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.06, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  ),
                  child: _Page(key: ValueKey<AppPermission>(step), content: content),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 12),
                child: Column(
                  children: <Widget>[
                    GradientButton(
                      label: content.allowLabel,
                      icon: content.allowIcon,
                      onPressed: _busy ? null : _allow,
                    ),
                    const SizedBox(height: 6),
                    TextButton(
                      onPressed: _busy ? null : _next,
                      style: TextButton.styleFrom(
                        minimumSize: const Size.fromHeight(48),
                        foregroundColor:
                            Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      child: Text(l10n.permNotNow),
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

  static _PageContent _contentFor(AppPermission step, AppLocalizations l10n) =>
      switch (step) {
        AppPermission.location => _PageContent(
            icon: Icons.location_on_rounded,
            colour: AppColors.green,
            colourDeep: AppColors.greenDeep,
            title: l10n.permLocationTitle,
            body: l10n.locationSubtitle,
            reasons: <_Reason>[
              _Reason(
                Icons.storefront_rounded,
                l10n.locationReasonRadiusTitle,
                l10n.locationReasonRadiusBody,
              ),
              _Reason(
                Icons.delivery_dining_rounded,
                l10n.locationReasonAccuracyTitle,
                l10n.locationReasonAccuracyBody,
              ),
              _Reason(
                Icons.lock_outline_rounded,
                l10n.locationReasonPrivacyTitle,
                l10n.locationReasonPrivacyBody,
              ),
            ],
            allowLabel: l10n.allowLocation,
            allowIcon: Icons.near_me_rounded,
          ),
        AppPermission.notifications => _PageContent(
            icon: Icons.notifications_active_rounded,
            colour: AppColors.orange,
            colourDeep: AppColors.orangeDeep,
            title: l10n.permNotifyTitle,
            body: l10n.permNotifyBody,
            reasons: <_Reason>[
              _Reason(
                Icons.receipt_long_rounded,
                l10n.permNotifyLiveTitle,
                l10n.permNotifyLiveBody,
              ),
              _Reason(
                Icons.delivery_dining_rounded,
                l10n.permNotifyRiderTitle,
                l10n.permNotifyRiderBody,
              ),
              _Reason(
                Icons.tune_rounded,
                l10n.permNotifyControlTitle,
                l10n.permNotifyControlBody,
              ),
            ],
            allowLabel: l10n.permNotifyAllow,
            allowIcon: Icons.notifications_rounded,
          ),
      };
}

class _Reason {
  const _Reason(this.icon, this.title, this.body);

  final IconData icon;
  final String title;
  final String body;
}

class _PageContent {
  const _PageContent({
    required this.icon,
    required this.colour,
    required this.colourDeep,
    required this.title,
    required this.body,
    required this.reasons,
    required this.allowLabel,
    required this.allowIcon,
  });

  final IconData icon;
  final Color colour;
  final Color colourDeep;
  final String title;
  final String body;
  final List<_Reason> reasons;
  final String allowLabel;
  final IconData allowIcon;
}

class _Page extends StatelessWidget {
  const _Page({super.key, required this.content});

  final _PageContent content;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
      children: <Widget>[
        Center(
          child: _Illustration(
            icon: content.icon,
            colour: content.colour,
            colourDeep: content.colourDeep,
          ),
        ),
        const SizedBox(height: 26),
        Text(
          content.title,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.4,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          content.body,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.6),
            ),
          ),
          child: Column(
            children: <Widget>[
              for (int i = 0; i < content.reasons.length; i++) ...<Widget>[
                if (i > 0) const Divider(height: 1),
                _ReasonRow(reason: content.reasons[i], colour: content.colourDeep),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _ReasonRow extends StatelessWidget {
  const _ReasonRow({required this.reason, required this.colour});

  final _Reason reason;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: colour.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(reason.icon, size: 21, color: colour),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  reason.title,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 2),
                Text(
                  reason.body,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    height: 1.35,
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

/// The page's picture: the permission's icon in rings of its colour, which
/// settles in once rather than pulsing, so the page is still while the
/// customer reads it.
class _Illustration extends StatelessWidget {
  const _Illustration({
    required this.icon,
    required this.colour,
    required this.colourDeep,
  });

  final IconData icon;
  final Color colour;
  final Color colourDeep;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 650),
      curve: AppMotion.spring,
      builder: (BuildContext context, double t, Widget? child) =>
          Transform.scale(
        scale: 0.8 + 0.2 * t,
        child: Opacity(opacity: t.clamp(0.0, 1.0), child: child),
      ),
      child: SizedBox(
        width: 184,
        height: 184,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            _disc(184, colour.withValues(alpha: 0.07)),
            _disc(140, colour.withValues(alpha: 0.12)),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[colour, colourDeep],
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: colourDeep.withValues(alpha: 0.35),
                    blurRadius: 24,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Icon(icon, size: 46, color: Colors.white),
            ),
            // Two small satellites, for depth.
            Positioned(top: 22, right: 26, child: _disc(14, colour.withValues(alpha: 0.55))),
            Positioned(
              bottom: 30,
              left: 20,
              child: _disc(10, AppColors.orangeLight.withValues(alpha: 0.7)),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _disc(double size, Color colour) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: colour),
      );
}

/// A segment per page, filled up to the current one.
class _Progress extends StatelessWidget {
  const _Progress({required this.index, required this.total});

  final int index;
  final int total;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              for (int i = 0; i < total; i++)
                Expanded(
                  child: AnimatedContainer(
                    duration: AppMotion.quick,
                    curve: AppMotion.enter,
                    height: 5,
                    margin: const EdgeInsetsDirectional.only(end: 6),
                    decoration: BoxDecoration(
                      color: i <= index
                          ? AppColors.greenDeep
                          : theme.colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Text(
          l10n.permStepCount(index + 1, total),
          style: theme.textTheme.labelLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
