import 'dart:async';
import 'dart:convert';
import 'dart:io' show File;


import 'package:flutter/foundation.dart' show ValueListenable;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart' show LatLng;
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:nexmile/app.dart';
import 'package:provider/provider.dart';
import 'package:nexmile/core/constants/app_assets.dart';
import 'package:nexmile/core/localization/app_language.dart';
import 'package:nexmile/core/network/api_client.dart';
import 'package:nexmile/core/network/api_exception.dart';
import 'package:nexmile/core/network/image_disk_cache.dart';
import 'package:nexmile/core/motion/skeleton.dart';
import 'package:nexmile/core/widgets/empty_illustration.dart';
import 'package:nexmile/core/theme/app_theme.dart';
import 'package:nexmile/core/push/device_registrar.dart';
import 'package:nexmile/core/push/push_destination.dart';
import 'package:nexmile/core/push/push_service.dart';
import 'package:nexmile/core/router/app_router.dart';
import 'package:geolocator/geolocator.dart';
import 'package:nexmile/core/services/preferences_service.dart';
import 'package:nexmile/core/widgets/gradient_button.dart';
import 'package:nexmile/features/account/data/account_models.dart';
import 'package:nexmile/features/account/presentation/account_screens.dart';
import 'package:nexmile/features/account/presentation/profile_widgets.dart';
import 'package:nexmile/features/address/data/address.dart';
import 'package:nexmile/features/address/data/address_repository.dart';
import 'package:nexmile/features/address/data/location_service.dart';
import 'package:nexmile/features/address/presentation/address_book_screen.dart';
import 'package:nexmile/features/address/presentation/widgets/address_sheets.dart';
import 'package:image_picker/image_picker.dart' show ImageSource;
import 'package:nexmile/features/address/presentation/address_map_screen.dart';
import 'package:nexmile/features/address/presentation/location_permission_screen.dart';
import 'package:nexmile/features/address/state/address_controller.dart';
import 'package:nexmile/features/auth/data/auth_repository.dart';
import 'package:nexmile/features/auth/data/auth_session.dart';
import 'package:nexmile/features/auth/data/device_repository.dart';
import 'package:nexmile/features/auth/data/auth_user.dart';
import 'package:nexmile/features/auth/data/device_session.dart';
import 'package:nexmile/features/auth/data/login_identifier.dart';
import 'package:nexmile/features/auth/data/token_store.dart';
import 'package:nexmile/features/auth/presentation/login_screen.dart';
import 'package:nexmile/features/auth/presentation/otp_verification_screen.dart';
import 'package:nexmile/features/auth/state/auth_controller.dart';
import 'package:nexmile/features/auth/data/auth_failure.dart';
import 'package:nexmile/features/catalogue/data/cart_models.dart';
import 'package:nexmile/features/catalogue/data/home_models.dart';
import 'package:nexmile/features/catalogue/data/restaurant_filters.dart';
import 'package:nexmile/features/catalogue/data/review_models.dart';
import 'package:nexmile/features/catalogue/presentation/widgets/catalogue_widgets.dart';
import 'package:nexmile/features/catalogue/data/order_models.dart';
import 'package:nexmile/features/catalogue/data/delivery_instruction.dart';
import 'package:nexmile/features/catalogue/data/storefront_models.dart';
import 'package:nexmile/features/catalogue/data/storefront_repository.dart';
import 'package:nexmile/features/catalogue/presentation/cart_screen.dart';
import 'package:nexmile/features/catalogue/presentation/order_placed_screen.dart';
import 'package:nexmile/features/catalogue/presentation/orders_tab.dart';
import 'package:nexmile/features/catalogue/presentation/order_status_screen.dart';
import 'package:nexmile/features/catalogue/presentation/restaurant_screen.dart';
import 'package:nexmile/features/catalogue/data/review_tags.dart';
import 'package:nexmile/features/catalogue/presentation/widgets/rating_stars.dart';
import 'package:nexmile/features/catalogue/presentation/rate_order_screen.dart';
import 'package:nexmile/features/catalogue/presentation/search_tab.dart';
import 'package:nexmile/features/catalogue/presentation/widgets/dish_photo_viewer.dart';
import 'package:nexmile/features/catalogue/presentation/widgets/tracking/order_progress.dart';
import 'package:nexmile/features/catalogue/presentation/widgets/filter_bar.dart' show VegToggle;
import 'package:nexmile/features/catalogue/state/cart_controller.dart';
import 'package:nexmile/features/catalogue/state/orders_controller.dart';
import 'package:nexmile/features/catalogue/state/storefront_controller.dart';
import 'package:nexmile/features/shell/app_shell.dart';
import 'package:nexmile/features/language/language_screen.dart';
import 'package:nexmile/features/profile/profile_screen.dart';
import 'package:nexmile/features/splash/splash_screen.dart';
import 'package:nexmile/generated/l10n/app_localizations.dart';
import 'package:nexmile/features/profile/user_photo.dart';
import 'package:nexmile/features/wallet/data/payment_gateway.dart';
import 'package:nexmile/features/wallet/data/wallet_models.dart';
import 'package:nexmile/features/support/data/demo_support_repository.dart';
import 'package:nexmile/features/support/data/support_models.dart';
import 'package:nexmile/features/support/data/support_repository.dart';
import 'package:nexmile/features/support/presentation/support_screen.dart';
import 'package:nexmile/features/support/presentation/support_voice.dart';
import 'package:nexmile/features/catalogue/presentation/widgets/rider_map.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'account_fakes.dart';
import 'wallet_fakes.dart';

// ---------------------------------------------------------------------------
// Fixtures
// ---------------------------------------------------------------------------

const AuthUser _testUser = AuthUser(
  id: 42,
  name: 'Priya Kumar',
  email: 'priya@example.com',
  phone: '9876543210',
  role: UserRole.customer,
  status: UserStatus.active,
);

AuthSession _testSession() => const AuthSession(
      user: _testUser,
      accessToken: 'access-token',
      refreshToken: 'refresh-token',
      expiresIn: 3600,
    );

/// Scriptable stand-in for the live API.
/// A push transport with no Firebase behind it, so the registration rules can
/// be proved without a device or a real notification.
class FakePushService implements PushService {
  FakePushService({String? initial}) : _token = initial;

  String? _token;
  bool permissionAsked = false;
  bool channelCreated = false;

  final StreamController<String> _refresh = StreamController<String>.broadcast();
  final StreamController<Map<String, Object?>> _taps =
      StreamController<Map<String, Object?>>.broadcast();

  /// What the transport does when it decides the old token is stale.
  void rotate(String token) {
    _token = token;
    _refresh.add(token);
  }

  @override
  Future<String?> token() async => _token;

  @override
  Stream<String> get onTokenRefresh => _refresh.stream;

  @override
  Stream<Map<String, Object?>> get onTap => _taps.stream;

  @override
  Future<bool> requestPermission() async {
    permissionAsked = true;
    if (_token != null) access = NotificationAccess.granted;
    return _token != null;
  }

  /// Granted by default, so the first-run permission pages stay out of the
  /// way of tests about something else.
  NotificationAccess access = NotificationAccess.granted;

  @override
  Future<NotificationAccess> notificationAccess() async => access;

  @override
  Future<void> ensureChannel() async => channelCreated = true;
}

class FakeDeviceRepository implements DeviceRepository {
  final List<String> registered = <String>[];
  final List<String> unregistered = <String>[];
  final List<String> platforms = <String>[];

  bool failRegister = false;

  @override
  Future<void> registerDevice({
    required String token,
    required String platform,
  }) async {
    if (failRegister) {
      throw const ApiException(kind: ApiErrorKind.network, statusCode: 0);
    }
    registered.add(token);
    platforms.add(platform);
  }

  @override
  Future<void> unregisterDevice({required String token}) async {
    unregistered.add(token);
  }
}

class FakeAuthRepository implements AuthRepository {
  /// Account management, added alongside the profile and devices screens.
  List<DeviceSession> deviceSessions = <DeviceSession>[
    const DeviceSession(id: 1, deviceName: 'Pixel 8', ipAddress: '10.0.0.2'),
    const DeviceSession(id: 2, deviceName: 'iPhone 14'),
  ];
  final List<int> revoked = <int>[];
  Map<String, dynamic>? lastProfilePatch;
  int deleteAccountCount = 0;
  int signOutEverywhereCount = 0;
  ApiException? profilePatchError;

  @override
  Future<AuthUser> updateProfile({
    String? name,
    String? email,
    String? phone,
    String? preferredLocale,
  }) async {
    lastProfilePatch = <String, dynamic>{
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (preferredLocale != null) 'preferred_locale': preferredLocale,
    };
    final ApiException? error = profilePatchError;
    if (error != null) {
      profilePatchError = null;
      throw error;
    }
    return AuthUser(
      id: _testUser.id,
      name: name ?? _testUser.name,
      email: email ?? _testUser.email,
      phone: phone ?? _testUser.phone,
      role: _testUser.role,
      status: _testUser.status,
      preferredLocale: preferredLocale ?? _testUser.preferredLocale,
      phoneVerified: _testUser.phoneVerified,
    );
  }

  @override
  Future<void> deleteAccount() async => deleteAccountCount++;

  @override
  Future<List<DeviceSession>> sessions() async => deviceSessions;

  @override
  Future<void> revokeSession(int id) async => revoked.add(id);

  @override
  Future<void> signOutEverywhere() async => signOutEverywhereCount++;

  FakeAuthRepository({this.validCode = '123456'});

  final String validCode;

  ApiException? requestError;
  ApiException? verifyError;
  ApiException? profileError;
  int resendAfter = 60;
  String? debugCode;

  /// What `GET /v1/profile` returns; defaults to the signed-in fixture.
  AuthUser profileUser = _testUser;

  int requestCount = 0;
  int verifyCount = 0;
  int signOutCount = 0;
  int profileCount = 0;
  LoginIdentifier? lastIdentifier;
  String? lastCode;

  @override
  Future<OtpChallenge> requestCode(LoginIdentifier identifier) async {
    requestCount++;
    lastIdentifier = identifier;
    final ApiException? error = requestError;
    if (error != null) throw error;
    return OtpChallenge(
      identifier: identifier.value,
      channel: identifier.isEmail ? 'email' : 'sms',
      expiresIn: 300,
      resendAfter: resendAfter,
      debugCode: debugCode,
    );
  }

  @override
  Future<AuthSession> verifyCode({
    required LoginIdentifier identifier,
    required String code,
    String? deviceName,
  }) async {
    verifyCount++;
    lastCode = code;
    final ApiException? error = verifyError;
    if (error != null) throw error;
    if (code != validCode) {
      throw const ApiException(kind: ApiErrorKind.validation, statusCode: 422);
    }
    return _testSession();
  }

  @override
  Future<AuthSession> refresh(String refreshToken) async => _testSession();

  @override
  Future<AuthUser> me() async => _testUser;

  @override
  Future<AuthUser> profile() async {
    profileCount++;
    final ApiException? error = profileError;
    if (error != null) throw error;
    return profileUser;
  }

  @override
  Future<void> signOut() async => signOutCount++;
}

/// In-memory address book, standing in for `/v1/addresses`.
class FakeAddressRepository implements AddressRepository {
  FakeAddressRepository({List<Address>? seed})
      : _addresses = <Address>[...?seed];

  final List<Address> _addresses;

  ApiException? listError;
  ApiException? saveError;
  ApiException? showError;
  int listCount = 0;
  int showCount = 0;
  int? lastUpdatedId;
  AddressDraft? lastDraft;

  int _nextId = 100;

  @override
  Future<Address> show(int id) async {
    showCount++;
    final ApiException? error = showError;
    if (error != null) throw error;
    return _addresses.firstWhere((Address a) => a.id == id);
  }

  @override
  Future<List<Address>> list() async {
    listCount++;
    final ApiException? error = listError;
    if (error != null) throw error;
    return List<Address>.unmodifiable(_addresses);
  }

  @override
  Future<Address> create(AddressDraft draft) async {
    lastDraft = draft;
    final ApiException? error = saveError;
    if (error != null) throw error;
    final Address saved = _fromDraft(draft, _nextId++);
    if (saved.isDefault) _clearDefaults();
    _addresses.add(saved);
    return saved;
  }

  @override
  Future<Address> update(int id, AddressDraft draft) async {
    lastDraft = draft;
    lastUpdatedId = id;
    final ApiException? error = saveError;
    if (error != null) throw error;
    final Address saved = _fromDraft(draft, id);
    _addresses.removeWhere((Address a) => a.id == id);
    _addresses.add(saved);
    return saved;
  }

  @override
  Future<void> delete(int id) async =>
      _addresses.removeWhere((Address a) => a.id == id);

  /// Uploads seen, and what the next one does.
  final List<(int, int, String)> uploads = <(int, int, String)>[];
  ApiException? uploadError;
  final List<int> photoDeletes = <int>[];

  @override
  Future<Address> deletePhoto(int id) async {
    photoDeletes.add(id);
    final int index = _addresses.indexWhere((Address a) => a.id == id);
    final Address updated = _withPhoto(_addresses[index], null);
    _addresses[index] = updated;
    return updated;
  }

  static Address _withPhoto(Address a, String? url) => Address(
        id: a.id,
        label: a.label,
        line1: a.line1,
        line2: a.line2,
        landmark: a.landmark,
        city: a.city,
        state: a.state,
        pincode: a.pincode,
        latitude: a.latitude,
        longitude: a.longitude,
        isDefault: a.isDefault,
        contactName: a.contactName,
        contactPhone: a.contactPhone,
        photoUrl: url,
      );

  @override
  Future<Address> uploadPhoto(
    int id, {
    required List<int> bytes,
    required String filename,
  }) async {
    uploads.add((id, bytes.length, filename));
    final ApiException? error = uploadError;
    if (error != null) throw error;
    final int index = _addresses.indexWhere((Address a) => a.id == id);
    final Address a = _addresses[index];
    final Address updated = Address(
      id: a.id,
      label: a.label,
      line1: a.line1,
      line2: a.line2,
      landmark: a.landmark,
      city: a.city,
      state: a.state,
      pincode: a.pincode,
      latitude: a.latitude,
      longitude: a.longitude,
      isDefault: a.isDefault,
      contactName: a.contactName,
      contactPhone: a.contactPhone,
      photoUrl: 'https://cdn.example/address-$id.jpg',
    );
    _addresses[index] = updated;
    return updated;
  }

  @override
  Future<Address> makeDefault(int id) async {
    _clearDefaults();
    final int index = _addresses.indexWhere((Address a) => a.id == id);
    final Address current = _addresses[index];
    final Address updated = _copyDefault(current, true);
    _addresses[index] = updated;
    return updated;
  }

  void _clearDefaults() {
    for (int i = 0; i < _addresses.length; i++) {
      if (_addresses[i].isDefault) {
        _addresses[i] = _copyDefault(_addresses[i], false);
      }
    }
  }

  static Address _copyDefault(Address a, bool isDefault) => Address(
        id: a.id,
        label: a.label,
        line1: a.line1,
        line2: a.line2,
        landmark: a.landmark,
        city: a.city,
        state: a.state,
        pincode: a.pincode,
        latitude: a.latitude,
        longitude: a.longitude,
        isDefault: isDefault,
        contactName: a.contactName,
        contactPhone: a.contactPhone,
      );

  static Address _fromDraft(AddressDraft d, int id) => Address(
        id: id,
        label: d.label,
        line1: d.line1,
        line2: d.line2,
        landmark: d.landmark,
        city: d.city,
        state: d.state,
        pincode: d.pincode,
        latitude: d.latitude,
        longitude: d.longitude,
        isDefault: d.isDefault,
        contactName: d.contactName,
        contactPhone: d.contactPhone,
      );
}

/// Location service with no GPS behind it.
class FakeLocationService implements LocationService {
  FakeLocationService({
    this.fix = const LocationFix(latitude: 13.0827, longitude: 80.2707),
    this.failure,
    this.place = const ResolvedPlace(
      line1: '12A Green Residency',
      landmark: 'Near the bus stop',
      city: 'Chennai',
      state: 'Tamil Nadu',
      pincode: '600040',
    ),
  });

  final LocationFix fix;
  final LocationFailure? failure;
  final ResolvedPlace place;

  int requestCount = 0;
  int settingsCount = 0;

  /// Allowed by default, so only the permission tests meet the first-run
  /// pages.
  LocationPermission permission = LocationPermission.whileInUse;

  /// What the system prompt answers when [requestPermission] shows it.
  LocationPermission answer = LocationPermission.whileInUse;
  int promptCount = 0;

  @override
  Future<LocationPermission> currentPermission() async => permission;

  @override
  Future<LocationPermission> requestPermission() async {
    promptCount++;
    return permission = answer;
  }

  @override
  Future<LocationFix> requestFix() async {
    requestCount++;
    final LocationFailure? f = failure;
    if (f != null) throw LocationException(f);
    return fix;
  }

  @override
  Future<ResolvedPlace> describe(double latitude, double longitude) async =>
      place;

  /// What [search] answers with, for every query of three letters or more.
  List<PlaceSuggestion> suggestions = const <PlaceSuggestion>[
    PlaceSuggestion(
      title: 'Anna Nagar',
      subtitle: 'Chennai, Tamil Nadu, 600040',
      latitude: 13.0850,
      longitude: 80.2101,
    ),
  ];

  @override
  Future<List<PlaceSuggestion>> search(
    String query, {
    double? nearLatitude,
    double? nearLongitude,
    String? language,
  }) async {
    lastSearchNear = nearLatitude == null ? null : (nearLatitude, nearLongitude!);
    return query.trim().length < 3 ? const <PlaceSuggestion>[] : suggestions;
  }

  /// Where the last search was ranked from, if anywhere.
  (double, double)? lastSearchNear;

  /// Coordinates for a suggestion that came without them, as a Google one
  /// does. Null means Google could not say where it is.
  LatLngPair? resolveTo = (13.0850, 80.2101);
  int resolveCount = 0;

  @override
  Future<PlaceSuggestion?> resolve(PlaceSuggestion suggestion) async {
    resolveCount++;
    if (suggestion.isResolved) return suggestion;
    final LatLngPair? to = resolveTo;
    if (to == null) return null;
    return suggestion.copyWith(latitude: to.$1, longitude: to.$2);
  }

  @override
  Future<void> openSettings() async => settingsCount++;
}

typedef LatLngPair = (double, double);

const Address _testAddress = Address(
  id: 1,
  label: AddressLabel.home,
  line1: '12A Green Residency',
  city: 'Chennai',
  state: 'Tamil Nadu',
  pincode: '600040',
  latitude: 13.0827,
  longitude: 80.2707,
  isDefault: true,
);

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const Map<String, Object> _freshInstall = <String, Object>{};

const Map<String, Object> _languageChosen = <String, Object>{
  'nexmile.language_code': 'en',
  'nexmile.language_chosen': true,
};

Map<String, Object> _languageChosenAs(String code) => <String, Object>{
      'nexmile.language_code': code,
      'nexmile.language_chosen': true,
    };

Future<PreferencesService> _prefs(Map<String, Object> seed) async {
  SharedPreferences.setMockInitialValues(seed);
  return PreferencesService.create();
}

late AuthController _controller;
late AddressController _addresses;
late FakeAddressRepository _addressRepo;
late FakeLocationService _location;
late FakeStorefrontRepository _storefrontRepo;
late FakeAuthRepository _authRepo;
late FakeAccountRepository _accountRepo;

Future<void> _pumpApp(
  WidgetTester tester, {
  Map<String, Object> seed = _freshInstall,
  FakeAuthRepository? repository,
  AuthSession? session,
  FakeAddressRepository? addressRepository,
  FakeLocationService? locationService,
  FakeStorefrontRepository? storefrontRepository,
  FakeWalletRepository? walletRepository,
  PaymentGateway? paymentGateway,
  FakeAccountRepository? accountRepository,
  PushService pushService = const NoopPushService(),
  SupportRepository? supportRepository,
  SupportVoice? supportVoice,
}) async {
  final PreferencesService preferences = await _prefs(seed);
  _authRepo = repository ?? FakeAuthRepository();
  _controller = AuthController(
    repository: _authRepo,
    tokenStore: InMemoryTokenStore(session),
    initialSession: session,
  );
  // Default to a customer who already has an address, so existing tests keep
  // landing on the storefront rather than the new address onboarding.
  _addressRepo = addressRepository ??
      FakeAddressRepository(seed: <Address>[_testAddress]);
  _addresses = AddressController(repository: _addressRepo);
  _location = locationService ?? FakeLocationService();
  _storefrontRepo = storefrontRepository ?? FakeStorefrontRepository();
  _accountRepo = accountRepository ?? FakeAccountRepository();

  await tester.pumpWidget(
    NexmileApp(
      preferences: preferences,
      authController: _controller,
      addressController: _addresses,
      locationService: _location,
      storefrontRepository: _storefrontRepo,
      walletRepository: walletRepository ?? FakeWalletRepository(),
      accountRepository: _accountRepo,
      paymentGateway: paymentGateway ?? FakePaymentGateway(),
      pushService: pushService,
      supportRepository: supportRepository,
      supportIsDemo: supportRepository is DemoSupportRepository,
      supportVoice: supportVoice,
    ),
  );
}

/// A microphone that hears what the test says, and a speaker that writes
/// down what it reads.
class _FakeVoice implements SupportVoice {
  /// What the next listen hears: words, '' for nothing, null for cancelled.
  String? nextHeard = 'where is my order';
  final List<String?> listenedIn = <String?>[];
  final List<(String, String, String?)> spoken = <(String, String, String?)>[];
  final ValueNotifier<String?> _speaking = ValueNotifier<String?>(null);

  @override
  Future<String?> listen(BuildContext context, {String? language}) async {
    listenedIn.add(language);
    return nextHeard;
  }

  @override
  Future<void> speak(String id, String text, {String? language}) async {
    spoken.add((id, text, language));
    _speaking.value = id;
  }

  @override
  Future<void> stop() async => _speaking.value = null;

  @override
  ValueListenable<String?> get speaking => _speaking;
}

/// The demo support server, with a record of what was asked of it and a
/// switch to fail the next send the way a dropped connection does.
class _RecordingSupport extends DemoSupportRepository {
  _RecordingSupport({super.pollsBeforeReply});

  int? startedWithOrder;
  String? startedInLanguage;
  int starts = 0;
  int closes = 0;

  @override
  Future<void> close(String id) {
    closes++;
    return super.close(id);
  }
  int fetches = 0;

  @override
  Future<SupportConversation> conversation(String id) {
    _check();
    fetches++;
    return super.conversation(id);
  }
  final List<String> clientIds = <String>[];
  ApiException? failNextSend;
  bool offline = false;

  /// Refusals for the next order picks, one per try, oldest first.
  final List<int> refuseSelects = <int>[];
  int selectTries = 0;

  @override
  Future<SupportPoll> selectOrder(String id, int orderId) {
    _check();
    selectTries++;
    if (refuseSelects.isNotEmpty) {
      throw ApiException(
        kind: ApiErrorKind.server,
        statusCode: refuseSelects.removeAt(0),
      );
    }
    return super.selectOrder(id, orderId);
  }

  void _check() {
    if (offline) throw const ApiException(kind: ApiErrorKind.network);
  }

  @override
  Future<SupportConversation> start({int? orderId, String? language}) {
    _check();
    starts++;
    startedWithOrder = orderId;
    startedInLanguage = language;
    return super.start(orderId: orderId, language: language);
  }

  @override
  Future<SupportSent> send(
    String id, {
    required String content,
    required String clientId,
  }) {
    _check();
    clientIds.add(clientId);
    final ApiException? failure = failNextSend;
    if (failure != null) {
      failNextSend = null;
      throw failure;
    }
    return super.send(id, content: content, clientId: clientId);
  }
}

/// A payment sheet that stays open until the test closes it, paid.
class _SlowGateway implements PaymentGateway {
  final Completer<GatewayOutcome> _done = Completer<GatewayOutcome>();
  int opened = 0;

  void finish() => _done.complete(
        const GatewayPaid(
          GatewayReceipt(paymentId: 'pay_1', orderId: 'order_1', signature: 's'),
        ),
      );

  @override
  Future<GatewayOutcome> pay(TopUp topUp, PayerDetails payer) {
    opened++;
    return _done.future;
  }
}

/// Sends what is in the support composer, then waits two polls for the
/// demo's reply. Polling runs on timers, and the typing dots never settle,
/// so time is pumped rather than settled.
Future<void> _askSupport(WidgetTester tester, String text) async {
  await tester.enterText(
    find.byKey(const ValueKey<String>('support-composer')),
    text,
  );
  // The mic becomes send once there is text, on the next frame.
  await tester.pump();
  await tester.tap(find.byKey(const ValueKey<String>('support-send')));
  await tester.pump();
  for (int i = 0; i < 2; i++) {
    await tester.pump(const Duration(seconds: 2));
  }
  await tester.pumpAndSettle();
}

Future<void> _settleSplash(WidgetTester tester) async {
  await tester.pump(SplashScreen.totalDuration);
  await tester.pumpAndSettle();
}

/// The address form is eight fields plus a button, and the permission screen
/// stacks three reason cards above its banner. A `ListView` does not build what
/// is far below the fold, so these tests need a viewport tall enough to hold
/// the whole screen rather than a scroll dance in every assertion.
void _useTallScreen(WidgetTester tester) {
  tester.view.physicalSize = const Size(400, 2200);
  tester.view.devicePixelRatio = 1.0;
  addTearDown(() {
    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });
}

/// The location screen pulses continuously and the map animates its tiles, so
/// neither ever reaches a quiescent frame and `pumpAndSettle` would time out.
/// Pump a fixed number of frames instead.
Future<void> _pumpFrames(WidgetTester tester, [int frames = 8]) async {
  for (int i = 0; i < frames; i++) {
    await tester.pump(const Duration(milliseconds: 120));
  }
}

/// Answers the native `appVersion` call the way the phone would: a widget
/// test has no platform side, so the call would otherwise never return.
void _mockAppVersion(WidgetTester tester) {
  const MethodChannel channel = MethodChannel('nexmile/app');
  final TestDefaultBinaryMessenger messenger =
      tester.binding.defaultBinaryMessenger;
  messenger.setMockMethodCallHandler(
    channel,
    (MethodCall call) async => call.method == 'appVersion'
        ? <String, Object?>{'version': '1.4.0', 'build': '12'}
        : null,
  );
  addTearDown(() => messenger.setMockMethodCallHandler(channel, null));
}

/// Stands in for the system clipboard and returns what was copied.
List<String> _mockClipboard(WidgetTester tester) {
  final List<String> copied = <String>[];
  final TestDefaultBinaryMessenger messenger =
      tester.binding.defaultBinaryMessenger;
  messenger.setMockMethodCallHandler(SystemChannels.platform,
      (MethodCall call) async {
    if (call.method == 'Clipboard.setData') {
      copied.add((call.arguments as Map<Object?, Object?>)['text']! as String);
    }
    return null;
  });
  addTearDown(
    () => messenger.setMockMethodCallHandler(SystemChannels.platform, null),
  );
  return copied;
}

NavigatorState _nav(WidgetTester tester) =>
    tester.state<NavigatorState>(find.byType(Navigator).last);

/// The default 800x600 test surface is shorter than a real phone. Auth screens
/// are short enough to fit, but the dashboard and OTP screen benefit from a
/// realistic viewport.
/// Three sections with one of everything the chips look at. Starters is
/// long enough that Desserts starts below the fold.
Map<String, dynamic> _filterMenu() => <String, dynamic>{
      'menu': <Map<String, dynamic>>[
        <String, dynamic>{
          'id': 1,
          'name': 'Starters',
          'items': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 11,
              'name': 'Paneer Tikka',
              'price': '220',
              'is_veg': true,
              'rating': '4.5',
              'rating_count': 40,
              'is_bestseller': true,
            },
            <String, dynamic>{
              'id': 12,
              'name': 'Chicken 65',
              'price': '260',
              'is_veg': false,
            },
            <String, dynamic>{
              'id': 13,
              'name': 'Egg Bonda',
              'price': '90',
              'is_veg': false,
              'contains_egg': true,
            },
            for (int i = 1; i <= 4; i++)
              <String, dynamic>{
                'id': 100 + i,
                'name': 'Kebab $i',
                'price': '${200 + i}',
                'is_veg': false,
              },
          ],
        },
        <String, dynamic>{
          'id': 2,
          'name': 'Biryani',
          'items': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 21,
              'name': 'Hyderabadi Dum',
              'price': '320',
              'compare_at_price': '380',
              'is_veg': false,
            },
            <String, dynamic>{
              'id': 22,
              'name': 'Veg Pulao',
              'description': 'Basmati rice with paneer and peas',
              'price': '180',
              'is_veg': true,
            },
          ],
        },
        <String, dynamic>{
          'id': 3,
          'name': 'Desserts',
          'items': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 31,
              'name': 'Gulab Jamun',
              'price': '80',
              'is_veg': true,
            },
          ],
        },
      ],
    };

/// Text on the cart's place-order button.
Finder _onPlaceButton(String text) => find.descendant(
      of: find.byKey(const ValueKey<String>('cart-place-order')),
      matching: find.text(text),
    );

Future<FakeStorefrontRepository> _openCart(
  WidgetTester tester, {
  FakeStorefrontRepository? repo,
  FakeAddressRepository? addresses,
  FakeWalletRepository? wallet,
  Map<String, Object> seed = _languageChosen,
}) async {
  final FakeStorefrontRepository storefront =
      repo ?? (FakeStorefrontRepository()..grandTotalOverride = 420);
  await _pumpApp(
    tester,
    seed: seed,
    session: _testSession(),
    storefrontRepository: storefront,
    addressRepository: addresses,
    walletRepository: wallet,
  );
  await _settleSplash(tester);
  _nav(tester).pushNamed(
    AppRoutes.cart,
    arguments: const CartArgs(restaurantId: 'r1'),
  );
  await tester.pumpAndSettle();
  return storefront;
}

void _useTallPhone(WidgetTester tester) {
  tester.view.physicalSize = const Size(400, 1000);
  tester.view.devicePixelRatio = 1.0;
  addTearDown(() {
    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });
}

