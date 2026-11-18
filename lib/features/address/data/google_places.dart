import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../core/platform/app_identity.dart';
import 'location_service.dart';

/// Google Places (New): type-ahead suggestions and their coordinates.
///
/// Called over HTTPS with the app's own Maps key, which is restricted to this
/// app; [AppIdentity] supplies the headers that prove the request is from it.
/// Every method answers null rather than throwing when Google cannot be
/// reached or refuses (no key, Places API not enabled on the key, offline),
/// and the caller falls back to the phone's own geocoder. Search degrades; it
/// never breaks.
class GooglePlaces {
  GooglePlaces({
    http.Client? client,
    Future<AppIdentity?> Function()? identity,
  })  : _http = client ?? http.Client(),
        _identity = identity ?? AppIdentity.load;

  final http.Client _http;
  final Future<AppIdentity?> Function() _identity;

  /// Google bills type-ahead per session: the keystrokes of one search plus
  /// the details lookup that ends it. One token covers them all, so a search
  /// costs one session rather than one request per letter.
  String? _session;

  static const String _base = 'https://places.googleapis.com/v1';
  static const Duration _timeout = Duration(seconds: 8);

  /// Suggestions for [input], nearest first when [latitude] and [longitude]
  /// are given, each with its distance from there. Null when unavailable.
  Future<List<PlaceSuggestion>?> autocomplete(
    String input, {
    double? latitude,
    double? longitude,
    String? language,
  }) async {
    final AppIdentity? id = await _identity();
    if (id == null) return null;
    final String session = _session ??= _newSession();
    final bool near = latitude != null && longitude != null;

    try {
      final http.Response response = await _http
          .post(
            Uri.parse('$_base/places:autocomplete'),
            headers: <String, String>{
              ...id.headers,
              'Content-Type': 'application/json',
            },
            body: jsonEncode(<String, Object?>{
              'input': input,
              'sessionToken': session,
              'includedRegionCodes': <String>['in'],
              if (language != null) 'languageCode': language,
              if (near) ...<String, Object?>{
                'locationBias': <String, Object?>{
                  'circle': <String, Object?>{
                    'center': <String, double>{
                      'latitude': latitude,
                      'longitude': longitude,
                    },
                    'radius': 50000.0,
                  },
                },
                'origin': <String, double>{
                  'latitude': latitude,
                  'longitude': longitude,
                },
              },
            }),
          )
          .timeout(_timeout);
      if (response.statusCode != 200) {
        _log(response);
        return null;
      }
      final Object? decoded = jsonDecode(response.body);
      final Object? raw = decoded is Map ? decoded['suggestions'] : null;
      if (raw is! List) return const <PlaceSuggestion>[];
      return <PlaceSuggestion>[
        for (final Object? item in raw)
          if (_prediction(item) case final PlaceSuggestion suggestion)
            suggestion,
      ];
    } catch (error) {
      if (kDebugMode) debugPrint('[places] autocomplete failed: $error');
      return null;
    }
  }

  /// [suggestion] with its coordinates filled in. Ends the billing session.
  Future<PlaceSuggestion?> details(PlaceSuggestion suggestion) async {
    final String? placeId = suggestion.placeId;
    final AppIdentity? id = await _identity();
    if (placeId == null || id == null) return null;
    final String? session = _session;
    _session = null;

    try {
      final Uri uri = Uri.parse('$_base/places/$placeId').replace(
        queryParameters: <String, String>{
          if (session != null) 'sessionToken': session,
        },
      );
      final http.Response response = await _http.get(
        uri,
        headers: <String, String>{
          ...id.headers,
          // Only what is needed, which keeps it on the cheapest Details SKU.
          'X-Goog-FieldMask': 'location',
        },
      ).timeout(_timeout);
      if (response.statusCode != 200) {
        _log(response);
        return null;
      }
      final Object? decoded = jsonDecode(response.body);
      final Object? location = decoded is Map ? decoded['location'] : null;
      if (location is! Map) return null;
      final Object? latitude = location['latitude'];
      final Object? longitude = location['longitude'];
      if (latitude is! num || longitude is! num) return null;
      return suggestion.copyWith(
        latitude: latitude.toDouble(),
        longitude: longitude.toDouble(),
      );
    } catch (error) {
      if (kDebugMode) debugPrint('[places] details failed: $error');
      return null;
    }
  }

  static PlaceSuggestion? _prediction(Object? raw) {
    if (raw is! Map) return null;
    final Object? prediction = raw['placePrediction'];
    if (prediction is! Map) return null;
    final Object? placeId = prediction['placeId'];
    if (placeId is! String || placeId.isEmpty) return null;

    final Object? structured = prediction['structuredFormat'];
    final String title = (structured is Map ? _text(structured['mainText']) : null) ??
        _text(prediction['text']) ??
        '';
    final String subtitle =
        (structured is Map ? _text(structured['secondaryText']) : null) ?? '';
    final Object? distance = prediction['distanceMeters'];
    if (title.isEmpty) return null;

    return PlaceSuggestion(
      title: title,
      subtitle: subtitle,
      placeId: placeId,
      distanceMetres: distance is num ? distance.toDouble() : null,
    );
  }

  static String? _text(Object? raw) {
    final Object? text = raw is Map ? raw['text'] : null;
    return text is String && text.trim().isNotEmpty ? text : null;
  }

  /// The usual first-run failures are "Places API (New) has not been used in
  /// project…" and "Requests from this Android client application are
  /// blocked". Both are fixed in Google Cloud rather than in code, and both
  /// say so in this body, so it is printed in debug builds.
  static void _log(http.Response response) {
    if (kDebugMode) {
      debugPrint('[places] ${response.statusCode}: ${response.body}');
    }
  }

  /// A version 4 UUID, which is what Google asks a session token to be.
  static String _newSession() {
    final Random random = Random.secure();
    final List<int> bytes = List<int>.generate(16, (_) => random.nextInt(256));
    bytes[6] = (bytes[6] & 0x0f) | 0x40;
    bytes[8] = (bytes[8] & 0x3f) | 0x80;
    final String hex =
        bytes.map((int b) => b.toRadixString(16).padLeft(2, '0')).join();
    return '${hex.substring(0, 8)}-${hex.substring(8, 12)}-'
        '${hex.substring(12, 16)}-${hex.substring(16, 20)}-${hex.substring(20)}';
  }
}
