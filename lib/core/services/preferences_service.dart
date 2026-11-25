import 'package:shared_preferences/shared_preferences.dart';

/// Thin typed wrapper over [SharedPreferences].
class PreferencesService {
  PreferencesService(this._prefs);

  static const String _languageCodeKey = 'nexmile.language_code';
  static const String _languageChosenKey = 'nexmile.language_chosen';
  static const String _sessionKey = 'nexmile.session';
  static const String _permissionsAskedKey = 'nexmile.permissions_asked';
  static const String _recentPlacesKey = 'nexmile.recent_places';
  static const String _themeModeKey = 'nexmile.theme_mode';
  static const String _vegModeKey = 'nexmile.veg_mode';
  static const String _ratedOrdersKey = 'nexmile.rated_orders';
  static const String _walletHiddenKey = 'nexmile.wallet_hidden';
  static const String _supportThreadKey = 'nexmile.support_thread';
  static const String _supportDraftKey = 'nexmile.support_draft';

  final SharedPreferences _prefs;

  static Future<PreferencesService> create() async =>
      PreferencesService(await SharedPreferences.getInstance());

  /// The stored language code, or `null` on a fresh install.
  String? get languageCode => _prefs.getString(_languageCodeKey);

  /// Whether the user has been through the language screen at least once.
  /// Drives whether the splash lands on the language screen or straight home.
  bool get hasChosenLanguage => _prefs.getBool(_languageChosenKey) ?? false;

  Future<void> saveLanguage(String code) async {
    await _prefs.setString(_languageCodeKey, code);
    await _prefs.setBool(_languageChosenKey, true);
  }

  /// Test / "reset onboarding" helper.
  Future<void> clearLanguage() async {
    await _prefs.remove(_languageCodeKey);
    await _prefs.remove(_languageChosenKey);
  }

  /// The encoded [AuthUser] of the signed-in customer, or null when signed out.
  ///
  /// Note for the API integration: this holds profile data only. Once real
  /// access/refresh tokens exist they belong in the keychain / keystore via
  /// `flutter_secure_storage`, not in SharedPreferences, which is readable on
  /// a rooted or jailbroken device.
  String? get session => _prefs.getString(_sessionKey);

  Future<void> saveSession(String encodedUser) =>
      _prefs.setString(_sessionKey, encodedUser);

  Future<void> clearSession() => _prefs.remove(_sessionKey);

  /// True once the first-run permission pages have been shown. They are not
  /// shown again: after that, each feature asks at the moment it needs to.
  bool get permissionsAsked => _prefs.getBool(_permissionsAskedKey) ?? false;

  Future<void> markPermissionsAsked() =>
      _prefs.setBool(_permissionsAskedKey, true);

  /// Places the customer recently searched for or picked, newest first, as
  /// stored JSON. Kept on the phone only: they are a typing shortcut, not
  /// account data.
  String? get recentPlacesJson => _prefs.getString(_recentPlacesKey);

  Future<void> saveRecentPlacesJson(String json) =>
      _prefs.setString(_recentPlacesKey, json);

  /// "system", "light" or "dark". A phone setting, not an account one: the
  /// same customer may want dark on one phone and light on another.
  String? get themeMode => _prefs.getString(_themeModeKey);

  Future<void> saveThemeMode(String mode) =>
      _prefs.setString(_themeModeKey, mode);

  /// The last veg-mode answer the server gave, so the storefront can open in
  /// veg-only straight away instead of after a network round trip.
  bool get vegMode => _prefs.getBool(_vegModeKey) ?? false;

  Future<void> saveVegMode(bool on) => _prefs.setBool(_vegModeKey, on);

  /// Orders rated, or whose rating prompt was waved away, on this phone:
  /// JSON for [RatedOrders].
  String? get ratedOrdersJson => _prefs.getString(_ratedOrdersKey);

  Future<void> saveRatedOrdersJson(String json) =>
      _prefs.setString(_ratedOrdersKey, json);

  /// The wallet balance shown as dots, for someone who does not want it
  /// read over their shoulder.
  bool get walletBalanceHidden => _prefs.getBool(_walletHiddenKey) ?? false;

  Future<void> saveWalletBalanceHidden(bool hidden) =>
      _prefs.setBool(_walletHiddenKey, hidden);

  /// The support thread as last seen, so it opens before the network answers.
  String? get supportThreadJson => _prefs.getString(_supportThreadKey);

  Future<void> saveSupportThreadJson(String json) =>
      _prefs.setString(_supportThreadKey, json);

  /// What the customer was typing to support, kept across an app kill.
  String get supportDraft => _prefs.getString(_supportDraftKey) ?? '';

  Future<void> saveSupportDraft(String text) => text.isEmpty
      ? _prefs.remove(_supportDraftKey)
      : _prefs.setString(_supportDraftKey, text);

  Future<void> forgetSupportThread() => _prefs.remove(_supportThreadKey);

  /// A conversation about someone's orders is theirs alone: gone from the
  /// phone when they sign out or delete the account.
  Future<void> clearSupport() async {
    await _prefs.remove(_supportThreadKey);
    await _prefs.remove(_supportDraftKey);
  }
}