void main() {
  // Photos in widget tests: no folder on the host and a server that answers
  // at once, so every image settles on its fallback inside the frame that
  // asked for it instead of arriving after its card has gone.
  setUpAll(() {
    ImageDiskCache.instance = ImageDiskCache(
      directory: () async => null,
      client: MockClient((http.Request _) async => http.Response('', 404)),
    );
  });

  // -------------------------------------------------------------------------
  group('language catalogue', () {
    test('ships English plus all 22 Eighth Schedule languages', () {
      expect(AppLanguages.all.length, 23);
    });

    test('every language has an ARB-backed locale', () {
      final Set<String> generated = AppLocalizations.supportedLocales
          .map((Locale l) => l.languageCode)
          .toSet();
      for (final AppLanguage language in AppLanguages.all) {
        expect(
          generated.contains(language.code),
          isTrue,
          reason: 'missing lib/l10n/app_${language.code}.arb',
        );
      }
    });

    test('English is the one and only default', () {
      expect(
        AppLanguages.all.where((AppLanguage l) => l.isDefault).toList(),
        <AppLanguage>[AppLanguages.english],
      );
      expect(AppLanguages.fallback.code, 'en');
    });

    test('unknown or absent codes fall back to English', () {
      expect(AppLanguages.byCode(null).code, 'en');
      expect(AppLanguages.byCode('zz').code, 'en');
      expect(AppLanguages.fromLocale(const Locale('ta', 'LK')).code, 'ta');
    });

    test('only the Perso-Arabic scripts are right-to-left', () {
      final Set<String> rtl = AppLanguages.all
          .where((AppLanguage l) => l.isRtl)
          .map((AppLanguage l) => l.code)
          .toSet();
      expect(rtl, <String>{'ur', 'ks', 'sd'});
    });
  });

  // -------------------------------------------------------------------------
  group('translations', () {
    testWidgets('every locale resolves its own copy',
        (WidgetTester tester) async {
      for (final AppLanguage language in AppLanguages.all) {
        final AppLocalizations l10n =
            await AppLocalizations.delegate.load(language.locale);
        expect(l10n.appName, 'Nexmile');
        for (final String value in <String>[
          l10n.continueLabel,
          l10n.chooseLanguageTitle,
          l10n.homeTitle,
          l10n.loginTitle,
          l10n.emailOrPhoneLabel,
          l10n.sendCode,
          l10n.otpTitle,
          l10n.verifyCode,
          l10n.incorrectCode,
          l10n.accountSuspended,
          l10n.tooManyAttempts,
          l10n.sessionExpired,
          l10n.networkError,
          l10n.signOut,
          l10n.profileTitle,
          l10n.viewProfile,
          l10n.nameLabel,
          l10n.emailLabel,
          l10n.mobileLabel,
          l10n.accountStatusLabel,
          l10n.statusActive,
          l10n.verifiedLabel,
          l10n.notProvided,
          l10n.retry,
        ]) {
          expect(value.trim(), isNotEmpty, reason: language.englishName);
        }
      }
    });

    testWidgets('no locale silently reuses an English string',
        (WidgetTester tester) async {
      final AppLocalizations en =
          await AppLocalizations.delegate.load(const Locale('en'));
      for (final AppLanguage language in AppLanguages.all) {
        if (language.code == 'en') continue;
        final AppLocalizations l10n =
            await AppLocalizations.delegate.load(language.locale);
        expect(l10n.chooseLanguageTitle, isNot(en.chooseLanguageTitle),
            reason: '${language.englishName}: language screen');
        expect(l10n.loginTitle, isNot(en.loginTitle),
            reason: '${language.englishName}: login screen');
        expect(l10n.incorrectCode, isNot(en.incorrectCode),
            reason: '${language.englishName}: OTP errors');
        expect(l10n.networkError, isNot(en.networkError),
            reason: '${language.englishName}: network errors');
        expect(l10n.accountStatusLabel, isNot(en.accountStatusLabel),
            reason: '${language.englishName}: profile screen');
      }
    });

    testWidgets('placeholders survive translation in every locale',
        (WidgetTester tester) async {
      for (final AppLanguage language in AppLanguages.all) {
        final AppLocalizations l10n =
            await AppLocalizations.delegate.load(language.locale);
        expect(l10n.otpSubtitle('9876543210'), contains('9876543210'));
        expect(l10n.resendCodeIn(60), contains('60'));
        expect(l10n.greetingNamed('Priya'), contains('Priya'));
        expect(l10n.languagesAvailable(23), contains('23'));
        expect(l10n.cartSavedBanner('₹50'), contains('₹50'));
        expect(l10n.cartReadyIn(28), contains('28'));
        expect(l10n.orderAgainItems('Dosa', 3), contains('Dosa'));
        expect(l10n.orderAgainItems('Dosa', 3), contains('3'));
        expect(l10n.reorderSkipped('Vada', 2), contains('Vada'));
        expect(l10n.menuShowDishes(7), contains('7'));
      }
    });

    test('every language carries every string', () {
      Map<String, dynamic> arb(String code) =>
          jsonDecode(File('lib/l10n/app_$code.arb').readAsStringSync())
              as Map<String, dynamic>;
      final Iterable<String> keys =
          arb('en').keys.where((String key) => !key.startsWith('@'));
      for (final String code in AppLanguages.all
          .map((AppLanguage language) => language.code)
          .where((String code) => code != 'en')) {
        final Map<String, dynamic> strings = arb(code);
        expect(
          keys.where((String key) => !strings.containsKey(key)).toList(),
          isEmpty,
          reason: code,
        );
      }
    });
  });

  // -------------------------------------------------------------------------
  group('LoginIdentifier', () {
    test('accepts a plain email and lowercases it', () {
      final LoginIdentifier? id = LoginIdentifier.tryParse('  Priya@Example.COM ');
      expect(id?.isEmail, isTrue);
      expect(id?.value, 'priya@example.com');
      expect(id?.toJson(), <String, dynamic>{'email': 'priya@example.com'});
    });

    test('accepts a bare 10-digit mobile number', () {
      final LoginIdentifier? id = LoginIdentifier.tryParse('9876543210');
      expect(id?.isPhone, isTrue);
      expect(id?.toJson(), <String, dynamic>{'phone': '9876543210'});
    });

    test('normalises the ways an Indian number is commonly typed', () {
      for (final String input in <String>[
        '+91 98765 43210',
        '+919876543210',
        '919876543210',
        '09876543210',
        '98765-43210',
        '(98765) 43210',
      ]) {
        expect(
          LoginIdentifier.tryParse(input)?.value,
          '9876543210',
          reason: input,
        );
      }
    });

    test('rejects anything that is neither', () {
      for (final String input in <String>[
        '',
        '   ',
        'not-an-email',
        'a@b',
        '1234567890', // does not start 6-9
        '5876543210',
        '98765',
        '98765432101',
        'priya@@example.com',
      ]) {
        expect(LoginIdentifier.tryParse(input), isNull, reason: input);
      }
    });

    test('never sends both email and phone', () {
      for (final String input in <String>['a@b.com', '9876543210']) {
        expect(LoginIdentifier.tryParse(input)!.toJson().length, 1);
      }
    });
  });

  // -------------------------------------------------------------------------
  group('ApiClient', () {
    late List<http.Request> seen;

    setUp(() => seen = <http.Request>[]);

    ApiClient clientReturning(
      Future<http.Response> Function(http.Request request) handler, {
      TokenProvider? tokens,
    }) {
      return ApiClient(
        baseUrl: 'https://api.test/api',
        tokenProvider: tokens,
        httpClient: MockClient((http.Request request) {
          seen.add(request);
          return handler(request);
        }),
      );
    }

    test('sends Accept: application/json on every request', () async {
      final ApiClient client = clientReturning(
        (_) async => http.Response('{"data":{}}', 200),
      );
      await client.get('/v1/auth/me', authenticated: false);
      expect(seen.single.headers['Accept'], 'application/json');
    });

    test('attaches the bearer token when authenticated', () async {
      final _StubTokens tokens = _StubTokens('tok');
      final ApiClient client = clientReturning(
        (_) async => http.Response('{"data":{}}', 200),
        tokens: tokens,
      );
      await client.get('/v1/auth/me');
      expect(seen.single.headers['Authorization'], 'Bearer tok');
    });

    test('maps status codes onto error kinds', () async {
      Future<ApiErrorKind> kindFor(int status, [String body = '{}']) async {
        final ApiClient client = clientReturning(
          (_) async => http.Response(body, status),
        );
        try {
          await client.get('/x', authenticated: false);
          fail('expected a throw for $status');
        } on ApiException catch (e) {
          return e.kind;
        }
      }

      expect(await kindFor(401), ApiErrorKind.unauthenticated);
      expect(await kindFor(403), ApiErrorKind.forbidden);
      expect(await kindFor(422), ApiErrorKind.validation);
      expect(await kindFor(429), ApiErrorKind.tooManyRequests);
      expect(await kindFor(500), ApiErrorKind.server);
    });

    test('exposes 422 field errors', () async {
      final ApiClient client = clientReturning(
        (_) async => http.Response(
          jsonEncode(<String, dynamic>{
            'message': 'Validation failed',
            'errors': <String, dynamic>{
              'code': <String>['The code is invalid.'],
            },
          }),
          422,
        ),
      );
      try {
        await client.post('/x', authenticated: false);
        fail('expected a throw');
      } on ApiException catch (e) {
        expect(e.isValidation, isTrue);
        expect(e.errorFor('code'), 'The code is invalid.');
      }
    });

    test('an HTML body does not crash the decoder', () async {
      final ApiClient client = clientReturning(
        (_) async => http.Response('<html>redirect</html>', 302),
      );
      await expectLater(
        client.get('/x', authenticated: false),
        throwsA(isA<ApiException>()),
      );
    });

    test('a 401 triggers one refresh and one retry', () async {
      final _StubTokens tokens = _StubTokens('stale', refreshResult: true);
      int calls = 0;
      final ApiClient client = clientReturning(
        (_) async {
          calls++;
          return calls == 1
              ? http.Response('{"message":"Unauthenticated."}', 401)
              : http.Response('{"data":{"ok":true}}', 200);
        },
        tokens: tokens,
      );

      final Map<String, dynamic> result = await client.get('/v1/auth/me');

      expect(result['data'], <String, dynamic>{'ok': true});
      expect(tokens.refreshCalls, 1);
      expect(calls, 2, reason: 'exactly one retry');
    });

    test('a failed refresh drops the session and does not loop', () async {
      final _StubTokens tokens = _StubTokens('stale', refreshResult: false);
      int calls = 0;
      final ApiClient client = clientReturning(
        (_) async {
          calls++;
          return http.Response('{"message":"Unauthenticated."}', 401);
        },
        tokens: tokens,
      );

      await expectLater(
        client.get('/v1/auth/me'),
        throwsA(isA<ApiException>()),
      );
      expect(tokens.refreshCalls, 1);
      expect(tokens.sessionLostCalls, 1);
      expect(calls, 1, reason: 'no retry when the refresh failed');
    });

    test('concurrent 401s share a single refresh', () async {
      // The API treats two parallel refreshes as a stolen token and signs the
      // customer out everywhere, so this is the behaviour that matters most.
      final _StubTokens tokens = _StubTokens('stale', refreshResult: true);
      final Map<String, int> callsPerPath = <String, int>{};
      final ApiClient client = clientReturning(
        (http.Request request) async {
          final String path = request.url.path;
          callsPerPath[path] = (callsPerPath[path] ?? 0) + 1;
          return callsPerPath[path] == 1
              ? http.Response('{"message":"Unauthenticated."}', 401)
              : http.Response('{"data":{}}', 200);
        },
        tokens: tokens,
      );

      await Future.wait<Map<String, dynamic>>(<Future<Map<String, dynamic>>>[
        client.get('/a'),
        client.get('/b'),
        client.get('/c'),
      ]);

      expect(tokens.refreshCalls, 1);
    });
  });

  // -------------------------------------------------------------------------
  group('splash hand-off', () {
    testWidgets('a fresh install goes straight to login, in English',
        (WidgetTester tester) async {
      await _pumpApp(tester);
      await tester.pump();

      expect(find.byType(SplashScreen), findsOneWidget);
      expect(find.image(const AssetImage(AppAssets.symbol)), findsOneWidget);
      expect(find.image(const AssetImage(AppAssets.wordmark)), findsOneWidget);

      await _settleSplash(tester);
      // No language screen to get past first: English until changed.
      expect(find.byType(LanguageScreen), findsNothing);
      expect(find.byType(LoginScreen), findsOneWidget);
      expect(find.text('English'), findsOneWidget);
      expect(find.text('Change language'), findsOneWidget);
    });

    testWidgets('language chosen, no session -> login',
        (WidgetTester tester) async {
      await _pumpApp(tester, seed: _languageChosen);
      await _settleSplash(tester);

      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets('restored session -> dashboard', (WidgetTester tester) async {
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
      );
      await _settleSplash(tester);

      expect(find.byType(AppShell), findsOneWidget);
      // The greeting was removed from the header; the avatar carries the
      // signed-in identity now, so its initial is what proves it.
      expect(find.text('P'), findsWidgets);
    });

    testWidgets('splash paints every frame without error',
        (WidgetTester tester) async {
      await _pumpApp(tester);
      for (int i = 0; i < 180; i++) {
        await tester.pump(const Duration(milliseconds: 16));
        expect(tester.takeException(), isNull, reason: 'frame $i');
      }
      await tester.pumpAndSettle();
      expect(find.byType(LoginScreen), findsOneWidget);
    });
  });

  // -------------------------------------------------------------------------
  group('language screen', () {
    testWidgets('change language on login opens the picker, and back is free',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester);
      await _settleSplash(tester);

      await tester.tap(find.text('Change language'));
      await tester.pumpAndSettle();
      expect(find.text('Choose your language'), findsOneWidget);

      // Not first-run setup: there is a way back without choosing.
      await tester.tap(find.byIcon(Icons.arrow_back_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(LoginScreen), findsOneWidget);
      expect(find.text('English'), findsOneWidget);
    });

    testWidgets('picking Tamil from login switches the login to Tamil',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester);
      await _settleSplash(tester);

      await tester.tap(find.text('Change language'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('தமிழ்'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('தொடரவும்'));
      await tester.pumpAndSettle();

      expect(find.byType(LoginScreen), findsOneWidget);
      // The language row and the button are now in Tamil.
      expect(find.text('தமிழ்'), findsOneWidget);
      expect(find.text('தொடரவும்'), findsOneWidget);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('nexmile.language_code'), 'ta');
    });
  });

  // -------------------------------------------------------------------------
  group('first-run permissions', () {
    FakeLocationService deniedLocation() =>
        FakeLocationService()..permission = LocationPermission.denied;

    FakePushService askablePush() =>
        FakePushService(initial: 'token-1')..access = NotificationAccess.askable;

    testWidgets('a fresh install is asked for location, then notifications',
        (WidgetTester tester) async {
      final FakeLocationService location = deniedLocation();
      final FakePushService push = askablePush();
      _useTallPhone(tester);
      await _pumpApp(tester, locationService: location, pushService: push);
      await _settleSplash(tester);

      // Straight after the splash: no language screen in front of them.
      expect(find.text('Find food near you'), findsOneWidget);
      expect(find.text('1 of 2'), findsOneWidget);
      // The reasons come before the system prompt, not after it.
      expect(find.text('Shops within 1 km'), findsOneWidget);
      expect(location.promptCount, 0);

      await tester.tap(find.text('Allow location'));
      await tester.pumpAndSettle();
      expect(location.promptCount, 1);

      expect(find.text('Never miss an order update'), findsOneWidget);
      expect(find.text('2 of 2'), findsOneWidget);
      await tester.tap(find.text('Turn on notifications'));
      await tester.pumpAndSettle();
      expect(push.permissionAsked, isTrue);

      expect(find.byType(LoginScreen), findsOneWidget);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      expect(prefs.getBool('nexmile.permissions_asked'), isTrue);
    });

    testWidgets('not now skips without a prompt, and the pages show once',
        (WidgetTester tester) async {
      final FakeLocationService location = deniedLocation();
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, locationService: location);
      await _settleSplash(tester);

      // Location only: this build has no push to ask about, and one page
      // needs no "1 of 1".
      expect(find.text('Find food near you'), findsOneWidget);
      expect(find.text('1 of 1'), findsNothing);
      await tester.tap(find.text('Not now'));
      await tester.pumpAndSettle();
      expect(location.promptCount, 0);
      expect(find.byType(LoginScreen), findsOneWidget);

      // The next launch goes straight past them, though nothing was allowed.
      await _pumpApp(
        tester,
        seed: <String, Object>{
          ..._languageChosen,
          'nexmile.permissions_asked': true,
        },
        locationService: location,
      );
      await _settleSplash(tester);
      expect(find.text('Find food near you'), findsNothing);
      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets('a permission only Settings can change is not asked for',
        (WidgetTester tester) async {
      // The system prompt would never appear, so the page would be a dead end.
      await _pumpApp(
        tester,
        seed: _languageChosen,
        locationService: FakeLocationService()
          ..permission = LocationPermission.deniedForever,
        pushService: FakePushService()..access = NotificationAccess.blocked,
      );
      await _settleSplash(tester);

      expect(find.text('Find food near you'), findsNothing);
      expect(find.text('Never miss an order update'), findsNothing);
      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets('back goes to the previous page before it leaves',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        locationService: deniedLocation(),
        pushService: askablePush(),
      );
      await _settleSplash(tester);

      await tester.tap(find.text('Not now'));
      await tester.pumpAndSettle();
      expect(find.text('Never miss an order update'), findsOneWidget);

      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();
      expect(find.text('Find food near you'), findsOneWidget);
      // Stepping back is not leaving the app.
      expect(find.text('Exit Nexmile?'), findsNothing);
    });

    testWidgets('a signed-in customer carries on to the storefront',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        locationService: deniedLocation(),
      );
      await _settleSplash(tester);

      await tester.tap(find.text('Not now'));
      await tester.pumpAndSettle();
      expect(find.byType(AppShell), findsOneWidget);
    });
  });

  // -------------------------------------------------------------------------
  group('sign in', () {
    testWidgets('an email requests a code and opens the OTP screen',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository();
      await _pumpApp(tester, seed: _languageChosen, repository: repo);
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField), 'priya@example.com');
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();

      expect(find.byType(OtpVerificationScreen), findsOneWidget);
      expect(repo.requestCount, 1);
      expect(repo.lastIdentifier?.isEmail, isTrue);
      expect(repo.lastIdentifier?.value, 'priya@example.com');
    });

    testWidgets('a mobile number is sent as phone, not email',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository();
      await _pumpApp(tester, seed: _languageChosen, repository: repo);
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField), '+91 98765 43210');
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();

      expect(repo.lastIdentifier?.isPhone, isTrue);
      expect(repo.lastIdentifier?.toJson(), <String, dynamic>{
        'phone': '9876543210',
      });
    });

    testWidgets('rubbish input is rejected before any request',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository();
      await _pumpApp(tester, seed: _languageChosen, repository: repo);
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField), 'not-valid');
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();

      expect(find.text('Enter a valid email address'), findsWidgets);
      expect(repo.requestCount, 0);
      expect(find.byType(OtpVerificationScreen), findsNothing);
    });

    testWidgets('a network failure is reported in the chosen language',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..requestError = const ApiException(kind: ApiErrorKind.network);
      await _pumpApp(
        tester,
        seed: _languageChosenAs('ta'),
        repository: repo,
      );
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField), '9876543210');
      // "Continue", in Tamil.
      await tester.tap(find.text('தொடரவும்'));
      await tester.pumpAndSettle();

      expect(
        find.text(
          'இணைய இணைப்பு இல்லை. உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.',
        ),
        findsOneWidget,
      );
      expect(find.byType(OtpVerificationScreen), findsNothing);
    });

    testWidgets('a 429 shows the rate-limit message',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..requestError =
            const ApiException(kind: ApiErrorKind.tooManyRequests);
      await _pumpApp(tester, seed: _languageChosen, repository: repo);
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField), '9876543210');
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();

      expect(
        find.text('Too many attempts. Please wait a while and try again.'),
        findsOneWidget,
      );
    });

    testWidgets('a suspended account is reported', (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..requestError = const ApiException(kind: ApiErrorKind.forbidden);
      await _pumpApp(tester, seed: _languageChosen, repository: repo);
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField), '9876543210');
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();

      expect(
        find.text('This account has been suspended. Please contact support.'),
        findsOneWidget,
      );
    });
  });

  // -------------------------------------------------------------------------
  group('code verification', () {
    Future<FakeAuthRepository> reachOtp(
      WidgetTester tester, {
      FakeAuthRepository? repository,
      String identifier = '9876543210',
      Map<String, Object> seed = _languageChosen,
    }) async {
      final FakeAuthRepository repo = repository ?? FakeAuthRepository();
      await _pumpApp(tester, seed: seed, repository: repo);
      await _settleSplash(tester);
      await tester.enterText(find.byType(TextFormField), identifier);
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();
      return repo;
    }

    testWidgets('the correct code signs in and reaches the dashboard',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeAuthRepository repo = await reachOtp(tester);
      expect(find.byType(OtpVerificationScreen), findsOneWidget);

      // Entering the final digit auto-submits.
      await tester.enterText(find.byType(TextField).first, '123456');
      await tester.pumpAndSettle();

      expect(find.byType(AppShell), findsOneWidget);
      // The greeting was removed from the header; the avatar carries the
      // signed-in identity now, so its initial is what proves it.
      expect(find.text('P'), findsWidgets);
      expect(repo.verifyCount, 1);
      expect(repo.lastCode, '123456');
      expect(_controller.isSignedIn, isTrue);
    });

    testWidgets('a wrong code is rejected and the boxes are cleared',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await reachOtp(tester);

      await tester.enterText(find.byType(TextField).first, '000000');
      await tester.pumpAndSettle();

      expect(
        find.text(
          'That code is not correct or has expired. Request a new one.',
        ),
        findsOneWidget,
      );
      expect(find.byType(AppShell), findsNothing);
      expect(_controller.isSignedIn, isFalse);
    });

    testWidgets('an incomplete code is caught before any request',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeAuthRepository repo = await reachOtp(tester);

      await tester.enterText(find.byType(TextField).first, '12');
      await tester.pumpAndSettle();
      await tester.tap(find.text('Verify'));
      await tester.pumpAndSettle();

      expect(find.text('Enter all 6 digits'), findsOneWidget);
      expect(repo.verifyCount, 0);
    });

    testWidgets('resend is locked behind the server-supplied cooldown',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeAuthRepository repo = FakeAuthRepository()..resendAfter = 45;
      await reachOtp(tester, repository: repo);

      expect(find.text('Resend code'), findsNothing);
      expect(find.text('Resend code in 45s'), findsOneWidget);

      await tester.pump(const Duration(seconds: 46));
      await tester.pumpAndSettle();
      expect(find.text('Resend code'), findsOneWidget);

      await tester.tap(find.text('Resend code'));
      await tester.pumpAndSettle();

      expect(find.text('A new code has been sent'), findsOneWidget);
      expect(repo.requestCount, 2);
    });

    testWidgets('the subtitle names the identifier the code went to',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await reachOtp(tester, identifier: 'priya@example.com');
      expect(find.textContaining('priya@example.com'), findsWidgets);
    });

    testWidgets('the OTP route without arguments falls back to login',
        (WidgetTester tester) async {
      await _pumpApp(tester, seed: _languageChosen);
      await _settleSplash(tester);

      _nav(tester).pushNamed(AppRoutes.otpVerification);
      await tester.pumpAndSettle();

      expect(find.byType(LoginScreen), findsWidgets);
      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  group('back button', () {
    Future<List<String>> onHome(WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);
      // Records the app closing instead of closing the test.
      final List<String> calls = <String>[];
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        (MethodCall call) async {
          calls.add(call.method);
          return null;
        },
      );
      addTearDown(
        () => tester.binding.defaultBinaryMessenger
            .setMockMethodCallHandler(SystemChannels.platform, null),
      );
      return calls;
    }

    testWidgets('back on Home asks before closing the app',
        (WidgetTester tester) async {
      final List<String> calls = await onHome(tester);

      await tester.binding.handlePopRoute();
      await _pumpFrames(tester);
      expect(find.text('Exit Nexmile?'), findsOneWidget);

      await tester.tap(find.text('Cancel'));
      await _pumpFrames(tester);
      expect(find.text('Exit Nexmile?'), findsNothing);
      expect(find.byType(AppShell), findsOneWidget);
      expect(calls, isNot(contains('SystemNavigator.pop')));

      await tester.binding.handlePopRoute();
      await _pumpFrames(tester);
      await tester.tap(find.text('Exit'));
      await _pumpFrames(tester);
      expect(calls, contains('SystemNavigator.pop'));
    });

    testWidgets('back from another tab goes Home first',
        (WidgetTester tester) async {
      await onHome(tester);
      await tester.tap(find.text('History').last);
      await _pumpFrames(tester);

      await tester.binding.handlePopRoute();
      await _pumpFrames(tester);

      // Home again, and no exit question yet.
      expect(find.text('Exit Nexmile?'), findsNothing);
      await tester.binding.handlePopRoute();
      await _pumpFrames(tester);
      expect(find.text('Exit Nexmile?'), findsOneWidget);
    });

    testWidgets('back inside the app still just goes back',
        (WidgetTester tester) async {
      await onHome(tester);
      _nav(tester).pushNamed(AppRoutes.profile);
      await _pumpFrames(tester);

      await tester.binding.handlePopRoute();
      await _pumpFrames(tester);

      expect(find.byType(ProfileScreen), findsNothing);
      expect(find.text('Exit Nexmile?'), findsNothing);
    });
  });

  // -------------------------------------------------------------------------
  group('profile', () {
    /// Signs in from a restored session and opens the profile screen.
    Future<FakeAuthRepository> openProfile(
      WidgetTester tester, {
      FakeAuthRepository? repository,
      FakeAccountRepository? accountRepository,
      Map<String, Object> seed = _languageChosen,
      bool tallScreen = false,
    }) async {
      // The whole page, every section on screen at once, when a test needs to
      // reach the rows at the bottom without scrolling.
      tallScreen ? _useTallScreen(tester) : _useTallPhone(tester);
      final FakeAuthRepository repo = repository ?? FakeAuthRepository();
      await _pumpApp(
        tester,
        seed: seed,
        repository: repo,
        session: _testSession(),
        accountRepository: accountRepository,
      );
      await _settleSplash(tester);
      // The avatar at the top of the storefront; the profile is not a tab.
      _nav(tester).pushNamed(AppRoutes.profile);
      await tester.pumpAndSettle();
      return repo;
    }

    testWidgets('opens from the dashboard and fetches GET /v1/profile',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = await openProfile(tester);

      expect(find.byType(ProfileScreen), findsOneWidget);
      expect(repo.profileCount, 1);
      expect(find.text('Profile'), findsWidgets);
    });

    testWidgets('renders the fields the API returned',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..profileUser = const AuthUser(
          id: 42,
          name: 'Priya Kumar',
          email: 'priya@example.com',
          phone: '9876543210',
          role: UserRole.customer,
          status: UserStatus.active,
          phoneVerified: true,
        );
      await openProfile(tester, repository: repo);

      expect(find.text('Priya Kumar'), findsWidgets);
      expect(find.text('priya@example.com'), findsWidgets);
      expect(find.text('9876543210'), findsWidgets);
      // Active is the normal case; only a status that needs attention shows.
      expect(find.text('Active'), findsNothing);
      expect(find.text('Verified'), findsOneWidget);
    });

    testWidgets('a phone-only customer sees their number, unverified',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..profileUser = const AuthUser(
          id: 7,
          name: 'Ravi',
          phone: '9876543210',
          role: UserRole.customer,
          status: UserStatus.active,
        );
      await openProfile(tester, repository: repo);

      expect(find.text('Ravi'), findsWidgets);
      expect(find.text('9876543210'), findsWidgets);
      expect(find.text('Verified'), findsNothing);
    });

    testWidgets('a suspended account is surfaced',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..profileUser = const AuthUser(
          id: 7,
          name: 'Ravi',
          phone: '9876543210',
          role: UserRole.customer,
          status: UserStatus.suspended,
        );
      await openProfile(tester, repository: repo);

      expect(find.text('Suspended'), findsWidgets);
    });

    testWidgets('a failed refresh keeps the cached profile and offers a retry',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..profileError = const ApiException(kind: ApiErrorKind.network);
      await openProfile(tester, repository: repo);

      expect(
        find.text('No internet connection. Check your connection and try again.'),
        findsOneWidget,
      );
      expect(find.text('Try again'), findsOneWidget);
      // Cached data survives the failure.
      expect(find.text('Priya Kumar'), findsWidgets);

      repo.profileError = null;
      await tester.tap(find.text('Try again'));
      await tester.pumpAndSettle();

      expect(find.text('Try again'), findsNothing);
      expect(repo.profileCount, 2);
    });

    testWidgets('a dead session bounces back to sign-in',
        (WidgetTester tester) async {
      // The client refreshes on a 401 and clears the session when that fails;
      // the screen must not sit there showing a stale profile.
      final FakeAuthRepository repo = FakeAuthRepository()
        ..profileError =
            const ApiException(kind: ApiErrorKind.unauthenticated);
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        repository: repo,
        session: _testSession(),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.profile);
      await tester.pumpAndSettle();

      // The fake throws directly rather than going through ApiClient, so the
      // session survives here — the screen reports the failure instead.
      expect(find.text('Your session has expired. Please sign in again.'),
          findsOneWidget);
    });

    testWidgets('sign out from the profile clears the session',
        (WidgetTester tester) async {
      final FakeAuthRepository repo = await openProfile(tester);

      // Below the fold on a phone-sized screen, under the account tiles.
      await tester.scrollUntilVisible(
        find.text('Sign out'),
        200,
        scrollable: find.byType(Scrollable).last,
      );
      // Already built below the fold, so the scroll is a jump that only
      // lands on the next frame.
      await tester.pumpAndSettle();
      await tester.tap(find.text('Sign out'));
      await tester.pumpAndSettle();

      expect(find.byType(LoginScreen), findsOneWidget);
      expect(find.text('You have been signed out'), findsOneWidget);
      expect(repo.signOutCount, 1, reason: 'revoked server-side too');
      expect(_controller.isSignedIn, isFalse);
    });

    testWidgets('the language row opens the language screen',
        (WidgetTester tester) async {
      await openProfile(tester);

      await tester.tap(find.byIcon(Icons.translate_rounded).first);
      await tester.pumpAndSettle();
      expect(find.byType(LanguageScreen), findsOneWidget);
    });

    testWidgets('the avatar at the top of the storefront opens the profile',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);

      // Priya's initial, top right.
      await tester.tap(find.text('P'));
      await tester.pumpAndSettle();

      expect(find.byType(ProfileScreen), findsOneWidget);
      expect(find.text('Your preferences'), findsOneWidget);
    });

    testWidgets('groups the account into preferences, delivery and more',
        (WidgetTester tester) async {
      await openProfile(tester, tallScreen: true);

      for (final String text in <String>[
        'Nexmile Wallet',
        'Your coupons',
        'Your preferences',
        'Veg mode',
        'Appearance',
        'App language',
        'Notifications',
        'Food delivery',
        'Your orders',
        'Delivery addresses',
        'Your favourites',
        'Help & support',
        'More',
        'Send feedback',
        'Report a safety emergency',
        'About Nexmile',
        'Signed-in devices',
        'Sign out',
        'Delete account',
      ]) {
        expect(find.text(text), findsWidgets, reason: text);
      }
      expect(tester.takeException(), isNull);
    });

    testWidgets('the coupon tile counts the coupons and lists them',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        accountRepository: FakeAccountRepository(
          coupons: <Coupon>[
            const Coupon(
              id: '1',
              code: 'WELCOME50',
              title: 'Flat ₹50 off your first order',
              kind: CouponKind.flat,
              value: 50,
              minOrderValue: 199,
            ),
            const Coupon(
              id: '2',
              code: 'VEG20',
              title: '20% off veg meals',
              kind: CouponKind.percent,
              value: 20,
              maxDiscount: 100,
            ),
          ],
        ),
      );
      expect(find.text('2 to use'), findsOneWidget);

      await tester.tap(find.text('Your coupons'));
      await tester.pumpAndSettle();

      expect(find.byType(CouponsScreen), findsOneWidget);
      expect(find.text('WELCOME50'), findsOneWidget);
      expect(find.text('VEG20'), findsOneWidget);

      final List<String> copied = _mockClipboard(tester);
      await tester.tap(find.text('WELCOME50'));
      await tester.pump();
      expect(copied, <String>['WELCOME50']);
      expect(find.text('Code WELCOME50 copied'), findsOneWidget);
      // Let the snack bar retire, or its timer outlives the test.
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    Finder vegSwitch() => find.descendant(
          of: find.widgetWithText(ProfileRow, 'Veg mode'),
          matching: find.byType(Switch),
        );

    testWidgets('veg mode is saved and narrows the restaurant list',
        (WidgetTester tester) async {
      await openProfile(tester);
      expect(_storefrontRepo.lastFilters.vegOnly, isFalse);

      await tester.tap(vegSwitch());
      await tester.pumpAndSettle();

      expect(tester.widget<Switch>(vegSwitch()).value, isTrue);
      expect(_accountRepo.updates, <Map<String, Object?>>[
        <String, Object?>{'veg_mode': true},
      ]);
      // The home tab follows on its own, behind the profile.
      expect(_storefrontRepo.lastFilters.vegOnly, isTrue);
    });

    testWidgets('veg mode set on another phone applies when the home loads',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        accountRepository: FakeAccountRepository(
          stored: const AccountPreferences(vegMode: true),
        ),
      );
      await _settleSplash(tester);

      expect(_accountRepo.preferenceReads, 1);
      expect(_storefrontRepo.lastFilters.vegOnly, isTrue);
      final SharedPreferences stored = await SharedPreferences.getInstance();
      expect(stored.getBool('nexmile.veg_mode'), isTrue,
          reason: 'remembered, so the next launch opens on veg at once');
    });

    testWidgets('veg mode opens a menu on its veg dishes, and can be cleared',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: <String, Object>{..._languageChosen, 'nexmile.veg_mode': true},
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..menuPayload = _filterMenu(),
        accountRepository: FakeAccountRepository(
          stored: const AccountPreferences(vegMode: true),
        ),
      );
      await _settleSplash(tester);
      await tester.tap(find.text('Anjappar Chettinad').first);
      await tester.pumpAndSettle();

      expect(find.text('Paneer Tikka'), findsOneWidget);
      expect(find.text('Chicken 65', skipOffstage: false), findsNothing);
      expect(find.text('3 dishes'), findsOneWidget);

      await tester.tap(find.text('Veg'));
      await tester.pumpAndSettle();
      expect(find.text('Chicken 65', skipOffstage: false), findsOneWidget);
    });

    testWidgets('veg mode works on the phone before the server has it',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        accountRepository: FakeAccountRepository(unavailable: true),
      );
      // No coupons endpoint yet reads as no coupons, not as an error.
      expect(find.text('None yet'), findsOneWidget);

      await tester.tap(vegSwitch());
      await tester.pumpAndSettle();

      expect(tester.widget<Switch>(vegSwitch()).value, isTrue);
      expect(_storefrontRepo.lastFilters.vegOnly, isTrue);
      expect(find.byType(SnackBar), findsNothing);
      final SharedPreferences stored = await SharedPreferences.getInstance();
      expect(stored.getBool('nexmile.veg_mode'), isTrue);
    });

    testWidgets('a refused veg mode change is put back',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        accountRepository: FakeAccountRepository()
          ..failUpdateWith = const ApiException(kind: ApiErrorKind.network),
      );

      await tester.tap(vegSwitch());
      await tester.pumpAndSettle();

      expect(tester.widget<Switch>(vegSwitch()).value, isFalse);
      expect(_storefrontRepo.lastFilters.vegOnly, isFalse);
      expect(
        find.text('No internet connection. Check your connection and try again.'),
        findsOneWidget,
      );
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('appearance switches the app to dark and remembers it',
        (WidgetTester tester) async {
      await openProfile(tester, tallScreen: true);

      await tester.tap(find.text('Appearance'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Dark'));
      await tester.pumpAndSettle();

      expect(
        tester.widget<MaterialApp>(find.byType(MaterialApp)).themeMode,
        ThemeMode.dark,
      );
      final SharedPreferences stored = await SharedPreferences.getInstance();
      expect(stored.getString('nexmile.theme_mode'), 'dark');
    });

    testWidgets('help lists the contacts and questions from the app config',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        tallScreen: true,
        accountRepository: FakeAccountRepository(
          supportInfo: const SupportInfo(
            phone: '18001234567',
            whatsapp: '919876543210',
            email: 'help@example.com',
            hours: '7 am to 11 pm',
            faqs: <Faq>[
              Faq(
                question: 'Where is my order?',
                answer: 'Open Your orders to follow it live.',
              ),
            ],
          ),
        ),
      );

      await tester.tap(find.text('Help & support'));
      await tester.pumpAndSettle();

      expect(find.byType(HelpScreen), findsOneWidget);
      expect(find.text('Call us'), findsOneWidget);
      expect(find.text('WhatsApp'), findsOneWidget);
      expect(find.text('Email us'), findsOneWidget);
      expect(find.text("We're available 7 am to 11 pm"), findsOneWidget);

      await tester.tap(find.text('Where is my order?'));
      await tester.pumpAndSettle();
      expect(find.text('Open Your orders to follow it live.'), findsOneWidget);
    });

    testWidgets('help says so when the server has no help details yet',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        tallScreen: true,
        accountRepository: FakeAccountRepository(unavailable: true),
      );

      await tester.tap(find.text('Help & support'));
      await tester.pumpAndSettle();

      expect(
        find.text(
          "Help details aren't available right now. Please try again later.",
        ),
        findsOneWidget,
      );
    });

    testWidgets('feedback needs a rating, then sends it with the message',
        (WidgetTester tester) async {
      _mockAppVersion(tester);
      await openProfile(tester, tallScreen: true);

      await tester.tap(find.text('Send feedback'));
      await tester.pumpAndSettle();
      expect(find.text('How is Nexmile working for you?'), findsOneWidget);

      // The sheet's button carries the same words as the row that opened it.
      await tester.tap(find.widgetWithText(GradientButton, 'Send feedback'));
      await tester.pumpAndSettle();
      expect(find.text('Choose a rating first'), findsOneWidget);
      expect(_accountRepo.feedback, isEmpty);

      await tester.tap(find.byTooltip('4'));
      await tester.enterText(
        find.widgetWithText(
          TextField,
          'Tell us what you liked, or what we can do better',
        ),
        'Quick delivery, hot food.',
      );
      await tester.tap(find.widgetWithText(GradientButton, 'Send feedback'));
      await tester.pumpAndSettle();

      expect(_accountRepo.feedback.single.rating, 4);
      expect(_accountRepo.feedback.single.message, 'Quick delivery, hot food.');
      // So the team can tell which build a complaint is about.
      expect(_accountRepo.feedback.single.appVersion, '1.4.0 (12)');
      expect(find.text('Thanks! Your feedback has reached our team.'),
          findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('the safety screen leads with 112 and offers no false report',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        tallScreen: true,
        accountRepository: FakeAccountRepository(
          supportInfo: const SupportInfo(safetyPhone: '18007654321'),
        ),
      );

      await tester.tap(find.text('Report a safety emergency'));
      await tester.pumpAndSettle();

      final Offset emergency = tester.getTopLeft(find.text('Call 112'));
      final Offset nexmile =
          tester.getTopLeft(find.text('Call Nexmile safety line'));
      // 112 first, and the line second once the app config carries one.
      expect(emergency.dy, lessThan(nexmile.dy));
      // Nothing to type and send: no report reaches a person yet.
      expect(find.byType(TextField), findsNothing);
      expect(tester.takeException(), isNull);
    });

    testWidgets('without a safety line the screen is the emergency call alone',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        tallScreen: true,
        accountRepository: FakeAccountRepository(unavailable: true),
      );

      await tester.tap(find.text('Report a safety emergency'));
      await tester.pumpAndSettle();

      expect(find.text('Call 112'), findsOneWidget);
      expect(find.text('Call Nexmile safety line'), findsNothing);
    });

    testWidgets('signing out turns veg mode off for the next customer',
        (WidgetTester tester) async {
      await openProfile(
        tester,
        tallScreen: true,
        seed: <String, Object>{..._languageChosen, 'nexmile.veg_mode': true},
        accountRepository: FakeAccountRepository(
          stored: const AccountPreferences(vegMode: true),
        ),
      );

      await tester.tap(find.text('Sign out'));
      await tester.pumpAndSettle();

      expect(find.byType(LoginScreen), findsOneWidget);
      final SharedPreferences stored = await SharedPreferences.getInstance();
      expect(stored.getBool('nexmile.veg_mode'), isFalse);
    });
  });

  // -------------------------------------------------------------------------
  group('account', () {
    testWidgets('editing the profile sends only what changed',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);

      _nav(tester).pushNamed(AppRoutes.profile);
      await tester.pumpAndSettle();
      // The header card opens the editor.
      await tester.tap(find.text('Priya Kumar').last);
      await tester.pumpAndSettle();

      expect(find.text('Save changes'), findsOneWidget);
      await tester.enterText(
        find.widgetWithText(TextFormField, 'Name'),
        'Priya R',
      );
      await tester.tap(find.text('Save changes'));
      await tester.pumpAndSettle();

      final Map<String, dynamic> sent = _authRepo.lastProfilePatch!;
      expect(sent['name'], 'Priya R');
      // English is one of the three the API accepts, so it rides along.
      expect(sent['preferred_locale'], 'en');
    });

    testWidgets('a locale the API does not accept is simply not sent',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      // The app offers 23 languages; `preferred_locale` accepts en, ta and hi.
      // Malayalam must not be forced into one of the three.
      await _pumpApp(
        tester,
        seed: _languageChosenAs('ml'),
        session: _testSession(),
      );
      await _settleSplash(tester);

      _nav(tester).pushNamed(AppRoutes.profile);
      await tester.pumpAndSettle();
      // The header card opens the editor.
      await tester.tap(find.text('Priya Kumar').last);
      await tester.pumpAndSettle();
      await tester.tap(find.byType(FilledButton).last);
      await tester.pumpAndSettle();

      expect(_authRepo.lastProfilePatch!.containsKey('preferred_locale'), isFalse);
    });

    test('a rejected update keeps the server field errors', () async {
      final FakeAuthRepository repo = FakeAuthRepository()
        ..profilePatchError = const ApiException(
          kind: ApiErrorKind.validation,
          statusCode: 422,
          message: 'Unprocessable',
          errors: <String, List<String>>{
            'phone': <String>['That mobile number is already in use.'],
          },
        );
      final AuthController auth = AuthController(
        repository: repo,
        tokenStore: InMemoryTokenStore(_testSession()),
        initialSession: _testSession(),
      );

      final AuthFailure? failure = await auth.updateProfile(phone: '9876543210');
      expect(failure, AuthFailure.invalidIdentifier);
      expect(auth.firstError('phone'), 'That mobile number is already in use.');
      auth.dispose();
    });

    test('only en, ta and hi reach the server as a locale', () {
      expect(AuthController.serverLocaleFor('en'), 'en');
      expect(AuthController.serverLocaleFor('ta'), 'ta');
      expect(AuthController.serverLocaleFor('hi'), 'hi');
      for (final String other in <String>['ml', 'bn', 'sat', 'brx']) {
        expect(AuthController.serverLocaleFor(other), isNull, reason: other);
      }
    });

    test('deleting the account clears the local session', () async {
      final FakeAuthRepository repo = FakeAuthRepository();
      final AuthController auth = AuthController(
        repository: repo,
        tokenStore: InMemoryTokenStore(_testSession()),
        initialSession: _testSession(),
      );

      expect(await auth.deleteAccount(), isNull);
      expect(repo.deleteAccountCount, 1);
      // The server revokes every session, so staying signed in locally would
      // leave the app holding a token that no longer works.
      expect(auth.isSignedIn, isFalse);
      auth.dispose();
    });

    test('signing out everywhere takes this device with it', () async {
      final FakeAuthRepository repo = FakeAuthRepository();
      final AuthController auth = AuthController(
        repository: repo,
        tokenStore: InMemoryTokenStore(_testSession()),
        initialSession: _testSession(),
      );

      await auth.signOutEverywhere();
      expect(repo.signOutEverywhereCount, 1);
      expect(auth.isSignedIn, isFalse);
      auth.dispose();
    });

    testWidgets('the devices screen lists sessions and revokes one',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.devices);
      await tester.pumpAndSettle();

      expect(find.text('Pixel 8'), findsOneWidget);
      expect(find.text('iPhone 14'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.logout_rounded).first);
      await tester.pumpAndSettle();
      await tester.tap(find.widgetWithText(FilledButton, 'Sign out'));
      await tester.pumpAndSettle();

      expect(_authRepo.revoked, <int>[1]);
    });

    testWidgets('a session with no device name still renders',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      // Every field but the id is nullable in the schema.
      final FakeAuthRepository repo = FakeAuthRepository()
        ..deviceSessions = <DeviceSession>[const DeviceSession(id: 9)];
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        repository: repo,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.devices);
      await tester.pumpAndSettle();

      expect(find.text('Unknown device'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  group('dashboard', () {
    testWidgets('the language can be changed from the profile tab',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
      );
      await _settleSplash(tester);

      _nav(tester).pushNamed(AppRoutes.profile);
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.translate_rounded).first);
      await tester.pumpAndSettle();
      expect(find.byType(LanguageScreen), findsOneWidget);

      await tester.tap(find.text('தமிழ்'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('தொடரவும்'));
      await tester.pumpAndSettle();

      // Back on the profile, and under it the shell, now in Tamil.
      expect(find.byType(ProfileScreen), findsOneWidget);
      _nav(tester).pop();
      await tester.pumpAndSettle();
      expect(find.byType(AppShell), findsOneWidget);
      expect(find.text('டெலிவரி'), findsWidgets);
    });
  });


  // -------------------------------------------------------------------------
  group('storefront decoding', () {
    test('a restaurant reads its rating however the list sends it', () {
      Restaurant shop(Map<String, dynamic> extra) => Restaurant.fromJson(
            <String, dynamic>{'id': 'r1', 'name': 'Anjappar', ...extra},
          );
      expect(shop(<String, dynamic>{'rating': '4.3', 'rating_count': 120}).rating, 4.3);
      expect(shop(<String, dynamic>{'rating': '4.3', 'rating_count': 120}).ratingCount, 120);
      // Laravel's withAvg / withCount names.
      final Restaurant avg = shop(<String, dynamic>{
        'reviews_avg_rating': '4.1666',
        'reviews_count': 37,
      });
      expect(avg.rating, closeTo(4.17, 0.01));
      expect(avg.ratingCount, 37);
      final Restaurant nested = shop(<String, dynamic>{
        'rating': <String, dynamic>{'average': 3.9, 'count': 12},
      });
      expect(nested.rating, 3.9);
      expect(nested.ratingCount, 12);
      // Unrated is no rating, never "0.0".
      expect(shop(<String, dynamic>{'rating': 0}).hasRating, isFalse);
      expect(shop(<String, dynamic>{}).hasRating, isFalse);
    });

    test('numbers and booleans survive arriving as strings', () {
      // The generated schema types several of these as `string`, and money
      // comes back as a JSON number in some places and a decimal string in
      // others. A storefront that crashes on "249.00" is not worth shipping.
      final Restaurant restaurant = Restaurant.fromJson(<String, dynamic>{
        'id': 'r-77',
        'name': 'Anjappar',
        'is_open': 'true',
        'is_accepting_orders': '1',
        'within_operating_hours': 'false',
        'avg_prep_time_minutes': '28',
        'min_order_value': '149.00',
        'packaging_fee': 12,
        'supports_pickup': 'false',
        'distance_metres': '820',
      });

      expect(restaurant.isOpen, isTrue);
      expect(restaurant.isAcceptingOrders, isTrue);
      expect(restaurant.withinOperatingHours, isFalse);
      expect(restaurant.avgPrepTimeMinutes, 28);
      expect(restaurant.minOrderValue, 149.0);
      expect(restaurant.packagingFee, 12.0);
      expect(restaurant.supportsPickup, isFalse);
      expect(restaurant.distanceKmLabel, '0.8');
    });

    test('a missing distance stays null rather than becoming zero', () {
      // Fetched directly rather than through a nearby search — "0.0 km away"
      // would be a lie.
      final Restaurant restaurant =
          Restaurant.fromJson(<String, dynamic>{'id': 'r-1', 'name': 'X'});
      expect(restaurant.distanceMetres, isNull);
      expect(restaurant.distanceKmLabel, isNull);
    });

    test('the uncategorised bucket becomes a section of its own', () {
      final RestaurantMenu menu = RestaurantMenu.fromJson(<String, dynamic>{
        'menu': <Map<String, dynamic>>[
          // A real category always carries an id; only the API's own
          // "Uncategorised" group has a null one.
          <String, dynamic>{
            'id': 7,
            'name': 'Biryani',
            'items': <Map<String, dynamic>>[
              <String, dynamic>{'id': 1, 'name': 'Mutton Biryani', 'price': 320},
            ],
          },
          // An empty category is dropped rather than rendered as a bare header.
          <String, dynamic>{'id': 8, 'name': 'Desserts', 'items': <Object>[]},
        ],
        'uncategorised': <Map<String, dynamic>>[
          <String, dynamic>{'id': 9, 'name': 'Filter Coffee', 'price': 30},
        ],
      });

      expect(menu.sections.length, 2);
      expect(menu.sections.first.name, 'Biryani');
      expect(menu.sections.last.isUncategorised, isTrue);
      expect(menu.allItems.length, 2);
    });

    test('the API\'s own "Uncategorised" heading is not shown to customers',
        () {
      // The live API returns that group with a null id and an English name.
      // Rendering the name verbatim would put an untranslated word above the
      // menu in all 22 other languages.
      final RestaurantMenu menu = RestaurantMenu.fromJson(<String, dynamic>{
        'menu': <Map<String, dynamic>>[
          <String, dynamic>{
            'id': null,
            'name': 'Uncategorised',
            'items': <Map<String, dynamic>>[
              <String, dynamic>{'id': 2, 'name': 'Dosa', 'price': 50},
            ],
          },
          <String, dynamic>{
            'id': 7,
            'name': 'Biryani',
            'items': <Map<String, dynamic>>[
              <String, dynamic>{'id': 3, 'name': 'Mutton', 'price': 320},
            ],
          },
        ],
      });

      expect(menu.sections.first.isUncategorised, isTrue);
      expect(menu.sections.first.name, isEmpty);
      // A real category keeps the merchant's own name.
      expect(menu.sections.last.name, 'Biryani');
    });

    test('a dish needs the sheet only when a group demands an answer', () {
      MenuItem item(List<Map<String, dynamic>> groups) =>
          MenuItem.fromJson(<String, dynamic>{
            'id': 1,
            'name': 'Dosa',
            'price': 80,
            'option_groups': groups,
          });

      expect(item(<Map<String, dynamic>>[]).needsOptions, isFalse);
      expect(
        item(<Map<String, dynamic>>[
          <String, dynamic>{'id': 1, 'name': 'Extras', 'is_required': false},
        ]).needsOptions,
        isFalse,
      );
      expect(
        item(<Map<String, dynamic>>[
          <String, dynamic>{'id': 1, 'name': 'Size', 'is_required': true},
        ]).needsOptions,
        isTrue,
      );
      // A floor without the flag still has to be answered.
      expect(
        item(<Map<String, dynamic>>[
          <String, dynamic>{'id': 1, 'name': 'Base', 'min_selections': 1},
        ]).needsOptions,
        isTrue,
      );
    });

    test('a status this build predates degrades instead of crashing', () {
      expect(orderStatusFrom('teleported'), OrderStatus.unknown);
      expect(orderStatusFrom(null), OrderStatus.unknown);
      expect(orderStatusFrom('ready_for_pickup'), OrderStatus.readyForPickup);
    });

    test('only a placed order offers cancellation', () {
      expect(OrderStatus.placed.isCancellable, isTrue);
      for (final OrderStatus status in OrderStatus.values) {
        if (status == OrderStatus.placed) continue;
        expect(status.isCancellable, isFalse, reason: status.name);
      }
      expect(OrderStatus.delivered.isFinished, isTrue);
      expect(OrderStatus.riderAssigned.isActive, isTrue);
    });

    test('the uncategorised bucket is read from beside data, not inside it',
        () async {
      // The live API nests `menu` inside `data` alongside the restaurant, but
      // puts `uncategorised` at the top level next to it. Reading only `data`
      // dropped every dish a shop never filed under a category — for a shop
      // that made no categories, that was the whole menu.
      final ApiStorefrontRepository repository = ApiStorefrontRepository(
        ApiClient(
          baseUrl: 'https://api.test/api',
          httpClient: MockClient(
            (http.Request request) async => http.Response(
              jsonEncode(<String, dynamic>{
                'data': <String, dynamic>{
                  'id': 4,
                  'name': 'kishore food',
                  'menu': <Object>[],
                },
                'uncategorised': <Map<String, dynamic>>[
                  <String, dynamic>{'id': 2, 'name': 'Dosa', 'price': 50},
                ],
              }),
              200,
            ),
          ),
        ),
      );

      final RestaurantMenu menu = await repository.menu('4');
      expect(menu.isEmpty, isFalse);
      expect(menu.allItems.single.name, 'Dosa');
      expect(menu.sections.single.isUncategorised, isTrue);
    });

    test('the merchant chooses which photo leads, not the banner', () {
      final Restaurant restaurant = Restaurant.fromJson(<String, dynamic>{
        'id': '4',
        'name': 'kishore food',
        'banner_url': 'https://x/banner.png',
        'photos': <Map<String, dynamic>>[
          <String, dynamic>{'id': 3, 'url': 'https://x/a.png', 'caption': 'Our dining area'},
          <String, dynamic>{'id': 7, 'url': 'https://x/b.png', 'caption': null},
          // No url is not a photo. Rendering it would be a grey box the
          // customer has to swipe past.
          <String, dynamic>{'id': 9, 'caption': 'Missing'},
        ],
      });

      expect(restaurant.photos.length, 2);
      // The banner is not prepended: `photos` is already in the merchant's
      // order and its first entry is the one they chose to lead with.
      expect(
        restaurant.gallery.map((RestaurantPhoto p) => p.id).toList(),
        <int>[3, 7],
      );
      expect(restaurant.gallery.first.caption, 'Our dining area');
      // A blank caption is no caption, not an empty alt text.
      expect(restaurant.gallery.last.caption, isNull);
    });

    test('a restaurant with no photos falls back to its banner', () {
      final Restaurant restaurant = Restaurant.fromJson(<String, dynamic>{
        'id': '4',
        'name': 'kishore food',
        'banner_url': 'https://x/banner.png',
      });

      expect(restaurant.photos, isEmpty);
      expect(restaurant.gallery.single.url, 'https://x/banner.png');
    });

    test('a single photo is the whole gallery, banner and all', () {
      // One photo means one slide — the banner does not join it to make two.
      final Restaurant restaurant = Restaurant.fromJson(<String, dynamic>{
        'id': '4',
        'name': 'kishore food',
        'banner_url': 'https://x/banner.png',
        'photos': <Map<String, dynamic>>[
          <String, dynamic>{'id': 3, 'url': 'https://x/a.png'},
        ],
      });

      expect(restaurant.gallery.single.url, 'https://x/a.png');
    });

    test('nearby restaurants carry no photos, and must not pretend to', () {
      // The list endpoint omits them on purpose — twenty shops would be a
      // hundred and sixty signed URLs.
      final Restaurant restaurant =
          Restaurant.fromJson(<String, dynamic>{'id': '4', 'name': 'kishore food'});
      expect(restaurant.gallery, isEmpty);
    });

    test('a dish rating is hidden until the API sends one', () {
      final MenuItem unrated =
          MenuItem.fromJson(<String, dynamic>{'id': 2, 'name': 'Dosa', 'price': 50});
      expect(unrated.hasRating, isFalse);
      // Never zero: a dish nobody has rated is not a bad dish.
      expect(unrated.rating, isNull);

      final MenuItem rated = MenuItem.fromJson(<String, dynamic>{
        'id': 2,
        'name': 'Dosa',
        'price': 50,
        'rating': '4.5',
        'rating_count': 12,
      });
      expect(rated.rating, 4.5);
      expect(rated.ratingCount, 12);
    });

    test('a review summary reads the histogram the server keys as strings', () {
      final ReviewPage page = ReviewPage.fromJson(
        <Map<String, dynamic>>[],
        <String, dynamic>{
          'rating': '4.2',
          'rating_count': 18,
          'breakdown': <String, dynamic>{
            '5': 10,
            '4': '4',
            '3': 2,
            '1': 2,
            // Not a star, so not a bar.
            '0': 99,
            'x': 5,
          },
          'current_page': 1,
          'last_page': 3,
        },
      );

      expect(page.summary.rating, 4.2);
      expect(page.summary.countFor(4), 4);
      // A star nobody gave reads as zero rather than as a gap.
      expect(page.summary.countFor(2), 0);
      expect(page.summary.breakdown.containsKey(0), isFalse);
      expect(page.summary.busiestStar, 10);
      expect(page.hasMore, isTrue);
    });

    test('an unrated restaurant shows no rating rather than a zero', () {
      final ReviewPage page = ReviewPage.fromJson(
        <Map<String, dynamic>>[],
        const <String, dynamic>{'rating': null, 'rating_count': 0},
      );

      expect(page.summary.hasRating, isFalse);
      // Nothing said there was another page, and there is nothing on this one.
      expect(page.hasMore, isFalse);
      // Never divides by zero when the histogram is empty.
      expect(page.summary.busiestStar, 1);
    });

    test('the last page is the last page, whatever it holds', () {
      final ReviewPage page = ReviewPage.fromJson(
        <Map<String, dynamic>>[
          <String, dynamic>{'id': 1, 'author': 'Priya', 'rating': 5},
        ],
        const <String, dynamic>{'current_page': 3, 'last_page': 3},
      );
      expect(page.hasMore, isFalse);
      // A blank comment is no comment — the tile must not reserve space for it.
      expect(page.items.single.hasComment, isFalse);
    });

    test('reviews are asked for by page, and filtered server-side', () async {
      final List<Uri> seen = <Uri>[];
      final ApiStorefrontRepository repository = ApiStorefrontRepository(
        ApiClient(
          baseUrl: 'https://api.test/api',
          httpClient: MockClient((http.Request request) async {
            seen.add(request.url);
            return http.Response(
              jsonEncode(<String, dynamic>{
                'data': <Object>[],
                'meta': <String, dynamic>{'rating': 4, 'rating_count': 2},
              }),
              200,
            );
          }),
        ),
      );

      await repository.reviews('4');
      await repository.reviews('4', page: 2, withCommentOnly: true);

      // Page one adds nothing, so the first request is the plain URL.
      expect(seen.first.query, isEmpty);
      expect(seen.last.queryParameters['page'], '2');
      expect(seen.last.queryParameters['with_comment'], '1');
    });

    test('dish ratings are posted keyed by menu item, and omitted when none',
        () async {
      final List<String> bodies = <String>[];
      final ApiStorefrontRepository repository = ApiStorefrontRepository(
        ApiClient(
          baseUrl: 'https://api.test/api',
          httpClient: MockClient((http.Request request) async {
            bodies.add(request.body);
            return http.Response('{"data":{}}', 200);
          }),
        ),
      );

      await repository.reviewOrder(
        7,
        rating: 4,
        comment: '  ',
        dishes: <int, int>{41: 5, 44: 2},
      );
      await repository.reviewOrder(7, rating: 5);

      final Map<String, dynamic> withDishes =
          jsonDecode(bodies.first) as Map<String, dynamic>;
      expect(withDishes['rating'], 4);
      expect(withDishes['dishes'], <String, dynamic>{'41': 5, '44': 2});
      // Whitespace is not a comment.
      expect(withDishes.containsKey('comment'), isFalse);

      // Nothing rated means no key at all, rather than an empty object.
      final Map<String, dynamic> bare =
          jsonDecode(bodies.last) as Map<String, dynamic>;
      expect(bare.containsKey('dishes'), isFalse);
    });

    ApiStorefrontRepository reviewRepo(
      List<Map<String, dynamic>> bodies,
      List<http.Response> answers,
    ) =>
        ApiStorefrontRepository(
          ApiClient(
            baseUrl: 'https://api.test/api',
            httpClient: MockClient((http.Request request) async {
              bodies.add(jsonDecode(request.body) as Map<String, dynamic>);
              return answers.length > 1
                  ? answers.removeAt(0)
                  : answers.single;
            }),
          ),
        );

    test('a review sends only the codes the server knows, each under its own '
        'subject', () async {
      final List<Map<String, dynamic>> bodies = <Map<String, dynamic>>[];
      await reviewRepo(bodies, <http.Response>[http.Response('{"data":{}}', 200)])
          .reviewOrder(
        7,
        rating: 4,
        // A delivery code under food, a code from a newer build, a repeat.
        tags: <String>['tasty', 'on_time', 'crispy_edges', 'tasty'],
        rider: const RiderReview(
          rating: 5,
          tags: <String>['polite', 'tasty', 'brought_umbrella'],
        ),
      );

      expect(bodies.single['tags'], <String>['tasty']);
      expect(
        bodies.single['rider'],
        <String, dynamic>{'rating': 5, 'tags': <String>['polite']},
      );
    });

    test('a refused tag keeps the review: it goes again without tags',
        () async {
      final List<Map<String, dynamic>> bodies = <Map<String, dynamic>>[];
      await reviewRepo(bodies, <http.Response>[
        http.Response(
          jsonEncode(<String, dynamic>{
            'message': 'The given data was invalid.',
            'errors': <String, dynamic>{
              'rider.tags.0': <String>['Unknown rider tag: polite.'],
            },
          }),
          422,
        ),
        http.Response('{"data":{}}', 200),
      ]).reviewOrder(
        7,
        rating: 2,
        comment: 'Cold by the time it came',
        dishes: <int, int>{41: 2},
        tags: <String>['cold_food'],
        rider: const RiderReview(
          rating: 3,
          tags: <String>['polite'],
          comment: 'Took the long way',
        ),
      );

      expect(bodies, hasLength(2));
      final Map<String, dynamic> again = bodies.last;
      expect(again.containsKey('tags'), isFalse);
      expect(again['rating'], 2);
      expect(again['comment'], 'Cold by the time it came');
      expect(again['dishes'], <String, dynamic>{'41': 2});
      expect(
        again['rider'],
        <String, dynamic>{'rating': 3, 'comment': 'Took the long way'},
      );
    });

    test('a refusal meant for the customer is not retried', () async {
      final List<Map<String, dynamic>> bodies = <Map<String, dynamic>>[];
      final Future<void> review = reviewRepo(bodies, <http.Response>[
        http.Response(
          jsonEncode(<String, dynamic>{
            'message': 'Too late.',
            'errors': <String, dynamic>{
              'order': <String>['Orders can be rated for 7 days.'],
            },
          }),
          422,
        ),
      ]).reviewOrder(7, rating: 4, tags: <String>['tasty']);

      await expectLater(
        review,
        throwsA(
          isA<ApiException>().having(
            (ApiException e) => e.errors['order'],
            'order error',
            <String>['Orders can be rated for 7 days.'],
          ),
        ),
      );
      expect(bodies, hasLength(1));
    });

    test('an order line can only be rated when the API names the dish', () {
      // `GET /v1/orders` sends the line id but not `menu_item_id`. Guessing
      // from the line id would rate whichever dish shared that number.
      final OrderItem bare =
          OrderItem.fromJson(<String, dynamic>{'id': 5, 'name': 'Dosa'});
      expect(bare.menuItemId, isNull);

      final OrderItem named = OrderItem.fromJson(
        <String, dynamic>{'id': 5, 'menu_item_id': 2, 'name': 'Dosa'},
      );
      expect(named.menuItemId, 2);
    });

    test('a cart line takes its id from cart_item_id, as the API sends it', () {
      // The live payload names it `cart_item_id`. Reading only `id` gave 0,
      // which sent every PATCH and DELETE to `/cart/items/0` — so changing a
      // quantity or removing a line silently failed.
      final Cart cart = Cart.fromJson(<String, dynamic>{
        'id': 1,
        'items': <Map<String, dynamic>>[
          <String, dynamic>{
            'cart_item_id': 4,
            'menu_item_id': 2,
            'name': 'Dosa',
            'quantity': 1,
            'unit_price': 50,
            'line_total': 50,
          },
        ],
      });

      expect(cart.lines.single.id, 4);
      expect(cart.lines.single.menuItemId, 2);
    });

    test('an open cart counts its own lines when no count is sent', () {
      // `GET /v1/carts` sends the lines, not a count. Showing "0 items" beside
      // a non-zero total is worse than showing nothing.
      final OpenCart open = OpenCart.fromJson(<String, dynamic>{
        'restaurant': <String, dynamic>{'id': '4', 'name': 'kishore food'},
        'items': <Map<String, dynamic>>[
          <String, dynamic>{'cart_item_id': 4, 'quantity': 2},
          <String, dynamic>{'cart_item_id': 5, 'quantity': 1},
        ],
        'totals': <String, dynamic>{'grand_total': 82},
      });

      expect(open.itemCount, 3);
      expect(open.grandTotal, 82);
      expect(open.restaurantName, 'kishore food');
    });

    test('home v2 fields default to absent, not to zero', () {
      // None of these exist in the API today. The card hides each rather than
      // rendering a "0.0" rating or a blank offer ribbon.
      final Restaurant plain = Restaurant.fromJson(<String, dynamic>{
        'id': 'r1',
        'name': 'X',
        'service_category': 'Restaurant',
        'area': 'Anna Nagar',
      });

      expect(plain.rating, isNull);
      expect(plain.hasRating, isFalse);
      expect(plain.isPureVeg, isFalse);
      expect(plain.costForTwo, isNull);
      expect(plain.cuisines, isEmpty);
      expect(plain.offers, isEmpty);
      expect(plain.isFavourite, isFalse);
      // Falls back to the category and area the API does send today.
      expect(plain.subtitle(), 'Restaurant · Anna Nagar');
    });

    test('home v2 fields decode once the API sends them', () {
      final Restaurant rich = Restaurant.fromJson(<String, dynamic>{
        'id': 'r1',
        'name': 'Behrouz',
        'rating': '4.2',
        'rating_count': '1284',
        'is_pure_veg': 'true',
        'cost_for_two': 300,
        'cuisines': <String>['Biryani', 'North Indian'],
        'offers': <Map<String, dynamic>>[
          <String, dynamic>{'label': '₹100 OFF above ₹499', 'type': 'flat'},
          // An offer with no wording is dropped rather than shown blank.
          <String, dynamic>{'label': '', 'type': 'flat'},
        ],
        'has_free_delivery': 1,
        'is_favourite': true,
      });

      expect(rich.rating, 4.2);
      expect(rich.ratingCount, 1284);
      expect(rich.isPureVeg, isTrue);
      expect(rich.costForTwo, 300);
      expect(rich.offers.single.label, '₹100 OFF above ₹499');
      expect(rich.hasFreeDelivery, isTrue);
      expect(rich.isFavourite, isTrue);
      // Cuisines replace the service-category fallback once they exist.
      expect(rich.subtitle(), 'Biryani · North Indian');
    });

    test('unfiltered nearby sends exactly what it sends today', () {
      // The whole filter set must add nothing until something is selected,
      // otherwise every existing request changes shape.
      expect(RestaurantFilters.none.toQuery(), isEmpty);
      expect(RestaurantFilters.none.isActive, isFalse);
      expect(RestaurantFilters.none.activeCount, 0);
    });

    test('filters become the query parameters the API spec asks for', () {
      const RestaurantFilters filters = RestaurantFilters(
        sort: RestaurantSort.costLowHigh,
        cuisines: <String>{'biryani'},
        ratingMin: 4.0,
        cost: CostBracket(min: 150, max: 300),
        vegOnly: true,
        nearAndFast: true,
      );

      final Map<String, List<String>> query = filters.toQuery();
      expect(query['sort'], <String>['cost_low_high']);
      // Brackets matter: Laravel silently keeps only the last value without
      // them, so a two-cuisine filter would become a one-cuisine filter.
      expect(query['cuisine[]'], <String>['biryani']);
      expect(query.containsKey('cuisine'), isFalse);
      expect(query['rating_min'], <String>['4.0']);
      expect(query['cost_min'], <String>['150']);
      expect(query['cost_max'], <String>['300']);
      expect(query['veg_only'], <String>['1']);
      expect(query['near_and_fast'], <String>['1']);
      // Untouched filters stay out of the URL entirely.
      expect(query.containsKey('free_delivery'), isFalse);
      // Sort is excluded from the count — there is always a sort, so counting
      // it would show "1" on an untouched list.
      expect(filters.activeCount, 5);
    });

    test('a cuisine toggles off as well as on', () {
      final RestaurantFilters once =
          RestaurantFilters.none.toggleCuisine('pizza');
      expect(once.cuisines, <String>{'pizza'});
      expect(once.toggleCuisine('pizza').cuisines, isEmpty);
    });

    test('clearing a rating is distinct from leaving it alone', () {
      const RestaurantFilters set = RestaurantFilters(ratingMin: 4.0);
      // copyWith(ratingMin: null) cannot mean "clear" — null is also "unchanged".
      expect(set.copyWith().ratingMin, 4.0);
      expect(set.copyWith(clearRating: true).ratingMin, isNull);
    });

    test('an unrecognised home section is skipped, not rendered', () {
      // The contract: new section types ship server-side before the app
      // supports them. Anything unknown must be dropped silently.
      final HomeScreen home = HomeScreen.fromJson(<String, dynamic>{
        'sections': <Map<String, dynamic>>[
          <String, dynamic>{
            'type': 'flash_sale_countdown',
            'items': <Object>[],
          },
          <String, dynamic>{
            'type': 'cuisines',
            'items': <Map<String, dynamic>>[
              <String, dynamic>{'slug': 'biryani', 'name': 'Biryani'},
            ],
          },
        ],
      }, const <String, dynamic>{'radius_metres': 2000});

      expect(home.sections.length, 1);
      expect(home.sections.single, isA<CuisineSection>());
      expect(home.radiusMetres, 2000);
    });

    test('an empty home section is dropped rather than left as a bare header',
        () {
      final HomeScreen home = HomeScreen.fromJson(<String, dynamic>{
        'sections': <Map<String, dynamic>>[
          <String, dynamic>{'type': 'banners', 'items': <Object>[]},
          <String, dynamic>{
            'type': 'restaurants',
            'title': 'Featured',
            'layout': 'list',
            'items': <Object>[],
          },
        ],
      }, const <String, dynamic>{});

      expect(home.sections, isEmpty);
      expect(home.isEmpty, isTrue);
    });

    test('a restaurant section carries the layout the server chose', () {
      final HomeScreen home = HomeScreen.fromJson(<String, dynamic>{
        'sections': <Map<String, dynamic>>[
          <String, dynamic>{
            'type': 'restaurants',
            'title': 'Recommended for you',
            'layout': 'grid',
            'items': <Map<String, dynamic>>[
              <String, dynamic>{'id': 'r1', 'name': 'Behrouz'},
            ],
          },
        ],
      }, const <String, dynamic>{});

      final RestaurantSection section =
          home.sections.single as RestaurantSection;
      expect(section.isGrid, isTrue);
      // Already localised by the server, so it is rendered verbatim.
      expect(section.title, 'Recommended for you');
    });

    test('a banner action arriving as an array does not lose the tap', () {
      // The generated schema types `action` as an array; the API sends an
      // object. Neither shape may throw.
      expect(BannerAction.fromJson(<Object>[]).isNone, isTrue);
      expect(BannerAction.fromJson(null).isNone, isTrue);

      final BannerAction real = BannerAction.fromJson(<String, dynamic>{
        'type': 'collection',
        'value': 'under-250',
      });
      expect(real.type, 'collection');
      expect(real.value, 'under-250');
      expect(real.isNone, isFalse);
    });

    test('unavailable items decode from names or from objects', () {
      Cart cart(Object? raw) => Cart.fromJson(<String, dynamic>{
            'id': 1,
            'unavailable_items': raw,
          });

      expect(cart(<String>['Dosa']).unavailableItems, <String>['Dosa']);
      expect(
        cart(<Map<String, dynamic>>[
          <String, dynamic>{'name': 'Idli'},
        ]).unavailableItems,
        <String>['Idli'],
      );
      expect(cart(null).unavailableItems, isEmpty);
    });
  });

  // -------------------------------------------------------------------------
  group('cart', () {
    late FakeStorefrontRepository repo;
    late CartController cart;

    setUp(() {
      repo = FakeStorefrontRepository();
      cart = CartController(repository: repo);
    });

    test('state is replaced from the response, never patched locally', () async {
      // Totals, the minimum and can_checkout are the server's answer;
      // recomputing any of them here would only drift.
      await cart.addItem('r1', menuItemId: 1);
      expect(cart.itemCount, 1);
      expect(cart.cart!.totals.grandTotal, 100);

      repo.grandTotalOverride = 999;
      await cart.setQuantity('r1', cartItemId: 501, quantity: 3);
      expect(cart.cart!.totals.grandTotal, 999);
    });

    test('an empty basket is a 404, not an error worth showing', () async {
      repo.cartStatus = 404;
      final AuthFailure? failure = await cart.load('r1');
      expect(failure, isNull);
      expect(cart.cart, isNull);
      expect(cart.isEmpty, isTrue);
    });

    test('quantity sums across option combinations of the same dish', () async {
      repo.lines = <Map<String, dynamic>>[
        <String, dynamic>{'id': 1, 'menu_item_id': 7, 'quantity': 2},
        <String, dynamic>{'id': 2, 'menu_item_id': 7, 'quantity': 1},
        <String, dynamic>{'id': 3, 'menu_item_id': 9, 'quantity': 1},
      ];
      await cart.load('r1');

      expect(cart.quantityOfMenuItem(7), 3);
      // Split across two lines, so the stepper cannot know which to decrement.
      expect(cart.soleLineFor(7), isNull);
      expect(cart.soleLineFor(9)?.id, 3);
    });

    test('a rejected add surfaces the server field error verbatim', () async {
      repo.failNextWith = ApiException(
        kind: ApiErrorKind.validation,
        statusCode: 422,
        message: 'Unprocessable',
        errors: <String, List<String>>{
          'option_ids': <String>['Choose a size.'],
        },
      );

      final AuthFailure? failure = await cart.addItem('r1', menuItemId: 1);
      expect(failure, AuthFailure.invalidIdentifier);
      expect(cart.firstError('option_ids'), 'Choose a size.');
      expect(cart.firstError(), 'Choose a size.');
    });

    test('checkout returns the order and drops the basket', () async {
      await cart.addItem('r1', menuItemId: 1);
      final (Order? order, AuthFailure? failure) = await cart.checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        addressId: 5,
      );

      expect(failure, isNull);
      expect(order?.orderNumber, 'NX1001');
      // The server empties it, so going back cannot place the same order twice.
      expect(cart.cart, isNull);
      expect(repo.lastCheckout?['address_id'], 5);
    });

    test('a rejected checkout keeps the basket and names the field', () async {
      await cart.addItem('r1', menuItemId: 1);
      repo.failNextWith = ApiException(
        kind: ApiErrorKind.validation,
        statusCode: 422,
        message: 'Unprocessable',
        errors: <String, List<String>>{
          'address_id': <String>['That address is outside the delivery area.'],
        },
      );

      final (Order? order, AuthFailure? failure) = await cart.checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        addressId: 5,
      );

      expect(order, isNull);
      expect(failure, AuthFailure.invalidIdentifier);
      expect(cart.cart, isNotNull);
      expect(
        cart.firstError(),
        'That address is outside the delivery area.',
      );
    });

    test('pickup carries no address', () async {
      await cart.addItem('r1', menuItemId: 1);
      await cart.checkout(
        'r1',
        fulfilmentType: FulfilmentType.pickup,
        paymentMethod: 'cod',
        addressId: 5,
      );
      expect(repo.lastCheckout?.containsKey('address_id'), isFalse);
    });

    test('a wallet checkout says so, and plain cash does not', () async {
      await cart.addItem('r1', menuItemId: 1);
      await cart.checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        useWallet: true,
        addressId: 5,
      );
      expect(repo.lastCheckout?['use_wallet'], isTrue);

      await cart.addItem('r1', menuItemId: 1);
      await cart.checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        addressId: 5,
      );
      expect(repo.lastCheckout?.containsKey('use_wallet'), isFalse);
    });
  });

  // -------------------------------------------------------------------------
  group('pickup code', () {
    Future<void> openOrder(WidgetTester tester, String fulfilment) async {
      _useTallScreen(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderStatus = 'preparing'
        ..orderExtra = <String, dynamic>{
          'fulfilment_type': fulfilment,
          'pickup_code': '4821',
        };
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.orderStatus,
        arguments: const OrderArgs(orderId: 1),
      );
      await _pumpFrames(tester);
    }

    testWidgets('a delivery order never shows the rider\'s pickup code',
        (WidgetTester tester) async {
      await openOrder(tester, 'delivery');

      // The code collects the food at the counter. On a delivery it belongs
      // to the rider, and anyone holding the customer's phone could use it.
      expect(find.text('Pickup code'), findsNothing);
      expect(find.text('4821'), findsNothing);
      Provider.of<OrdersController>(
        tester.element(find.byType(MaterialApp)),
        listen: false,
      ).stopPolling();
    });

    testWidgets('a takeaway order shows it, for the customer to collect',
        (WidgetTester tester) async {
      await openOrder(tester, 'pickup');

      expect(find.text('Pickup code'), findsOneWidget);
      expect(find.text('4821'), findsOneWidget);
      Provider.of<OrdersController>(
        tester.element(find.byType(MaterialApp)),
        listen: false,
      ).stopPolling();
    });
  });

  // -------------------------------------------------------------------------
  group('live tracking', () {
    Future<OrdersController> openTracking(
      WidgetTester tester,
      Map<String, dynamic> track, {
      Map<String, dynamic> order = const <String, dynamic>{},
    }) async {
      _useTallScreen(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderStatus = 'picked_up'
        ..trackExtra = track
        ..orderExtra = <String, dynamic>{
          'delivery_address': <String, dynamic>{
            'line1': '12 Anna Nagar',
            'city': 'Chennai',
            'latitude': 13.0990,
            'longitude': 80.2710,
          },
          ...order,
        };
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);

      final OrdersController orders = Provider.of<OrdersController>(
        tester.element(find.byType(MaterialApp)),
        listen: false,
      );
      await orders.open(1);
      _nav(tester).pushNamed(
        AppRoutes.liveTracking,
        arguments: const OrderArgs(orderId: 1),
      );
      // The map pulses and the progress bar shimmers forever, so settle by
      // frames rather than pumpAndSettle.
      await _pumpFrames(tester);
      return orders;
    }

    testWidgets('leads with the ETA, the rider and their plate',
        (WidgetTester tester) async {
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'estimated_minutes': 12,
          'rider': <String, dynamic>{
            'name': 'Suresh K',
            'phone': '9876543210',
            'vehicle_number': 'TN 37 AB 1234',
            'vehicle_type': 'scooter',
            'latitude': 13.0830,
            'longitude': 80.2710,
            'heading': 135,
            'updated_at': DateTime.now().toUtc().toIso8601String(),
          },
        },
      );
      addTearDown(orders.stopPolling);

      expect(
        find.textContaining('Arriving in 12 min', findRichText: true),
        findsOneWidget,
      );
      // Plate first and without spaces, the way it is painted on the bike.
      expect(find.text('TN37AB1234'), findsOneWidget);
      expect(find.text('SURESH K'), findsOneWidget);
      // About 1.8 km north of the rider, as the crow flies: no route yet.
      expect(find.text('Suresh is 1.8 km away'), findsOneWidget);
      expect(find.text('12 Anna Nagar, Chennai'), findsOneWidget);
      // The breathing dot announces itself, merged into the line beside it.
      expect(find.bySemanticsLabel(RegExp('Live')), findsOneWidget);
      expect(find.text('Message Suresh'), findsOneWidget);
      expect(find.text('Delivery partner · Scooter'), findsOneWidget);
      // Picked up is the third of four steps.
      expect(find.text('On the way'), findsOneWidget);
      expect(find.byTooltip('Call'), findsOneWidget);
    });

    Set<String> lineIds(WidgetTester tester) => tester
        .widget<gm.GoogleMap>(find.byType(gm.GoogleMap))
        .polylines
        .map((gm.Polyline line) => line.polylineId.value)
        .toSet();

    testWidgets('a route the rider is not on is not drawn as their road',
        (WidgetTester tester) async {
      // A short route by the customer's door while the rider is 1.8 km
      // away: a stale or wrong-leg route from the server. Taken at face
      // value it drew a straight solid line and "0.0 km away".
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'estimated_minutes': 12,
          'route': r'sh}nAsy|hNcBcB',
          'rider': <String, dynamic>{
            'name': 'Suresh K',
            'latitude': 13.0830,
            'longitude': 80.2710,
            'updated_at': DateTime.now().toUtc().toIso8601String(),
          },
        },
      );
      addTearDown(orders.stopPolling);

      expect(find.text('Suresh is 1.8 km away'), findsOneWidget);
      expect(find.text('Suresh is 0.0 km away'), findsNothing);
      expect(lineIds(tester), isNot(contains('route-core')));
      expect(lineIds(tester), contains('arc'));
    });

    testWidgets('a route from the rider is drawn and measured along the road',
        (WidgetTester tester) async {
      // East 1.1 km, north 1.8 km, west 1.1 km: 3.9 km by road, 1.8 km as
      // the crow flies.
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'estimated_minutes': 12,
          'route': r'wgznAw||hN?o}@_cB??n}@',
          'rider': <String, dynamic>{
            'name': 'Suresh K',
            'latitude': 13.0830,
            'longitude': 80.2710,
            'updated_at': DateTime.now().toUtc().toIso8601String(),
          },
        },
      );
      addTearDown(orders.stopPolling);

      expect(find.text('Suresh is 3.9 km away'), findsOneWidget);
      expect(lineIds(tester), contains('route-core'));
      expect(lineIds(tester), isNot(contains('arc')));
    });

    testWidgets(
        "before pickup the road is the food's journey, the rider beside it",
        (WidgetTester tester) async {
      // The restaurant sits about 600 m from the customer and the rider is
      // 1.4 km from the restaurant, riding to it. The server's route is the
      // food's road, restaurant to customer, and says so.
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'status': 'preparing',
          'estimated_minutes': 20,
          'route': r'wr|nAwu}hN_X??~W',
          'route_starts_at': 'restaurant',
          'next_stop': 'restaurant',
          'rider': <String, dynamic>{
            'name': 'Suresh K',
            'latitude': 13.0830,
            'longitude': 80.2710,
            'updated_at': DateTime.now().toUtc().toIso8601String(),
          },
        },
        order: <String, dynamic>{
          'restaurant': <String, dynamic>{
            'name': 'Amma Mess',
            'latitude': 13.0950,
            'longitude': 80.2750,
          },
        },
      );
      addTearDown(orders.stopPolling);

      // The food's road is drawn whole, and kept even though the rider is
      // not on it; the rider's way to the kitchen is the dotted line.
      expect(lineIds(tester), containsAll(<String>[
        'food-route-core',
        'food-route-casing',
        'arc',
      ]));
      expect(lineIds(tester), isNot(contains('route-core')));
      // Straight to the next stop, the restaurant: never along the food's
      // road, which is not the rider's.
      expect(find.text('Suresh is 1.4 km away'), findsOneWidget);
    });

    testWidgets('the dotted line follows next_stop over the status',
        (WidgetTester tester) async {
      // Still "preparing" by status, which alone would point at the
      // restaurant (1.4 km), but the server says the next stop is the
      // customer, and it wins: with no route at all, the line and the
      // distance both go to the customer (1.8 km).
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'status': 'preparing',
          'next_stop': 'customer',
          'rider': <String, dynamic>{
            'name': 'Suresh K',
            'latitude': 13.0830,
            'longitude': 80.2710,
            'updated_at': DateTime.now().toUtc().toIso8601String(),
          },
        },
        order: <String, dynamic>{
          'restaurant': <String, dynamic>{
            'name': 'Amma Mess',
            'latitude': 13.0950,
            'longitude': 80.2750,
          },
        },
      );
      addTearDown(orders.stopPolling);

      expect(find.text('Suresh is 1.8 km away'), findsOneWidget);
      expect(lineIds(tester), contains('arc'));
    });

    testWidgets('an old fix says the location is updating',
        (WidgetTester tester) async {
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'stale_after_seconds': 45,
          'rider': <String, dynamic>{
            'name': 'Suresh K',
            'latitude': 13.0830,
            'longitude': 80.2710,
            'updated_at': DateTime.now()
                .subtract(const Duration(minutes: 2))
                .toUtc()
                .toIso8601String(),
          },
        },
      );
      addTearDown(orders.stopPolling);

      expect(find.text("Updating rider's location…"), findsOneWidget);
      expect(find.bySemanticsLabel(RegExp('Live')), findsNothing);
    });

    testWidgets('the map takes both pins from tracking, before any rider',
        (WidgetTester tester) async {
      // An order whose own copy has no coordinates; tracking sends both.
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'status': 'preparing',
          'rider': null,
          'restaurant': <String, dynamic>{
            'name': 'Amma Mess',
            'latitude': 13.0950,
            'longitude': 80.2750,
          },
          'destination': <String, dynamic>{
            'latitude': 13.0990,
            'longitude': 80.2710,
          },
        },
        order: <String, dynamic>{
          'delivery_address': <String, dynamic>{
            'line1': '12 Anna Nagar',
            'city': 'Chennai',
          },
        },
      );
      addTearDown(orders.stopPolling);

      final RiderMap map = tester.widget<RiderMap>(find.byType(RiderMap));
      expect(map.restaurant, const LatLng(13.0950, 80.2750));
      expect(map.destination, const LatLng(13.0990, 80.2710));
      expect(map.rider, isNull);
      expect(map.restaurantLabel, 'Amma Mess');

      // No rider: the top card says a partner is being found, and the
      // rider card is not drawn empty.
      expect(find.byKey(const ValueKey<String>('tracking-finding')), findsOneWidget);
      expect(
        find.byKey(const ValueKey<String>('tracking-searching')),
        findsOneWidget,
      );
      expect(
        find.byKey(const ValueKey<String>('tracking-rider-card')),
        findsNothing,
      );

      // Where it comes from and where it goes, then the two actions.
      final Finder block =
          find.byKey(const ValueKey<String>('tracking-order-block'));
      expect(
        find.descendant(of: block, matching: find.text('Amma Mess')),
        findsOneWidget,
      );
      expect(
        find.descendant(of: block, matching: find.text('Delivering to')),
        findsOneWidget,
      );
      expect(
        find.descendant(of: block, matching: find.text('Order details')),
        findsOneWidget,
      );
    });

    testWidgets('a rider assigned gets the rider card, and no searching',
        (WidgetTester tester) async {
      final OrdersController orders = await openTracking(
        tester,
        <String, dynamic>{
          'estimated_minutes': 12,
          'rider': <String, dynamic>{
            'name': 'Suresh K',
            'latitude': 13.0830,
            'longitude': 80.2710,
            'updated_at': DateTime.now().toUtc().toIso8601String(),
          },
        },
      );
      addTearDown(orders.stopPolling);

      expect(
        find.byKey(const ValueKey<String>('tracking-rider-card')),
        findsOneWidget,
      );
      expect(find.byKey(const ValueKey<String>('tracking-finding')), findsNothing);
      expect(find.byKey(const ValueKey<String>('tracking-searching')), findsNothing);
    });

    testWidgets('before a rider is assigned it says one is coming',
        (WidgetTester tester) async {
      final OrdersController orders =
          await openTracking(tester, <String, dynamic>{'rider': null});
      addTearDown(orders.stopPolling);

      expect(find.text('Assigning a delivery partner…'), findsOneWidget);
    });
  });

  // -------------------------------------------------------------------------
  group('orders', () {
    test('tracking polls while in flight and stops once finished', () async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderStatus = 'preparing';
      final OrdersController orders = OrdersController(repository: repo);

      await orders.open(1);
      expect(orders.tracking?.status, OrderStatus.preparing);
      final int seeded = repo.trackCalls;

      repo.orderStatus = 'delivered';
      await Future<void>.delayed(const Duration(seconds: 9));
      expect(repo.trackCalls, greaterThan(seeded));
      expect(orders.tracking?.status, OrderStatus.delivered);

      // A delivered order must not keep a timer alive.
      final int settled = repo.trackCalls;
      await Future<void>.delayed(const Duration(seconds: 9));
      expect(repo.trackCalls, settled);

      orders.dispose();
    }, timeout: const Timeout(Duration(seconds: 40)));

    test('active orders are the ones still in flight', () async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderList = <String>['placed', 'delivered', 'preparing', 'cancelled'];
      final OrdersController orders = OrdersController(repository: repo);

      await orders.load();
      expect(orders.orders.length, 4);
      expect(orders.active.length, 2);
      orders.dispose();
    });
  });

  // -------------------------------------------------------------------------
  group('nearby', () {
    test('a saved address wins over a GPS fix', () async {
      // The API knows the saved pin better than a fresh read, and it is what
      // checkout validates the 1 km radius against.
      final FakeStorefrontRepository repo = FakeStorefrontRepository();
      final StorefrontController storefront =
          StorefrontController(repository: repo);

      await storefront.load(addressId: 12, latitude: 9.9, longitude: 78.1);
      expect(repo.lastNearby?['address_id'], 12);
      expect(repo.lastNearby?['latitude'], isNull);
      storefront.dispose();
    });

    test('coordinates are used when nothing is saved yet', () async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository();
      final StorefrontController storefront =
          StorefrontController(repository: repo);

      await storefront.load(latitude: 9.9252, longitude: 78.1198);
      expect(repo.lastNearby?['address_id'], isNull);
      expect(repo.lastNearby?['latitude'], 9.9252);
      storefront.dispose();
    });

    test('a deals failure does not take the restaurant list down', () async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..dealsThrow = true;
      final StorefrontController storefront =
          StorefrontController(repository: repo);

      await storefront.load(addressId: 1);
      expect(storefront.failure, isNull);
      expect(storefront.restaurants, isNotEmpty);
      expect(storefront.deals, isEmpty);
      storefront.dispose();
    });

    test('search is a separate query and leaves nearby alone', () async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository();
      final StorefrontController storefront =
          StorefrontController(repository: repo);

      await storefront.load(addressId: 4);
      final int nearbyCount = storefront.restaurants.length;

      repo.searchResultCount = 1;
      await storefront.runSearch('dosa');
      expect(repo.lastNearby?['search'], 'dosa');
      expect(storefront.results.length, 1);
      expect(storefront.restaurants.length, nearbyCount);

      // Clearing drops the results without a round trip.
      await storefront.runSearch('   ');
      expect(storefront.results, isEmpty);
      expect(storefront.hasSearched, isFalse);
      storefront.dispose();
    });
  });

  // -------------------------------------------------------------------------
  group('storefront screens', () {
    Future<void> openStore(
      WidgetTester tester, {
      FakeStorefrontRepository? repository,
    }) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repository,
      );
      await _settleSplash(tester);
    }

    testWidgets('nearby restaurants come from the API',
        (WidgetTester tester) async {
      await openStore(tester);
      expect(find.text('Anjappar Chettinad'), findsWidgets);
    });

    testWidgets('picking a category does not take the categories away',
        (WidgetTester tester) async {
      // The curated sections hide once a filter is on, and should. The rail
      // must not go with them: it is the only way back out of the category the
      // customer just tapped.
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..homePayload = <String, dynamic>{
          'sections': <Map<String, dynamic>>[
            <String, dynamic>{
              'type': 'cuisines',
              'items': <Map<String, dynamic>>[
                <String, dynamic>{'slug': 'biryani', 'name': 'Biryani'},
              ],
            },
          ],
        };
      await openStore(tester, repository: repo);

      await tester.tap(find.text('Biryani'));
      await tester.pumpAndSettle();

      expect(repo.lastFilters.cuisines, <String>{'biryani'});
      expect(find.text('Biryani'), findsOneWidget);

      // And the veg switch, which is the other way into a filtered list.
      await tester.tap(find.text('Veg only'));
      await tester.pumpAndSettle();
      expect(find.text('Biryani'), findsOneWidget);
    });

    testWidgets('the search bar and the categories survive the scroll',
        (WidgetTester tester) async {
      // The banner is worth the space on arrival and none of it afterwards;
      // the search field, the veg switch and the categories are worth it the
      // whole way down.
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..homePayload = <String, dynamic>{
          'sections': <Map<String, dynamic>>[
            <String, dynamic>{
              'type': 'banners',
              'items': <Map<String, dynamic>>[
                <String, dynamic>{'id': 1, 'image_url': 'https://x/a.png'},
              ],
            },
            <String, dynamic>{
              'type': 'cuisines',
              'items': <Map<String, dynamic>>[
                <String, dynamic>{'slug': 'biryani', 'name': 'Biryani'},
              ],
            },
          ],
        };
      await openStore(tester, repository: repo);

      final Finder mic = find.byIcon(Icons.mic_none_rounded);
      final double heroTop = tester.getTopLeft(mic).dy;
      expect(find.text('Biryani'), findsOneWidget);

      await tester.drag(find.byType(CustomScrollView), const Offset(0, -500));
      await tester.pumpAndSettle();

      // The hero collapsed — the bar climbed — but nothing on it left.
      expect(tester.getTopLeft(mic).dy, lessThan(heroTop));
      expect(mic, findsOneWidget);
      expect(find.text('Veg only'), findsOneWidget);
      expect(find.text('Biryani'), findsOneWidget);
    });

    testWidgets('the home search field carries its own microphone',
        (WidgetTester tester) async {
      // Tapping the field opens search with a cursor; the microphone has to be
      // a target of its own inside the field, or dictating costs three taps.
      await openStore(tester);
      expect(find.byIcon(Icons.mic_none_rounded), findsOneWidget);
    });

    testWidgets('the header microphone opens search already listening',
        (WidgetTester tester) async {
      // Built, not mounted: constructing the page proves the flag travelled,
      // and mounting it would reach for the platform recogniser.
      late SearchTab voiced;
      late SearchTab plain;
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            voiced = (AppRouter.onGenerateRoute(
              const RouteSettings(
                name: AppRoutes.search,
                arguments: SearchArgs(startWithVoice: true),
              ),
            ) as MaterialPageRoute<dynamic>)
                .builder(context) as SearchTab;
            plain = (AppRouter.onGenerateRoute(
              const RouteSettings(name: AppRoutes.search),
            ) as MaterialPageRoute<dynamic>)
                .builder(context) as SearchTab;
            return const SizedBox();
          },
        ),
      );

      expect(voiced.startWithVoice, isTrue);
      // The plain field must not start dictating on its own.
      expect(plain.startWithVoice, isFalse);
    });

    testWidgets('a restored session still reads the saved address',
        (WidgetTester tester) async {
      // Launching with a stored token goes splash → storefront without passing
      // through the OTP screen, which is the only other place the address book
      // is fetched. Skipping it showed "Add address" to a customer who has one
      // and left the nearby search with no origin at all.
      await openStore(tester);

      expect(find.textContaining('12A Green Residency'), findsWidgets);
      expect(find.text('Add address'), findsNothing);
      expect(_storefrontRepo.lastNearby?['address_id'], 1);
    });

    testWidgets('no saved address falls back to the phone GPS',
        (WidgetTester tester) async {
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: FakeAddressRepository(seed: <Address>[]),
      );
      await _settleSplash(tester);
      await tester.pumpAndSettle();

      // Nothing is saved, so the list is anchored on where the phone is —
      // labelled as a location rather than dressed up as a delivery address.
      expect(_storefrontRepo.lastNearby?['address_id'], isNull);
      expect(_storefrontRepo.lastNearby?['latitude'], isNotNull);
      expect(find.text('CURRENT LOCATION'), findsNothing);
      expect(find.text('Current location'), findsWidgets);
    });

    testWidgets('a shut shop inside its hours says it has paused orders',
        (WidgetTester tester) async {
      await openStore(
        tester,
        repository: FakeStorefrontRepository()..withinHours = true,
      );
      expect(find.text('Not taking orders'), findsWidgets);
      expect(find.text('Closed right now'), findsNothing);
    });

    testWidgets('a shop outside its hours says it is closed, not paused',
        (WidgetTester tester) async {
      // Two different messages, and only one of them is worth waiting for.
      await openStore(
        tester,
        repository: FakeStorefrontRepository()..withinHours = false,
      );
      expect(find.text('Closed right now'), findsWidgets);
      expect(find.text('Not taking orders'), findsNothing);
    });

    testWidgets('a sold-out dish cannot be added',
        (WidgetTester tester) async {
      await openStore(tester);
      await tester.tap(find.text('Anjappar Chettinad').first);
      await tester.pumpAndSettle();

      expect(find.text('Sold out'), findsWidgets);
      // The ADD control morphs into the stepper rather than swapping widgets,
      // so what matters is that its tap target is dead, not which class it is.
      final Finder add = find.ancestor(
        of: find.text('ADD'),
        matching: find.byType(InkWell),
      );
      expect(tester.widget<InkWell>(add.last).onTap, isNull);
    });

    testWidgets('the orders tab renders the history it fetched',
        (WidgetTester tester) async {
      await openStore(tester);

      await tester.tap(find.text('History').first);
      await tester.pumpAndSettle();

      expect(_storefrontRepo.orderCalls, greaterThan(0));
      expect(find.text('Order NX1001'), findsWidgets);
    });

    testWidgets('an empty order history still says so',
        (WidgetTester tester) async {
      await openStore(
        tester,
        repository: FakeStorefrontRepository()..orderList = <String>[],
      );

      await tester.tap(find.text('History').first);
      await tester.pumpAndSettle();

      expect(find.text('No orders yet'), findsOneWidget);
    });

    testWidgets('the filter sheet opens, filters, and re-queries',
        (WidgetTester tester) async {
      // Nothing opened this sheet before, which is how a crash in its
      // initState reached a device: localisations are not available there.
      _useTallScreen(tester);
      await openStore(tester);

      await tester.tap(find.text('Filters and sorting').first);
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      // The left rail and every section heading render.
      expect(find.text('Sort by'), findsWidgets);
      expect(find.text('Restaurant rating'), findsWidgets);

      await tester.tap(find.text('Rated 4.0+'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Show results'));
      await tester.pumpAndSettle();

      // The sheet returns a draft, and only then does the list re-query.
      expect(_storefrontRepo.lastFilters.ratingMin, 4.0);
      expect(_storefrontRepo.lastNearby?['rating_min'], <String>['4.0']);
    });

    testWidgets('backing out of the filter sheet changes nothing',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await openStore(tester);

      await tester.tap(find.text('Filters and sorting').first);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Rated 3.5+'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Close'));
      await tester.pumpAndSettle();

      // Dismissing returns null, which the caller reads as "leave it alone".
      expect(_storefrontRepo.lastFilters.ratingMin, isNull);
    });

    testWidgets('a cart route without arguments falls back to login',
        (WidgetTester tester) async {
      await openStore(tester);
      _nav(tester).pushNamed(AppRoutes.cart);
      await tester.pumpAndSettle();

      expect(find.byType(LoginScreen), findsWidgets);
      expect(tester.takeException(), isNull);
    });

    testWidgets('an order route without arguments falls back to login',
        (WidgetTester tester) async {
      await openStore(tester);
      _nav(tester).pushNamed(AppRoutes.orderStatus);
      await tester.pumpAndSettle();

      expect(find.byType(LoginScreen), findsWidgets);
      expect(tester.takeException(), isNull);
    });
  });

  // -------------------------------------------------------------------------
  group('push', () {
    test('a tap on an order notification opens that order', () {
      // FCM flattens every data value to a string, so the id arrives as "42"
      // and not as 42.
      final PushDestination? destination = PushDestination.fromData(
        <String, Object?>{'type': 'order_status', 'order_id': '42'},
      );

      expect(destination?.routeName, AppRoutes.orderStatus);
      expect((destination!.arguments! as OrderArgs).orderId, 42);
    });

    test('a support reply opens the chat', () {
      final PushDestination? destination = PushDestination.fromData(
        <String, Object?>{
          // No preview, by design: a lock screen is read by whoever holds
          // the phone.
          'type': 'support.reply',
          'conversation_id': '0193f2a1',
        },
      );
      expect(destination?.routeName, AppRoutes.support);
    });

    test('a push this build cannot place lands nowhere', () {
      // New notification types ship server-side long before the app that
      // understands them. Opening the wrong screen is worse than opening none.
      expect(
        PushDestination.fromData(<String, Object?>{'type': 'promo'}),
        isNull,
      );
      expect(
        PushDestination.fromData(
          <String, Object?>{'type': 'promo', 'order_id': '42'},
        ),
        isNull,
      );
      expect(PushDestination.fromData(<String, Object?>{}), isNull);
      expect(
        PushDestination.fromData(<String, Object?>{'order_id': 'not-a-number'}),
        isNull,
      );
    });

    test('an unfamiliar type about an order still opens the order', () {
      // The id is what the route is built from; the type is only read to bow
      // out of a push that is explicitly about something else.
      final PushDestination? destination = PushDestination.fromData(
        <String, Object?>{'type': 'rider_nearby', 'order_id': 7},
      );
      expect((destination!.arguments! as OrderArgs).orderId, 7);
    });

    test('signing in does not prompt for notifications put off at first run',
        () async {
      // "Not now" on the first-run page is an answer. A system prompt the
      // moment they sign in would overrule it with no reasons beside it.
      final FakePushService push = FakePushService()
        ..access = NotificationAccess.askable;
      final DeviceRegistrar registrar =
          DeviceRegistrar(push: push, repository: FakeDeviceRepository());

      await registrar.register();
      expect(push.permissionAsked, isFalse);
    });

    test('signing in registers the device, signing out withdraws it', () async {
      final FakePushService push = FakePushService(initial: 'token-1');
      final FakeDeviceRepository devices = FakeDeviceRepository();
      final DeviceRegistrar registrar =
          DeviceRegistrar(push: push, repository: devices);

      await registrar.register();
      expect(devices.registered, <String>['token-1']);
      expect(push.permissionAsked, isTrue);

      // A rotated token that is not re-registered means notifications stop
      // arriving, silently, forever.
      push.rotate('token-2');
      await Future<void>.delayed(Duration.zero);
      expect(devices.registered, <String>['token-1', 'token-2']);

      await registrar.unregister();
      // Withdraws what was actually registered, not whatever the transport
      // happens to hold by then.
      expect(devices.unregistered, <String>['token-2']);

      // And stops listening: a rotation after sign-out has no session to
      // register against.
      push.rotate('token-3');
      await Future<void>.delayed(Duration.zero);
      expect(devices.registered, <String>['token-1', 'token-2']);
    });

    test('no token is a normal state, not a failure', () async {
      // Permission refused, no Play Services, or a build with no transport.
      final FakePushService push = FakePushService(initial: null);
      final FakeDeviceRepository devices = FakeDeviceRepository();
      final DeviceRegistrar registrar =
          DeviceRegistrar(push: push, repository: devices);

      await registrar.register();
      await registrar.unregister();

      expect(devices.registered, isEmpty);
      // Nothing was registered, so there is nothing to withdraw.
      expect(devices.unregistered, isEmpty);
    });

    test('a failed registration never breaks the sign-in', () async {
      final FakePushService push = FakePushService(initial: 'token-1');
      final FakeDeviceRepository devices = FakeDeviceRepository()
        ..failRegister = true;
      final DeviceRegistrar registrar =
          DeviceRegistrar(push: push, repository: devices);

      // Would throw if the registrar let it.
      await registrar.register();
      expect(registrar.registeredToken, isNull);

      // And a sign-out with nothing on the server does not call the endpoint.
      await registrar.unregister();
      expect(devices.unregistered, isEmpty);
    });

    test('the device is withdrawn before the token is thrown away', () async {
      // After the session is cleared, DELETE /v1/devices can only 401.
      final FakePushService push = FakePushService(initial: 'token-1');
      final FakeDeviceRepository devices = FakeDeviceRepository();
      final FakeAuthRepository auth = FakeAuthRepository();
      final AuthController controller = AuthController(
        repository: auth,
        tokenStore: InMemoryTokenStore(),
        deviceRegistrar:
            DeviceRegistrar(push: push, repository: devices),
      );

      await controller.verifyCode(
        identifier: LoginIdentifier.tryParse('9876543210')!,
        code: '123456',
      );
      expect(devices.registered, <String>['token-1']);

      await controller.signOut();
      expect(devices.unregistered, <String>['token-1']);
      expect(controller.isSignedIn, isFalse);
      controller.dispose();
    });
  });

  group('reviews', () {
    Future<void> openRestaurant(
      WidgetTester tester,
      FakeStorefrontRepository repo,
    ) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      await tester.tap(find.text('Anjappar Chettinad').first);
      await tester.pumpAndSettle();
    }

    /// Named so the finder can tell this carousel from the home banner rail,
    /// which is a page view too and is still mounted behind the route.
    final Finder carousel = find.byKey(const Key('restaurant-photos'));

    testWidgets('a merchant with photos gets a carousel',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..storefrontExtras = <String, dynamic>{
          'banner_url': 'https://x/banner.png',
          'photos': <Map<String, dynamic>>[
            <String, dynamic>{'id': 3, 'url': 'https://x/a.png'},
            <String, dynamic>{'id': 7, 'url': 'https://x/b.png'},
          ],
        };
      await openRestaurant(tester, repo);
      expect(carousel, findsOneWidget);
    });

    testWidgets('one picture is not a carousel', (WidgetTester tester) async {
      // With nothing to swipe to, there is no page view to swallow a drag —
      // exactly the single image the header always drew.
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..storefrontExtras = <String, dynamic>{
          'banner_url': 'https://x/banner.png',
        };
      await openRestaurant(tester, repo);
      expect(carousel, findsNothing);
    });

    testWidgets('the rating badge is the way in to the reviews',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..storefrontExtras = <String, dynamic>{
          'rating': '4.2',
          'rating_count': 18,
        };
      await openRestaurant(tester, repo);

      await tester.tap(find.text('By 18'));
      await tester.pumpAndSettle();

      expect(find.text('Ratings & reviews'), findsOneWidget);
      expect(find.text('4.2'), findsOneWidget);
      expect(find.text('Biryani was worth the wait.'), findsOneWidget);
      expect(find.text('Tasty'), findsOneWidget);
      expect(find.text('Hot & fresh'), findsOneWidget);
      expect(find.text('brand_new_code'), findsNothing);
      // A rating with no words still counts, and still shows its stars.
      expect(find.text('Arun'), findsOneWidget);
      expect(repo.reviewCalls.single['with_comment'], isFalse);
    });

    testWidgets('an unrated restaurant offers no way into an empty list',
        (WidgetTester tester) async {
      // A tap that leads nowhere is worse than no tap, and an unrated shop is
      // not a badly rated one.
      await openRestaurant(tester, FakeStorefrontRepository());
      expect(find.byType(RatingBadge), findsNothing);
    });

    testWidgets('the filter asks the server, not the list already fetched',
        (WidgetTester tester) async {
      // Moderation can take a review down between two reads, so filtering
      // client-side would be filtering a list that may already be wrong.
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..storefrontExtras = <String, dynamic>{
          'rating': '4.2',
          'rating_count': 18,
        };
      await openRestaurant(tester, repo);
      await tester.tap(find.text('By 18'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('With reviews'));
      await tester.pumpAndSettle();

      expect(repo.reviewCalls.last['with_comment'], isTrue);
      // The one with no comment is gone; the one with words remains.
      expect(find.text('Arun'), findsNothing);
      expect(find.text('Priya'), findsOneWidget);
    });

    testWidgets('a delivered order can be rated, and needs a rating to send',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderStatus = 'delivered';
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);

      await tester.tap(find.text('History').first);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Order NX1001').first);
      await tester.pumpAndSettle();

      // The order asks with a card of stars; the fourth opens the rating
      // with four already given.
      expect(find.textContaining('How was your order from'), findsOneWidget);
      await tester.tap(
        find.descendant(
          of: find.byKey(const Key('prompt-stars-1')),
          matching: find.byIcon(Icons.star_outline_rounded),
        ).at(3),
      );
      await tester.pumpAndSettle();

      final Finder submit = find.byKey(const Key('rate-submit'));
      expect(tester.widget<FilledButton>(submit).onPressed, isNotNull);
      expect(find.text('🙂  Good'), findsOneWidget);

      // Clearing the food's stars leaves nothing to send, and says why.
      final Finder food = find.byKey(const Key('food-stars'));
      await tester.tap(
        find.descendant(of: food, matching: find.byIcon(Icons.star_rounded)).at(3),
      );
      await tester.pumpAndSettle();
      expect(tester.widget<FilledButton>(submit).onPressed, isNull);
      expect(find.text('Rate the food to submit'), findsOneWidget);

      await tester.tap(
        find.descendant(of: food, matching: find.byIcon(Icons.star_outline_rounded)).at(3),
      );
      await tester.pumpAndSettle();
      expect(tester.widget<FilledButton>(submit).onPressed, isNotNull);

      await tester.tap(submit);
      await tester.pump();
      await tester.pump();

      expect(repo.orderReviews.single['rating'], 4);
      expect(repo.orderReviews.single['order'], 1);
      // No dish was rated, so none is claimed.
      expect(repo.orderReviews.single['dishes'], isEmpty);
      expect(find.text('Thanks — your rating is in.'), findsOneWidget);
      // Let the snack bar retire, or its timer outlives the test.
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });
  });

  group('feel', () {
    /// The vibrations asked of the phone, by type, from here on.
    List<String> recordHaptics(WidgetTester tester) {
      final List<String> buzzes = <String>[];
      final TestDefaultBinaryMessenger messenger =
          tester.binding.defaultBinaryMessenger;
      messenger.setMockMethodCallHandler(SystemChannels.platform,
          (MethodCall call) async {
        if (call.method == 'HapticFeedback.vibrate') {
          buzzes.add('${call.arguments}');
        }
        return null;
      });
      addTearDown(
        () => messenger.setMockMethodCallHandler(SystemChannels.platform, null),
      );
      return buzzes;
    }

    Finder heroTagged(Object tag) => find.byWidgetPredicate(
          (Widget widget) => widget is Hero && widget.tag == tag,
          skipOffstage: false,
        );

    Future<void> openRestaurant(
      WidgetTester tester, {
      FakeStorefrontRepository? repository,
    }) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repository,
      );
      await _settleSplash(tester);
      await tester.tap(find.text('Anjappar Chettinad').first);
      await tester.pumpAndSettle();
    }

    testWidgets('adding a dish buzzes and the cart bar counts up to the total',
        (WidgetTester tester) async {
      // Open, or the stepper is disabled and nothing can be added.
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..storefrontExtras = <String, dynamic>{'is_open': 'true'};
      await openRestaurant(tester, repository: repo);
      // The basket the fake starts with: one Mutton Biryani.
      expect(find.text('₹100'), findsOneWidget);
      expect(find.text('1 item'), findsOneWidget);

      final List<String> buzzes = recordHaptics(tester);
      repo
        ..lines = <Map<String, dynamic>>[
          <String, dynamic>{'id': 501, 'menu_item_id': 1, 'quantity': 2},
        ]
        ..grandTotalOverride = 420;
      await tester.tap(find.byIcon(Icons.add_rounded).first);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 120));

      expect(buzzes, contains('HapticFeedbackType.lightImpact'));
      // On its way up: neither the old total nor the new one yet.
      expect(find.text('₹100'), findsNothing);
      expect(find.text('₹420'), findsNothing);

      await tester.pumpAndSettle();
      expect(find.text('₹420'), findsOneWidget);
      // The cart bar's count, and the Biryani heading's count of dishes.
      expect(find.text('2 items'), findsNWidgets(2));
    });

    testWidgets('the card photo carries over into the restaurant banner',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);

      final Object tag = restaurantPhotoTag('home-list', 'r1');
      expect(heroTagged(tag), findsOneWidget);

      // The card's own photo: the name also sits on a Food Rescue deal
      // higher up, which opens the restaurant without a photo to carry.
      final Finder card = find.ancestor(
        of: find.byWidgetPredicate(
          (Widget widget) => widget is Hero && widget.tag == tag,
        ),
        matching: find.byType(RestaurantCard),
      );
      await tester.ensureVisible(card);
      await tester.pumpAndSettle();
      await tester.tap(card);
      await tester.pump();
      // The page's first frame is built off screen, where the photo's landing
      // spot is measured. It is built from the card, with the menu still on
      // its way, so the banner is there to land on.
      expect(find.byType(MenuSkeleton, skipOffstage: false), findsOneWidget);
      expect(
        find.descendant(
          of: find.byType(RestaurantScreen, skipOffstage: false),
          matching: heroTagged(tag),
          skipOffstage: false,
        ),
        findsOneWidget,
      );

      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      expect(find.byType(MenuSkeleton), findsNothing);
      // Landed, and still tagged, so the photo can fly back on the way out.
      expect(
        find.descendant(
          of: find.byType(RestaurantScreen),
          matching: heroTagged(tag),
        ),
        findsOneWidget,
      );

      _nav(tester).pop();
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      expect(find.byType(RestaurantScreen), findsNothing);
    });

    testWidgets('a dish photo opens full screen and closes again',
        (WidgetTester tester) async {
      await openRestaurant(
        tester,
        repository: FakeStorefrontRepository()
          ..menuPayload = <String, dynamic>{
            'menu': <Map<String, dynamic>>[
              <String, dynamic>{
                'id': 1,
                'name': 'Starters',
                'items': <Map<String, dynamic>>[
                  <String, dynamic>{
                    'id': 11,
                    'name': 'Paneer Tikka',
                    'price': '220',
                    'is_veg': true,
                    'image_url': 'https://x/paneer.jpg',
                  },
                  <String, dynamic>{
                    'id': 12,
                    'name': 'Plain Dosa',
                    'price': '80',
                    'is_veg': true,
                  },
                ],
              },
            ],
          },
      );
      // Only a dish with a photo can be opened.
      expect(heroTagged(dishPhotoTag(0, 11)), findsOneWidget);
      expect(heroTagged(dishPhotoTag(0, 12)), findsNothing);

      await tester.tap(heroTagged(dishPhotoTag(0, 11)));
      await tester.pumpAndSettle();

      expect(find.byTooltip('Close'), findsOneWidget);
      // In its row, and again under the big photo.
      expect(find.text('Paneer Tikka'), findsNWidgets(2));

      await tester.tap(find.byTooltip('Close'));
      await tester.pumpAndSettle();
      expect(find.byTooltip('Close'), findsNothing);
      expect(find.text('Paneer Tikka'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    Order placedOrder() => Order.fromJson(<String, dynamic>{
          'id': 1,
          'order_number': 'NX1001',
          'status': 'placed',
          'status_label': 'Placed',
          'fulfilment_type': 'delivery',
          'grand_total': '420',
          'restaurant_name': 'Anjappar Chettinad',
          'estimated_prep_minutes': 20,
        });

    testWidgets('a placed order is celebrated, then tracking takes over',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);
      final List<String> buzzes = recordHaptics(tester);

      _nav(tester).pushNamed(
        AppRoutes.orderPlaced,
        arguments: OrderPlacedArgs(order: placedOrder()),
      );
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 1400));

      expect(find.byType(OrderPlacedScreen), findsOneWidget);
      expect(find.text('Order placed'), findsOneWidget);
      expect(find.text('Anjappar Chettinad has your order.'), findsOneWidget);
      expect(find.text('Ready in about 20 minutes.'), findsOneWidget);
      expect(buzzes, contains('HapticFeedbackType.mediumImpact'));

      // Moves on by itself, and leaves nothing running behind it.
      await tester.pumpAndSettle();
      expect(find.byType(OrderPlacedScreen), findsNothing);
      expect(find.byType(OrderStatusScreen), findsOneWidget);
    });

    testWidgets('"Track your order" skips the wait',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);

      _nav(tester).pushNamed(
        AppRoutes.orderPlaced,
        arguments: OrderPlacedArgs(order: placedOrder()),
      );
      // Past the fade-in: a route still arriving does not take taps.
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 600));
      await tester.tap(find.text('Track your order'));
      // A new page's first frame is built off screen; it shows on the next.
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 600));

      expect(find.byType(OrderStatusScreen), findsOneWidget);
      await tester.pumpAndSettle();
    });

    testWidgets('an empty list glows calm, a failure glows orange',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ListView(
              children: const <Widget>[
                EmptyState(
                  emoji: '🧾',
                  title: 'No orders yet',
                  subtitle: 'Your past orders will show up here.',
                ),
                EmptyState(
                  emoji: '📡',
                  title: 'Something went wrong',
                  subtitle: 'Check your connection and try again.',
                  alert: true,
                ),
              ],
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final List<EmptyIllustration> pictures = tester
          .widgetList<EmptyIllustration>(find.byType(EmptyIllustration))
          .toList();
      expect(pictures.map((EmptyIllustration p) => p.alert), <bool>[
        false,
        true,
      ]);
      expect(tester.takeException(), isNull);
    });

    testWidgets('the orders tab says it is empty with the illustration',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..orderList = <String>[],
      );
      await _settleSplash(tester);
      final List<String> buzzes = recordHaptics(tester);

      await tester.tap(find.text('History').first);
      await tester.pumpAndSettle();

      expect(find.text('No orders yet'), findsOneWidget);
      expect(find.byType(EmptyIllustration), findsOneWidget);
      // Switching tabs ticks.
      expect(buzzes, contains('HapticFeedbackType.selectionClick'));
    });

    testWidgets('a coupon goes on the cart and comes off again',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..grandTotalOverride = 420;
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.cart,
        arguments: const CartArgs(restaurantId: 'r1'),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Apply a coupon'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'welcome50');
      await tester.tap(find.widgetWithText(FilledButton, 'Apply'));
      await tester.pumpAndSettle();

      // Sent as typed codes are printed, in capitals.
      expect(repo.couponCode, 'WELCOME50');
      expect(find.text('WELCOME50 applied'), findsWidgets);
      expect(find.text('You save ₹50'), findsOneWidget);
      expect(find.text('You saved ₹50 on this order'), findsOneWidget);
      expect(_onPlaceButton('₹370'), findsOneWidget);

      await tester.tap(find.text('Remove'));
      await tester.pumpAndSettle();
      expect(repo.couponCode, isNull);
      expect(find.text('Apply a coupon'), findsOneWidget);
      expect(_onPlaceButton('₹420'), findsOneWidget);
      expect(find.text('You saved ₹50 on this order'), findsNothing);
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('a refused coupon says why, in the server\'s words',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..refuseCouponWith = 'This coupon has expired.';
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.cart,
        arguments: const CartArgs(restaurantId: 'r1'),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Apply a coupon'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'OLD10');
      await tester.tap(find.widgetWithText(FilledButton, 'Apply'));
      await tester.pumpAndSettle();

      // Still on the sheet, so the code can be corrected.
      expect(find.text('This coupon has expired.'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(repo.couponCode, isNull);
    });

    Map<String, dynamic> curatedHome() => <String, dynamic>{
          'sections': <Map<String, dynamic>>[
            <String, dynamic>{
              'type': 'restaurants',
              'title': 'Recommended for you',
              'layout': 'list',
              'items': <Map<String, dynamic>>[
                <String, dynamic>{'id': 'r9', 'name': 'Saravana Veg'},
              ],
            },
          ],
        };

    testWidgets('veg only keeps the curated home once the server filtered it',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: <String, Object>{..._languageChosen, 'nexmile.veg_mode': true},
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..homePayload = curatedHome(),
        accountRepository: FakeAccountRepository(
          stored: const AccountPreferences(vegMode: true),
        ),
      );
      await _settleSplash(tester);

      expect(_storefrontRepo.lastHomeVegOnly, isTrue);
      expect(find.text('RECOMMENDED FOR YOU'), findsOneWidget);
    });

    testWidgets('a server that ignores veg only gets the plain veg list',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: <String, Object>{..._languageChosen, 'nexmile.veg_mode': true},
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..homePayload = curatedHome()
          ..echoesVegOnly = false,
        accountRepository: FakeAccountRepository(
          stored: const AccountPreferences(vegMode: true),
        ),
      );
      await _settleSplash(tester);

      // Not told it was filtered, so not trusted to have been.
      expect(find.text('RECOMMENDED FOR YOU'), findsNothing);
      expect(_storefrontRepo.lastFilters.vegOnly, isTrue);
    });

    testWidgets('switching veg only asks for the matching home',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..homePayload = curatedHome(),
      );
      await _settleSplash(tester);
      expect(_storefrontRepo.lastHomeVegOnly, isFalse);
      final int before = _storefrontRepo.homeCalls;

      await tester.tap(find.byType(VegToggle));
      await tester.pumpAndSettle();

      expect(_storefrontRepo.homeCalls, before + 1);
      expect(_storefrontRepo.lastHomeVegOnly, isTrue);
      expect(find.text('RECOMMENDED FOR YOU'), findsOneWidget);
    });

    testWidgets('veg only gives the header its leaf-green badge',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);
      // The badge's leaf; "Pure veg" is also an Explore tile's name.
      final Finder badge = find.byIcon(Icons.eco_rounded);
      expect(badge, findsNothing);

      await tester.tap(find.byType(VegToggle));
      await tester.pumpAndSettle();
      expect(badge, findsOneWidget);

      await tester.tap(find.byType(VegToggle));
      await tester.pumpAndSettle();
      expect(badge, findsNothing);
    });

    testWidgets('the search hint cycles through the categories on offer',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..homePayload = <String, dynamic>{
            'sections': <Map<String, dynamic>>[
              <String, dynamic>{
                'type': 'cuisines',
                'items': <Map<String, dynamic>>[
                  <String, dynamic>{'slug': 'biryani', 'name': 'Biryani'},
                  <String, dynamic>{'slug': 'dosa', 'name': 'Dosa'},
                ],
              },
            ],
          },
      );
      await _settleSplash(tester);

      expect(find.text('Search "Biryani"'), findsOneWidget);
      await tester.pump(const Duration(milliseconds: 2900));
      await tester.pumpAndSettle();
      expect(find.text('Search "Dosa"'), findsOneWidget);
      expect(find.text('Search "Biryani"'), findsNothing);
    });

    testWidgets('with no categories the search hint stays put',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);

      expect(find.text('Search for dishes or restaurants'), findsOneWidget);
      await tester.pump(const Duration(seconds: 6));
      expect(find.text('Search for dishes or restaurants'), findsOneWidget);
    });

    testWidgets('a delivered order comes back as "Order again" and opens it',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..orderList = <String>['delivered']
          ..orderExtra = <String, dynamic>{
            'restaurant': <String, dynamic>{
              'id': 'r1',
              'name': 'Anjappar Chettinad',
            },
          },
      );
      await _settleSplash(tester);

      expect(find.text('ORDER AGAIN'), findsOneWidget);
      // The only dish, so no "+ more".
      expect(find.text('Mutton Biryani'), findsOneWidget);

      // The card opens the restaurant; its Reorder link refills the basket.
      await tester.tap(find.text('Mutton Biryani'));
      await tester.pumpAndSettle();
      expect(find.byType(RestaurantScreen), findsOneWidget);
      expect(_storefrontRepo.reorders, isEmpty);
    });

    testWidgets('an order still on its way is not offered again',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..orderList = <String>['preparing']
          ..orderExtra = <String, dynamic>{
            'restaurant': <String, dynamic>{'id': 'r1'},
          },
      );
      await _settleSplash(tester);

      expect(find.text('ORDER AGAIN'), findsNothing);
    });

    testWidgets('the order screen shows the steps and when to expect it',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..orderStatus = 'preparing'
          ..trackExtra = <String, dynamic>{'estimated_minutes': 25},
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.orderStatus,
        arguments: const OrderArgs(orderId: 1),
      );
      // The estimate breathes for as long as the order is live, so this
      // screen never settles; step through it instead.
      await _pumpFrames(tester, 12);

      expect(find.byType(OrderProgress), findsOneWidget);
      expect(find.text('Preparing'), findsWidgets);
      expect(find.textContaining('Expected by'), findsOneWidget);
    });

    test('the API can light up delivery time, the rider photo and reorder', () {
      final Restaurant timed = Restaurant.fromJson(<String, dynamic>{
        'id': 'r1',
        'name': 'Anjappar Chettinad',
        'avg_prep_time_minutes': 20,
        'eta_min_minutes': '25',
        'eta_max_minutes': 30,
      });
      expect(timed.hasEtaRange, isTrue);
      expect(timed.withFavourite(true).etaMaxMinutes, 30);
      final Restaurant backwards = Restaurant.fromJson(<String, dynamic>{
        'id': 'r2',
        'name': 'Odd',
        'eta_min_minutes': 30,
        'eta_max_minutes': 25,
      });
      expect(backwards.hasEtaRange, isFalse);

      final OrderTracking tracking = OrderTracking.fromJson(<String, dynamic>{
        'status': 'picked_up',
        'rider': <String, dynamic>{
          'name': 'Murugan',
          'photo_url': 'https://x/rider.jpg',
          'rating': '4.8',
        },
      });
      expect(tracking.riderPhotoUrl, 'https://x/rider.jpg');
      expect(tracking.riderRating, 4.8);

      expect(
        Order.fromJson(<String, dynamic>{
          'id': 1,
          'restaurant': <String, dynamic>{'id': 12, 'name': 'Kishore Food'},
        }).restaurantId,
        '12',
      );
      expect(Order.fromJson(<String, dynamic>{'id': 2}).restaurantId, isNull);
    });

    testWidgets('a card shows the delivery time once the API sends it',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                RestaurantCard(
                  restaurant: Restaurant.fromJson(<String, dynamic>{
                    'id': 'r1',
                    'name': 'Anjappar Chettinad',
                    'avg_prep_time_minutes': 20,
                    'eta_min_minutes': 25,
                    'eta_max_minutes': 30,
                    'is_open': true,
                  }),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('25–30 min'), findsOneWidget);
      expect(find.text('20 min'), findsNothing);
    });

    Future<FakeStorefrontRepository> homeWithPastOrder(
      WidgetTester tester, {
      List<OpenCart> openCarts = const <OpenCart>[],
      List<String> skipped = const <String>[],
      bool nothing = false,
    }) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderList = <String>['delivered']
        ..orderExtra = <String, dynamic>{
          'restaurant': <String, dynamic>{
            'id': 'r1',
            'name': 'Anjappar Chettinad',
          },
        }
        ..openCartList = openCarts
        ..reorderSkipped = skipped
        ..reorderNothing = nothing;
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      return repo;
    }

    testWidgets('reorder refills the basket, opens it, and names what is gone',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo =
          await homeWithPastOrder(tester, skipped: <String>['Egg Bonda']);

      await tester.tap(find.text('Reorder'));
      await tester.pumpAndSettle();

      expect(repo.reorders, <int>[1]);
      expect(find.text('Apply a coupon'), findsOneWidget, reason: 'the cart');
      expect(
        find.text("Egg Bonda isn't available right now, so it was left out."),
        findsOneWidget,
      );
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('a basket with dishes in it is not replaced without asking',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo = await homeWithPastOrder(
        tester,
        openCarts: <OpenCart>[
          OpenCart.fromJson(<String, dynamic>{
            'restaurant': <String, dynamic>{
              'id': 'r1',
              'name': 'Anjappar Chettinad',
            },
            'items': <Map<String, dynamic>>[
              <String, dynamic>{'cart_item_id': 4, 'quantity': 2},
            ],
            'totals': <String, dynamic>{'grand_total': 82},
          }),
        ],
      );

      await tester.tap(find.text('Reorder'));
      await tester.pumpAndSettle();
      expect(find.text('Replace your basket?'), findsOneWidget);
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      // Destructive, so nothing was sent.
      expect(repo.reorders, isEmpty);

      await tester.tap(find.text('Reorder'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Replace'));
      await tester.pumpAndSettle();
      expect(repo.reorders, <int>[1]);
      expect(find.text('Apply a coupon'), findsOneWidget);
    });

    testWidgets('when nothing can come back, the customer stays and is told',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo =
          await homeWithPastOrder(tester, nothing: true);

      await tester.tap(find.text('Reorder'));
      await tester.pumpAndSettle();

      expect(repo.reorders, <int>[1]);
      expect(find.text('Apply a coupon'), findsNothing);
      expect(
        find.text('None of these dishes are available right now.'),
        findsOneWidget,
      );
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('a delivered order in the list can be reordered too',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo = await homeWithPastOrder(tester);

      await tester.tap(find.text('History').first);
      await tester.pumpAndSettle();
      await tester.tap(find.widgetWithText(FilledButton, 'Reorder'));
      await tester.pumpAndSettle();

      expect(repo.reorders, <int>[1]);
      expect(find.text('Apply a coupon'), findsOneWidget);
    });

    testWidgets('a shop with too few ratings is new; a rated one shows one '
        'decimal', (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..nearbyExtras = <String, dynamic>{
            'rating': null,
            'rating_count': 2,
          },
      );
      await _settleSplash(tester);
      expect(find.byType(NewBadge), findsWidgets);
      expect(find.text('NEW'), findsWidgets);
      expect(find.byType(RatingBadge), findsNothing);

      await tester.pumpWidget(const SizedBox.shrink());
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          // JSON drops the zero: 4.0 arrives as 4.
          ..nearbyExtras = <String, dynamic>{'rating': 4, 'rating_count': 3},
      );
      await _settleSplash(tester);
      final Finder card = find.ancestor(
        of: find.byWidgetPredicate(
          (Widget widget) =>
              widget is Hero &&
              widget.tag == restaurantPhotoTag('home-list', 'r1'),
        ),
        matching: find.byType(RestaurantCard),
      );
      expect(find.descendant(of: card, matching: find.byType(NewBadge)),
          findsNothing);
      expect(find.descendant(of: card, matching: find.text('4.0')),
          findsOneWidget);
      expect(find.text('4'), findsNothing);
    });

    testWidgets('the restaurant page keeps the delivery window the card showed',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..nearbyExtras = <String, dynamic>{
            'eta_min_minutes': 25,
            'eta_max_minutes': 30,
          },
      );
      await _settleSplash(tester);
      // Close and quick, so the card says "Near & Fast · 25–30 min".
      expect(find.textContaining('25–30 min'), findsOneWidget);

      final Finder card = find.ancestor(
        of: find.byWidgetPredicate(
          (Widget widget) =>
              widget is Hero &&
              widget.tag == restaurantPhotoTag('home-list', 'r1'),
        ),
        matching: find.byType(RestaurantCard),
      );
      await tester.ensureVisible(card);
      await tester.pumpAndSettle();
      await tester.tap(card);
      await tester.pumpAndSettle();

      // The page's own answer has no window (no customer position in that
      // request), so the card's carries over rather than "20 min".
      expect(find.byType(RestaurantScreen), findsOneWidget);
      expect(find.textContaining('25–30 min'), findsOneWidget);
    });

    test('a reorder answer names what it left out, wherever it puts the list',
        () {
      final Map<String, dynamic> cart = <String, dynamic>{
        'id': 7,
        'items': <Map<String, dynamic>>[
          <String, dynamic>{'id': 1, 'menu_item_id': 2, 'quantity': 1},
        ],
      };
      expect(
        Reorder.fromResponse(cart, <Object>[
          <String, dynamic>{'name': 'Mutton Biryani'},
          <String, dynamic>{'name': ' '},
        ]).skipped,
        <String>['Mutton Biryani'],
      );
      expect(Reorder.fromResponse(cart, null).skipped, isEmpty);
      expect(Reorder.fromResponse(cart, null).cart.itemCount, 1);
    });

    testWidgets('the bottom bar is Delivery and History; the avatar is the profile',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);

      expect(find.text('Delivery'), findsWidgets);
      expect(find.text('History'), findsOneWidget);
      expect(find.byType(NavigationBar), findsNothing);

      await tester.tap(find.text('History'));
      await tester.pumpAndSettle();
      expect(find.byType(OrdersTab), findsOneWidget);
      // History carries the avatar too.
      await tester.tap(find.byTooltip('Profile'));
      await tester.pumpAndSettle();
      expect(find.byType(ProfileScreen), findsOneWidget);
    });

    Future<FakeStorefrontRepository> history(
      WidgetTester tester,
      List<String> orders,
    ) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderList = orders
        ..orderExtra = <String, dynamic>{
          'restaurant': <String, dynamic>{
            'id': 'r1',
            'name': 'Anjappar Chettinad',
            'area': 'Velachery, Chennai',
          },
        };
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      await tester.tap(find.text('History'));
      await tester.pumpAndSettle();
      return repo;
    }

    testWidgets('a history card reads like a receipt and offers the next step',
        (WidgetTester tester) async {
      await history(tester, <String>['preparing', 'delivered']);

      expect(find.text('Velachery, Chennai'), findsNWidgets(2));
      expect(find.text('1 x Mutton Biryani'), findsNWidgets(2));
      expect(find.textContaining('Order placed on'), findsNothing,
          reason: 'the fake sends no time, so none is claimed');
      // On its way: track it. Delivered: order it again.
      expect(find.widgetWithText(FilledButton, 'Track your order'),
          findsOneWidget);
      expect(find.widgetWithText(FilledButton, 'Reorder'), findsOneWidget);

      await tester.tap(find.text('View menu').first);
      await tester.pumpAndSettle();
      expect(find.byType(RestaurantScreen), findsOneWidget);
    });

    testWidgets('history search finds orders by restaurant or dish',
        (WidgetTester tester) async {
      await history(tester, <String>['delivered']);

      await tester.enterText(find.byType(TextField), 'mutton');
      await tester.pumpAndSettle();
      expect(find.text('1 x Mutton Biryani'), findsOneWidget);

      await tester.enterText(find.byType(TextField), 'pizza');
      await tester.pumpAndSettle();
      expect(find.text('1 x Mutton Biryani'), findsNothing);
      expect(find.text('No orders from a restaurant or dish by that name.'),
          findsOneWidget);
    });

    testWidgets('"Your orders" from the profile is a page with a way back',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.orders);
      await tester.pumpAndSettle();

      expect(find.byType(BackButton), findsOneWidget);
      expect(find.text('Your orders'), findsOneWidget);
      // The tab's location row belongs to the tab.
      expect(find.byTooltip('Nexmile Wallet'), findsNothing);
    });

    Future<void> menuPage(
      WidgetTester tester, {
      Map<String, dynamic> extras = const <String, dynamic>{},
    }) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..menuPayload = _filterMenu()
          ..storefrontExtras = extras,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.restaurant,
        arguments: const RestaurantArgs(restaurantId: 'r1'),
      );
      await tester.pumpAndSettle();
    }

    testWidgets('a menu section folds away and opens again',
        (WidgetTester tester) async {
      await menuPage(tester);
      expect(find.text('Paneer Tikka', skipOffstage: false), findsOneWidget);

      await tester.tap(find.text('Starters'));
      await tester.pumpAndSettle();
      expect(find.text('Paneer Tikka', skipOffstage: false), findsNothing);

      await tester.tap(find.text('Starters'));
      await tester.pumpAndSettle();
      expect(find.text('Paneer Tikka', skipOffstage: false), findsOneWidget);
    });

    testWidgets('the best offer shows, and the rest behind "2 offers"',
        (WidgetTester tester) async {
      await menuPage(
        tester,
        extras: <String, dynamic>{
          'offers': <Map<String, dynamic>>[
            <String, dynamic>{'label': '30% OFF up to ₹75', 'type': 'x'},
            <String, dynamic>{
              'label': 'Free delivery above ₹149',
              'type': 'free_delivery',
            },
          ],
        },
      );
      expect(find.text('30% OFF up to ₹75'), findsOneWidget);
      expect(find.text('Free delivery above ₹149'), findsNothing);

      await tester.tap(find.text('2 offers'));
      await tester.pumpAndSettle();
      expect(find.text('Free delivery above ₹149'), findsOneWidget);
    });

    testWidgets('the (i) beside the name opens the restaurant details',
        (WidgetTester tester) async {
      await menuPage(tester);

      await tester.tap(find.byTooltip('About this restaurant'));
      await tester.pumpAndSettle();
      expect(find.byType(BottomSheet), findsOneWidget);
      expect(
        find.descendant(
          of: find.byType(BottomSheet),
          matching: find.text('Anjappar Chettinad'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('Explore more tiles drop into the slice they name',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);

      expect(find.text('EXPLORE MORE'), findsOneWidget);
      expect(find.text('2 RESTAURANTS DELIVERING TO YOU'), findsOneWidget);

      await tester.tap(find.text('Top rated'));
      await tester.pumpAndSettle();
      expect(_storefrontRepo.lastFilters.ratingMin, 4.0);
      // A filter is a question the shortcuts do not answer: they step aside.
      expect(find.text('EXPLORE MORE'), findsNothing);
    });

    Widget cardApp(Map<String, dynamic> json) => MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                RestaurantCard(
                  restaurant: Restaurant.fromJson(<String, dynamic>{
                    'id': 'r1',
                    'name': 'Domino’s Pizza',
                    'is_open': true,
                    'avg_prep_time_minutes': 20,
                    ...json,
                  }),
                  onTap: () {},
                ),
              ],
            ),
          ),
        );

    testWidgets('a close, quick kitchen reads "Near & Fast", with its offers',
        (WidgetTester tester) async {
      await tester.pumpWidget(cardApp(<String, dynamic>{
        'distance_metres': 900,
        'eta_min_minutes': 20,
        'eta_max_minutes': 25,
        'offers': <Map<String, dynamic>>[
          <String, dynamic>{'label': 'Free delivery', 'type': 'free_delivery'},
          <String, dynamic>{'label': '55% OFF on select items', 'type': 'x'},
        ],
      }));
      await tester.pumpAndSettle();

      expect(find.text('Near & Fast'), findsOneWidget);
      expect(find.text(' · 20–25 min'), findsOneWidget);
      // The delivery offer as the strip on the photo, the rest under it.
      expect(find.text('Free delivery'), findsOneWidget);
      expect(find.text('55% OFF on select items'), findsOneWidget);
      expect(find.byType(OfferBadge), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('a far kitchen gives its window and distance instead',
        (WidgetTester tester) async {
      await tester.pumpWidget(cardApp(<String, dynamic>{
        'distance_metres': 4200,
        'eta_min_minutes': 35,
        'eta_max_minutes': 40,
      }));
      await tester.pumpAndSettle();

      expect(find.text('Near & Fast'), findsNothing);
      expect(find.text('35–40 min'), findsOneWidget);
      expect(find.text(' · 4.2 km'), findsOneWidget);
    });

    testWidgets('a featured dish and a gallery light up once the API sends them',
        (WidgetTester tester) async {
      await tester.pumpWidget(cardApp(<String, dynamic>{
        'featured_dish': <String, dynamic>{
          'name': 'Non Veg Loaded',
          'price': 202,
          'is_veg': false,
        },
        'photos': <Map<String, dynamic>>[
          <String, dynamic>{'id': 1, 'url': 'https://x/1.jpg'},
          <String, dynamic>{'id': 2, 'url': 'https://x/2.jpg'},
          <String, dynamic>{'id': 3, 'url': 'https://x/3.jpg'},
        ],
      }));
      await tester.pumpAndSettle();

      expect(find.text('Non Veg Loaded · ₹202'), findsOneWidget);
      // Three photos to swipe through.
      expect(find.byType(PageView), findsOneWidget);
      await tester.drag(find.byType(PageView), const Offset(-300, 0));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });

    test('the app is set in Plus Jakarta Sans', () {
      expect(AppTheme.light.textTheme.bodyMedium?.fontFamily, 'PlusJakartaSans');
      expect(AppTheme.dark.textTheme.titleLarge?.fontFamily, 'PlusJakartaSans');
    });

    Order delivered({
      String fulfilment = 'delivery',
      Map<String, dynamic> extra = const <String, dynamic>{},
    }) =>
        Order.fromJson(<String, dynamic>{
          'id': 7,
          'order_number': 'NX7',
          'status': 'delivered',
          'status_label': 'Delivered',
          'fulfilment_type': fulfilment,
          'grand_total': '420',
          'restaurant': <String, dynamic>{
            'id': 'r1',
            'name': 'Erode Amman Mess',
          },
          'rider': <String, dynamic>{'name': 'Murugan'},
          'items': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 1,
              'menu_item_id': 41,
              'name': 'Mutton Biryani',
              'quantity': 1,
              'is_veg': false,
            },
          ],
          ...extra,
        });

    Future<FakeStorefrontRepository> rateScreen(
      WidgetTester tester,
      Order order,
    ) async {
      _useTallScreen(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.rateOrder,
        arguments: RateOrderArgs(order: order),
      );
      await tester.pumpAndSettle();
      return repo;
    }

    Future<void> tapStar(WidgetTester tester, String key, int star) async {
      await tester.tap(
        find.descendant(
          of: find.byKey(Key(key)),
          matching: find.byType(InkResponse),
        ).at(star - 1),
      );
      await tester.pumpAndSettle();
    }

    testWidgets('the delivery, the food and a dish are rated in one go',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo =
          await rateScreen(tester, delivered());

      expect(find.text('How was your delivery?'), findsOneWidget);
      expect(find.text('Delivered by Murugan'), findsOneWidget);
      expect(find.text('From Erode Amman Mess'), findsOneWidget);

      await tapStar(tester, 'rider-stars', 5);
      expect(find.text('😍  Loved it!'), findsOneWidget);
      await tester.tap(find.text('On time'));
      await tester.pumpAndSettle();

      await tapStar(tester, 'food-stars', 2);
      expect(find.text('What went wrong?'), findsOneWidget);
      await tester.tap(find.text('Cold food'));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('rate-submit')));
      await tester.pump();
      await tester.pump();

      final Map<String, Object?> sent = repo.orderReviews.single;
      expect(sent['order'], 7);
      expect(sent['rating'], 2);
      expect(sent['tags'], <String>['cold_food']);
      expect(sent['rider'], <String, Object?>{
        'rating': 5,
        'tags': <String>['on_time'],
      });
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('crossing four stars swaps complaints for praise',
        (WidgetTester tester) async {
      await rateScreen(tester, delivered());

      await tapStar(tester, 'food-stars', 2);
      await tester.tap(find.text('Cold food'));
      await tester.pumpAndSettle();

      await tapStar(tester, 'food-stars', 5);
      expect(find.text('What did you like?'), findsOneWidget);
      expect(find.text('Cold food'), findsNothing);
      expect(find.text('Tasty'), findsOneWidget);
    });

    testWidgets('a pickup has no delivery to rate',
        (WidgetTester tester) async {
      await rateScreen(tester, delivered(fulfilment: 'pickup'));

      expect(find.text('How was your delivery?'), findsNothing);
      expect(find.text('How was the food?'), findsOneWidget);
    });

    Future<FakeStorefrontRepository> homeWithDelivered(
      WidgetTester tester, {
      Map<String, dynamic> extra = const <String, dynamic>{},
    }) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..orderList = <String>['delivered']
        ..orderExtra = <String, dynamic>{
          'restaurant': <String, dynamic>{
            'id': 'r1',
            'name': 'Erode Amman Mess',
          },
          'placed_at': DateTime.now()
              .subtract(const Duration(hours: 3))
              .toUtc()
              .toIso8601String(),
          ...extra,
        };
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      return repo;
    }

    testWidgets('home asks about the last order, and can be waved away',
        (WidgetTester tester) async {
      await homeWithDelivered(tester);

      expect(find.text('How was your order from Erode Amman Mess?'),
          findsOneWidget);
      await tester.tap(find.byTooltip('Not now'));
      await tester.pumpAndSettle();
      expect(find.text('How was your order from Erode Amman Mess?'),
          findsNothing);

      // Remembered on the phone, so it stays away.
      final SharedPreferences stored = await SharedPreferences.getInstance();
      expect(stored.getString('nexmile.rated_orders'), contains('dismissed'));
    });

    testWidgets('rated from home, the order then shows its stars in History',
        (WidgetTester tester) async {
      final FakeStorefrontRepository repo = await homeWithDelivered(tester);

      await tapStar(tester, 'prompt-stars-1', 4);
      expect(find.byType(RateOrderScreen), findsOneWidget);
      await tester.tap(find.byKey(const Key('rate-submit')));
      await tester.pumpAndSettle();
      expect(repo.orderReviews.single['rating'], 4);

      // Asked once.
      expect(find.text('How was your order from Erode Amman Mess?'),
          findsNothing);
      await tester.tap(find.text('History'));
      await tester.pumpAndSettle();
      expect(find.byType(RatedStars), findsOneWidget);
      expect(find.byKey(const Key('card-stars-1')), findsNothing);
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('a rating the server already has is shown, not asked for',
        (WidgetTester tester) async {
      await homeWithDelivered(
        tester,
        extra: <String, dynamic>{
          'review': <String, dynamic>{'rating': 3, 'rider_rating': 5},
        },
      );

      expect(find.text('How was your order from Erode Amman Mess?'),
          findsNothing);
      await tester.tap(find.text('History'));
      await tester.pumpAndSettle();
      expect(
        tester.widget<RatedStars>(find.byType(RatedStars)).value,
        3,
      );
    });

    testWidgets('past the rating window the order stops asking',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..orderStatus = 'delivered'
          ..orderExtra = <String, dynamic>{'can_review': false},
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.orderStatus,
        arguments: const OrderArgs(orderId: 1),
      );
      await tester.pumpAndSettle();

      // The server would refuse, so the card is not offered at all.
      expect(find.textContaining('How was your order from'), findsNothing);
      expect(find.text('You rated this order'), findsNothing);
    });
  });

  group('cart page', () {
    test('doorstep chips travel as codes, in one order, and come back',
        () {
      expect(
        DeliveryInstruction.codesOf(<DeliveryInstruction>{
          DeliveryInstruction.pet,
          DeliveryInstruction.leaveAtDoor,
        }),
        <String>['leave_at_door', 'pet_at_home'],
      );
      expect(
        DeliveryInstruction.codesOf(DeliveryInstruction.values),
        hasLength(lessThanOrEqualTo(DeliveryInstruction.max)),
      );
      expect(
        DeliveryInstruction.fromCode('leave_with_security'),
        DeliveryInstruction.security,
      );
      expect(DeliveryInstruction.fromCode('ring_twice'), isNull);

      // Echoed on the order; a code from a newer server is left out.
      final Order order = Order.fromJson(<String, dynamic>{
        'id': 3,
        'status': 'placed',
        'delivery_instructions': <String>['no_bell', 'ring_twice'],
        'no_cutlery': true,
      });
      expect(order.deliveryInstructions, <DeliveryInstruction>[
        DeliveryInstruction.noBell,
      ]);
      expect(order.noCutlery, isTrue);
      expect(Order.fromJson(<String, dynamic>{'id': 4}).noCutlery, isFalse);
    });

    ApiStorefrontRepository checkoutRepo(
      List<Map<String, dynamic>> bodies,
      List<http.Response> answers,
    ) =>
        ApiStorefrontRepository(
          ApiClient(
            baseUrl: 'https://api.test/api',
            httpClient: MockClient((http.Request request) async {
              bodies.add(jsonDecode(request.body) as Map<String, dynamic>);
              return answers.length > 1 ? answers.removeAt(0) : answers.single;
            }),
          ),
        );

    final http.Response placed = http.Response(
      jsonEncode(<String, dynamic>{
        'data': <String, dynamic>{'id': 9, 'status': 'placed'},
      }),
      201,
    );

    test('checkout sends the chips to the rider and cutlery to the kitchen, '
        'not in the note', () async {
      final List<Map<String, dynamic>> bodies = <Map<String, dynamic>>[];
      final ApiStorefrontRepository repo =
          checkoutRepo(bodies, <http.Response>[placed]);

      await repo.checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        addressId: 3,
        note: ' No onion ',
        instructions: <DeliveryInstruction>{
          DeliveryInstruction.noBell,
          DeliveryInstruction.leaveAtDoor,
        },
        noCutlery: true,
      );
      expect(bodies.last['note'], 'No onion');
      expect(
        bodies.last['delivery_instructions'],
        <String>['leave_at_door', 'no_bell'],
      );
      expect(bodies.last['no_cutlery'], isTrue);

      // Pickup has no one to give the doorstep to; the cutlery still counts.
      await repo.checkout(
        'r1',
        fulfilmentType: FulfilmentType.pickup,
        paymentMethod: 'cod',
        instructions: <DeliveryInstruction>{DeliveryInstruction.noCall},
        noCutlery: true,
      );
      expect(bodies.last.containsKey('delivery_instructions'), isFalse);
      expect(bodies.last['no_cutlery'], isTrue);

      // Nothing chosen, nothing sent.
      await repo.checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        addressId: 3,
      );
      expect(bodies.last.containsKey('delivery_instructions'), isFalse);
      expect(bodies.last.containsKey('no_cutlery'), isFalse);
      expect(bodies.last.containsKey('note'), isFalse);
    });

    test('a refused chip code still places the order, without the chips',
        () async {
      final List<Map<String, dynamic>> bodies = <Map<String, dynamic>>[];
      final Order order = await checkoutRepo(bodies, <http.Response>[
        http.Response(
          jsonEncode(<String, dynamic>{
            'message': 'The given data was invalid.',
            'errors': <String, dynamic>{
              'delivery_instructions.1': <String>['Unknown code: no_bell.'],
            },
          }),
          422,
        ),
        placed,
      ]).checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        addressId: 3,
        note: 'No onion',
        instructions: <DeliveryInstruction>{DeliveryInstruction.noBell},
        noCutlery: true,
      );

      expect(order.id, 9);
      expect(bodies, hasLength(2));
      expect(bodies.last.containsKey('delivery_instructions'), isFalse);
      expect(bodies.last['note'], 'No onion');
      expect(bodies.last['no_cutlery'], isTrue);
      expect(bodies.last['address_id'], 3);
    });

    test('any other checkout refusal is the customer\'s to read', () async {
      final List<Map<String, dynamic>> bodies = <Map<String, dynamic>>[];
      await expectLater(
        checkoutRepo(bodies, <http.Response>[
          http.Response(
            jsonEncode(<String, dynamic>{
              'message': 'Closed.',
              'errors': <String, dynamic>{
                'restaurant': <String>['This restaurant has just closed.'],
              },
            }),
            422,
          ),
        ]).checkout(
          'r1',
          fulfilmentType: FulfilmentType.delivery,
          paymentMethod: 'cod',
          addressId: 3,
          instructions: <DeliveryInstruction>{DeliveryInstruction.noBell},
        ),
        throwsA(isA<ApiException>()),
      );
      expect(bodies, hasLength(1));
    });

    testWidgets('the note, the doorstep and no cutlery go with the order',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = await _openCart(tester);

      // Where it is going, from the address the storefront uses.
      expect(find.text('Delivering to Home'), findsOneWidget);
      expect(find.text('Cash on delivery'), findsOneWidget);
      expect(_onPlaceButton('₹420'), findsOneWidget);
      expect(_onPlaceButton('Place order'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey<String>('cart-note')));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const ValueKey<String>('cart-note-field')),
        'Less spicy',
      );
      await tester.tap(find.widgetWithText(FilledButton, 'Save'));
      await tester.pumpAndSettle();
      expect(find.text('Less spicy'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey<String>('cart-no-cutlery')));
      await tester.pumpAndSettle();
      expect(
        find.text('Thank you for helping cut plastic waste'),
        findsOneWidget,
      );

      await tester.tap(find.byKey(const ValueKey<String>('instruction-noBell')));
      await tester.tap(
        find.byKey(const ValueKey<String>('instruction-leaveAtDoor')),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey<String>('cart-place-order')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 600));

      expect(repo.lastCheckout?['note'], 'Less spicy');
      expect(
        repo.lastCheckout?['delivery_instructions'],
        <String>['leave_at_door', 'no_bell'],
      );
      expect(repo.lastCheckout?['no_cutlery'], isTrue);
      expect(repo.lastCheckout?['address_id'], 1);
      expect(repo.lastCheckout?['payment_method'], 'cod');
      expect(find.byType(OrderPlacedScreen), findsOneWidget);
      // The emptied cart never shows on the way out.
      expect(find.text('Your cart is empty'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('with no address the button asks for one instead of ordering',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = await _openCart(
        tester,
        addresses: FakeAddressRepository(seed: <Address>[]),
      );

      expect(find.text('Where should we deliver?'), findsOneWidget);
      expect(_onPlaceButton('Add address'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey<String>('cart-place-order')));
      await tester.pumpAndSettle();
      expect(find.text('Choose a delivery address'), findsOneWidget);
      expect(repo.lastCheckout, isNull);
    });

    testWidgets('another saved address can be chosen from the bar',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = await _openCart(
        tester,
        addresses: FakeAddressRepository(
          seed: <Address>[
            _testAddress,
            const Address(
              id: 2,
              label: AddressLabel.work,
              line1: 'Tidel Park',
              city: 'Chennai',
              state: 'Tamil Nadu',
              pincode: '600113',
              latitude: 12.98,
              longitude: 80.25,
              isDefault: false,
            ),
          ],
        ),
      );

      await tester.tap(find.byKey(const ValueKey<String>('cart-deliver-to')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Work'));
      await tester.pumpAndSettle();
      expect(find.text('Delivering to Work'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey<String>('cart-place-order')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 600));
      expect(repo.lastCheckout?['address_id'], 2);
      // Nothing ticked, nothing typed: none of the extras.
      expect(repo.lastCheckout?.containsKey('note'), isFalse);
      expect(repo.lastCheckout?.containsKey('delivery_instructions'), isFalse);
      expect(repo.lastCheckout?.containsKey('no_cutlery'), isFalse);
      await tester.pumpAndSettle();
    });

    testWidgets('the bill is folded to its total and opens on a tap',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _openCart(tester);

      expect(find.text('To pay'), findsOneWidget);
      expect(find.text('Incl. taxes and charges'), findsOneWidget);
      expect(find.text('Item total'), findsNothing);

      await tester.tap(find.byKey(const ValueKey<String>('cart-bill')));
      await tester.pumpAndSettle();
      expect(find.text('Item total'), findsOneWidget);
      expect(find.text('Delivery fee'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey<String>('cart-bill')));
      await tester.pumpAndSettle();
      expect(find.text('Item total'), findsNothing);
    });

    testWidgets('the wallet pays what it can and cash the rest',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = await _openCart(
        tester,
        wallet: FakeWalletRepository(balance: 100),
      );

      expect(find.text('Wallet + cash'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey<String>('cart-bill')));
      await tester.pumpAndSettle();
      expect(find.text('Paid from wallet'), findsOneWidget);
      expect(find.text('Pay on delivery'), findsOneWidget);

      // Switched off on the sheet, it is cash only.
      await tester.tap(find.byKey(const ValueKey<String>('cart-pay-using')));
      await tester.pumpAndSettle();
      expect(find.text('Pay ₹320 when it arrives'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey<String>('pay-wallet-switch')));
      await tester.pumpAndSettle();
      expect(find.text('Pay when your order arrives'), findsOneWidget);
      await tester.tap(find.widgetWithText(FilledButton, 'Done'));
      await tester.pumpAndSettle();
      expect(find.text('Cash on delivery'), findsOneWidget);
      expect(find.text('Paid from wallet'), findsNothing);

      // And back on: the order says so.
      await tester.tap(find.byKey(const ValueKey<String>('cart-pay-using')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey<String>('pay-wallet-switch')));
      await tester.tap(find.widgetWithText(FilledButton, 'Done'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey<String>('cart-place-order')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 600));
      expect(repo.lastCheckout?['use_wallet'], isTrue);
      expect(repo.lastCheckout?['payment_method'], 'cod');
      await tester.pumpAndSettle();
    });

    testWidgets('pickup prices the cart again and leaves the doorstep out',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final FakeStorefrontRepository repo = await _openCart(tester);

      await tester.tap(find.byKey(const ValueKey<String>('instruction-noBell')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey<String>('fulfil-pickup')));
      await tester.pumpAndSettle();

      expect(repo.lastCartFulfilment, FulfilmentType.pickup);
      expect(find.text('Pick up from Anjappar Chettinad'), findsOneWidget);
      expect(find.text('DELIVERY INSTRUCTIONS'), findsNothing);

      await tester.tap(find.byKey(const ValueKey<String>('cart-place-order')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 600));
      expect(repo.lastCheckout?['fulfilment_type'], 'pickup');
      expect(repo.lastCheckout?.containsKey('address_id'), isFalse);
      expect(repo.lastCheckout?.containsKey('delivery_instructions'), isFalse);
      expect(repo.lastCheckout?.containsKey('note'), isFalse);
      await tester.pumpAndSettle();
    });

    testWidgets('the order shows the doorstep and cutlery requests it saved',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..orderExtra = <String, dynamic>{
            'delivery_instructions': <String>['leave_at_door', 'pet_at_home'],
            'no_cutlery': true,
          },
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.orderStatus,
        arguments: const OrderArgs(orderId: 1),
      );
      await tester.pumpAndSettle();

      final Finder requests = find.byKey(const ValueKey<String>('order-requests'));
      await tester.scrollUntilVisible(requests, 200,
          scrollable: find.byType(Scrollable).first);
      for (final String label in <String>[
        'Leave at the door',
        'Pet at home',
        "Don't send cutlery",
      ]) {
        expect(
          find.descendant(of: requests, matching: find.text(label)),
          findsOneWidget,
          reason: label,
        );
      }
    });

    testWidgets('"Add more items" opens the menu in the cart\'s place',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _openCart(tester);

      await tester.tap(find.text('Add more items'));
      await tester.pumpAndSettle();
      expect(find.byType(RestaurantScreen), findsOneWidget);
      expect(find.byType(CartScreen), findsNothing);
    });

    testWidgets('the cart reads in dark mode', (WidgetTester tester) async {
      _useTallPhone(tester);
      await _openCart(
        tester,
        seed: <String, Object>{..._languageChosen, 'nexmile.theme_mode': 'dark'},
        wallet: FakeWalletRepository(balance: 100),
      );
      expect(Theme.of(tester.element(find.byType(CartScreen))).brightness,
          Brightness.dark);
      await tester.tap(find.byKey(const ValueKey<String>('cart-bill')));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });

  group('profile photo', () {
    test('avatar_url is read, and empty means none', () {
      AuthUser user(Object? avatar) => AuthUser.fromJson(<String, dynamic>{
            'id': 1,
            'name': 'Priya',
            'avatar_url': avatar,
          });
      expect(user('https://cdn.test/a/1.jpg').avatarUrl, 'https://cdn.test/a/1.jpg');
      expect(user(null).avatarUrl, isNull);
      expect(user('  ').avatarUrl, isNull);
      // Kept with the session, so the photo is there on the next launch.
      expect(
        AuthUser.decode(user('https://cdn.test/a/1.jpg').encode())?.avatarUrl,
        'https://cdn.test/a/1.jpg',
      );
    });

    testWidgets('no photo draws the initial; a photo that fails falls back to it',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Row(
            children: <Widget>[
              UserPhoto(url: null, size: 40, fallback: Text('P')),
              UserPhoto(
                url: 'https://cdn.test/missing.jpg',
                size: 40,
                fallback: Text('Q'),
              ),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('P'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('user-photo')), findsOneWidget);
      // The test server answers every image with a 404.
      expect(find.text('Q'), findsOneWidget);
    });
  });

  group('cart bar', () {
    test('the bar follows the basket without reading every cart again',
        () async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository();
      final CartController cart = CartController(repository: repo);
      expect(cart.barCart, isNull);

      await cart.addItem('r1', menuItemId: 1);
      expect(cart.barCart?.restaurantName, 'Anjappar Chettinad');
      expect(cart.barCart?.itemCount, 1);

      // Closed is "not now": back once the basket changes.
      cart.closeBar(cart.barCart!);
      expect(cart.barCart, isNull);
      repo.lines = <Map<String, dynamic>>[
        <String, dynamic>{'id': 501, 'menu_item_id': 1, 'quantity': 2},
      ];
      await cart.setQuantity('r1', cartItemId: 501, quantity: 2);
      expect(cart.barCart?.itemCount, 2);

      // Emptied, or ordered: nothing left behind.
      await cart.empty('r1');
      expect(cart.barCart, isNull);
      await cart.addItem('r1', menuItemId: 1);
      expect(cart.barCart, isNotNull);
      await cart.checkout(
        'r1',
        fulfilmentType: FulfilmentType.delivery,
        paymentMethod: 'cod',
        addressId: 1,
      );
      expect(cart.barCart, isNull);
      cart.dispose();
    });

    testWidgets('the bar is on both tabs, opens the cart and the menu, and '
        'closes', (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..openCartList = <OpenCart>[
            const OpenCart(
              restaurantId: 'r1',
              restaurantName: 'Anjappar Chettinad',
              itemCount: 2,
              grandTotal: 340,
            ),
          ],
      );
      await _settleSplash(tester);
      final Finder bar = find.byKey(const ValueKey<String>('open-cart-bar'));
      expect(bar, findsOneWidget);
      expect(find.descendant(of: bar, matching: find.text('Anjappar Chettinad')),
          findsOneWidget);
      expect(find.descendant(of: bar, matching: find.text('View cart')),
          findsOneWidget);
      expect(find.descendant(of: bar, matching: find.text('2 items')),
          findsOneWidget);

      await tester.tap(find.text('History').first);
      await tester.pumpAndSettle();
      expect(bar, findsOneWidget, reason: 'on every tab');

      await tester.tap(find.byKey(const ValueKey<String>('open-cart-view')));
      await tester.pumpAndSettle();
      expect(find.byType(CartScreen), findsOneWidget);
      _nav(tester).pop();
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey<String>('open-cart-menu')));
      await tester.pumpAndSettle();
      expect(find.byType(RestaurantScreen), findsOneWidget);
      _nav(tester).pop();
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey<String>('open-cart-close')));
      await tester.pumpAndSettle();
      expect(bar, findsNothing);
    });

    testWidgets('search carries the bar too', (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: FakeStorefrontRepository()
          ..openCartList = <OpenCart>[
            const OpenCart(
              restaurantId: 'r1',
              restaurantName: 'Anjappar Chettinad',
              itemCount: 1,
              grandTotal: 120,
            ),
          ],
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.search);
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('open-cart-bar')), findsWidgets);
      expect(tester.takeException(), isNull);
    });
  });

  group('wallet screen', () {
    WalletTransaction entry(
      int id,
      WalletEntryKind kind,
      double amount, {
      String? order,
      WalletEntryStatus status = WalletEntryStatus.success,
      DateTime? at,
    }) =>
        WalletTransaction(
          id: id,
          kind: kind,
          amount: amount,
          description: '',
          orderNumber: order,
          status: status,
          createdAt: at ?? DateTime.now(),
        );

    Future<void> openWallet(
      WidgetTester tester, {
      FakeWalletRepository? repo,
      FakePaymentGateway? gateway,
      Map<String, Object> seed = _languageChosen,
    }) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: seed,
        session: _testSession(),
        walletRepository: repo ?? FakeWalletRepository(),
        paymentGateway: gateway,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.wallet);
      await tester.pumpAndSettle();
    }

    Finder addButton() => find.byKey(const ValueKey<String>('wallet-add'));

    // The test font draws every letter a full square, so the chip row
    // scrolls; each chip is brought into view before it is tapped.
    Future<void> chip(WidgetTester tester, String name) async {
      final Finder target = find.byKey(ValueKey<String>('wallet-filter-$name'));
      await tester.ensureVisible(target);
      await tester.pumpAndSettle();
      await tester.tap(target);
    }
    bool addEnabled(WidgetTester tester) =>
        tester.widget<FilledButton>(addButton()).onPressed != null;

    testWidgets('an empty wallet shows ₹0 and says what will fill it',
        (WidgetTester tester) async {
      await openWallet(tester);
      expect(find.text('₹0'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('wallet-empty')), findsOneWidget);
      expect(find.text('No transactions yet'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('wallet-updated')), findsOneWidget);
      expect(addEnabled(tester), isFalse);
    });

    testWidgets('amounts outside ₹10–₹10,000 say why and cannot be added',
        (WidgetTester tester) async {
      await openWallet(tester);
      final Finder field = find.byKey(const ValueKey<String>('wallet-amount'));

      await tester.enterText(field, '5');
      await tester.pump();
      expect(find.text('Add at least ₹10'), findsOneWidget);
      expect(addEnabled(tester), isFalse);

      await tester.enterText(field, '20000');
      await tester.pump();
      expect(find.text('You can add up to ₹10000'), findsOneWidget);
      expect(addEnabled(tester), isFalse);

      // No sign, no decimal point, no zero.
      await tester.enterText(field, '-0.5');
      await tester.pump();
      expect(tester.widget<TextField>(field).controller!.text, '5');
      await tester.enterText(field, '0');
      await tester.pump();
      expect(tester.widget<TextField>(field).controller!.text, isEmpty);
      expect(addEnabled(tester), isFalse);

      await tester.enterText(field, '250');
      await tester.pump();
      expect(find.text('Add ₹250'), findsOneWidget);
      expect(addEnabled(tester), isTrue);
    });

    testWidgets('₹100 from a quick amount is added once the server confirms',
        (WidgetTester tester) async {
      final FakeWalletRepository repo = FakeWalletRepository(balance: 50);
      final FakePaymentGateway gateway = FakePaymentGateway();
      await openWallet(tester, repo: repo, gateway: gateway);
      expect(find.text('₹50'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey<String>('wallet-preset-100')));
      await tester.pump();
      expect(find.text('Add ₹100'), findsOneWidget);
      await tester.tap(addButton());
      await tester.pumpAndSettle();

      expect(gateway.opened, 1);
      expect(repo.lastReceipt, isNotNull, reason: 'verified on the server');
      expect(find.text('₹100 added to your wallet'), findsOneWidget);
      expect(find.text('₹150'), findsOneWidget);
      // And it is in the history, as a credit.
      expect(
        find.descendant(
          of: find.byKey(const ValueKey<String>('wallet-entry-900')),
          matching: find.text('+₹100'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('a custom amount goes through the same way',
        (WidgetTester tester) async {
      final FakeWalletRepository repo = FakeWalletRepository();
      await openWallet(tester, repo: repo);
      await tester.enterText(
        find.byKey(const ValueKey<String>('wallet-amount')),
        '375',
      );
      await tester.pump();
      await tester.tap(addButton());
      await tester.pumpAndSettle();
      expect(repo.lastTopUpAmount, 375);
      expect(find.text('₹375 added to your wallet'), findsOneWidget);
    });

    testWidgets('failed, cancelled, unconfirmed and unreachable payments each '
        'say the right thing, and only the server moves the balance',
        (WidgetTester tester) async {
      Future<void> attempt({
        required FakeWalletRepository repo,
        required FakePaymentGateway gateway,
        required String? says,
        required String balance,
      }) async {
        await tester.pumpWidget(const SizedBox.shrink());
        await openWallet(tester, repo: repo, gateway: gateway);
        await tester.tap(find.byKey(const ValueKey<String>('wallet-preset-200')));
        await tester.pump();
        await tester.tap(addButton());
        await tester.pumpAndSettle();
        if (says != null) expect(find.text(says), findsOneWidget, reason: says);
        expect(find.text(balance), findsOneWidget, reason: says);
      }

      await attempt(
        repo: FakeWalletRepository(),
        gateway: FakePaymentGateway(const GatewayFailed()),
        says: 'Payment failed. No money was taken from your account.',
        balance: '₹0',
      );
      await attempt(
        repo: FakeWalletRepository(),
        gateway: FakePaymentGateway(const GatewayCancelled()),
        says: null,
        balance: '₹0',
      );
      // Paid, then the network dropped before the server confirmed.
      await attempt(
        repo: FakeWalletRepository()..failVerify = true,
        gateway: FakePaymentGateway(),
        says: 'Payment received. Your balance will update in a few minutes.',
        balance: '₹0',
      );
      // The network dropped before the payment could even start.
      await attempt(
        repo: FakeWalletRepository()
          ..failCreateWith = const ApiException(kind: ApiErrorKind.network),
        gateway: FakePaymentGateway(),
        says: 'Something went wrong. Please try again.',
        balance: '₹0',
      );
    });

    testWidgets('with no gateway on the server, a 503 says so and the wallet '
        'stays usable', (WidgetTester tester) async {
      // What production answers until Razorpay is configured there.
      final FakeWalletRepository repo = FakeWalletRepository(
        balance: 150,
        transactions: <WalletTransaction>[
          entry(1, WalletEntryKind.refund, 150, order: 'NX1001'),
        ],
      )..failCreateWith = const ApiException(
          kind: ApiErrorKind.server,
          statusCode: 503,
          message: 'Adding money is unavailable right now.',
        );
      final FakePaymentGateway gateway = FakePaymentGateway();
      await openWallet(tester, repo: repo, gateway: gateway);

      await tester.tap(find.byKey(const ValueKey<String>('wallet-preset-200')));
      await tester.pump();
      await tester.tap(addButton());
      await tester.pumpAndSettle();

      // Our own translated words, not the server's English sentence, and
      // refused before Razorpay was ever opened.
      expect(
        find.text("Adding money isn't available right now. Please try again later."),
        findsOneWidget,
      );
      expect(find.text('Adding money is unavailable right now.'), findsNothing);
      expect(gateway.opened, 0);
      // Nothing else on the screen is lost, and it can be tried again.
      expect(find.text('₹150'), findsWidgets);
      expect(addEnabled(tester), isTrue);

      repo.failCreateWith = null;
      await tester.tap(addButton());
      await tester.pumpAndSettle();
      expect(gateway.opened, 1);
      expect(find.text('₹200 added to your wallet'), findsOneWidget);
    });

    testWidgets('a second tap while a payment is open starts nothing',
        (WidgetTester tester) async {
      final FakeWalletRepository repo = FakeWalletRepository();
      final _SlowGateway gateway = _SlowGateway();
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        walletRepository: repo,
        paymentGateway: gateway,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.wallet);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey<String>('wallet-preset-500')));
      await tester.pump();
      await tester.tap(addButton());
      await tester.pump();
      // Mid-payment: the button says where it is and takes no taps.
      expect(find.text('Opening payment…'), findsOneWidget);
      expect(addEnabled(tester), isFalse);
      await tester.tap(addButton(), warnIfMissed: false);
      await tester.pump();

      gateway.finish();
      await tester.pumpAndSettle();
      expect(repo.topUpsStarted, 1);
      expect(gateway.opened, 1);
      expect(find.text('₹500'), findsOneWidget);
    });

    testWidgets('history filters, searches and opens a transaction',
        (WidgetTester tester) async {
      final List<String> copied = _mockClipboard(tester);
      await openWallet(
        tester,
        repo: FakeWalletRepository(
          balance: 500,
          transactions: <WalletTransaction>[
            entry(3, WalletEntryKind.refund, 249.5, order: 'NX7'),
            entry(2, WalletEntryKind.orderPayment, -249.5, order: 'NX7'),
            entry(1, WalletEntryKind.topUp, 500),
          ],
        ),
      );
      expect(find.text('Refund for order NX7'), findsOneWidget);
      expect(find.text('Paid for order NX7'), findsOneWidget);
      expect(find.text('Money added'), findsWidgets);
      // Colour by what happened: money in green, money out red.
      final Text spent = tester.widget<Text>(find.text('−₹249.50'));
      expect(spent.style?.color, const Color(0xFFC62828));

      await chip(tester, 'spent');
      await tester.pumpAndSettle();
      expect(find.text('Paid for order NX7'), findsOneWidget);
      expect(find.text('Refund for order NX7'), findsNothing);

      await chip(tester, 'added');
      await tester.pumpAndSettle();
      expect(find.text('Paid for order NX7'), findsNothing);
      expect(find.text('Refund for order NX7'), findsOneWidget);
      // The ₹500 top-up (the quick-amount button reads the same).
      expect(find.byKey(const ValueKey<String>('wallet-entry-1')), findsOneWidget);

      await chip(tester, 'all');
      await tester.tap(find.byKey(const ValueKey<String>('wallet-search-toggle')));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const ValueKey<String>('wallet-search')),
        'zzz',
      );
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('wallet-no-matches')), findsOneWidget);
      await tester.enterText(
        find.byKey(const ValueKey<String>('wallet-search')),
        'nx7',
      );
      await tester.pumpAndSettle();
      expect(find.text('Paid for order NX7'), findsOneWidget);
      expect(find.text('Refund for order NX7'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('wallet-entry-1')), findsNothing);

      await tester.tap(find.byKey(const ValueKey<String>('wallet-entry-2')));
      await tester.pumpAndSettle();
      final Finder sheet = find.byKey(const ValueKey<String>('wallet-details'));
      expect(sheet, findsOneWidget);
      for (final String shown in <String>[
        'Transaction details',
        '#2',
        'Debit',
        'Nexmile Wallet',
        'Successful',
        'NX7',
      ]) {
        expect(find.descendant(of: sheet, matching: find.text(shown)),
            findsWidgets, reason: shown);
      }
      await tester.tap(find.byKey(const ValueKey<String>('wallet-copy-id')));
      await tester.pumpAndSettle();
      expect(copied, <String>['#2']);
      expect(find.text('Transaction ID copied'), findsOneWidget);
    });

    testWidgets('pending and failed movements say so',
        (WidgetTester tester) async {
      await openWallet(
        tester,
        repo: FakeWalletRepository(
          transactions: <WalletTransaction>[
            entry(5, WalletEntryKind.topUp, 300,
                status: WalletEntryStatus.pending),
            entry(4, WalletEntryKind.topUp, 200,
                status: WalletEntryStatus.failed),
          ],
        ),
      );
      expect(find.text('Pending'), findsOneWidget);
      expect(find.text('Failed'), findsOneWidget);
    });

    testWidgets('the balance can be hidden, and stays hidden',
        (WidgetTester tester) async {
      await openWallet(tester, repo: FakeWalletRepository(balance: 840));
      expect(find.text('₹840'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey<String>('wallet-hide')));
      await tester.pumpAndSettle();
      expect(find.text('₹840'), findsNothing);
      expect(
        find.byKey(const ValueKey<String>('wallet-balance-hidden')),
        findsOneWidget,
      );
      final SharedPreferences stored = await SharedPreferences.getInstance();
      expect(stored.getBool('nexmile.wallet_hidden'), isTrue);

      // Opened again later: still hidden.
      await tester.pumpWidget(const SizedBox.shrink());
      await openWallet(
        tester,
        repo: FakeWalletRepository(balance: 840),
        seed: <String, Object>{..._languageChosen, 'nexmile.wallet_hidden': true},
      );
      expect(find.text('₹840'), findsNothing);
      expect(
        find.byKey(const ValueKey<String>('wallet-balance-hidden')),
        findsOneWidget,
      );
    });
  });

  group('support chat', () {
    test('messages read every sender, skip what this build cannot show', () {
      final SupportMessage ai = SupportMessage.fromJson(<String, dynamic>{
        'id': '0193f2a1',
        'sender': 'ai',
        'content': 'Your order is 600 m away.',
        'created_at': '2026-11-24T19:44:10+05:30',
        'actions': <Map<String, dynamic>>[
          <String, dynamic>{'code': 'track_order', 'label': 'Track it', 'order_id': 10432},
          // From a newer server: skipped, never a dead button.
          <String, dynamic>{'code': 'issue_voucher', 'label': 'Get ₹50'},
          <String, dynamic>{'code': 'view_order', 'label': ''},
        ],
        'feedback': 'up',
      })!;
      expect(ai.sender, SupportSender.ai);
      expect(ai.actions.map((SupportAction a) => a.code), <String>['track_order']);
      expect(ai.actions.single.orderId, 10432);
      expect(ai.feedback, 'up');

      // "Which order?": the id arrives as a string, with a title.
      final SupportAction pick = SupportAction.fromJson(<String, dynamic>{
        'code': 'select_order',
        'label': 'இதுதான்',
        'order_id': '10432',
        'title': 'NX10432 · Anjappar',
      })!;
      expect(pick.orderId, 10432);
      expect(pick.title, 'NX10432 · Anjappar');

      // A first name only, and only on a person.
      final SupportMessage agent = SupportMessage.fromJson(<String, dynamic>{
        'id': '2',
        'sender': 'agent',
        'content': 'Looking into it.',
        'agent_name': 'Priya Raman',
      })!;
      expect(agent.agentName, 'Priya');
      expect(
        SupportMessage.fromJson(<String, dynamic>{
          'id': '3',
          'sender': 'ai',
          'agent_name': 'Priya',
        })!.agentName,
        isNull,
      );
      expect(
        SupportMessage.fromJson(<String, dynamic>{'id': '4', 'sender': 'bot'}),
        isNull,
      );

      expect(
        newClientId(),
        matches(RegExp(
          r'^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$',
        )),
      );
      expect(newClientId(), isNot(newClientId()));
    });

    test('an order card reads what is there and nothing else', () {
      final SupportMessage? reply = SupportMessage.fromJson(<String, dynamic>{
        'id': 'm2',
        'sender': 'ai',
        'content': 'It is on the way.',
        'card': <String, dynamic>{
          'order_id': '10432',
          'order_number': 'NX261113ABCD',
          'restaurant': 'Amma Mess',
          'status': 'picked_up',
          'status_label': 'வழியில்',
          'eta_minutes': 9,
          'distance_metres': '1450',
          'rider_name': 'Suresh Kumar',
          'tracking_stale': true,
        },
      });
      final SupportOrderCard card = reply!.card!;
      expect(card.orderId, 10432);
      expect(card.orderNumber, 'NX261113ABCD');
      expect(card.restaurant, 'Amma Mess');
      expect(card.statusLabel, 'வழியில்');
      expect(card.etaMinutes, 9);
      expect(card.distanceMetres, 1450);
      expect(card.riderName, 'Suresh Kumar');
      expect(card.trackingStale, isTrue);

      // Kept on the phone with the rest of the message.
      final SupportOrderCard? kept =
          SupportMessage.fromJson(reply.toJson())!.card;
      expect(kept?.distanceMetres, 1450);
      expect(kept?.trackingStale, isTrue);

      // In the kitchen: no arrival time, no distance, no rider.
      final SupportOrderCard kitchen = SupportOrderCard.fromJson(
        <String, dynamic>{'status': 'preparing', 'status_label': 'Preparing'},
      )!;
      expect(kitchen.etaMinutes, isNull);
      expect(kitchen.distanceMetres, isNull);
      expect(kitchen.riderName, isNull);

      // No card at all, and a card with nothing in it, are both none.
      expect(
        SupportMessage.fromJson(<String, dynamic>{
          'id': 'm3',
          'sender': 'ai',
          'content': 'Hi',
          'card': null,
        })!.card,
        isNull,
      );
      expect(SupportOrderCard.fromJson(<String, dynamic>{}), isNull);
    });

    test('a reply is read from spoken when there is one', () {
      final SupportMessage withSpoken = SupportMessage.fromJson(
        <String, dynamic>{
          'id': 'm4',
          'sender': 'ai',
          'content': 'Order NX261113ABCD is on the way.',
          'spoken': 'Your biryani is on the way, about nine minutes out.',
        },
      )!;
      expect(withSpoken.content, 'Order NX261113ABCD is on the way.');
      expect(
        withSpoken.toSpeak,
        'Your biryani is on the way, about nine minutes out.',
      );
      // Kept on the phone with the message.
      expect(
        SupportMessage.fromJson(withSpoken.toJson())!.spoken,
        withSpoken.spoken,
      );

      // Null, or blank, when the content already reads well: read that.
      for (final Object? spoken in <Object?>[null, '', '  ']) {
        final SupportMessage plain = SupportMessage.fromJson(<String, dynamic>{
          'id': 'm5',
          'sender': 'agent',
          'content': 'Happy to help.',
          'spoken': spoken,
        })!;
        expect(plain.spoken, isNull);
        expect(plain.toSpeak, 'Happy to help.');
      }
    });

    test('speech uses the Indian voice for the language', () {
      expect(speechLocale('ta'), 'ta-IN');
      expect(speechLocale('en'), 'en-IN');
      expect(speechLocale('hi-IN'), 'hi-IN');
      expect(speechLocale(null), 'en-IN');
    });

    test('the API is the agreed contract', () async {
      final List<http.Request> seen = <http.Request>[];
      final SupportRepository repo = ApiSupportRepository(
        ApiClient(
          baseUrl: 'https://api.test/api',
          httpClient: MockClient((http.Request request) async {
            seen.add(request);
            final String path = request.url.path;
            if (path.endsWith('/messages') && request.method == 'POST') {
              return http.Response(
                jsonEncode(<String, dynamic>{
                  'data': <String, dynamic>{
                    'id': 'm1',
                    'sender': 'customer',
                    'content': 'where is my order',
                    'client_id': 'c-1',
                    // This message is what switched the thread.
                    'language': 'ta',
                  },
                  'meta': <String, dynamic>{'pending_reply': false},
                }),
                202,
              );
            }
            if (path.endsWith('/handover')) {
              return http.Response(
                jsonEncode(<String, dynamic>{
                  'data': <String, dynamic>{
                    'status': 'handed_over',
                    'system_message': 'They reply within 4 working hours.',
                  },
                }),
                200,
              );
            }
            if (path.endsWith('/messages')) {
              return http.Response(
                '{"data":[],"meta":{"pending_reply":true,"language":"ta"}}',
                200,
              );
            }
            if (path.endsWith('/order')) {
              return http.Response(
                '{"data":{"id":"t1","status":"open"},'
                '"meta":{"pending_reply":true}}',
                200,
              );
            }
            if (path.endsWith('/entry')) {
              return http.Response(
                jsonEncode(<String, dynamic>{
                  'data': <String, dynamic>{
                    'unread': 1,
                    'label': 'Help',
                    'has_open_thread': true,
                    'available': false,
                  },
                }),
                200,
              );
            }
            return http.Response(
              jsonEncode(<String, dynamic>{
                'data': <String, dynamic>{
                  'id': 't1',
                  'status': 'open',
                  'pending_reply': true,
                  'language': 'en',
                  'messages': <Object>[],
                },
              }),
              200,
            );
          }),
        ),
      );

      final SupportConversation thread =
          await repo.start(orderId: 10432, language: 'ta');
      expect(thread.pendingReply, isTrue);
      // The server's language, not the one asked for at open.
      expect(thread.language, 'en');
      expect(seen.last.url.path, '/api/v1/support/conversations');
      expect(jsonDecode(seen.last.body), <String, dynamic>{
        'order_id': 10432,
        'language': 'ta',
      });

      final SupportSent sent =
          await repo.send('t1', content: 'where is my order', clientId: 'c-1');
      expect(sent.message.clientId, 'c-1');
      // Read off the 202: false means nothing is coming automatically.
      expect(sent.pendingReply, isFalse);
      expect(sent.language, 'ta');
      expect(jsonDecode(seen.last.body), <String, dynamic>{
        'content': 'where is my order',
        'client_id': 'c-1',
      });

      final SupportPoll poll = await repo.messagesAfter('t1', afterId: 'm1');
      expect(seen.last.url.queryParameters['after_id'], 'm1');
      expect(poll.messages, isEmpty);
      expect(poll.pendingReply, isTrue);
      expect(poll.language, 'ta');

      final SupportEntry entry = await repo.entry();
      expect(entry.unread, 1);
      expect(entry.available, isFalse);
      // An older server that says nothing is taken as reachable.
      expect(SupportEntry.fromJson(const <String, dynamic>{}).available, isTrue);

      final SupportHandover handover = await repo.handover('t1');
      expect(handover.status, ConversationStatus.handedOver);
      expect(handover.systemMessage, 'They reply within 4 working hours.');

      await repo.feedback('m9', 'down');
      expect(seen.last.url.path, '/api/v1/support/messages/m9/feedback');

      final SupportPoll picked = await repo.selectOrder('t1', 10432);
      expect(seen.last.url.path, '/api/v1/support/conversations/t1/order');
      // A number here, though the action sent it as a string.
      expect(jsonDecode(seen.last.body), <String, dynamic>{'order_id': 10432});
      expect(picked.pendingReply, isTrue);
    });

    testWidgets('a build without the support server shows no way in',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(tester, seed: _languageChosen, session: _testSession());
      await _settleSplash(tester);
      expect(find.byKey(const ValueKey<String>('support-bubble')), findsNothing);

      _nav(tester).pushNamed(AppRoutes.help);
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('help-chat')), findsNothing);
    });

    testWidgets('the bubble opens the chat; the assistant answers, labelled',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);

      await tester.tap(find.byKey(const ValueKey<String>('support-bubble')));
      await tester.pumpAndSettle();
      expect(find.byType(SupportScreen), findsOneWidget);
      expect(find.text('How can we help?'), findsOneWidget);
      // Nobody may take a demo answer for the real assistant.
      expect(
        find.text(
          "Demo: these answers are samples. The real assistant isn't connected yet.",
        ),
        findsOneWidget,
      );
      expect(support.startedInLanguage, 'en');
      expect(support.startedWithOrder, isNull);

      await tester.enterText(
        find.byKey(const ValueKey<String>('support-composer')),
        'hello',
      );
      // The mic becomes send once there is text, on the next frame.
      await tester.pump();
      await tester.tap(find.byKey(const ValueKey<String>('support-send')));
      await tester.pump();
      expect(find.text('hello'), findsOneWidget);
      // The wait is the assistant's, and the box stays open for a second
      // thought.
      expect(find.byKey(const ValueKey<String>('support-typing')), findsOneWidget);
      expect(find.text('AI assistant is typing…'), findsOneWidget);
      expect(
        tester
            .widget<TextField>(
              find.byKey(const ValueKey<String>('support-composer')),
            )
            .enabled,
        isNot(false),
      );

      for (int i = 0; i < 2; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('support-typing')), findsNothing);
      expect(find.textContaining('This is a demo answer'), findsOneWidget);
      // Labelled as the machine it is.
      expect(find.text('AI assistant'), findsOneWidget);
      expect(support.received, <String>['hello']);

      // Thumbs on the answer, shown at once.
      final SupportMessage answer = (await support.conversation('x')).messages.last;
      await tester.tap(find.byKey(ValueKey<String>('support-up-${answer.id}')));
      await tester.pumpAndSettle();
      expect((await support.conversation('x')).messages.last.feedback, 'up');
    });

    testWidgets('an answer that never comes stops at 30 seconds, with a retry',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport(pollsBeforeReply: 1000);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(const ValueKey<String>('support-composer')),
        'hello',
      );
      // The mic becomes send once there is text, on the next frame.
      await tester.pump();
      await tester.tap(find.byKey(const ValueKey<String>('support-send')));
      await tester.pump();
      for (int i = 0; i < 15; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('support-typing')), findsNothing);
      expect(find.text('That took too long.'), findsOneWidget);
      // The question stays.
      expect(find.text('hello'), findsOneWidget);

      // "Try again" asks again, with the same id: never stored twice.
      await tester.tap(find.widgetWithText(TextButton, 'Try again'));
      await tester.pump();
      expect(find.byKey(const ValueKey<String>('support-typing')), findsOneWidget);
      expect(support.clientIds, hasLength(2));
      expect(support.clientIds.toSet(), hasLength(1));
      expect(support.received, <String>['hello']);
      for (int i = 0; i < 15; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
    });

    testWidgets('with no reply queued the chat waits quietly: no dots, and '
        'no "took too long"', (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport()..loseNextReply = true;
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(const ValueKey<String>('support-composer')),
        'hello',
      );
      // The mic becomes send once there is text, on the next frame.
      await tester.pump();
      await tester.tap(find.byKey(const ValueKey<String>('support-send')));
      await tester.pump();
      // The send said `pending_reply: false`: nothing to wait for, so no
      // typing dots and no polling...
      expect(find.byKey(const ValueKey<String>('support-typing')), findsNothing);
      // ...and, a full 30 seconds on, no claim that anything failed.
      for (int i = 0; i < 16; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
      expect(find.text('That took too long.'), findsNothing);
      expect(find.text('hello'), findsOneWidget);
    });

    testWidgets('once a person owns the thread: a quiet note, no dots, and '
        'the customer keeps writing', (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey<String>('support-menu')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Talk to a person'));
      await tester.pumpAndSettle();
      final Finder note =
          find.byKey(const ValueKey<String>('support-handed-over'));
      expect(note, findsOneWidget);
      expect(find.text('A member of the team will reply'), findsOneWidget);

      await tester.enterText(
        find.byKey(const ValueKey<String>('support-composer')),
        'the bag was torn',
      );
      // The mic becomes send once there is text, on the next frame.
      await tester.pump();
      await tester.tap(find.byKey(const ValueKey<String>('support-send')));
      await tester.pump();
      // Stored and on its way to the agent, with no instant answer promised.
      expect(support.received, contains('the bag was torn'));
      expect(find.byKey(const ValueKey<String>('support-typing')), findsNothing);
      for (int i = 0; i < 16; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
      expect(find.text('That took too long.'), findsNothing);
      expect(note, findsOneWidget);
    });

    testWidgets('a message that does not get through stays, and is retried '
        'with the same id', (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport()
        ..failNextSend = const ApiException(kind: ApiErrorKind.network);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(const ValueKey<String>('support-composer')),
        'my food is cold',
      );
      // The mic becomes send once there is text, on the next frame.
      await tester.pump();
      await tester.tap(find.byKey(const ValueKey<String>('support-send')));
      await tester.pumpAndSettle();
      expect(find.text('my food is cold'), findsOneWidget);
      expect(find.text('Not sent · Try again'), findsOneWidget);
      expect(support.received, isEmpty);

      await tester.tap(find.text('Not sent · Try again'));
      await tester.pump();
      for (int i = 0; i < 2; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
      expect(find.text('Not sent · Try again'), findsNothing);
      expect(support.received, <String>['my food is cold']);
      // One id for both attempts: the server can tell a retry from a repeat.
      expect(support.clientIds, hasLength(2));
      expect(support.clientIds.toSet(), hasLength(1));
    });

    testWidgets('a person is asked for in the server\'s words, and a closed '
        'chat starts again', (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: _RecordingSupport(),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      await _askSupport(tester, 'I need a refund');
      await tester.tap(
        find.byKey(const ValueKey<String>('support-action-talk_to_person')),
      );
      await tester.pumpAndSettle();
      // Exactly as the server wrote it, never the app's own promise.
      expect(
        find.text(
          "I've passed this to the Nexmile team. They reply within 4 working hours.",
        ),
        findsOneWidget,
      );

      await tester.tap(find.byKey(const ValueKey<String>('support-menu')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Mark as solved'));
      await tester.pumpAndSettle();
      expect(find.text('This chat is closed.'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('support-composer')), findsNothing);

      await tester.tap(find.byKey(const ValueKey<String>('support-start-new')));
      await tester.pumpAndSettle();
      expect(find.text('How can we help?'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('support-composer')), findsOneWidget);
    });

    testWidgets('with two orders on the way, the assistant asks which, and the '
        'answer follows the pick', (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      await _askSupport(tester, 'where is my order');
      expect(find.text('You have two orders on the way. Which one?'),
          findsOneWidget);
      // The label alone: the server's finished, translated text. The bare
      // restaurant name is not stacked above it as well.
      expect(find.text('The Anjappar Chettinad order'), findsOneWidget);
      expect(find.text('The Saravana Bhavan order'), findsOneWidget);
      expect(find.text('Anjappar Chettinad'), findsNothing);

      await tester.tap(
        find.byKey(const ValueKey<String>('support-action-select_order-2')),
      );
      await tester.pump();
      expect(support.selected, <int>[2]);
      // Polled for, exactly as after a message.
      expect(find.byKey(const ValueKey<String>('support-typing')), findsOneWidget);
      for (int i = 0; i < 2; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
      expect(find.text('You can follow this order live on the map.'),
          findsOneWidget);
      expect(find.text('Track it'), findsOneWidget);
    });

    Future<_RecordingSupport> askWhichOrder(
      WidgetTester tester,
      List<int> refusals,
    ) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport()
        ..refuseSelects.addAll(refusals);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();
      await _askSupport(tester, 'where is my order');
      await tester.tap(
        find.byKey(const ValueKey<String>('support-action-select_order-2')),
      );
      await tester.pump();
      return support;
    }

    testWidgets('a 503 on picking an order is tried once more, quietly',
        (WidgetTester tester) async {
      final _RecordingSupport support = await askWhichOrder(tester, <int>[503]);
      await tester.pump(const Duration(seconds: 2));
      await tester.pump();
      expect(support.selectTries, 2);
      expect(support.selected, <int>[2]);
      expect(find.byKey(const ValueKey<String>('support-notice')), findsNothing);
      for (int i = 0; i < 2; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
      expect(find.text('You can follow this order live on the map.'),
          findsOneWidget);
    });

    testWidgets('an order system that stays down leaves a small note, and the '
        'chat carries on', (WidgetTester tester) async {
      final _RecordingSupport support =
          await askWhichOrder(tester, <int>[503, 503]);
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(support.selectTries, 2);

      final Finder note = find.byKey(const ValueKey<String>('support-notice'));
      expect(note, findsOneWidget);
      expect(
        find.text(
          "Couldn't check that order just now. You can still type your question.",
        ),
        findsOneWidget,
      );
      // Not the chat being down: no "call us" card, no error, and the
      // composer is still there.
      expect(
        find.text(
          "Chat can't be reached right now. Call us, or try again in a few minutes.",
        ),
        findsNothing,
      );
      expect(find.text("That didn't go through. Try again."), findsNothing);
      expect(find.byKey(const ValueKey<String>('support-composer')),
          findsOneWidget);

      // A message that gets through puts the note away.
      await _askSupport(tester, 'it is the Saravana one');
      expect(note, findsNothing);
    });

    testWidgets('an order not on this account says so in a note',
        (WidgetTester tester) async {
      final _RecordingSupport support = await askWhichOrder(tester, <int>[404]);
      await tester.pumpAndSettle();
      // A 404 is an answer, not a hiccup: asked once.
      expect(support.selectTries, 1);
      expect(find.text("We couldn't find that order on your account."),
          findsOneWidget);

      // And it can be put aside.
      await tester.tap(find.descendant(
        of: find.byKey(const ValueKey<String>('support-notice')),
        matching: find.byIcon(Icons.close_rounded),
      ));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('support-notice')), findsNothing);
    });

    testWidgets('a thread closed in the meantime shows as closed',
        (WidgetTester tester) async {
      await askWhichOrder(tester, <int>[409]);
      await tester.pumpAndSettle();
      expect(find.text('This chat is closed.'), findsWidgets);
      expect(find.byKey(const ValueKey<String>('support-start-new')),
          findsOneWidget);
    });

    testWidgets('a tapped chip shows as chosen, and the others switch off',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();
      await _askSupport(tester, 'where is my order');

      final Finder second =
          find.byKey(const ValueKey<String>('support-action-select_order-2'));
      final Finder first =
          find.byKey(const ValueKey<String>('support-action-select_order-1'));
      OutlinedButton button(Finder f) => tester.widget<OutlinedButton>(
            find.descendant(of: f, matching: find.byType(OutlinedButton)),
          );
      expect(button(first).onPressed, isNotNull);

      await tester.tap(second);
      await tester.pump();
      // The tap registered, visibly: a tick on it, and no second pick.
      expect(
        find.descendant(of: second, matching: find.byIcon(Icons.check_rounded)),
        findsOneWidget,
      );
      expect(button(first).onPressed, isNull);
      expect(button(second).onPressed, isNull);
      await tester.tap(first, warnIfMissed: false);
      await tester.pump();
      expect(support.selected, <int>[2]);
      for (int i = 0; i < 2; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
    });

    testWidgets('a pick that does not go through gives the chips back',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport()
        ..refuseSelects.add(404);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();
      await _askSupport(tester, 'where is my order');

      await tester.tap(
        find.byKey(const ValueKey<String>('support-action-select_order-2')),
      );
      await tester.pumpAndSettle();
      // Not this customer's order: the note says so, and the other order
      // can still be picked.
      final OutlinedButton first = tester.widget<OutlinedButton>(
        find.descendant(
          of: find.byKey(const ValueKey<String>('support-action-select_order-1')),
          matching: find.byType(OutlinedButton),
        ),
      );
      expect(first.onPressed, isNotNull);
    });

    Future<void> openChatAbout(
      WidgetTester tester,
      _RecordingSupport support, {
      _FakeVoice? voice,
    }) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
        supportVoice: voice,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.support,
        arguments: const SupportArgs(orderId: 7),
      );
      await tester.pumpAndSettle();
    }

    /// Two polls: long enough for the demo's answer to land.
    Future<void> awaitReply(WidgetTester tester) async {
      await tester.pump();
      for (int i = 0; i < 2; i++) {
        await tester.pump(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();
    }

    testWidgets('a reply about an order carries its card, row by row',
        (WidgetTester tester) async {
      await openChatAbout(tester, _RecordingSupport());
      await _askSupport(tester, 'where is my order');

      final Finder card = find.byWidgetPredicate(
        (Widget w) =>
            w.key is ValueKey<String> &&
            (w.key! as ValueKey<String>).value.startsWith('support-card-'),
      );
      expect(card, findsOneWidget);
      Finder inCard(String text) =>
          find.descendant(of: card, matching: find.text(text));
      expect(inCard('Anjappar Chettinad'), findsOneWidget);
      expect(inCard('#NX7'), findsOneWidget);
      // Our headings, the server's words.
      expect(inCard('Status'), findsOneWidget);
      expect(inCard('On the way'), findsOneWidget);
      expect(inCard('Arriving in'), findsOneWidget);
      expect(inCard('12 min'), findsOneWidget);
      expect(inCard('Delivery partner'), findsOneWidget);
      expect(inCard('Suresh is 1.8 km away'), findsOneWidget);
    });

    testWidgets('an order in the kitchen shows no empty rows',
        (WidgetTester tester) async {
      final _RecordingSupport support = _RecordingSupport()
        ..orderCard = (int id) => SupportOrderCard(
              orderId: id,
              orderNumber: 'NX$id',
              restaurant: 'Amma Mess',
              status: 'preparing',
              statusLabel: 'Being prepared',
            );
      await openChatAbout(tester, support);
      await _askSupport(tester, 'where is my order');

      expect(find.text('Being prepared'), findsOneWidget);
      // Nothing known, nothing drawn: no "Arriving in: —".
      expect(find.text('Arriving in'), findsNothing);
      expect(find.text('Delivery partner'), findsNothing);
    });

    testWidgets('an old fix greys the rider distance',
        (WidgetTester tester) async {
      final _RecordingSupport support = _RecordingSupport()
        ..orderCard = (int id) => SupportOrderCard(
              orderId: id,
              statusLabel: 'On the way',
              distanceMetres: 1800,
              riderName: 'Suresh Kumar',
              trackingStale: true,
            );
      await openChatAbout(tester, support);
      await _askSupport(tester, 'where is my order');

      final Text distance =
          tester.widget<Text>(find.text('Suresh is 1.8 km away'));
      final Text status = tester.widget<Text>(find.text('On the way'));
      expect(distance.style?.color, isNot(status.style?.color));
    });

    testWidgets('a thread waiting for a person can start over',
        (WidgetTester tester) async {
      final _RecordingSupport support = _RecordingSupport();
      await openChatAbout(tester, support);
      await tester.tap(find.byKey(const ValueKey<String>('support-menu')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Talk to a person'));
      await tester.pumpAndSettle();
      expect(
        find.byKey(const ValueKey<String>('support-handed-over')),
        findsOneWidget,
      );
      expect(support.starts, 1);

      // Nobody has answered: back to the assistant, on a fresh thread.
      await tester.tap(
        find.byKey(const ValueKey<String>('support-handed-over-new')),
      );
      await tester.pumpAndSettle();
      expect(support.closes, 1);
      expect(support.starts, 2);
      expect(
        find.byKey(const ValueKey<String>('support-handed-over')),
        findsNothing,
      );
      expect(find.text('How can we help?'), findsOneWidget);
    });

    testWidgets('asked by voice: sent as a message, and the reply is read out',
        (WidgetTester tester) async {
      final _RecordingSupport support = _RecordingSupport();
      final _FakeVoice voice = _FakeVoice();
      await openChatAbout(tester, support, voice: voice);

      // An empty box offers the microphone rather than send.
      expect(find.byKey(const ValueKey<String>('support-send')), findsNothing);
      await tester.tap(find.byKey(const ValueKey<String>('support-mic')));
      await awaitReply(tester);

      expect(voice.listenedIn, <String?>['en']);
      expect(support.received, <String>['where is my order']);
      expect(voice.spoken, hasLength(1));
      // The reply written to be heard, card facts and all; the screen keeps
      // the written one.
      expect(
        voice.spoken.single.$2,
        'Your order from Anjappar Chettinad is on the way. It should reach '
        'you in about 12 minutes. Suresh Kumar is bringing it.',
      );
      expect(voice.spoken.single.$3, 'en');
      expect(
        find.text('You can follow this order live on the map.'),
        findsOneWidget,
      );

      // The reply's speaker is now a stop button, and stops it.
      final String id = voice.spoken.single.$1;
      final Finder control = find.byKey(ValueKey<String>('support-read-$id'));
      expect(find.byTooltip('Stop'), findsOneWidget);
      await tester.tap(control);
      await tester.pump();
      expect(voice.speaking.value, isNull);
      expect(find.byTooltip('Stop'), findsNothing);
    });

    testWidgets('voice that hears nothing offers typing instead',
        (WidgetTester tester) async {
      final _RecordingSupport support = _RecordingSupport();
      final _FakeVoice voice = _FakeVoice()..nextHeard = '';
      await openChatAbout(tester, support, voice: voice);

      await tester.tap(find.byKey(const ValueKey<String>('support-mic')));
      await tester.pump();

      expect(support.received, isEmpty);
      expect(
        find.text("Couldn't catch that. Try again, or type your message."),
        findsOneWidget,
      );
      final EditableText box = tester.widget<EditableText>(
        find.descendant(
          of: find.byKey(const ValueKey<String>('support-composer')),
          matching: find.byType(EditableText),
        ),
      );
      expect(box.focusNode.hasFocus, isTrue);
    });

    testWidgets("the thread's language follows the server, not the opening",
        (WidgetTester tester) async {
      final _RecordingSupport support = _RecordingSupport();
      final _FakeVoice voice = _FakeVoice()..nextHeard = null;
      await openChatAbout(tester, support, voice: voice);
      expect(support.startedInLanguage, 'en');

      // Written in Tamil script: the server switches the thread to Tamil.
      await _askSupport(tester, 'என் ஆர்டர் எங்கே');
      await tester.tap(find.byKey(const ValueKey<String>('support-mic')));
      await tester.pump();
      expect(voice.listenedIn.last, 'ta');
    });

    testWidgets('"Need help?" on an order opens the chat about that order',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.orderStatus,
        arguments: const OrderArgs(orderId: 1),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey<String>('need-help-1')));
      await tester.pumpAndSettle();
      expect(support.startedWithOrder, 1);

      // The answer's buttons go where they say, and fetch what they show.
      await _askSupport(tester, 'where is it');
      expect(find.text('Track it'), findsOneWidget);
      await tester.tap(
        find.byKey(const ValueKey<String>('support-action-view_order')),
      );
      await tester.pumpAndSettle();
      expect(find.byType(OrderStatusScreen), findsOneWidget);
      expect(find.byType(SupportScreen, skipOffstage: false), findsOneWidget);
    });

    testWidgets('the chat is kept on the phone, and read offline with its '
        'draft', (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: _RecordingSupport(),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();
      await _askSupport(tester, 'hello');
      await tester.enterText(
        find.byKey(const ValueKey<String>('support-composer')),
        'half a thought',
      );
      await tester.pump();

      final SharedPreferences stored = await SharedPreferences.getInstance();
      final Map<String, Object> kept = <String, Object>{
        ..._languageChosen,
        'nexmile.support_thread': stored.getString('nexmile.support_thread')!,
        'nexmile.support_draft': stored.getString('nexmile.support_draft')!,
      };

      // The app killed, and back with no network.
      await tester.pumpWidget(const SizedBox.shrink());
      await _pumpApp(
        tester,
        seed: kept,
        session: _testSession(),
        supportRepository: _RecordingSupport()..offline = true,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey<String>('support-offline')), findsOneWidget);
      expect(find.text('hello'), findsOneWidget);
      expect(find.textContaining('This is a demo answer'), findsOneWidget);
      expect(find.text('half a thought'), findsOneWidget);
      expect(
        tester
            .widget<TextField>(
              find.byKey(const ValueKey<String>('support-composer')),
            )
            .enabled,
        isFalse,
      );
    });

    testWidgets('an unreachable platform still shows the bubble, and the chat '
        'leads with a person and the phone', (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: _RecordingSupport()..available = false,
      );
      await _settleSplash(tester);
      expect(find.byKey(const ValueKey<String>('support-bubble')), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey<String>('support-bubble')));
      await tester.pumpAndSettle();
      final Finder card = find.byKey(const ValueKey<String>('support-down'));
      expect(card, findsOneWidget);
      // Nothing reaches the platform, so no person is offered: the phone
      // (when its number is set) and a way to try again.
      expect(
        find.descendant(of: card, matching: find.text('Talk to a person')),
        findsNothing,
      );
      expect(find.byKey(const ValueKey<String>('support-down-retry')), findsOneWidget);
    });

    testWidgets('opening a chat is one call: starting it marks it read',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      final _RecordingSupport support = _RecordingSupport();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: support,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();
      // A new thread has nothing to mark.
      expect(support.fetches, 0);
      await _askSupport(tester, 'hello');

      _nav(tester).pop();
      await tester.pumpAndSettle();
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();
      // No second fetch: POST /conversations marks it read on its own.
      expect(support.fetches, 0);
      expect(find.text('hello'), findsOneWidget);
    });

    test('the app config reads the live shape, and the older flat one', () {
      final SupportInfo live = SupportInfo.fromJson(<String, dynamic>{
        'support': <String, dynamic>{
          'phone': null,
          'email': 'help@nexmile.in',
          'chat_enabled': false,
        },
        'locales': <String>['en', 'ta', 'hi'],
      });
      // No number yet: nothing to dial, so no call button.
      expect(live.phone, isNull);
      expect(live.email, 'help@nexmile.in');
      expect(live.chatEnabled, isFalse);

      final SupportInfo flat = SupportInfo.fromJson(<String, dynamic>{
        'support_phone': '044 4000 1234',
      });
      expect(flat.phone, '044 4000 1234');
      expect(flat.chatEnabled, isNull);
    });

    testWidgets('chat switched off on the server hides every way in',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: _RecordingSupport(),
        accountRepository: FakeAccountRepository(
          supportInfo: const SupportInfo(
            email: 'help@nexmile.in',
            chatEnabled: false,
          ),
        ),
      );
      await _settleSplash(tester);
      expect(find.byKey(const ValueKey<String>('support-bubble')), findsNothing);

      _nav(tester).pushNamed(AppRoutes.help);
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('help-chat')), findsNothing);
      _nav(tester).pop();
      await tester.pumpAndSettle();

      _nav(tester).pushNamed(
        AppRoutes.orderStatus,
        arguments: const OrderArgs(orderId: 1),
      );
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey<String>('need-help-1')), findsNothing);
      expect(find.byKey(const ValueKey<String>('need-help-icon-1')), findsNothing);
    });

    testWidgets('two questions keep the dots until both are answered',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: _RecordingSupport(),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();

      Future<void> type(String text) async {
        await tester.enterText(
          find.byKey(const ValueKey<String>('support-composer')),
          text,
        );
        // The mic becomes send once there is text, on the next frame.
        await tester.pump();
        await tester.tap(find.byKey(const ValueKey<String>('support-send')));
        await tester.pump();
      }

      await type('hello');
      await tester.pump(const Duration(seconds: 2));
      await type('thanks');
      await tester.pump(const Duration(seconds: 2));
      await tester.pump();
      // The first answer is in; the second is still being written.
      expect(find.textContaining('This is a demo answer'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('support-typing')), findsOneWidget);

      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(find.text('Glad that helped.'), findsOneWidget);
      expect(find.byKey(const ValueKey<String>('support-typing')), findsNothing);
    });

    testWidgets('signing out takes the chat off the phone',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        supportRepository: _RecordingSupport(),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.support);
      await tester.pumpAndSettle();
      await _askSupport(tester, 'hello');
      final SharedPreferences stored = await SharedPreferences.getInstance();
      expect(stored.getString('nexmile.support_thread'), isNotNull);

      _nav(tester).pop();
      await tester.pumpAndSettle();
      _nav(tester).pushNamed(AppRoutes.profile);
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(find.text('Sign out'), 300,
          scrollable: find.byType(Scrollable).last);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Sign out'));
      await tester.pumpAndSettle();
      expect(find.byType(LoginScreen), findsOneWidget);
      expect(stored.getString('nexmile.support_thread'), isNull);
    });
  });

  group('restaurant menu filters', () {
    Future<FakeStorefrontRepository> openMenu(
      WidgetTester tester, {
      Map<String, dynamic>? menu,
    }) async {
      final FakeStorefrontRepository repo = FakeStorefrontRepository()
        ..menuPayload = menu ?? _filterMenu();
      _useTallPhone(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        storefrontRepository: repo,
      );
      await _settleSplash(tester);
      await tester.tap(find.text('Anjappar Chettinad').first);
      await tester.pumpAndSettle();
      return repo;
    }

    testWidgets('the veg chip narrows the menu, and a second tap restores it',
        (WidgetTester tester) async {
      await openMenu(tester);
      // In the list; with the photo and the sheet above it, just below the
      // fold on this phone.
      expect(find.text('Chicken 65', skipOffstage: false), findsOneWidget);

      await tester.tap(find.text('Veg'));
      await tester.pumpAndSettle();

      expect(find.text('Paneer Tikka'), findsOneWidget);
      expect(find.text('Chicken 65', skipOffstage: false), findsNothing);
      expect(find.text('Egg Bonda', skipOffstage: false), findsNothing);
      // Paneer Tikka, Veg Pulao and Gulab Jamun.
      expect(find.text('3 dishes'), findsOneWidget);

      await tester.tap(find.text('Veg'));
      await tester.pumpAndSettle();
      expect(find.text('Chicken 65', skipOffstage: false), findsOneWidget);
      expect(find.text('3 dishes'), findsNothing);
    });

    testWidgets('search finds dishes by name and description, and clears',
        (WidgetTester tester) async {
      await openMenu(tester);

      // Search lives over the photo, as on the big apps, and opens the field.
      expect(find.byType(TextField), findsNothing);
      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'paneer');
      await tester.pumpAndSettle();

      expect(find.text('Paneer Tikka'), findsOneWidget);
      // Matched on its description, not its name.
      expect(find.text('Veg Pulao'), findsOneWidget);
      expect(find.text('Chicken 65', skipOffstage: false), findsNothing);
      expect(find.text('2 dishes'), findsOneWidget);

      await tester.tap(find.text('Clear all'));
      await tester.pumpAndSettle();
      expect(find.text('Chicken 65', skipOffstage: false), findsOneWidget);
      expect(find.text('paneer'), findsNothing);
    });

    testWidgets('a search that matches nothing says so, with a way back',
        (WidgetTester tester) async {
      await openMenu(tester);

      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'pizza');
      await tester.pumpAndSettle();
      expect(find.text('Nothing matched'), findsOneWidget);
      expect(find.text('Try another dish name, or remove a filter.'),
          findsOneWidget);

      // The empty state's own button, not the one on the results line.
      await tester.tap(find.widgetWithText(OutlinedButton, 'Clear all'));
      await tester.pumpAndSettle();
      expect(find.text('Nothing matched'), findsNothing);
      expect(find.text('Paneer Tikka', skipOffstage: false), findsOneWidget);
    });

    testWidgets('the Menu button jumps to a section below the fold',
        (WidgetTester tester) async {
      await openMenu(tester);
      // Below the fold to begin with.
      expect(find.text('Desserts'), findsNothing);

      await tester.tap(find.text('Menu'));
      await tester.pumpAndSettle();
      final Finder sheet = find.byType(BottomSheet);
      expect(find.descendant(of: sheet, matching: find.text('Starters')),
          findsOneWidget);
      // Each section lists how many dishes it has.
      expect(find.descendant(of: sheet, matching: find.text('7')),
          findsOneWidget);

      await tester.tap(find.descendant(of: sheet, matching: find.text('Desserts')));
      await tester.pumpAndSettle();

      expect(find.byType(BottomSheet), findsNothing);
      expect(find.text('Desserts'), findsOneWidget);
      // Below the pinned bars rather than hidden under them.
      final double barsBottom =
          tester.getBottomLeft(find.byKey(const Key('menu-chips'))).dy;
      expect(tester.getTopLeft(find.text('Desserts')).dy,
          greaterThan(barsBottom));
    });

    testWidgets('the filter sheet sorts by price and counts what it will show',
        (WidgetTester tester) async {
      await openMenu(tester);

      await tester.tap(find.text('Filters'));
      await tester.pumpAndSettle();
      expect(find.text('Sort by'), findsOneWidget);
      expect(find.text('Food type'), findsOneWidget);
      expect(find.text('Show 10 dishes'), findsOneWidget);

      // Picking a diet in the sheet updates the count before applying.
      final Finder sheet = find.byType(BottomSheet);
      await tester.tap(find.descendant(of: sheet, matching: find.text('Veg')));
      await tester.pumpAndSettle();
      expect(find.text('Show 3 dishes'), findsOneWidget);
      await tester.tap(find.descendant(of: sheet, matching: find.text('Veg')));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Cost: low to high'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Show 10 dishes'));
      await tester.pumpAndSettle();

      // The cheapest starter now leads, and Paneer Tikka, which led before,
      // has moved down below the fold.
      expect(
        tester.getTopLeft(find.text('Egg Bonda')).dy,
        lessThan(tester.getTopLeft(find.text('Kebab 1')).dy),
      );
      expect(find.text('Paneer Tikka'), findsNothing);
    });

    testWidgets('a bestseller wears the badge, and gets a chip',
        (WidgetTester tester) async {
      await openMenu(tester);
      expect(find.text('BESTSELLER'), findsOneWidget);

      // The row scrolls sideways; the diet chips come first.
      await tester.dragUntilVisible(
        find.text('Bestseller'),
        find.byKey(const Key('menu-chips')),
        const Offset(-120, 0),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Bestseller'));
      await tester.pumpAndSettle();
      expect(find.text('1 dish'), findsOneWidget);
      expect(find.text('Paneer Tikka'), findsOneWidget);
    });

    testWidgets('chips that would change nothing are not offered',
        (WidgetTester tester) async {
      // Two non-veg biryanis, unrated and full price: Non-veg would keep both,
      // and every other chip would keep neither.
      await openMenu(
        tester,
        menu: <String, dynamic>{
          'menu': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 1,
              'name': 'Biryani',
              'items': <Map<String, dynamic>>[
                <String, dynamic>{'id': 1, 'name': 'Mutton Biryani'},
                <String, dynamic>{'id': 2, 'name': 'Chicken Biryani'},
              ],
            },
          ],
        },
      );

      expect(find.text('Filters'), findsOneWidget);
      for (final String chip in <String>[
        'Veg',
        'Egg',
        'Non-veg',
        'Bestseller',
        'Rated 4.0+',
        'Offers',
      ]) {
        expect(find.text(chip), findsNothing, reason: chip);
      }
      // One section needs no Menu button.
      expect(find.text('Menu'), findsNothing);
    });
  });

  group('address', () {
    test('a draft sends coordinates as numbers and drops empty optionals', () {
      const AddressDraft draft = AddressDraft(
        label: AddressLabel.home,
        line1: '12A Green Residency',
        line2: '   ',
        landmark: '',
        city: 'Chennai',
        state: 'Tamil Nadu',
        pincode: '600040',
        latitude: 13.0827,
        longitude: 80.2707,
      );

      final Map<String, dynamic> json = draft.toJson();
      expect(json['latitude'], isA<double>());
      expect(json['longitude'], isA<double>());
      expect(json['label'], 'home');
      // Blank optionals become null, which ApiClient then strips entirely.
      expect(json['line2'], isNull);
      expect(json['landmark'], isNull);
    });

    test('a resource parses string coordinates', () {
      // The API returns lat/lng as strings even though it accepts numbers.
      final Address address = Address.fromJson(<String, dynamic>{
        'id': 7,
        'label': 'work',
        'line1': 'Tidel Park',
        'city': 'Chennai',
        'state': 'Tamil Nadu',
        'pincode': '600113',
        'latitude': '12.98765',
        'longitude': '80.24567',
        'is_default': true,
      });

      expect(address.latitude, closeTo(12.98765, 1e-9));
      expect(address.longitude, closeTo(80.24567, 1e-9));
      expect(address.label, AddressLabel.work);
    });

    test('an unknown label degrades to other rather than throwing', () {
      expect(Address.labelFrom('warehouse'), AddressLabel.other);
      expect(Address.labelFrom(null), AddressLabel.other);
    });

    testWidgets('a customer with no address is sent to the location screen',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      final FakeAuthRepository auth = FakeAuthRepository();
      await _pumpApp(
        tester,
        seed: _languageChosen,
        repository: auth,
        addressRepository: FakeAddressRepository(),
      );
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField).first, '9876543210');
      await tester.tap(find.text('Continue'));
      await _pumpFrames(tester);
      await tester.enterText(find.byType(TextField).first, '123456');
      await _pumpFrames(tester);

      expect(find.byType(LocationPermissionScreen), findsOneWidget);
      expect(find.text('Where should we deliver?'), findsOneWidget);
      // The reasons are on screen before the OS dialog is ever triggered.
      expect(find.text('Shops within 1 km'), findsOneWidget);
      expect(_location.requestCount, 0, reason: 'no prompt until they opt in');
    });

    testWidgets('a customer who already has an address skips straight to home',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(tester, seed: _languageChosen);
      await _settleSplash(tester);

      await tester.enterText(find.byType(TextFormField).first, '9876543210');
      await tester.tap(find.text('Continue'));
      await _pumpFrames(tester);
      await tester.enterText(find.byType(TextField).first, '123456');
      await _pumpFrames(tester);

      expect(find.byType(AppShell), findsOneWidget);
      expect(find.byType(LocationPermissionScreen), findsNothing);
    });

    testWidgets('allowing location opens the map on the fix',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: FakeAddressRepository(),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.locationPermission);
      await _pumpFrames(tester);

      // The address book is empty here, so the home tab has already taken its
      // own fix to anchor the nearby search. What matters is that tapping
      // Allow costs exactly one more.
      final int before = _location.requestCount;
      await tester.tap(find.text('Allow location'));
      await _pumpFrames(tester);

      expect(_location.requestCount, before + 1);
      expect(find.byType(AddressMapScreen), findsOneWidget);
    });

    testWidgets('a refusal explains itself and still allows manual entry',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: FakeAddressRepository(),
        locationService:
            FakeLocationService(failure: LocationFailure.denied),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.locationPermission);
      await _pumpFrames(tester);

      await tester.tap(find.text('Allow location'));
      await _pumpFrames(tester);

      expect(
        find.textContaining('Location permission was declined'),
        findsOneWidget,
      );
      expect(find.byType(AddressMapScreen), findsNothing);

      // Declining is never a dead end.
      await tester.tap(find.text("I'll enter my address instead"));
      await _pumpFrames(tester);
      expect(find.byType(AddressMapScreen), findsOneWidget);
    });

    testWidgets('a permanent denial offers the settings shortcut',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: FakeAddressRepository(),
        locationService:
            FakeLocationService(failure: LocationFailure.deniedForever),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.locationPermission);
      await _pumpFrames(tester);

      await tester.tap(find.text('Allow location'));
      await _pumpFrames(tester);

      expect(find.text('Settings'), findsOneWidget);
      await tester.tap(find.text('Settings'));
      await _pumpFrames(tester);
      expect(_location.settingsCount, 1);
    });

    /// Opens the delivery map on a pin, as the add flow does.
    Future<void> openMap(
      WidgetTester tester, {
      FakeAddressRepository? repository,
      FakeLocationService? location,
    }) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: repository ?? FakeAddressRepository(),
        locationService: location,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.addressMap,
        arguments: const AddressMapArgs(
          latitude: 13.05,
          longitude: 80.21,
          isFirstAddress: false,
        ),
      );
      await _pumpFrames(tester);
    }

    Finder detailsField() => find.widgetWithText(TextFormField, 'Address details*');

    testWidgets('the map saves the pin with the details typed under it',
        (WidgetTester tester) async {
      await openMap(tester);

      expect(find.byType(AddressMapScreen), findsOneWidget);
      expect(find.text('Select delivery location'), findsOneWidget);
      expect(find.text('Move pin to your exact delivery location'),
          findsOneWidget);
      expect(find.text('Use current location'), findsOneWidget);
      // The pin's area, from the geocoder: the neighbourhood leads.
      expect(find.textContaining('Near the bus stop'), findsOneWidget);
      // "Myself" is the default receiver, from the profile.
      expect(find.textContaining('9876543210'), findsOneWidget);

      await tester.enterText(detailsField(), 'Flat 3B, 2nd floor');
      await tester.tap(find.text('Work'));
      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);

      final AddressDraft draft = _addressRepo.lastDraft!;
      expect(draft.line1, 'Flat 3B, 2nd floor');
      // What the map knew about the spot, without the customer typing it.
      expect(draft.line2, '12A Green Residency');
      expect(draft.city, 'Chennai');
      expect(draft.pincode, '600040');
      expect(draft.latitude, 13.05);
      expect(draft.longitude, 80.21);
      expect(draft.label, AddressLabel.work);
      expect(draft.contactName, 'Priya Kumar');
      expect(draft.contactPhone, '9876543210');
      // A new address is where delivery goes now.
      expect(draft.isDefault, isTrue);
      expect(find.byType(AddressMapScreen), findsNothing);
    });

    testWidgets('address details are required before anything is sent',
        (WidgetTester tester) async {
      await openMap(tester);

      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);

      expect(find.text('This field is required'), findsOneWidget);
      expect(_addressRepo.lastDraft, isNull);
    });

    testWidgets('someone else is asked for their name and number',
        (WidgetTester tester) async {
      await openMap(tester);
      await tester.enterText(detailsField(), 'Flat 3B');

      await tester.tap(find.text('Someone else'));
      await _pumpFrames(tester);
      expect(find.text('Receiver details'), findsOneWidget);

      final Finder sheet = find.byType(BottomSheet);
      await tester.enterText(
        find.descendant(of: sheet, matching: find.byType(TextFormField)).at(0),
        'Arun',
      );
      // Not a mobile number: refused before the sheet closes.
      await tester.enterText(
        find.descendant(of: sheet, matching: find.byType(TextFormField)).at(1),
        '12345',
      );
      await tester.tap(find.text('Save changes'));
      await _pumpFrames(tester);
      expect(find.text('Enter a valid 10-digit mobile number'), findsOneWidget);

      await tester.enterText(
        find.descendant(of: sheet, matching: find.byType(TextFormField)).at(1),
        '9123456780',
      );
      await tester.tap(find.text('Save changes'));
      await _pumpFrames(tester);
      expect(find.textContaining('9123456780'), findsOneWidget);

      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);
      expect(_addressRepo.lastDraft!.contactName, 'Arun');
      expect(_addressRepo.lastDraft!.contactPhone, '9123456780');
    });

    testWidgets('a pin with no PIN code asks for it, and checks it',
        (WidgetTester tester) async {
      await openMap(
        tester,
        location: FakeLocationService(
          place: const ResolvedPlace(
            line1: 'Gandhi Street',
            landmark: 'K L K S Nagar',
            city: 'Pudukkottai',
            state: 'Tamil Nadu',
          ),
        ),
      );

      expect(
        find.text(
          "We couldn't read the full address for this pin. Please fill in the rest.",
        ),
        findsOneWidget,
      );
      await tester.enterText(detailsField(), 'House 4');
      // Indian PIN codes cannot start with 0.
      await tester.enterText(
        find.widgetWithText(TextFormField, 'PIN code'),
        '012345',
      );
      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);
      expect(find.text('Enter a valid 6-digit PIN code'), findsOneWidget);
      expect(_addressRepo.lastDraft, isNull);

      await tester.enterText(
        find.widgetWithText(TextFormField, 'PIN code'),
        '622001',
      );
      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);
      expect(_addressRepo.lastDraft!.pincode, '622001');
      expect(_addressRepo.lastDraft!.landmark, 'K L K S Nagar');
    });

    testWidgets('server field errors land under the right input',
        (WidgetTester tester) async {
      await openMap(
        tester,
        repository: FakeAddressRepository()
          ..saveError = const ApiException(
            kind: ApiErrorKind.validation,
            statusCode: 422,
            errors: <String, List<String>>{
              'pincode': <String>['We do not deliver to this pincode yet.'],
            },
          ),
      );
      await tester.enterText(detailsField(), 'Flat 1');
      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);

      // The PIN code was filled in from the pin, so it was hidden. The
      // server's objection brings it out, with the message under it.
      expect(find.text('We do not deliver to this pincode yet.'),
          findsOneWidget);
      expect(find.byType(AddressMapScreen), findsOneWidget);
    });

    testWidgets('a door photo uploads once the address is saved',
        (WidgetTester tester) async {
      debugPickPhoto = (ImageSource source) async => PickedPhoto(
            bytes: Uint8List.fromList(<int>[1, 2, 3, 4]),
            filename: 'door.jpg',
          );
      addTearDown(() => debugPickPhoto = null);
      await openMap(tester);
      await tester.enterText(detailsField(), 'Flat 3B');

      await tester.tap(find.text('Add an image'));
      await _pumpFrames(tester);
      await tester.tap(find.text('Take a photo'));
      await _pumpFrames(tester);
      // The photo is shown, with a way to change it.
      expect(find.text('Change'), findsOneWidget);

      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);

      expect(_addressRepo.uploads.single.$2, 4);
      expect(_addressRepo.uploads.single.$3, 'door.jpg');
      expect(_addresses.lastSaved?.photoUrl, isNotNull);
    });

    testWidgets('a failed photo upload still keeps the address',
        (WidgetTester tester) async {
      debugPickPhoto = (ImageSource source) async => PickedPhoto(
            bytes: Uint8List.fromList(<int>[1, 2, 3]),
            filename: 'door.jpg',
          );
      addTearDown(() => debugPickPhoto = null);
      await openMap(
        tester,
        repository: FakeAddressRepository()
          ..uploadError = const ApiException(
            kind: ApiErrorKind.server,
            statusCode: 404,
          ),
      );
      await tester.enterText(detailsField(), 'Flat 3B');
      await tester.tap(find.text('Add an image'));
      await _pumpFrames(tester);
      await tester.tap(find.text('Choose from gallery'));
      await _pumpFrames(tester);
      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);

      expect(_addressRepo.lastDraft, isNotNull);
      expect(find.text("Address saved. The photo couldn't be uploaded."),
          findsOneWidget);
    });

    /// Two saved addresses: home, the default, and work.
    FakeAddressRepository twoAddresses() => FakeAddressRepository(
          seed: <Address>[
            _testAddress,
            const Address(
              id: 2,
              label: AddressLabel.work,
              line1: 'Tidel Park',
              city: 'Chennai',
              state: 'Tamil Nadu',
              pincode: '600113',
              latitude: 12.98,
              longitude: 80.24,
              isDefault: false,
            ),
          ],
        );

    Future<void> openPicker(
      WidgetTester tester, {
      FakeAddressRepository? repository,
      FakeLocationService? location,
      bool managing = false,
    }) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: repository ?? twoAddresses(),
        locationService: location,
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(
        AppRoutes.addressBook,
        arguments: AddressBookArgs(managing: managing),
      );
      await _pumpFrames(tester);
    }

    testWidgets('select a location lists saved addresses with their distance',
        (WidgetTester tester) async {
      await openPicker(tester);

      expect(find.byType(AddressBookScreen), findsOneWidget);
      expect(find.text('Select a location'), findsOneWidget);
      expect(find.text('Use current location'), findsOneWidget);
      expect(find.text('Add address'), findsOneWidget);
      expect(find.text('SAVED ADDRESSES'), findsOneWidget);
      // The cards. "Use current location" names the same street, so the
      // whole line is matched.
      expect(find.text('12A Green Residency, Chennai, 600040'), findsOneWidget);
      expect(find.textContaining('Tidel Park'), findsOneWidget);
      // Distances from the phone's fix, which only a granted permission
      // gives: home is where the phone is, work is across the city.
      expect(find.text('0 m'), findsOneWidget);
      expect(find.text('12 km'), findsOneWidget);
      // The delivery address is marked.
      expect(find.text('Selected'), findsOneWidget);
    });

    testWidgets('picking a saved address delivers there and reloads the shops',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: twoAddresses(),
      );
      await _settleSplash(tester);
      expect(_storefrontRepo.lastNearby?['address_id'], 1);

      _nav(tester).pushNamed(AppRoutes.addressBook);
      await _pumpFrames(tester);
      await tester.tap(find.textContaining('Tidel Park'));
      await _pumpFrames(tester);

      expect(find.byType(AddressBookScreen), findsNothing);
      expect(_addresses.deliveryAddress?.id, 2);
      // The storefront looked again, for the new address.
      expect(_storefrontRepo.lastNearby?['address_id'], 2);
    });

    testWidgets('use current location delivers to where the phone is',
        (WidgetTester tester) async {
      await openPicker(tester);

      await tester.tap(find.text('Use current location'));
      await _pumpFrames(tester);

      expect(find.byType(AddressBookScreen), findsNothing);
      expect(_addresses.deliversToCurrentLocation, isTrue);
      // Nothing was saved or changed on the server.
      expect(_addressRepo.lastDraft, isNull);
      expect(_addresses.defaultAddress?.id, 1);
      // The storefront now follows the phone.
      expect(_storefrontRepo.lastNearby?['address_id'], isNull);
      expect(_storefrontRepo.lastNearby?['latitude'], 13.0827);
    });

    testWidgets('the card menu edits, reading the address again first',
        (WidgetTester tester) async {
      final FakeAddressRepository repo = twoAddresses();
      await openPicker(tester, repository: repo);

      await tester.tap(find.byIcon(Icons.more_horiz_rounded).first);
      await _pumpFrames(tester);
      await tester.tap(find.text('Edit'));
      await _pumpFrames(tester);

      // Fresh read before editing, not the possibly stale list copy.
      expect(repo.showCount, 1);
      expect(find.byType(AddressMapScreen), findsOneWidget);
      // What the customer typed last time.
      expect(find.text('12A Green Residency'), findsOneWidget);

      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);
      expect(repo.lastUpdatedId, _testAddress.id, reason: 'PATCH, not POST');
      expect(find.byType(AddressBookScreen), findsOneWidget);
    });

    testWidgets('the card menu deletes after asking',
        (WidgetTester tester) async {
      await openPicker(tester);

      await tester.tap(find.byIcon(Icons.more_horiz_rounded).last);
      await _pumpFrames(tester);
      await tester.tap(find.text('Delete'));
      await _pumpFrames(tester);
      expect(find.text('Delete this address?'), findsOneWidget);
      await tester.tap(find.text('Delete').last);
      await _pumpFrames(tester);

      expect(_addresses.addresses.length, 1);
      expect(find.textContaining('Tidel Park'), findsNothing);
    });

    testWidgets('a card can add a door photo to a saved address',
        (WidgetTester tester) async {
      debugPickPhoto = (ImageSource source) async => PickedPhoto(
            bytes: Uint8List.fromList(<int>[9, 9]),
            filename: 'gate.jpg',
          );
      addTearDown(() => debugPickPhoto = null);
      final FakeAddressRepository repo = twoAddresses();
      await openPicker(tester, repository: repo);

      await tester.tap(find.byIcon(Icons.add_a_photo_outlined).first);
      await _pumpFrames(tester);
      await tester.tap(find.text('Take a photo'));
      await _pumpFrames(tester);

      expect(repo.uploads.single.$1, 1);
      expect(find.text('Photo added'), findsOneWidget);
    });

    /// The home address, with a door photo already on it.
    FakeAddressRepository withPhoto() => FakeAddressRepository(
          seed: <Address>[
            const Address(
              id: 1,
              label: AddressLabel.home,
              line1: '12A Green Residency',
              city: 'Chennai',
              state: 'Tamil Nadu',
              pincode: '600040',
              latitude: 13.0827,
              longitude: 80.2707,
              isDefault: true,
              photoUrl: 'https://cdn.example/address-1.jpg',
            ),
          ],
        );

    testWidgets('a saved photo can be taken off from its card',
        (WidgetTester tester) async {
      final FakeAddressRepository repo = withPhoto();
      await openPicker(tester, repository: repo);

      // An address with a photo shows a different camera icon.
      await tester.tap(find.byIcon(Icons.photo_camera_back_outlined));
      await _pumpFrames(tester);
      await tester.tap(find.text('Remove photo'));
      await _pumpFrames(tester);

      expect(repo.photoDeletes, <int>[1]);
      expect(find.text('Photo removed'), findsOneWidget);
      expect(_addresses.addresses.single.photoUrl, isNull);
    });

    testWidgets('the remove choice is only offered when there is a photo',
        (WidgetTester tester) async {
      await openPicker(tester);

      await tester.tap(find.byIcon(Icons.add_a_photo_outlined).first);
      await _pumpFrames(tester);
      expect(find.text('Take a photo'), findsOneWidget);
      expect(find.text('Remove photo'), findsNothing);
    });

    testWidgets('editing can take the door photo off, on save',
        (WidgetTester tester) async {
      final FakeAddressRepository repo = withPhoto();
      await openPicker(tester, repository: repo, managing: true);

      await tester.tap(find.textContaining('12A Green Residency'));
      await _pumpFrames(tester);
      expect(find.byType(AddressMapScreen), findsOneWidget);

      await tester.tap(find.text('Remove'));
      await _pumpFrames(tester);
      // Back to the invitation, and nothing sent yet.
      expect(find.text('Add an image'), findsOneWidget);
      expect(repo.photoDeletes, isEmpty);

      await tester.tap(find.text('Save address'));
      await _pumpFrames(tester);
      expect(repo.photoDeletes, <int>[1]);
    });

    test('a photo is labelled with a type the server accepts', () {
      expect(ApiAddressRepository.photoContentType('door.jpg'), 'image/jpeg');
      expect(ApiAddressRepository.photoContentType('DOOR.PNG'), 'image/png');
      expect(ApiAddressRepository.photoContentType('gate.webp'), 'image/webp');
      // Anything else the picker hands back has been re-encoded as JPEG.
      expect(ApiAddressRepository.photoContentType('scaled_1234'), 'image/jpeg');
    });

    testWidgets('search finds a place and opens the map on it',
        (WidgetTester tester) async {
      final FakeLocationService location = FakeLocationService()
        ..suggestions = const <PlaceSuggestion>[
          // As Google sends it: a place id, no coordinates yet.
          PlaceSuggestion(
            title: 'Anna Nagar',
            subtitle: 'Chennai, Tamil Nadu',
            placeId: 'abc',
            distanceMetres: 2400,
          ),
        ];
      await openPicker(tester, location: location);

      // Two letters is too short to search.
      await tester.enterText(find.byType(TextField).first, 'an');
      await _pumpFrames(tester);
      expect(find.text('Anna Nagar'), findsNothing);

      await tester.enterText(find.byType(TextField).first, 'anna nagar');
      await _pumpFrames(tester);
      expect(find.text('Anna Nagar'), findsOneWidget);
      expect(find.text('2.4 km'), findsOneWidget);
      expect(find.textContaining('powered by'), findsOneWidget);
      // Ranked from where the phone is.
      expect(location.lastSearchNear, (13.0827, 80.2707));

      await tester.tap(find.text('Anna Nagar'));
      await _pumpFrames(tester);
      expect(location.resolveCount, 1);
      expect(find.byType(AddressMapScreen), findsOneWidget);
      // Shown while the pin's own address is looked up.
      expect(find.textContaining('Near the bus stop'), findsOneWidget);
    });

    testWidgets('a search with no match says what to try instead',
        (WidgetTester tester) async {
      final FakeLocationService location = FakeLocationService()
        ..suggestions = const <PlaceSuggestion>[];
      await openPicker(tester, location: location);

      await tester.enterText(find.byType(TextField).first, 'zzzz');
      await _pumpFrames(tester);

      expect(find.textContaining('No places found'), findsOneWidget);
    });

    testWidgets('add address remembers the places picked in it',
        (WidgetTester tester) async {
      final FakeLocationService location = FakeLocationService()
        ..suggestions = const <PlaceSuggestion>[
          PlaceSuggestion(
            title: 'Anna Nagar',
            subtitle: 'Chennai, Tamil Nadu',
            latitude: 13.085,
            longitude: 80.21,
          ),
        ];
      await openPicker(tester, location: location);

      await tester.tap(find.text('Add address'));
      await _pumpFrames(tester);
      final Finder sheet = find.byType(BottomSheet);
      expect(
        find.descendant(of: sheet, matching: find.text('Use current location')),
        findsOneWidget,
      );
      expect(find.text('RECENT LOCATIONS'), findsNothing);

      await tester.enterText(
        find.descendant(of: sheet, matching: find.byType(TextField)),
        'anna',
      );
      await _pumpFrames(tester);
      await tester.tap(find.text('Anna Nagar'));
      await _pumpFrames(tester);
      expect(find.byType(AddressMapScreen), findsOneWidget);

      // Back out of the map, and open the sheet again.
      _nav(tester).pop();
      await _pumpFrames(tester);
      await tester.tap(find.text('Add address'));
      await _pumpFrames(tester);
      expect(find.text('RECENT LOCATIONS'), findsOneWidget);
      expect(find.text('Anna Nagar'), findsOneWidget);
    });

    testWidgets('from the profile the list is for editing, not choosing',
        (WidgetTester tester) async {
      await openPicker(tester, managing: true);

      expect(find.text('Delivery addresses'), findsOneWidget);
      expect(find.text('Use current location'), findsNothing);

      await tester.tap(find.textContaining('Tidel Park'));
      await _pumpFrames(tester);
      expect(find.byType(AddressMapScreen), findsOneWidget);
      expect(_addresses.defaultAddress?.id, 1, reason: 'not chosen');
    });

    test('deleting the default re-reads, because the server promotes another',
        () async {
      // The API soft-deletes and promotes the next most recent address. Just
      // dropping the row locally would leave the book with no default at all.
      final FakeAddressRepository repo = FakeAddressRepository(
        seed: <Address>[
          _testAddress,
          const Address(
            id: 2,
            label: AddressLabel.work,
            line1: 'Tidel Park',
            city: 'Chennai',
            state: 'Tamil Nadu',
            pincode: '600113',
            latitude: 12.98,
            longitude: 80.24,
            isDefault: false,
          ),
        ],
      );
      final AddressController controller =
          AddressController(repository: repo);
      await controller.load();

      final int before = repo.listCount;
      await controller.delete(_testAddress.id);

      expect(repo.listCount, before + 1, reason: 're-read after the promotion');
      expect(controller.addresses.length, 1);
    });

    test('deleting a non-default address does not re-read', () async {
      final FakeAddressRepository repo = FakeAddressRepository(
        seed: <Address>[
          _testAddress,
          const Address(
            id: 2,
            label: AddressLabel.work,
            line1: 'Tidel Park',
            city: 'Chennai',
            state: 'Tamil Nadu',
            pincode: '600113',
            latitude: 12.98,
            longitude: 80.24,
            isDefault: false,
          ),
        ],
      );
      final AddressController controller =
          AddressController(repository: repo);
      await controller.load();

      final int before = repo.listCount;
      await controller.delete(2);

      expect(repo.listCount, before, reason: 'no promotion, no extra call');
      expect(controller.addresses.single.id, _testAddress.id);
    });

    test('a failed re-read falls back to the cached copy', () async {
      final FakeAddressRepository repo =
          FakeAddressRepository(seed: <Address>[_testAddress]);
      final AddressController controller =
          AddressController(repository: repo);
      await controller.load();

      repo.showError = const ApiException(kind: ApiErrorKind.network);
      final Address? fetched = await controller.fetch(_testAddress.id);

      expect(fetched?.id, _testAddress.id, reason: 'editing still works');
    });

    testWidgets('an empty address book offers a way to add one',
        (WidgetTester tester) async {
      _useTallScreen(tester);
      await _pumpApp(
        tester,
        seed: _languageChosen,
        session: _testSession(),
        addressRepository: FakeAddressRepository(),
      );
      await _settleSplash(tester);
      _nav(tester).pushNamed(AppRoutes.addressBook);
      await _pumpFrames(tester);

      expect(find.text('No addresses yet'), findsOneWidget);
      await tester.tap(find.text('Add address'));
      await _pumpFrames(tester);
      // The add sheet: search, current location, recent places.
      expect(find.byType(BottomSheet), findsOneWidget);
      expect(find.textContaining('powered by'), findsOneWidget);
    });
  });

  // -------------------------------------------------------------------------
  group('layout robustness', () {
    testWidgets('the translated screens fit a small phone in every language',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(360, 690);
      tester.view.devicePixelRatio = 1.0;
      tester.platformDispatcher.textScaleFactorTestValue = 1.3;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.platformDispatcher.clearTextScaleFactorTestValue();
      });
      _mockAppVersion(tester);

      final Order order = Order.fromJson(<String, dynamic>{
        'id': 1,
        'order_number': 'NX1001',
        'status': 'delivered',
        'status_label': 'Delivered',
        'fulfilment_type': 'delivery',
        'grand_total': '420',
        'can_review': true,
        'restaurant': <String, dynamic>{
          'id': 'r1',
          'name': 'Anjappar Chettinad',
        },
        'rider': <String, dynamic>{'name': 'Murugan'},
        'items': <Map<String, dynamic>>[
          <String, dynamic>{
            'id': 1,
            'menu_item_id': 41,
            'name': 'Mutton Biryani',
            'quantity': 1,
            'is_veg': false,
          },
        ],
      });

      for (final String code in AppLanguages.all
          .map((AppLanguage language) => language.code)) {
        await tester.pumpWidget(const SizedBox.shrink());
        await _pumpApp(
          tester,
          seed: _languageChosenAs(code),
          session: _testSession(),
          storefrontRepository: FakeStorefrontRepository()
            ..openCartList = <OpenCart>[
              const OpenCart(
                restaurantId: 'r1',
                restaurantName: 'Anjappar Chettinad Restaurant',
                itemCount: 12,
                grandTotal: 1340,
              ),
            ]
            ..orderStatus = 'delivered'
            ..orderList = <String>['delivered']
            ..orderExtra = <String, dynamic>{
              'can_review': true,
              'restaurant': <String, dynamic>{
                'id': 'r1',
                'name': 'Anjappar Chettinad',
                'area': 'Anna Nagar',
              },
              'rider': <String, dynamic>{'name': 'Murugan'},
            },
          walletRepository: FakeWalletRepository(balance: 100),
          supportRepository: _RecordingSupport(),
        );
        await _settleSplash(tester);
        expect(tester.takeException(), isNull, reason: '$code home');

        for (final (String route, Object? arguments) in <(String, Object?)>[
          (AppRoutes.profile, null),
          (AppRoutes.orders, null),
          (AppRoutes.orderStatus, const OrderArgs(orderId: 1)),
          (AppRoutes.rateOrder, RateOrderArgs(order: order)),
          (AppRoutes.cart, const CartArgs(restaurantId: 'r1')),
          (AppRoutes.wallet, null),
          (AppRoutes.coupons, null),
          (AppRoutes.help, null),
          (AppRoutes.favourites, null),
          (AppRoutes.support, const SupportArgs(orderId: 1)),
        ]) {
          _nav(tester).pushNamed(route, arguments: arguments);
          await tester.pumpAndSettle();
          expect(tester.takeException(), isNull, reason: '$code $route');
          _nav(tester).pop();
          await tester.pumpAndSettle();
        }
      }
    });

    testWidgets('the cart holds up on 320x568 at maximum text scale',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1.0;
      tester.platformDispatcher.textScaleFactorTestValue = 3.0;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.platformDispatcher.clearTextScaleFactorTestValue();
      });

      // Malayalam for long words, Urdu for right to left.
      for (final String code in <String>['ml', 'ur']) {
        await tester.pumpWidget(const SizedBox.shrink());
        await _openCart(
          tester,
          seed: _languageChosenAs(code),
          wallet: FakeWalletRepository(balance: 100),
        );
        expect(find.byType(CartScreen), findsOneWidget, reason: code);
        expect(tester.takeException(), isNull, reason: code);

        await tester.drag(
          find.descendant(
            of: find.byType(CartScreen),
            matching: find.byType(ListView),
          ),
          const Offset(0, -3000),
        );
        await tester.pumpAndSettle();
        await tester.tap(find.byKey(const ValueKey<String>('cart-bill')));
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull, reason: code);
      }
    });

    // The brief: no overlapping or clipped text in any language. Flutter
    // surfaces both as overflow exceptions, so a clean pump of every screen in
    // every locale — and at the extremes of viewport and text scale — is the
    // check.
    testWidgets('login and OTP lay out cleanly in every locale',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      for (final AppLanguage language in AppLanguages.all) {
        // A fresh tree, or the app keeps the first language for every run.
        await tester.pumpWidget(const SizedBox.shrink());
        await _pumpApp(tester, seed: _languageChosenAs(language.code));
        await _settleSplash(tester);

        expect(find.byType(LoginScreen), findsOneWidget,
            reason: language.englishName);
        expect(tester.takeException(), isNull,
            reason: 'login overflowed in ${language.englishName}');

        _nav(tester).pushNamed(
          AppRoutes.otpVerification,
          arguments: OtpArgs(
            identifier: LoginIdentifier.tryParse('9876543210')!,
          ),
        );
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull,
            reason: 'OTP overflowed in ${language.englishName}');
        _nav(tester).pop();
        await tester.pumpAndSettle();
      }
    });

    testWidgets('the profile screen lays out cleanly in every locale',
        (WidgetTester tester) async {
      _useTallPhone(tester);
      for (final AppLanguage language in AppLanguages.all) {
        // A fresh tree, or the app keeps the first language for every run.
        await tester.pumpWidget(const SizedBox.shrink());
        await _pumpApp(
          tester,
          seed: _languageChosenAs(language.code),
          session: _testSession(),
        );
        await _settleSplash(tester);

        _nav(tester).pushNamed(AppRoutes.profile);
        await tester.pumpAndSettle();

        expect(find.byType(ProfileScreen), findsOneWidget,
            reason: language.englishName);
        expect(tester.takeException(), isNull,
            reason: 'profile overflowed in ${language.englishName}');
      }
    });

    testWidgets('the language screen lays out cleanly in every locale',
        (WidgetTester tester) async {
      for (final AppLanguage language in AppLanguages.all) {
        // A fresh tree, or the app keeps the first language for every run.
        await tester.pumpWidget(const SizedBox.shrink());
        await _pumpApp(
          tester,
          seed: <String, Object>{'nexmile.language_code': language.code},
        );
        await _settleSplash(tester);

        // Reached from the login screen now, by its translate icon, since
        // the label is in whichever language this run is in.
        await tester.tap(find.byIcon(Icons.translate_rounded));
        await tester.pumpAndSettle();
        expect(find.byType(LanguageScreen), findsOneWidget);
        expect(tester.takeException(), isNull,
            reason: '${language.englishName} overflowed');
      }
    });

    testWidgets('login holds up on 320x568 at maximum text scale',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1.0;
      tester.platformDispatcher.textScaleFactorTestValue = 3.0; // clamps to 1.3
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.platformDispatcher.clearTextScaleFactorTestValue();
      });

      await _pumpApp(tester, seed: _languageChosenAs('ta'));
      await _settleSplash(tester);

      expect(find.byType(LoginScreen), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('the dashboard holds up on 320x568 at maximum text scale',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1.0;
      tester.platformDispatcher.textScaleFactorTestValue = 3.0;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.platformDispatcher.clearTextScaleFactorTestValue();
      });

      await _pumpApp(
        tester,
        seed: _languageChosenAs('ml'),
        session: _testSession(),
      );
      await _settleSplash(tester);

      expect(find.byType(AppShell), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('a restaurant menu holds up on 320x568 at maximum text scale',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1.0;
      tester.platformDispatcher.textScaleFactorTestValue = 3.0;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.platformDispatcher.clearTextScaleFactorTestValue();
      });

      // Malayalam for long words, Urdu for right to left.
      for (final String code in <String>['ml', 'ur']) {
        // A fresh tree: re-pumping the app over itself keeps the screen and
        // the language of the run before.
        await tester.pumpWidget(const SizedBox.shrink());
        await _pumpApp(
          tester,
          seed: _languageChosenAs(code),
          session: _testSession(),
          storefrontRepository: FakeStorefrontRepository()
            ..menuPayload = _filterMenu(),
        );
        await _settleSplash(tester);
        // Opened directly: on this screen the home's first restaurant sits
        // below the fold, and the menu is what is under test.
        _nav(tester).pushNamed(
          AppRoutes.restaurant,
          arguments: const RestaurantArgs(restaurantId: 'r1'),
        );
        await tester.pumpAndSettle();

        // Pinned, with the menu scrolling under it.
        await tester.drag(find.byType(CustomScrollView), const Offset(0, -500));
        await tester.pumpAndSettle();
        expect(find.byKey(const Key('menu-chips')), findsOneWidget,
            reason: code);
        expect(tester.takeException(), isNull, reason: code);

        await tester.tap(find.byIcon(Icons.tune_rounded));
        await tester.pumpAndSettle();
        expect(find.byType(BottomSheet), findsOneWidget, reason: code);
        expect(tester.takeException(), isNull, reason: code);
      }
    });

    testWidgets('the permission pages hold up on 320x568 at maximum text scale',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1.0;
      tester.platformDispatcher.textScaleFactorTestValue = 3.0;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.platformDispatcher.clearTextScaleFactorTestValue();
      });

      for (final String code in <String>['ml', 'ur']) {
        // A fresh tree: re-pumping the app over itself keeps the screen and
        // the language of the run before.
        await tester.pumpWidget(const SizedBox.shrink());
        await _pumpApp(
          tester,
          seed: _languageChosenAs(code),
          locationService: FakeLocationService()
            ..permission = LocationPermission.denied,
          pushService: FakePushService()..access = NotificationAccess.askable,
        );
        await _settleSplash(tester);
        expect(
          tester.widget<Directionality>(find.byType(Directionality).first)
              .textDirection,
          code == 'ur' ? TextDirection.rtl : TextDirection.ltr,
        );
        expect(find.byType(GradientButton), findsOneWidget, reason: code);
        expect(tester.takeException(), isNull, reason: code);

        // On to the notifications page.
        await tester.tap(find.byType(TextButton).last);
        await tester.pumpAndSettle();
        expect(find.byType(GradientButton), findsOneWidget, reason: code);
        expect(tester.takeException(), isNull, reason: code);
      }
    });

    testWidgets('right-to-left languages flip the layout',
        (WidgetTester tester) async {
      await _pumpApp(tester, seed: _languageChosenAs('ur'));
      await _settleSplash(tester);

      final Directionality directionality = tester.widget<Directionality>(
        find.byType(Directionality).first,
      );
      expect(directionality.textDirection, TextDirection.rtl);
      expect(find.byType(LoginScreen), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  });
}

