import 'dart:async';

import 'package:flutter/foundation.dart'
    show kDebugMode, LicenseEntryWithLineBreaks, LicenseRegistry;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'core/network/api_client.dart';
import 'core/push/device_registrar.dart';
import 'core/push/firebase_push_service.dart';
import 'core/push/push_service.dart';
import 'core/services/preferences_service.dart';
import 'features/address/data/address_repository.dart';
import 'features/address/data/location_service.dart';
import 'features/address/data/google_places.dart';
import 'features/account/data/account_repository.dart';
import 'features/address/state/address_controller.dart';
import 'features/auth/data/auth_repository.dart';
import 'features/auth/data/auth_session.dart';
import 'features/auth/data/device_repository.dart';
import 'features/auth/data/token_store.dart';
import 'features/auth/state/auth_controller.dart';
import 'features/catalogue/data/storefront_repository.dart';
import 'features/support/data/demo_support_repository.dart';
import 'features/support/data/support_repository.dart';
import 'features/wallet/data/wallet_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // The bundled font's licence, on the open-source licences page.
  LicenseRegistry.addLicense(() async* {
    final String text = await rootBundle
        .loadString('assets/fonts/plus_jakarta_sans/OFL.txt');
    yield LicenseEntryWithLineBreaks(<String>['Plus Jakarta Sans'], text);
  });

  // Portrait only: the splash lockup and the language grid are both designed
  // for a tall viewport.
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  // Read the stored language before the first frame so the app never flashes
  // English at a customer who has already picked something else.
  final PreferencesService preferences = await PreferencesService.create();

  // Restore the session from the platform keystore, so a returning customer
  // goes straight from the splash to the dashboard.
  final TokenStore tokenStore = SecureTokenStore();
  final AuthSession? session = await tokenStore.read();

  // The client and the controller reference each other: the client needs a
  // bearer token and a way to refresh it, the controller needs the client to
  // make calls. Build the client first, then attach the controller as its
  // token provider.
  final ApiClient apiClient = ApiClient()
    // Read from preferences each time rather than captured once, so picking
    // a new language changes the next request too.
    ..languageProvider = () => preferences.languageCode;

  // Firebase when the project credentials are in the build, and the no-op
  // transport when they are not: a checkout with no `google-services.json`
  // still builds, signs in and takes orders, with nothing to register and no
  // tap to route. See docs/PUSH-SETUP.md.
  final PushService pushService =
      await FirebasePushService.start() ?? const NoopPushService();
  final DeviceRegistrar deviceRegistrar = DeviceRegistrar(
    push: pushService,
    repository: ApiDeviceRepository(apiClient),
  );

  final AuthController authController = AuthController(
    repository: ApiAuthRepository(apiClient),
    tokenStore: tokenStore,
    initialSession: session,
    deviceRegistrar: deviceRegistrar,
  );
  apiClient.tokenProvider = authController;

  // The channel has to exist before the first notification lands, and a
  // mismatched id fails silently, so it is created at launch rather than at
  // sign-in.
  unawaited(pushService.ensureChannel());

  // A token can rotate while the app is closed, and a rotated token that was
  // never re-registered means notifications stop arriving with nothing to see.
  if (authController.isSignedIn) unawaited(deviceRegistrar.register());

  // The support chat's server is agreed but not built. `--dart-define=
  // NEXMILE_SUPPORT=live` talks to it once it is; `demo` plays it out on the
  // phone, saying so on screen; anything else, and every release build
  // that does not ask, hides the chat entirely, so no customer meets sample
  // answers by accident. Debug builds show the demo.
  const String supportMode = String.fromEnvironment('NEXMILE_SUPPORT');
  final SupportRepository? supportRepository = switch (supportMode) {
    'live' => ApiSupportRepository(apiClient),
    'demo' => DemoSupportRepository(),
    '' when kDebugMode => DemoSupportRepository(),
    _ => null,
  };

  runApp(
    NexmileApp(
      preferences: preferences,
      authController: authController,
      addressController: AddressController(
        repository: ApiAddressRepository(apiClient),
      ),
      // Google's type-ahead for address search, on the app's own Maps key.
      locationService: GeolocatorLocationService(places: GooglePlaces()),
      storefrontRepository: ApiStorefrontRepository(apiClient),
      walletRepository: ApiWalletRepository(apiClient),
      accountRepository: ApiAccountRepository(apiClient),
      pushService: pushService,
      supportRepository: supportRepository,
      supportIsDemo: supportRepository is DemoSupportRepository,
    ),
  );
}
