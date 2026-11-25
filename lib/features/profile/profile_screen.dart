import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/localization/app_language.dart';
import '../../core/localization/locale_controller.dart';
import '../../core/motion/haptics.dart';
import '../../core/motion/nexmile_loader.dart';
import '../../core/router/app_router.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/theme_controller.dart';
import '../../core/widgets/info_tile.dart' show StatusChip, StatusTone;
import '../../generated/l10n/app_localizations.dart';
import '../account/presentation/account_sheets.dart';
import '../account/presentation/profile_widgets.dart';
import '../account/state/account_controller.dart';
import '../address/state/address_controller.dart';
import '../auth/data/auth_failure.dart';
import '../auth/data/auth_user.dart';
import '../auth/state/auth_controller.dart';
import '../catalogue/presentation/widgets/catalogue_widgets.dart';
import '../wallet/state/wallet_controller.dart';
import 'edit_profile_sheet.dart';
import '../support/state/support_controller.dart';
import 'user_photo.dart';

/// The customer's profile: who they are, their money and coupons, their
/// preferences, and everything else an account needs, in grouped cards.
///
/// Opened from the avatar at the top of the storefront, and also the third
/// tab. Renders the cached user at once and refreshes in the background, so
/// it is never blank on a slow connection. A failed refresh shows a banner
/// above the still-valid cached data rather than replacing it.
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isLoading = false;
  AuthFailure? _failure;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    if (!mounted || _isLoading) return;
    setState(() => _isLoading = true);

    final NavigatorState navigator = Navigator.of(context);
    final AuthController auth = context.read<AuthController>();
    final AccountController account = context.read<AccountController>();
    // The tiles and preferences fill in as they arrive. Their failures are
    // their own screens' to show, so only the profile's is awaited here.
    final Future<AuthFailure?> wallet = context.read<WalletController>().load();
    final Future<void> preferences = account.loadPreferences();
    final Future<void> coupons = account.loadCoupons();
    final AuthFailure? failure = await auth.loadProfile();
    await Future.wait(<Future<Object?>>[wallet, preferences, coupons]);

    if (!mounted) return;

    // The API client refreshes on a 401 and clears the session if that fails.
    if (!auth.isSignedIn) {
      navigator.pushNamedAndRemoveUntil(
        AppRoutes.login,
        (Route<void> route) => false,
      );
      return;
    }

    setState(() {
      _isLoading = false;
      _failure = failure;
    });
  }

  Future<void> _edit() async {
    final bool saved = await showEditProfileSheet(context);
    // The controller already holds the updated user, so this only refreshes
    // anything the server changed that the response did not carry.
    if (saved && mounted) await _load();
  }

  /// Saved to the account. The home tab watches veg mode and refilters the
  /// restaurant list itself, including when a refused change is put back.
  Future<void> _setVegMode(bool on) async {
    Haptics.select();
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AuthFailure? failure =
        await context.read<AccountController>().setVegMode(on);
    if (!mounted || failure == null) return;
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(failure.message(l10n))));
  }

  void _open(String route, {Object? arguments}) =>
      Navigator.of(context).pushNamed(route, arguments: arguments);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AuthUser? user = context.watch<AuthController>().user;
    final AppLanguage language = context.watch<LocaleController>().language;
    final WalletController wallet = context.watch<WalletController>();
    final AccountController account = context.watch<AccountController>();
    final ThemeMode appearance = context.watch<ThemeController>().mode;

    if (user == null) {
      // Only reachable for a blink between sign-out and the route swap.
      return Scaffold(
        appBar: AppBar(title: Text(l10n.profileTitle)),
        body: const NexmileLoader(),
      );
    }

    final int? couponCount = account.coupons?.length;

    return Scaffold(
      backgroundColor: profilePageColour(theme),
      appBar: AppBar(
        backgroundColor: profilePageColour(theme),
        surfaceTintColor: Colors.transparent,
        title: Text(l10n.profileTitle),
        actions: <Widget>[
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Center(
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2.2),
                ),
              ),
            ),
          const SizedBox(width: 4),
        ],
      ),
      body: RefreshIndicator(
        color: theme.colorScheme.primary,
        backgroundColor: theme.colorScheme.surface,
        displacement: 28,
        onRefresh: () {
          Haptics.tap();
          return _load();
        },
        child: ListView(
          // Always scrollable so pull-to-refresh works on a short page too.
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
          children: <Widget>[
            _HeaderCard(user: user, onEdit: _edit),
            if (_failure != null) ...<Widget>[
              const SizedBox(height: 12),
              _RefreshFailedBanner(
                message: _failure!.message(l10n),
                onRetry: _isLoading ? null : _load,
              ),
            ],
            const SizedBox(height: 12),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: _MoneyTile(
                      icon: Icons.account_balance_wallet_outlined,
                      title: l10n.walletTitle,
                      // A balance only once the server has given one; before
                      // that, the tile is an invitation, not a claim of ₹0.
                      value: wallet.isAvailable
                          ? formatRupees(wallet.balance)
                          : l10n.walletAddMoney,
                      onTap: () => _open(AppRoutes.wallet),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _MoneyTile(
                      icon: Icons.local_offer_outlined,
                      title: l10n.profileCoupons,
                      value: couponCount == null
                          ? null
                          : l10n.profileCouponsCount(couponCount),
                      onTap: () => _open(AppRoutes.coupons),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            ProfileSection(
              title: l10n.profilePreferences,
              children: <Widget>[
                ProfileRow(
                  icon: Icons.eco_outlined,
                  title: l10n.profileVegMode,
                  subtitle: l10n.profileVegModeHint,
                  onTap: () => _setVegMode(!account.vegMode),
                  trailing: Switch(
                    value: account.vegMode,
                    activeTrackColor: AppColors.greenDeep,
                    onChanged: _setVegMode,
                  ),
                ),
                ProfileRow(
                  icon: Icons.contrast_rounded,
                  title: l10n.profileAppearance,
                  value: appearanceLabel(l10n, appearance),
                  onTap: () => showAppearanceSheet(context),
                ),
                ProfileRow(
                  icon: Icons.translate_rounded,
                  title: l10n.appLanguageLabel,
                  value: language.nativeName,
                  onTap: () => _open(AppRoutes.language, arguments: false),
                ),
                ProfileRow(
                  icon: Icons.notifications_none_rounded,
                  title: l10n.profileNotifications,
                  onTap: () => showNotificationsSheet(context),
                ),
              ],
            ),
            ProfileSection(
              title: l10n.profileFoodDelivery,
              children: <Widget>[
                ProfileRow(
                  icon: Icons.receipt_long_outlined,
                  title: l10n.ordersTitle,
                  onTap: () => _open(AppRoutes.orders),
                ),
                ProfileRow(
                  icon: Icons.location_on_outlined,
                  title: l10n.addressBookTitle,
                  onTap: () => _open(
                    AppRoutes.addressBook,
                    arguments: const AddressBookArgs(managing: true),
                  ),
                ),
                ProfileRow(
                  icon: Icons.favorite_border_rounded,
                  title: l10n.profileFavourites,
                  onTap: () => _open(AppRoutes.favourites),
                ),
                ProfileRow(
                  icon: Icons.support_agent_rounded,
                  title: l10n.profileHelp,
                  onTap: () => _open(AppRoutes.help),
                ),
              ],
            ),
            ProfileSection(
              title: l10n.profileMore,
              children: <Widget>[
                ProfileRow(
                  icon: Icons.rate_review_outlined,
                  title: l10n.profileFeedback,
                  onTap: () => showFeedbackSheet(context),
                ),
                ProfileRow(
                  icon: Icons.health_and_safety_outlined,
                  title: l10n.profileSafety,
                  onTap: () => showSafetySheet(context),
                ),
                ProfileRow(
                  icon: Icons.info_outline_rounded,
                  title: l10n.profileAbout,
                  onTap: () => showAboutNexmileSheet(context),
                ),
                ProfileRow(
                  icon: Icons.devices_other_rounded,
                  title: l10n.devicesTitle,
                  onTap: () => _open(AppRoutes.devices),
                ),
                ProfileRow(
                  icon: Icons.logout_rounded,
                  title: l10n.signOut,
                  destructive: true,
                  onTap: _signOut,
                ),
                // Kept last and quiet: a destructive action should not compete
                // with sign-out for attention.
                ProfileRow(
                  icon: Icons.delete_outline_rounded,
                  title: l10n.deleteAccount,
                  destructive: true,
                  onTap: _deleteAccount,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Irreversible for the customer, though the server keeps a soft-deleted
  /// record so past orders and invoices survive for tax purposes.
  Future<void> _deleteAccount() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AuthController auth = context.read<AuthController>();
    final WalletController wallet = context.read<WalletController>();
    final AccountController account = context.read<AccountController>();
    final SupportController support = context.read<SupportController>();
    final NavigatorState navigator = Navigator.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);

    final bool confirmed = await showDialog<bool>(
          context: context,
          builder: (BuildContext dialogContext) => AlertDialog(
            title: Text(l10n.deleteAccountTitle),
            content: Text(l10n.deleteAccountMessage),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(false),
                child: Text(l10n.cancelLabel),
              ),
              FilledButton(
                onPressed: () => Navigator.of(dialogContext).pop(true),
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(dialogContext).colorScheme.error,
                ),
                child: Text(l10n.deleteAccount),
              ),
            ],
          ),
        ) ??
        false;
    if (!confirmed || !mounted) return;

    final AuthFailure? failure = await auth.deleteAccount();
    if (!mounted) return;
    if (failure != null) {
      messenger
        ..clearSnackBars()
        ..showSnackBar(SnackBar(content: Text(failure.message(l10n))));
      return;
    }
    wallet.clear();
    await account.clear();
    await support.clear();
    navigator.pushNamedAndRemoveUntil(
      AppRoutes.login,
      (Route<void> route) => false,
    );
    messenger
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(l10n.accountDeleted)));
  }

  Future<void> _signOut() async {
    final NavigatorState navigator = Navigator.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AuthController auth = context.read<AuthController>();
    final AccountController account = context.read<AccountController>();

    // Clear the address book too, or the next customer to sign in on this
    // device inherits the previous one's saved addresses.
    final SupportController support = context.read<SupportController>();
    context.read<AddressController>().clear();
    context.read<WalletController>().clear();
    await auth.signOut();
    await account.clear();
    await support.clear();
    if (!mounted) return;

    navigator.pushNamedAndRemoveUntil(
      AppRoutes.login,
      (Route<void> route) => false,
    );
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.signedOut)));
  }
}