/// Minimal [TokenProvider] for the [ApiClient] tests.
class _StubTokens implements TokenProvider {
  _StubTokens(this._token, {this.refreshResult = true});

  final String _token;
  final bool refreshResult;

  int refreshCalls = 0;
  int sessionLostCalls = 0;

  @override
  String? get accessToken => _token;

  @override
  Future<bool> refresh() async {
    refreshCalls++;
    // A real refresh is a network round trip; the delay is what makes the
    // single-flight assertion meaningful.
    await Future<void>.delayed(const Duration(milliseconds: 10));
    return refreshResult;
  }

  @override
  Future<void> onSessionLost() async => sessionLostCalls++;
}

/// Stands in for the storefront, cart and order endpoints.
///
/// Payloads are built as raw JSON maps rather than as models, so the decoding
/// the real API exercises — strings where numbers belong, absent optionals —
/// is exercised here too.
class FakeStorefrontRepository implements StorefrontRepository {
  /// Set when a shop should report itself inside its hours but paused.
  bool withinHours = true;

  bool dealsThrow = false;
  int searchResultCount = 2;
  int cartStatus = 200;
  double grandTotalOverride = 100;
  String orderStatus = 'placed';
  List<String> orderList = <String>['placed'];
  List<Map<String, dynamic>> lines = <Map<String, dynamic>>[
    <String, dynamic>{'id': 501, 'menu_item_id': 1, 'quantity': 1},
  ];

