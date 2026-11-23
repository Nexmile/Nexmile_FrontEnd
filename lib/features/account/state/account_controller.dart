import 'package:flutter/foundation.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/platform/app_identity.dart';
import '../../../core/services/preferences_service.dart';
import '../../auth/data/auth_failure.dart';
import '../data/account_models.dart';
import '../data/account_repository.dart';

/// The profile page's extras: the customer's preferences, their coupons, how
/// to reach support, and the feedback form.
///
/// An endpoint the server does not have yet (a 404) is treated as "nothing
/// there" rather than an error, so the page works before every API behind it
/// is live. Veg mode goes further and keeps working on the phone alone.
class AccountController extends ChangeNotifier {
  AccountController({
    required AccountRepository repository,
    required PreferencesService preferences,
  })  : _repository = repository,
        _store = preferences,
        _preferences = AccountPreferences(vegMode: preferences.vegMode);

  final AccountRepository _repository;
  final PreferencesService _store;

  // --- Preferences -----------------------------------------------------------

  AccountPreferences _preferences;

  AccountPreferences get preferences => _preferences;

  /// Read from the phone first, so the storefront opens on veg-only at once,
  /// and corrected from the server when [loadPreferences] answers.
  bool get vegMode => _preferences.vegMode;

  Future<void> loadPreferences() async {
    try {
      final AccountPreferences server = await _repository.preferences();
      _preferences = server;
      await _store.saveVegMode(server.vegMode);
      notifyListeners();
    } catch (_) {
      // Keep what the phone remembers.
    }
  }

  Future<AuthFailure?> setVegMode(bool on) => _update(
        _preferences.copyWith(vegMode: on),
        <String, Object?>{'veg_mode': on},
      );

  Future<AuthFailure?> setPromotions(bool on) => _update(
        _preferences.copyWith(promotions: on),
        <String, Object?>{'promotional_notifications': on},
      );

  /// Shows the change at once and puts it back if the server refuses it.
  Future<AuthFailure?> _update(
    AccountPreferences next,
    Map<String, Object?> changes,
  ) async {
    final AccountPreferences before = _preferences;
    _preferences = next;
    await _store.saveVegMode(next.vegMode);
    notifyListeners();
    try {
      _preferences = await _repository.updatePreferences(changes);
      await _store.saveVegMode(_preferences.vegMode);
      notifyListeners();
      return null;
    } on ApiException catch (error) {
      // Not on the server yet: the choice still holds on this phone.
      if (error.statusCode == 404) return null;
      return _revert(
        before,
        authFailureFrom(error, validationFailure: AuthFailure.unknown),
      );
    } catch (_) {
      return _revert(before, AuthFailure.unknown);
    }
  }

  Future<AuthFailure> _revert(AccountPreferences to, AuthFailure failure) async {
    _preferences = to;
    await _store.saveVegMode(to.vegMode);
    notifyListeners();
    return failure;
  }

  // --- Coupons ---------------------------------------------------------------

  List<Coupon>? _coupons;
  bool _couponsLoading = false;
  AuthFailure? _couponsFailure;

  /// Null until loaded once.
  List<Coupon>? get coupons => _coupons;

  bool get couponsLoading => _couponsLoading;

  AuthFailure? get couponsFailure => _couponsFailure;

  Future<void> loadCoupons() async {
    _couponsLoading = true;
    _couponsFailure = null;
    notifyListeners();
    try {
      _coupons = await _repository.coupons();
    } on ApiException catch (error) {
      if (error.statusCode == 404) {
        _coupons = const <Coupon>[];
      } else {
        _couponsFailure =
            authFailureFrom(error, validationFailure: AuthFailure.unknown);
      }
    } catch (_) {
      _couponsFailure = AuthFailure.unknown;
    } finally {
      _couponsLoading = false;
      notifyListeners();
    }
  }

  // --- Support ---------------------------------------------------------------

  SupportInfo? _support;
  bool _supportLoading = false;
  AuthFailure? _supportFailure;

  SupportInfo? get support => _support;

  bool get supportLoading => _supportLoading;

  AuthFailure? get supportFailure => _supportFailure;

  Future<void> loadSupport() async {
    _supportLoading = true;
    _supportFailure = null;
    notifyListeners();
    try {
      _support = await _repository.support();
    } on ApiException catch (error) {
      if (error.statusCode == 404) {
        _support = const SupportInfo();
      } else {
        _supportFailure =
            authFailureFrom(error, validationFailure: AuthFailure.unknown);
      }
    } catch (_) {
      _supportFailure = AuthFailure.unknown;
    } finally {
      _supportLoading = false;
      notifyListeners();
    }
  }

  // --- Feedback ----------------------------------------------------------------

  Future<AuthFailure?> sendFeedback({
    required int rating,
    required String message,
  }) =>
      _send(
        () async => _repository.sendFeedback(
          rating: rating,
          message: message,
          appVersion: await AppIdentity.version(),
        ),
      );

  Future<AuthFailure?> _send(Future<void> Function() call) async {
    try {
      await call();
      return null;
    } on ApiException catch (error) {
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } catch (_) {
      return AuthFailure.unknown;
    }
  }

  /// On sign-out, so the next customer on this phone starts fresh.
  Future<void> clear() async {
    _preferences = const AccountPreferences();
    _coupons = null;
    _support = null;
    await _store.saveVegMode(false);
    notifyListeners();
  }
}
