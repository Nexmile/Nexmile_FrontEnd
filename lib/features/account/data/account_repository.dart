import 'package:flutter/foundation.dart';

import '../../../core/network/api_client.dart';
import '../../../core/network/api_exception.dart';
import 'account_models.dart';

/// The profile page's extras: preferences, coupons, help and feedback.
abstract class AccountRepository {
  /// `GET /v1/profile/preferences`
  Future<AccountPreferences> preferences();

  /// `PATCH /v1/profile/preferences`, sending only what changed.
  Future<AccountPreferences> updatePreferences(Map<String, Object?> changes);

  /// `GET /v1/coupons`: the ones this customer can use now.
  Future<List<Coupon>> coupons();

  /// `GET /v1/app/config`: support contacts, FAQs, document links.
  Future<SupportInfo> support();

  /// `POST /v1/feedback`
  Future<void> sendFeedback({
    required int rating,
    required String message,
    String? appVersion,
  });
}

class ApiAccountRepository implements AccountRepository {
  const ApiAccountRepository(this._client);

  final ApiClient _client;

  @override
  Future<AccountPreferences> preferences() async {
    final Map<String, dynamic> response =
        await _client.get('/v1/profile/preferences');
    return AccountPreferences.fromJson(_data(response));
  }

  @override
  Future<AccountPreferences> updatePreferences(
    Map<String, Object?> changes,
  ) async {
    final Map<String, dynamic> response = await _client.patch(
      '/v1/profile/preferences',
      body: changes,
    );
    return AccountPreferences.fromJson(_data(response));
  }

  @override
  Future<List<Coupon>> coupons() async {
    final Map<String, dynamic> response = await _client.get('/v1/coupons');
    final Object? data = response['data'];
    if (data is! List) return const <Coupon>[];
    return <Coupon>[
      for (final Map<String, dynamic> item
          in data.whereType<Map<String, dynamic>>())
        if (Coupon.fromJson(item) case final Coupon coupon
            when coupon.code.isNotEmpty)
          coupon,
    ];
  }

  @override
  Future<SupportInfo> support() async {
    final Map<String, dynamic> response = await _client.get('/v1/app/config');
    return SupportInfo.fromJson(_data(response));
  }

  @override
  Future<void> sendFeedback({
    required int rating,
    required String message,
    String? appVersion,
  }) {
    final String words = message.trim();
    final String? version = appVersion?.trim();
    // Optional fields are left out when empty rather than sent as null or
    // "": the API accepts them missing, and an explicit empty value is
    // the one shape a validation rule may still refuse.
    return _client.post(
      '/v1/feedback',
      body: <String, dynamic>{
        'rating': rating,
        if (words.isNotEmpty) 'message': words,
        'platform': _platform,
        if (version != null && version.isNotEmpty) 'app_version': version,
      },
    );
  }

  static String get _platform =>
      defaultTargetPlatform == TargetPlatform.iOS ? 'ios' : 'android';

  static Map<String, dynamic> _data(Map<String, dynamic> response) {
    final Object? data = response['data'];
    if (data is Map<String, dynamic>) return data;
    throw const ApiException(
      kind: ApiErrorKind.server,
      message: 'Response did not contain a data object',
    );
  }
}