  /// Thrown by the next mutating call, then cleared.
  ApiException? failNextWith;

  int orderCalls = 0;
  int homeCalls = 0;
  final List<Map<String, Object>> favouriteCalls = <Map<String, Object>>[];

  /// Empty by default: the live API omits sections that have no data, so the
  /// home screen must render correctly with none.
  Map<String, dynamic> homePayload = const <String, dynamic>{
    'sections': <Object>[],
  };
  RestaurantFilters lastFilters = RestaurantFilters.none;
  Map<String, Object?>? lastNearby;
  Map<String, Object?>? lastCheckout;

  /// What the last cart read asked to be priced for, if anything.
  FulfilmentType? lastCartFulfilment;

  /// Merged into every `/track` answer, for the rider, ETA and route.
  Map<String, dynamic> trackExtra = <String, dynamic>{};
  int trackCalls = 0;

  void _maybeThrow() {
    final ApiException? error = failNextWith;
    if (error == null) return;
    failNextWith = null;
    throw error;
  }

  Map<String, dynamic> _restaurantJson(String id, String name, {bool open = true}) =>
      <String, dynamic>{
        'id': id,
        'name': name,
        'service_category': 'Restaurant',
        'area': 'Anna Nagar',
        // Typed as strings by the schema in several places.
        'is_open': open ? 'true' : 'false',
        'is_accepting_orders': open ? '1' : '0',
        'within_operating_hours': withinHours ? 'true' : 'false',
        'avg_prep_time_minutes': '28',
        'min_order_value': '149.00',
        'packaging_fee': '12',
        'supports_pickup': 'true',
        'distance_metres': '820',
      };

