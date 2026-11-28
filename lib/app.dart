import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/localization/fallback_localizations.dart';
import 'core/localization/locale_controller.dart';
import 'core/router/app_router.dart';
import 'core/push/push_destination.dart';
import 'core/push/push_service.dart';
import 'core/services/preferences_service.dart';
import 'core/theme/theme_controller.dart';
import 'features/account/data/account_repository.dart';
import 'features/account/state/account_controller.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/app_typography.dart';
import 'core/widgets/exit_dialog.dart';
import 'features/address/data/location_service.dart';
import 'features/address/state/address_controller.dart';
import 'features/auth/state/auth_controller.dart';
import 'features/catalogue/data/storefront_repository.dart';
import 'features/catalogue/state/cart_controller.dart';
import 'features/catalogue/state/orders_controller.dart';
import 'features/catalogue/state/rated_orders.dart';
import 'features/catalogue/state/storefront_controller.dart';
import 'features/support/data/support_repository.dart';
import 'features/support/presentation/support_voice.dart';
import 'features/support/state/support_controller.dart';
import 'features/wallet/data/payment_gateway.dart';
import 'features/wallet/data/wallet_repository.dart';
import 'features/wallet/state/wallet_controller.dart';
import 'generated/l10n/app_localizations.dart';

class NexmileApp extends StatefulWidget {
  const NexmileApp({
    super.key,
    required this.preferences,
    required this.authController,
    required this.addressController,
    required this.locationService,
    required this.storefrontRepository,
    required this.walletRepository,
    required this.accountRepository,
    this.paymentGateway,
    this.pushService = const NoopPushService(),
    this.supportRepository,
    this.supportIsDemo = false,
    this.supportVoice,
  });

  final PreferencesService preferences;

  /// Built in `main.dart` (or by a test), because it has to exist before the
  /// API client can be told where to get its bearer token from.
  final AuthController authController;

  final AddressController addressController;

  /// Injected so tests can run the address flow without a GPS chip.
  final LocationService locationService;

  /// Backs the storefront, cart and order controllers. Injected rather than
  /// constructed here so a test can swap in a fake without an HTTP stack.
  final StorefrontRepository storefrontRepository;

  final WalletRepository walletRepository;

  /// Preferences, coupons, help, feedback: the profile page's extras.
  final AccountRepository accountRepository;

  /// Null means Razorpay, built the first time money is added. Tests pass a
  /// fake so no platform channel is ever opened.
  final PaymentGateway? paymentGateway;

  /// Notification taps arrive here. Defaults to the no-op transport, which is
  /// what every test and every build without Firebase runs on.
  final PushService pushService;

  /// The support chat. Null hides every way into it, which is what a build
  /// gets until the server exists, unless it asks for the demo.
  final SupportRepository? supportRepository;

  /// Answers come from the demo, and the chat says so.
  final bool supportIsDemo;

  /// Speaking to the support assistant and hearing it. The phone's own
  /// engines unless a test hands in a stand-in.
  final SupportVoice? supportVoice;

  @override
  State<NexmileApp> createState() => _NexmileAppState();
}

class _NexmileAppState extends State<NexmileApp> with WidgetsBindingObserver {
  late final SupportVoice _supportVoice =
      widget.supportVoice ?? DeviceSupportVoice();

  /// Needed because a notification tap has no `BuildContext` of its own — it
  /// arrives from a stream, not from a widget.
  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

  StreamSubscription<Map<String, Object?>>? _taps;

  @override
  void initState() {
    super.initState();
    _taps = widget.pushService.onTap.listen(_follow);
    // Added before the app's own navigator observer, so system back reaches
    // [didPopRoute] here first.
    WidgetsBinding.instance.addObserver(this);
  }

  bool _confirmingExit = false;

  /// System back. Anything a screen can go back from goes back as before —
  /// including the screens that decide back for themselves. Only when there
  /// is nowhere left does it ask before closing the app.
  @override
  Future<bool> didPopRoute() async {
    final NavigatorState? navigator = _navigator.currentState;
    if (navigator == null) return false;
    if (await navigator.maybePop()) return true;
    final BuildContext? context = _navigator.currentContext;
    if (context == null || !context.mounted) return false;
    // Not awaited: the back press is handled the moment the question is up.
    // A second back while it is open pops the dialog, through maybePop above.
    if (!_confirmingExit) {
      _confirmingExit = true;
      unawaited(
        confirmExit(context).whenComplete(() => _confirmingExit = false),
      );
    }
    return true;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _taps?.cancel();
    super.dispose();
  }

