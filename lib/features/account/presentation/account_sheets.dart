import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/motion/haptics.dart';
import '../../../core/platform/app_identity.dart';
import '../../../core/push/push_service.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/theme_controller.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../address/data/location_service.dart';
import '../../auth/data/auth_failure.dart';
import '../data/account_models.dart';
import '../state/account_controller.dart';

/// Opens a call, an email, a chat or a web page, and says so plainly when the
/// phone has nothing that can.
Future<void> openLink(BuildContext context, Uri uri) async {
  final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
  final String failed = AppLocalizations.of(context).linkOpenFailed;
  bool opened = false;
  try {
    opened = await launchUrl(uri, mode: LaunchMode.externalApplication);
  } catch (_) {
    opened = false;
  }
  if (!opened) {
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(failed)));
  }
}

Future<T?> _sheet<T>(BuildContext context, Widget child) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (BuildContext context) => Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: child,
      ),
    ),
  );
}

class _SheetTitle extends StatelessWidget {
  const _SheetTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w800),
        ),
      );
}

// ---------------------------------------------------------------------------
// Appearance
// ---------------------------------------------------------------------------

String appearanceLabel(AppLocalizations l10n, ThemeMode mode) => switch (mode) {
      ThemeMode.light => l10n.appearanceLight,
      ThemeMode.dark => l10n.appearanceDark,
      ThemeMode.system => l10n.appearanceSystem,
    };

Future<void> showAppearanceSheet(BuildContext context) =>
    _sheet<void>(context, const _AppearanceSheet());