  Map<String, dynamic> _cartJson() => <String, dynamic>{
        'id': 77,
        'fulfilment_type': 'delivery',
        'restaurant': <String, dynamic>{
          'id': 'r1',
          'name': 'Anjappar Chettinad',
          'is_open': 'true',
          'supports_pickup': 'true',
        },
        'items': lines,
        'totals': <String, dynamic>{
          'items_total': '$grandTotalOverride',
          if (couponCode != null) 'discount_total': '$couponSaving',
          'grand_total':
              '${grandTotalOverride - (couponCode == null ? 0 : couponSaving)}',
        },
        if (couponCode != null)
          'applied_coupon': <String, dynamic>{
            'code': couponCode,
            'title': 'Flat ₹50 off',
          },
        'minimum_order_value': '149',
        'meets_minimum': 'true',
        'can_checkout': 'true',
      };

  Map<String, dynamic> _orderJson(String status) => <String, dynamic>{
        'id': 1,
        'order_number': 'NX1001',
        'status': status,
        'status_label': status,
        'fulfilment_type': 'delivery',
        'grand_total': '100',
        'items': <Map<String, dynamic>>[
          <String, dynamic>{'id': 1, 'name': 'Mutton Biryani', 'quantity': 1},
        ],
        ...orderExtra,
      };

