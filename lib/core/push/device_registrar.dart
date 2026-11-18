import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../features/auth/data/device_repository.dart';
import 'push_service.dart';

/// Keeps the server's idea of this device in step with the transport's.
///
/// Registration is fire-and-forget by design: a customer who has just signed
/// in must not be held at a spinner because a notification token could not be
/// posted, and a customer signing out must not be kept signed in because the
/// network was down. Every failure here is swallowed and the app carries on.
class DeviceRegistrar {
  DeviceRegistrar({
    required PushService push,
    required DeviceRepository repository,
    TargetPlatform? platform,
  })  : _push = push,
        _repository = repository,
        _platform = pushPlatformName(platform);

  final PushService _push;
  final DeviceRepository _repository;
  final String _platform;

  StreamSubscription<String>? _rotation;

  /// The token last successfully sent, so sign-out can withdraw exactly what
  /// was registered rather than asking the transport again — by then the
  /// transport may already have rotated it.
  String? _registered;

  @visibleForTesting
  String? get registeredToken => _registered;

  /// Registers the current token and starts watching for rotations.
  ///
  /// Safe to call on every launch and every sign-in: the endpoint is
  /// idempotent, and re-arming the rotation listener is cheap.
  Future<void> register() async {
    _rotation ??= _push.onTokenRefresh.listen(_send);

    try {
      // The question itself is asked on the first-run permission pages, with
      // the reasons beside it. Here it is only re-confirmed when already
      // allowed, which shows no prompt and, on iOS, turns banners on while the
      // app is open. A customer who chose "Not now" there is not met with a
      // bare system prompt the moment they sign in.
      if (await _push.notificationAccess() == NotificationAccess.granted) {
        await _push.requestPermission();
      }

      final String? token = await _push.token();
      // No token is the normal state when the customer refused permission or
      // the build has no push transport in it at all.
      if (token != null && token.isNotEmpty) await _send(token);
    } catch (_) {
      // Push is a convenience. It never breaks a sign-in.
    }
  }

  /// Withdraws the device. Must run *before* the session is cleared — after
  /// that this call has no bearer token and can only 401.
  Future<void> unregister() async {
    await _rotation?.cancel();
    _rotation = null;

    final String? token = _registered;
    _registered = null;
    if (token == null) return;

    try {
      await _repository.unregisterDevice(token: token);
    } catch (_) {
      // An orphaned device row is the server's to reap; a customer who tapped
      // "sign out" is signed out either way.
    }
  }

  Future<void> _send(String token) async {
    try {
      await _repository.registerDevice(token: token, platform: _platform);
      _registered = token;
    } catch (_) {
      // Leaves `_registered` alone: what is on the server is still whatever
      // last succeeded, which is what sign-out has to withdraw.
    }
  }

  void dispose() {
    _rotation?.cancel();
    _rotation = null;
  }
}
