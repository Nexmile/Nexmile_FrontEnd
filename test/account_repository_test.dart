import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:nexmile/core/network/api_client.dart';
import 'package:nexmile/features/account/data/account_models.dart';
import 'package:nexmile/features/account/data/account_repository.dart';

/// The requests the profile page sends, checked against the backend's reply
/// of November 2026: preferences and feedback built to the agreed shapes.
void main() {
  late List<http.Request> sent;

  ApiAccountRepository answering(int status, String body) {
    sent = <http.Request>[];
    return ApiAccountRepository(
      ApiClient(
        baseUrl: 'https://api.example.com/api',
        httpClient: MockClient((http.Request request) async {
          sent.add(request);
          return http.Response(
            body,
            status,
            headers: <String, String>{'content-type': 'application/json'},
          );
        }),
      ),
    );
  }

  Map<String, dynamic> bodyOf(http.Request request) =>
      jsonDecode(request.body) as Map<String, dynamic>;

  group('feedback', () {
    test('stars alone send no empty message and no null version', () async {
      await answering(201, '').sendFeedback(rating: 5, message: '   ');

      expect(sent.single.method, 'POST');
      expect(sent.single.url.path, '/api/v1/feedback');
      expect(bodyOf(sent.single), <String, dynamic>{
        'rating': 5,
        'platform': 'android',
      });
    });

    test('words and a known build go with it', () async {
      await answering(201, '{"data":{"id":9}}').sendFeedback(
        rating: 2,
        message: ' Cold food. ',
        appVersion: '1.4.0 (12)',
      );

      expect(bodyOf(sent.single), <String, dynamic>{
        'rating': 2,
        'message': 'Cold food.',
        'platform': 'android',
        'app_version': '1.4.0 (12)',
      });
    });
  });

  group('preferences', () {
    const String both =
        '{"data":{"veg_mode":true,"promotional_notifications":false}}';

    test('GET reads both fields', () async {
      final AccountPreferences read =
          await answering(200, both).preferences();

      expect(sent.single.method, 'GET');
      expect(sent.single.url.path, '/api/v1/profile/preferences');
      expect(read, const AccountPreferences(vegMode: true, promotions: false));
    });

    test('PATCH sends only the change and takes both back', () async {
      final AccountPreferences saved =
          await answering(200, both).updatePreferences(
        <String, Object?>{'veg_mode': true},
      );

      expect(sent.single.method, 'PATCH');
      expect(sent.single.url.path, '/api/v1/profile/preferences');
      expect(bodyOf(sent.single), <String, dynamic>{'veg_mode': true});
      expect(saved.promotions, isFalse);
    });

    test('offers are on when the server has never been told', () async {
      final AccountPreferences fresh = await answering(
        200,
        '{"data":{"veg_mode":false}}',
      ).preferences();

      expect(fresh.promotions, isTrue);
    });
  });
}