  /// Merged into every order, for the delivery address and restaurant.
  Map<String, dynamic> orderExtra = <String, dynamic>{};

  @override
  Future<HomeScreen> home({
    int? addressId,
    double? latitude,
    double? longitude,
    bool vegOnly = false,
  }) async {
    homeCalls++;
    lastHomeVegOnly = vegOnly;
    // Echoes what it filtered, as the live API does in `meta.veg_only`.
    return HomeScreen.fromJson(homePayload, <String, dynamic>{
      if (vegOnly && echoesVegOnly) 'veg_only': true,
    });
  }

  bool? lastHomeVegOnly;

  /// False plays a server from before `veg_only` on the home existed.
  bool echoesVegOnly = true;

  @override
  Future<List<Restaurant>> favourites() async => <Restaurant>[];

  /// Pages served to `reviews`, oldest call first. Defaults to one page.
  List<Map<String, dynamic>> reviewPayload = <Map<String, dynamic>>[
    <String, dynamic>{
      'id': 1,
      'author': 'Priya',
      'rating': 5,
      'comment': 'Biryani was worth the wait.',
      'created_at': '2026-08-20T10:00:00Z',
      // The food's quick answers are public; a code this build cannot name
      // is not shown as a raw code.
      'tags': <String>['tasty', 'fresh_hot', 'brand_new_code'],
    },
    <String, dynamic>{
      'id': 2,
      'author': 'Arun',
      'rating': 3,
      'comment': null,
      'created_at': '2026-08-19T10:00:00Z',
    },
  ];
  Map<String, dynamic> reviewMeta = const <String, dynamic>{
    'rating': '4.2',
    'rating_count': 18,
    'breakdown': <String, dynamic>{'5': 10, '4': 4, '3': 2, '2': 1, '1': 1},
    'current_page': 1,
    'last_page': 1,
  };
  final List<Map<String, Object?>> reviewCalls = <Map<String, Object?>>[];
  final List<Map<String, Object?>> orderReviews = <Map<String, Object?>>[];