class _AppearanceSheet extends StatelessWidget {
  const _AppearanceSheet();

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeController theme = context.watch<ThemeController>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _SheetTitle(l10n.profileAppearance),
        RadioGroup<ThemeMode>(
          groupValue: theme.mode,
          onChanged: (ThemeMode? mode) {
            if (mode != null) theme.setMode(mode);
          },
          child: Column(
            children: <Widget>[
              for (final (ThemeMode mode, IconData icon) in <(ThemeMode, IconData)>[
                (ThemeMode.system, Icons.brightness_auto_outlined),
                (ThemeMode.light, Icons.light_mode_outlined),
                (ThemeMode.dark, Icons.dark_mode_outlined),
              ])
                RadioListTile<ThemeMode>(
                  value: mode,
                  activeColor: AppColors.greenDeep,
                  contentPadding: EdgeInsets.zero,
                  secondary: Icon(icon),
                  title: Text(appearanceLabel(l10n, mode)),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Notifications
// ---------------------------------------------------------------------------

Future<void> showNotificationsSheet(BuildContext context) =>
    _sheet<void>(context, const _NotificationsSheet());

class _NotificationsSheet extends StatefulWidget {
  const _NotificationsSheet();

  @override
  State<_NotificationsSheet> createState() => _NotificationsSheetState();
}

class _NotificationsSheetState extends State<_NotificationsSheet> {
  NotificationAccess? _access;

  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    final NotificationAccess access =
        await context.read<PushService>().notificationAccess();
    if (mounted) setState(() => _access = access);
  }

  /// Asks if the phone still will; otherwise opens the app's settings, where
  /// only the customer can switch them back on.
  Future<void> _turnOn() async {
    final PushService push = context.read<PushService>();
    final LocationService settings = context.read<LocationService>();
    if (_access == NotificationAccess.askable) {
      await push.requestPermission();
    } else {
      await settings.openSettings();
    }
    await _check();
  }

  Future<void> _setPromotions(bool on) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AuthFailure? failure =
        await context.read<AccountController>().setPromotions(on);
    if (failure != null && mounted) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(failure.message(l10n))));
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AccountPreferences preferences =
        context.watch<AccountController>().preferences;
    final bool phoneOff = _access == NotificationAccess.askable ||
        _access == NotificationAccess.blocked;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _SheetTitle(l10n.profileNotifications),
        if (phoneOff) ...<Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
            decoration: BoxDecoration(
              color: AppColors.orangeDeep.withValues(alpha: 0.10),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: <Widget>[
                const Icon(
                  Icons.notifications_off_outlined,
                  color: AppColors.orangeDeep,
                ),
                const SizedBox(width: 10),
                Expanded(child: Text(l10n.notifyPhoneOff)),
                TextButton(onPressed: _turnOn, child: Text(l10n.notifyTurnOn)),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
        SwitchListTile(
          value: true,
          onChanged: null,
          contentPadding: EdgeInsets.zero,
          title: Text(l10n.notifyOrderUpdates),
          subtitle: Text(l10n.notifyOrderUpdatesBody),
        ),
        SwitchListTile(
          value: preferences.promotions,
          onChanged: _setPromotions,
          activeTrackColor: AppColors.greenDeep,
          contentPadding: EdgeInsets.zero,
          title: Text(l10n.notifyPromotions),
          subtitle: Text(
            l10n.notifyPromotionsBody,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Feedback
// ---------------------------------------------------------------------------

Future<void> showFeedbackSheet(BuildContext context) =>
    _sheet<void>(context, const _FeedbackSheet());

class _FeedbackSheet extends StatefulWidget {
  const _FeedbackSheet();

  @override
  State<_FeedbackSheet> createState() => _FeedbackSheetState();
}

class _FeedbackSheetState extends State<_FeedbackSheet> {
  final TextEditingController _message = TextEditingController();
  int _rating = 0;
  bool _sending = false;
  String? _error;

  @override
  void dispose() {
    _message.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    if (_rating == 0) {
      setState(() => _error = l10n.feedbackNeedRating);
      return;
    }
    final NavigatorState navigator = Navigator.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    setState(() {
      _sending = true;
      _error = null;
    });
    final AuthFailure? failure = await context
        .read<AccountController>()
        .sendFeedback(rating: _rating, message: _message.text);
    if (!mounted) return;
    if (failure != null) {
      setState(() {
        _sending = false;
        _error = failure.message(l10n);
      });
      return;
    }
    navigator.pop();
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.feedbackThanks)));
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _SheetTitle(l10n.profileFeedback),
        Text(l10n.feedbackPrompt, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (int star = 1; star <= 5; star++)
              IconButton(
                onPressed: _sending
                    ? null
                    : () {
                        Haptics.select();
                        setState(() => _rating = star);
                      },
                iconSize: 36,
                tooltip: '$star',
                icon: Icon(
                  star <= _rating ? Icons.star_rounded : Icons.star_outline_rounded,
                  color: star <= _rating
                      ? const Color(0xFFF5A623)
                      : theme.colorScheme.outline,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _message,
          minLines: 3,
          maxLines: 6,
          maxLength: 1000,
          enabled: !_sending,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(hintText: l10n.feedbackHint),
        ),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              _error!,
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: theme.colorScheme.error),
            ),
          ),
        const SizedBox(height: 4),
        GradientButton(
          label: l10n.profileFeedback,
          icon: Icons.send_rounded,
          onPressed: _sending ? null : _send,
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Safety
// ---------------------------------------------------------------------------

Future<void> showSafetySheet(BuildContext context) =>
    _sheet<void>(context, const _SafetySheet());

/// Calling for help, and nothing that only looks like it.
///
/// No "send a report" form: until a report reaches a person (an SMS gateway
/// is not set up yet), a button that answers "sent" would leave someone in
/// danger believing they had been heard. So the screen is two calls, the
/// emergency number first and largest. The Nexmile line appears once the
/// app config carries one.
class _SafetySheet extends StatefulWidget {
  const _SafetySheet();

  @override
  State<_SafetySheet> createState() => _SafetySheetState();
}

class _SafetySheetState extends State<_SafetySheet> {
  @override
  void initState() {
    super.initState();
    // After the first frame: loading notifies, which must not happen while
    // the sheet is still being built.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final AccountController account = context.read<AccountController>();
      if (account.support == null) account.loadSupport();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String? safetyPhone =
        context.watch<AccountController>().support?.safetyPhone;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _SheetTitle(l10n.profileSafety),
        Text(l10n.safetyIntro, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 18),
        _CallButton(
          icon: Icons.local_police_outlined,
          title: l10n.safetyCallEmergency,
          subtitle: l10n.safetyCallEmergencyBody,
          urgent: true,
          onTap: () => openLink(context, Uri(scheme: 'tel', path: '112')),
        ),
        if (safetyPhone != null) ...<Widget>[
          const SizedBox(height: 12),
          _CallButton(
            icon: Icons.support_agent_rounded,
            title: l10n.safetyCallNexmile,
            subtitle: l10n.safetyCallNexmileBody,
            onTap: () =>
                openLink(context, Uri(scheme: 'tel', path: safetyPhone)),
          ),
        ],
        const SizedBox(height: 8),
      ],
    );
  }
}

/// A full-width call. The urgent one is solid red and larger: on this screen
/// it is the action, and everything else is second.
class _CallButton extends StatelessWidget {
  const _CallButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.urgent = false,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool urgent;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color colour = urgent
        ? theme.colorScheme.error
        : (isDark ? AppColors.greenLight : AppColors.greenDeep);
    final Color ink = urgent ? theme.colorScheme.onError : colour;

    return Material(
      color: urgent ? colour : colour.withValues(alpha: isDark ? 0.16 : 0.08),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: urgent ? 20 : 14,
          ),
          child: Row(
            children: <Widget>[
              Icon(icon, color: ink, size: urgent ? 30 : 24),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: (urgent
                              ? theme.textTheme.titleLarge
                              : theme.textTheme.titleSmall)
                          ?.copyWith(color: ink, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: urgent
                            ? ink.withValues(alpha: 0.85)
                            : theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.call_rounded, color: ink, size: urgent ? 28 : 24),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// About
// ---------------------------------------------------------------------------

Future<void> showAboutNexmileSheet(BuildContext context) =>
    _sheet<void>(context, const _AboutSheet());

class _AboutSheet extends StatefulWidget {
  const _AboutSheet();

  @override
  State<_AboutSheet> createState() => _AboutSheetState();
}

class _AboutSheetState extends State<_AboutSheet> {
  final Future<String?> _version = AppIdentity.version();

  @override
  void initState() {
    super.initState();
    // After the first frame: loading notifies, which must not happen while
    // the sheet is still being built.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final AccountController account = context.read<AccountController>();
      if (account.support == null) account.loadSupport();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final SupportInfo? support = context.watch<AccountController>().support;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _SheetTitle(l10n.profileAbout),
        FutureBuilder<String?>(
          future: _version,
          builder: (BuildContext context, AsyncSnapshot<String?> version) =>
              Text(
            version.data == null ? l10n.appName : l10n.aboutVersion(version.data!),
            style: theme.textTheme.bodyLarge,
          ),
        ),
        const SizedBox(height: 8),
        if (support?.termsUrl != null)
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.description_outlined),
            title: Text(l10n.aboutTerms),
            trailing: const Icon(Icons.open_in_new_rounded, size: 18),
            onTap: () => openLink(context, Uri.parse(support!.termsUrl!)),
          ),
        if (support?.privacyUrl != null)
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.privacy_tip_outlined),
            title: Text(l10n.aboutPrivacy),
            trailing: const Icon(Icons.open_in_new_rounded, size: 18),
            onTap: () => openLink(context, Uri.parse(support!.privacyUrl!)),
          ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(Icons.code_rounded),
          title: Text(l10n.aboutLicences),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () => showLicensePage(
            context: context,
            applicationName: l10n.appName,
          ),
        ),
      ],
    );
  }
}
