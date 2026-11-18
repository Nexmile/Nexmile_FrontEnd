import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' show MediaType;

import '../config/app_config.dart';
import 'api_exception.dart';
import 'api_log.dart';

/// Supplies the current access token and refreshes the pair on demand.
///
/// Implemented by the auth layer; kept as a callback bundle so the network
/// layer does not depend on the auth feature.
abstract class TokenProvider {
  String? get accessToken;

  /// Exchanges the stored refresh token for a new pair. Returns false when
  /// there is nothing to refresh with or the server rejected the attempt.
  Future<bool> refresh();

  /// Called when refreshing fails, so the app can drop the session.
  Future<void> onSessionLost();
}

/// Thin JSON client for the Nexmile API.
///
/// Two behaviours matter and are easy to get wrong:
///
/// * **`Accept: application/json` on every request.** The API docs are explicit:
///   without it a validation failure returns an HTML redirect rather than a 422
///   carrying the field errors.
/// * **Refreshes are serialised behind a single lock.** Two concurrent
///   refreshes look like a stolen token to the server and sign the customer out
///   of every device. [_refreshLock] holds the in-flight refresh so parallel
///   401s all await the same call, and each request is retried at most once.
class ApiClient {
  ApiClient({
    http.Client? httpClient,
    String? baseUrl,
    this.tokenProvider,
  })  : _http = httpClient ?? http.Client(),
        _baseUrl = (baseUrl ?? AppConfig.apiBaseUrl).replaceAll(
          RegExp(r'/+$'),
          '',
        );

  final http.Client _http;
  final String _baseUrl;

  /// Exposed for the few things that are not JSON calls — the tax invoice is a
  /// printable HTML page opened in a browser, so its URL has to be built.
  String get baseUrl => _baseUrl;

  /// Null for endpoints that never authenticate (OTP request and verify).
  TokenProvider? tokenProvider;

  /// The customer's chosen language, sent as `Accept-Language` so text the
  /// server writes for them — status labels, dispatch messages — comes in
  /// that language. Read per request, so a language change applies at once.
  String? Function()? languageProvider;

  Future<bool>? _refreshLock;

