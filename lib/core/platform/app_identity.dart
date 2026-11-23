import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Who this install is, as Google's API keys need to hear it.
///
/// The Maps key lives in gitignored native config (android/maps.properties,
/// ios/Flutter/Secrets.xcconfig) and is restricted to this app. Calling Google
/// Places over HTTP with it means sending the key along with the package name
/// and signing certificate (Android) or the bundle id (iOS), so Google can
/// check the restriction. `MainActivity` and `AppDelegate` read all of it
/// from the installed app; nothing is written into Dart source.
@immutable
class AppIdentity {
  const AppIdentity({
    required this.mapsKey,
    this.androidPackage,
    this.androidCertSha1,
    this.iosBundleId,
  });

  static const MethodChannel _channel = MethodChannel('nexmile/app');

  static Future<AppIdentity?>? _cached;

  final String mapsKey;
  final String? androidPackage;
  final String? androidCertSha1;
  final String? iosBundleId;

  /// Read once per launch. Null off a device, in a test, or in a build with
  /// no key, which callers read as "Google search is not available".
  static Future<AppIdentity?> load() => _cached ??= _read();

  static Future<AppIdentity?> _read() async {
    try {
      final Map<String, Object?>? raw =
          await _channel.invokeMapMethod<String, Object?>('identity');
      final String key = (raw?['mapsKey'] as String? ?? '').trim();
      if (key.isEmpty) return null;
      return AppIdentity(
        mapsKey: key,
        androidPackage: _text(raw?['androidPackage']),
        androidCertSha1: _text(raw?['androidCertSha1']),
        iosBundleId: _text(raw?['iosBundleId']),
      );
    } catch (_) {
      return null;
    }
  }

  static String? _text(Object? value) {
    final String text = (value as String? ?? '').trim();
    return text.isEmpty ? null : text;
  }

  /// The installed version, as "1.4.0 (12)", or null off a device. For the
  /// About page and for feedback the team can tie to a build.
  static Future<String?> version() async {
    try {
      final Map<String, Object?>? raw =
          await _channel.invokeMapMethod<String, Object?>('appVersion');
      final String name = (raw?['version'] as String? ?? '').trim();
      final String build = (raw?['build'] as String? ?? '').trim();
      if (name.isEmpty) return null;
      return build.isEmpty ? name : '$name ($build)';
    } catch (_) {
      return null;
    }
  }

  /// The headers that satisfy an app-restricted key.
  Map<String, String> get headers => <String, String>{
        'X-Goog-Api-Key': mapsKey,
        if (androidPackage != null) 'X-Android-Package': androidPackage!,
        if (androidCertSha1 != null) 'X-Android-Cert': androidCertSha1!,
        if (iosBundleId != null) 'X-Ios-Bundle-Identifier': iosBundleId!,
      };
}