  @override
  Future<ReviewPage> reviews(
    String restaurantId, {
    int page = 1,
    bool withCommentOnly = false,
  }) async {
    _maybeThrow();
    reviewCalls.add(<String, Object?>{
      'id': restaurantId,
      'page': page,
      'with_comment': withCommentOnly,
    });
    final List<Map<String, dynamic>> items = withCommentOnly
        ? reviewPayload
            .where((Map<String, dynamic> r) => r['comment'] != null)
            .toList()
        : reviewPayload;
    return ReviewPage.fromJson(items, reviewMeta);
  }

  @override
  Future<void> reviewOrder(
    int orderId, {
    required int rating,
    String? comment,
    Map<int, int> dishes = const <int, int>{},
    List<String> tags = const <String>[],
    RiderReview? rider,
  }) async {
    _maybeThrow();
    orderReviews.add(<String, Object?>{
      'order': orderId,
      'rating': rating,
      'comment': comment,
      'dishes': dishes,
      'tags': tags,
      'rider': rider?.toJson(),
    });
  }

  @override
  Future<void> setFavourite(String restaurantId, {required bool value}) async {
    favouriteCalls.add(<String, Object>{'id': restaurantId, 'value': value});
  }

  @override
  Future<RestaurantPage> nearby({
    int? addressId,
    double? latitude,
    double? longitude,
    String? search,
    String? serviceCategory,
    RestaurantFilters filters = RestaurantFilters.none,
  }) async {
    lastNearby = <String, Object?>{
      'address_id': addressId,
      'latitude': latitude,
      'longitude': longitude,
      'search': search,
      'service_category': serviceCategory,
      ...filters.toQuery(),
    };
    lastFilters = filters;
    final int count = (search ?? '').isEmpty ? 2 : searchResultCount;
    return RestaurantPage(
      items: <Restaurant>[
        Restaurant.fromJson(<String, dynamic>{
          ..._restaurantJson('r1', 'Anjappar Chettinad', open: false),
          ...nearbyExtras,
        }),
        if (count > 1)
          Restaurant.fromJson(_restaurantJson('r2', 'Saravana Bhavan')),
      ],
      total: count,
    );
  }