  void close() => _http.close();

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? query,
    bool authenticated = true,
  }) {
    return _send(
      'GET',
      path,
      query: query,
      authenticated: authenticated,
    );
  }

  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? body,
    bool authenticated = true,
  }) {
    return _send('POST', path, body: body, authenticated: authenticated);
  }

  Future<Map<String, dynamic>> patch(
    String path, {
    Map<String, dynamic>? body,
    bool authenticated = true,
  }) {
    return _send('PATCH', path, body: body, authenticated: authenticated);
  }

  Future<Map<String, dynamic>> delete(
    String path, {
    // Unusual for a DELETE, and needed by exactly one endpoint: unregistering
    // a push token identifies the row by the token rather than by an id.
    Map<String, dynamic>? body,
    bool authenticated = true,
  }) {
    return _send('DELETE', path, body: body, authenticated: authenticated);
  }

  Future<Map<String, dynamic>> _send(
    String method,
    String path, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
    required bool authenticated,
    bool isRetry = false,
  }) async {
    // Values may be a String or an Iterable<String>; Uri repeats the key for
    // the latter, which is how multi-select filters like `?cuisine=` are sent.
    final Uri uri = Uri.parse('$_baseUrl$path').replace(
      queryParameters: query,
    );

    final Map<String, String> headers = <String, String>{
      // Non-negotiable — see the class doc.
      'Accept': 'application/json',
      if (body != null) 'Content-Type': 'application/json',
      if (languageProvider?.call() case final String language
          when language.isNotEmpty)
        'Accept-Language': language,
    };

    final String? token = tokenProvider?.accessToken;
    if (authenticated && token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    final Map<String, dynamic>? payload =
        body == null ? null : _pruneNulls(body);
    ApiLog.request(method, uri, headers, payload);
    final Stopwatch clock = Stopwatch()..start();

    late final http.Response response;
    try {
      final http.Request request = http.Request(method, uri)
        ..headers.addAll(headers);
      if (payload != null) {
        request.body = jsonEncode(payload);
      }
      final http.StreamedResponse streamed = await _http
          .send(request)
          .timeout(AppConfig.requestTimeout);
      response = await http.Response.fromStream(streamed);
    } on TimeoutException catch (error) {
      ApiLog.failure(method, uri, error);
      throw const ApiException(kind: ApiErrorKind.network);
    } on SocketException catch (error) {
      ApiLog.failure(method, uri, error);
      throw const ApiException(kind: ApiErrorKind.network);
    } on http.ClientException catch (error) {
      ApiLog.failure(method, uri, error);
      throw const ApiException(kind: ApiErrorKind.network);
    }

    ApiLog.response(method, uri, response.statusCode, response.body, clock.elapsed);

    if (response.statusCode == 401 && authenticated && !isRetry) {
      final bool refreshed = await _refreshOnce();
      if (refreshed) {
        return _send(
          method,
          path,
          query: query,
          body: body,
          authenticated: authenticated,
          isRetry: true,
        );
      }
      await tokenProvider?.onSessionLost();
    }

    return _decode(response);
  }

  /// Uploads one file as `multipart/form-data` under [field].
  ///
  /// Same headers, same refresh-once on a 401 and the same error mapping as
  /// the JSON calls, so a caller handles a failed upload exactly like any
  /// other failed request.
  Future<Map<String, dynamic>> upload(
    String path, {
    required String field,
    required List<int> bytes,
    required String filename,
    String contentType = 'image/jpeg',
    bool isRetry = false,
  }) async {
    final Uri uri = Uri.parse('$_baseUrl$path');
    final http.MultipartRequest request = http.MultipartRequest('POST', uri)
      ..headers['Accept'] = 'application/json'
      ..files.add(
        http.MultipartFile.fromBytes(
          field,
          bytes,
          filename: filename,
          contentType: MediaType.parse(contentType),
        ),
      );
    if (languageProvider?.call() case final String language
        when language.isNotEmpty) {
      request.headers['Accept-Language'] = language;
    }
    final String? token = tokenProvider?.accessToken;
    if (token != null) request.headers['Authorization'] = 'Bearer $token';

    ApiLog.request('POST', uri, request.headers, <String, dynamic>{
      field: '<${bytes.length} bytes, $filename>',
    });
    final Stopwatch clock = Stopwatch()..start();

    late final http.Response response;
    try {
      final http.StreamedResponse streamed =
          await _http.send(request).timeout(AppConfig.requestTimeout);
      response = await http.Response.fromStream(streamed);
    } on TimeoutException catch (error) {
      ApiLog.failure('POST', uri, error);
      throw const ApiException(kind: ApiErrorKind.network);
    } on SocketException catch (error) {
      ApiLog.failure('POST', uri, error);
      throw const ApiException(kind: ApiErrorKind.network);
    } on http.ClientException catch (error) {
      ApiLog.failure('POST', uri, error);
      throw const ApiException(kind: ApiErrorKind.network);
    }
    ApiLog.response('POST', uri, response.statusCode, response.body, clock.elapsed);

    if (response.statusCode == 401 && !isRetry) {
      if (await _refreshOnce()) {
        return upload(
          path,
          field: field,
          bytes: bytes,
          filename: filename,
          contentType: contentType,
          isRetry: true,
        );
      }
      await tokenProvider?.onSessionLost();
    }
    return _decode(response);
  }

  /// Runs at most one refresh at a time; concurrent callers await the same
  /// future rather than each firing their own.
  Future<bool> _refreshOnce() {
    final Future<bool>? inFlight = _refreshLock;
    if (inFlight != null) return inFlight;

    final TokenProvider? provider = tokenProvider;
    if (provider == null) return Future<bool>.value(false);

    final Future<bool> attempt = provider.refresh().whenComplete(() {
      _refreshLock = null;
    });
    _refreshLock = attempt;
    return attempt;
  }

  Map<String, dynamic> _decode(http.Response response) {
    Map<String, dynamic> json = const <String, dynamic>{};
    if (response.body.isNotEmpty) {
      try {
        final Object? decoded = jsonDecode(response.body);
        if (decoded is Map<String, dynamic>) json = decoded;
      } on FormatException {
        // An HTML error page, most likely. Fall through to the status mapping
        // below rather than surfacing a parse error.
        json = const <String, dynamic>{};
      }
    }

    final int status = response.statusCode;
    if (status >= 200 && status < 300) return json;

    final String? message = json['message'] as String?;

    switch (status) {
      case 401:
        throw ApiException(
          kind: ApiErrorKind.unauthenticated,
          statusCode: status,
          message: message,
        );
      case 403:
        throw ApiException(
          kind: ApiErrorKind.forbidden,
          statusCode: status,
          message: message,
        );
      case 422:
        throw ApiException(
          kind: ApiErrorKind.validation,
          statusCode: status,
          message: message,
          errors: _parseErrors(json['errors']),
        );
      case 429:
        throw ApiException(
          kind: ApiErrorKind.tooManyRequests,
          statusCode: status,
          message: message,
        );
      default:
        throw ApiException(
          kind: ApiErrorKind.server,
          statusCode: status,
          message: message,
        );
    }
  }

  static Map<String, List<String>> _parseErrors(Object? raw) {
    if (raw is! Map) return const <String, List<String>>{};
    final Map<String, List<String>> parsed = <String, List<String>>{};
    raw.forEach((Object? key, Object? value) {
      if (key is! String) return;
      if (value is List) {
        parsed[key] = value.whereType<String>().toList();
      } else if (value is String) {
        parsed[key] = <String>[value];
      }
    });
    return parsed;
  }

  /// The API treats `email` and `phone` as mutually exclusive; sending one of
  /// them as an explicit null still counts as sending it.
  static Map<String, dynamic> _pruneNulls(Map<String, dynamic> body) {
    return <String, dynamic>{
      for (final MapEntry<String, dynamic> e in body.entries)
        if (e.value != null) e.key: e.value,
    };
  }
}
