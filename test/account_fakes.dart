import 'package:nexmile/core/network/api_exception.dart';
import 'package:nexmile/features/account/data/account_models.dart';
import 'package:nexmile/features/account/data/account_repository.dart';

/// The profile's extras held in memory: preferences, coupons, support
/// details, and a record of what feedback was sent.
class FakeAccountRepository implements AccountRepository {
  FakeAccountRepository({
    this.stored = const AccountPreferences(),
    List<Coupon>? coupons,
    this.supportInfo = const SupportInfo(),
    this.unavailable = false,
  }) : couponList = coupons ?? <Coupon>[];

  /// What the server holds.
  AccountPreferences stored;

  List<Coupon> couponList;

  SupportInfo supportInfo;

  /// Answers every call with a 404, like a server without these endpoints.
  bool unavailable;

  /// Thrown by the next [updatePreferences], to stand in for a refusal.
  ApiException? failUpdateWith;

  /// Thrown by the next [sendFeedback].
  ApiException? failSendWith;

  final List<Map<String, Object?>> updates = <Map<String, Object?>>[];
  final List<({int rating, String message, String? appVersion})> feedback =
      <({int rating, String message, String? appVersion})>[];
  int preferenceReads = 0;
  int couponReads = 0;
  int supportReads = 0;

  void _check() {
    if (unavailable) {
      throw const ApiException(kind: ApiErrorKind.server, statusCode: 404);
    }
  }

  void _maybeFailSend() {
    final ApiException? failure = failSendWith;
    if (failure == null) return;
    failSendWith = null;
    throw failure;
  }

  @override
  Future<AccountPreferences> preferences() async {
    preferenceReads++;
    _check();
    return stored;
  }

  @override
  Future<AccountPreferences> updatePreferences(
    Map<String, Object?> changes,
  ) async {
    _check();
    final ApiException? failure = failUpdateWith;
    if (failure != null) {
      failUpdateWith = null;
      throw failure;
    }
    updates.add(changes);
    stored = stored.copyWith(
      vegMode: changes['veg_mode'] as bool?,
      promotions: changes['promotional_notifications'] as bool?,
    );
    return stored;
  }

  @override
  Future<List<Coupon>> coupons() async {
    couponReads++;
    _check();
    return List<Coupon>.of(couponList);
  }

  @override
  Future<SupportInfo> support() async {
    supportReads++;
    _check();
    return supportInfo;
  }

  @override
  Future<void> sendFeedback({
    required int rating,
    required String message,
    String? appVersion,
  }) async {
    _check();
    _maybeFailSend();
    feedback.add((rating: rating, message: message, appVersion: appVersion));
  }
}