  @override
  Future<List<RescueDeal>> deals({int? addressId}) async {
    if (dealsThrow) {
      throw const ApiException(
        kind: ApiErrorKind.server,
        statusCode: 500,
        message: 'boom',
      );
    }
    return <RescueDeal>[
      RescueDeal.fromJson(<String, dynamic>{
        'id': 'd1',
        'restaurant_id': 'r1',
        'restaurant_name': 'Anjappar Chettinad',
        'name': 'Surplus Biryani',
        'price': '120',
        'compare_at_price': '240',
        'portions_left': '3',
      }),
    ];
  }

  /// Extra fields folded into the storefront payload only — the nearby list
  /// deliberately carries neither photos nor a menu.
  Map<String, dynamic> storefrontExtras = const <String, dynamic>{};

  @override
  Future<Restaurant> restaurant(String id) async => Restaurant.fromJson(
        <String, dynamic>{
          ..._restaurantJson(id, 'Anjappar Chettinad', open: false),
          ...storefrontExtras,
        },
      );

  /// Served by `menu` when set, in place of the two-biryani default.
  Map<String, dynamic>? menuPayload;

  @override
  Future<RestaurantMenu> menu(String restaurantId) async =>
      RestaurantMenu.fromJson(menuPayload ?? <String, dynamic>{
        'menu': <Map<String, dynamic>>[
          <String, dynamic>{
            'name': 'Biryani',
            'items': <Map<String, dynamic>>[
              <String, dynamic>{
                'id': 1,
                'name': 'Mutton Biryani',
                'price': '320',
                'is_available': 'true',
              },
              <String, dynamic>{
                'id': 2,
                'name': 'Chicken Biryani',
                'price': '280',
                // Sold-out dishes are returned rather than hidden.
                'is_available': 'false',
              },
            ],
          },
        ],
      });

  @override
  Future<Cart> cart(String restaurantId, {FulfilmentType? fulfilmentType}) async {
    lastCartFulfilment = fulfilmentType;
    if (cartStatus == 404) {
      throw const ApiException(
        kind: ApiErrorKind.server,
        statusCode: 404,
        message: 'No cart',
      );
    }
    return Cart.fromJson(_cartJson());
  }

  @override
  Future<Cart> addItem(
    String restaurantId, {
    required int menuItemId,
    int quantity = 1,
    List<int> optionIds = const <int>[],
    String? notes,
  }) async {
    _maybeThrow();
    return Cart.fromJson(_cartJson());
  }

  @override
  Future<Cart> setQuantity(
    String restaurantId, {
    required int cartItemId,
    required int quantity,
  }) async {
    _maybeThrow();
    return Cart.fromJson(_cartJson());
  }

  @override
  Future<Cart> removeItem(String restaurantId, int cartItemId) async {
    _maybeThrow();
    return Cart.fromJson(_cartJson());
  }

  /// The coupon on the cart, and what it takes off.
  String? couponCode;
  double couponSaving = 50;

  /// Refuses the next code, with this reason under `errors.code`.
  String? refuseCouponWith;

  @override
  Future<Cart> applyCoupon(String restaurantId, {required String code}) async {
    final String? reason = refuseCouponWith;
    if (reason != null) {
      refuseCouponWith = null;
      throw ApiException(
        kind: ApiErrorKind.validation,
        statusCode: 422,
        message: reason,
        errors: <String, List<String>>{
          'code': <String>[reason],
        },
      );
    }
    couponCode = code;
    return Cart.fromJson(_cartJson());
  }

  @override
  Future<Cart> removeCoupon(String restaurantId) async {
    couponCode = null;
    return Cart.fromJson(_cartJson());
  }

  @override
  Future<void> emptyCart(String restaurantId) async => _maybeThrow();

  @override
  Future<List<OpenCart>> openCarts() async => openCartList;

  /// Unfinished baskets, as `GET /v1/carts` would list them.
  List<OpenCart> openCartList = <OpenCart>[];

  /// Merged into the first restaurant of the nearby list.
  Map<String, dynamic> nearbyExtras = <String, dynamic>{};

  /// What the next reorder leaves out, and whether it leaves out everything.
  List<String> reorderSkipped = <String>[];
  bool reorderNothing = false;
  final List<int> reorders = <int>[];

  @override
  Future<Reorder> reorder(int orderId) async {
    reorders.add(orderId);
    final Map<String, dynamic> cart = _cartJson();
    if (reorderNothing) cart['items'] = <Object>[];
    return Reorder(cart: Cart.fromJson(cart), skipped: reorderSkipped);
  }

  @override
  Future<Order> checkout(
    String restaurantId, {
    required FulfilmentType fulfilmentType,
    required String paymentMethod,
    bool useWallet = false,
    int? addressId,
    String? note,
    Set<DeliveryInstruction> instructions = const <DeliveryInstruction>{},
    bool noCutlery = false,
  }) async {
    lastCheckout = <String, Object?>{
      'fulfilment_type': fulfilmentType.name,
      'payment_method': paymentMethod,
      if (useWallet) 'use_wallet': true,
      if (fulfilmentType == FulfilmentType.delivery && addressId != null)
        'address_id': addressId,
      if (note != null && note.trim().isNotEmpty) 'note': note.trim(),
      if (fulfilmentType == FulfilmentType.delivery && instructions.isNotEmpty)
        'delivery_instructions': DeliveryInstruction.codesOf(instructions),
      if (noCutlery) 'no_cutlery': true,
    };
    _maybeThrow();
    return Order.fromJson(_orderJson('placed'));
  }

  @override
  Future<List<Order>> orders({bool activeOnly = false}) async {
    orderCalls++;
    return orderList.map((String s) => Order.fromJson(_orderJson(s))).toList();
  }

  @override
  Future<Order> order(int id) async => Order.fromJson(_orderJson(orderStatus));

  @override
  Future<OrderTracking> track(int orderId) async {
    trackCalls++;
    return OrderTracking.fromJson(<String, dynamic>{
      'status': orderStatus,
      'status_label': orderStatus,
      ...trackExtra,
    });
  }

  @override
  Future<Order> cancel(int orderId, {required String reason}) async {
    _maybeThrow();
    return Order.fromJson(_orderJson('cancelled'));
  }

  @override
  Uri invoiceUrl(int orderId) =>
      Uri.parse('https://api.nexmile.in/api/v1/orders/$orderId/invoice');
}