  /// Opens what the notification was about.
  ///
  /// Signed out, the tap is ignored and the app opens where it always does:
  /// pushing an order screen over the login flow would show a screen the
  /// customer has no token to fill.
  void _follow(Map<String, Object?> data) {
    if (!widget.authController.isSignedIn) return;
    final PushDestination? destination = PushDestination.fromData(data);
    if (destination == null) return;
    _navigator.currentState?.pushNamed(
      destination.routeName,
      arguments: destination.arguments,
    );
  }

  PreferencesService get preferences => widget.preferences;
  AuthController get authController => widget.authController;
  AddressController get addressController => widget.addressController;
  LocationService get locationService => widget.locationService;
  StorefrontRepository get storefrontRepository => widget.storefrontRepository;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider<LocaleController>(
          create: (_) => LocaleController(preferences),
        ),
        ChangeNotifierProvider<AuthController>.value(value: authController),
        ChangeNotifierProvider<AddressController>.value(
          value: addressController,
        ),
        Provider<PreferencesService>.value(value: preferences),
        ChangeNotifierProvider<ThemeController>(
          create: (_) => ThemeController(preferences),
        ),
        ChangeNotifierProvider<AccountController>(
          create: (_) => AccountController(
            repository: widget.accountRepository,
            preferences: preferences,
          ),
        ),
        Provider<PushService>.value(value: widget.pushService),
        Provider<SupportVoice>.value(value: _supportVoice),
        Provider<LocationService>.value(value: locationService),
        Provider<StorefrontRepository>.value(value: storefrontRepository),
        // Storefront state. The cart and the order history both live on the
        // server; these hold what the screens are currently looking at.
        ChangeNotifierProvider<StorefrontController>(
          create: (_) => StorefrontController(repository: storefrontRepository),
        ),
        ChangeNotifierProvider<CartController>(
          create: (_) => CartController(repository: storefrontRepository),
        ),
        ChangeNotifierProvider<OrdersController>(
          create: (_) => OrdersController(repository: storefrontRepository),
        ),
        ChangeNotifierProvider<RatedOrders>(
          create: (_) => RatedOrders(widget.preferences),
        ),
        ChangeNotifierProvider<WalletController>(
          create:
              (_) => WalletController(
                repository: widget.walletRepository,
                gateway: widget.paymentGateway,
                preferences: preferences,
              ),
        ),
        ChangeNotifierProvider<SupportController>(
          create: (_) => SupportController(
            preferences: preferences,
            repository: widget.supportRepository,
            isDemo: widget.supportIsDemo,
          ),
        ),
      ],
      child: Consumer<LocaleController>(
        builder: (BuildContext context, LocaleController controller, _) {
          return MaterialApp(
            title: 'Nexmile',
            debugShowCheckedModeBanner: false,
            navigatorKey: _navigator,

            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            // System by default; Profile → Appearance changes it.
            themeMode: context.watch<ThemeController>().mode,

            locale: controller.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const <LocalizationsDelegate<Object>>[
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              // Order matters: these only catch the locales the global
              // delegates above decline. See fallback_localizations.dart.
              FallbackMaterialLocalizationsDelegate(),
              FallbackCupertinoLocalizationsDelegate(),
            ],

            initialRoute: AppRoutes.splash,
            onGenerateRoute: AppRouter.onGenerateRoute,

            builder: (BuildContext context, Widget? child) {
              return Directionality(
                // Driven by the selected language rather than inferred, so
                // Kashmiri and Sindhi lay out right-to-left as reliably as
                // Urdu does.
                textDirection: controller.textDirection,
                child: MediaQuery.withClampedTextScaling(
                  minScaleFactor: AppTypography.minTextScale,
                  maxScaleFactor: AppTypography.maxTextScale,
                  child: child ?? const SizedBox.shrink(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