/// Who is signed in: initial, name, email and number, and "Edit profile".
/// The whole card opens the editor.
class _HeaderCard extends StatelessWidget {
  const _HeaderCard({required this.user, required this.onEdit});

  final AuthUser user;
  final VoidCallback onEdit;

  static String _statusLabel(UserStatus status, AppLocalizations l10n) =>
      switch (status) {
        UserStatus.active => l10n.statusActive,
        UserStatus.pending => l10n.statusPending,
        UserStatus.suspended => l10n.statusSuspended,
        // The API grew a status this build predates.
        UserStatus.unknown => l10n.notProvided,
      };

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String name = user.name.trim();
    final String initial =
        user.firstName.isEmpty ? '?' : user.firstName.characters.first.toUpperCase();
    final Color accent = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : AppColors.greenDeep;

    return Material(
      color: profileCardColour(theme),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onEdit,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 64,
                height: 64,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                ),
                child: UserPhoto(
                  url: user.avatarUrl,
                  size: 64,
                  fallback: Text(
                    initial,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      color: accent,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name.isEmpty ? (user.email ?? user.phone ?? '') : name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    if (user.email != null) ...<Widget>[
                      const SizedBox(height: 2),
                      Text(
                        user.email!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                    if (user.phone != null) ...<Widget>[
                      const SizedBox(height: 4),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: <Widget>[
                          Text(
                            user.phone!,
                            textDirection: TextDirection.ltr,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          if (user.phoneVerified)
                            StatusChip(
                              label: l10n.verifiedLabel,
                              tone: StatusTone.positive,
                            ),
                        ],
                      ),
                    ],
                    // Only a status that needs attention is shown; an active
                    // account is the normal case and says nothing.
                    if (user.status != UserStatus.active) ...<Widget>[
                      const SizedBox(height: 8),
                      StatusChip(
                        label: _statusLabel(user.status, l10n),
                        tone: user.status == UserStatus.suspended
                            ? StatusTone.negative
                            : StatusTone.warning,
                      ),
                    ],
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            l10n.editProfileTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: AppColors.orangeDeep,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right_rounded,
                          color: AppColors.orangeDeep,
                        ),
                      ],
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

/// One of the two tiles under the header: the wallet, and coupons.
class _MoneyTile extends StatelessWidget {
  const _MoneyTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.value,
  });

  final IconData icon;
  final String title;
  final String? value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Material(
      color: profileCardColour(theme),
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: <Widget>[
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.09),
                ),
                child: Icon(icon, size: 18, color: theme.colorScheme.onSurfaceVariant),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    if (value != null)
                      Text(
                        value!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
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

class _RefreshFailedBanner extends StatelessWidget {
  const _RefreshFailedBanner({required this.message, required this.onRetry});

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color foreground = theme.colorScheme.error;
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
      decoration: BoxDecoration(
        color: foreground.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(12),
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
            style: TextButton.styleFrom(
              foregroundColor: foreground,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              minimumSize: const Size(0, 40),
            ),
            child: Text(l10n.retry),
          ),
        ],
      ),
    );
  }
}
