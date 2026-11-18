import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

import '../../core/push/push_service.dart';
import '../../core/services/preferences_service.dart';
import '../address/data/location_service.dart';

/// A permission the first-run pages ask for, in the order they ask.
enum AppPermission { location, notifications }

/// Which first-run permission pages a fresh install should see.
///
/// Empty once they have been shown, and empty when there is nothing left to
/// ask: a permission already allowed, one only Settings can change (asking
/// would show a prompt that never appears), or a build with no push. A check
/// that fails counts as nothing to ask, so a broken plugin delays nobody.
///
/// The microphone is not here on purpose. Voice search asks when the customer
/// taps the mic, which is when the question makes sense.
///
/// Each check is bounded by [timeout]. They take milliseconds on a phone, and
/// a plugin that never answers must not hold the customer on the splash.
Future<List<AppPermission>> pendingPermissions({
  required PreferencesService preferences,
  required LocationService location,
  required PushService push,
  Duration timeout = const Duration(seconds: 2),
}) async {
  if (preferences.permissionsAsked) return const <AppPermission>[];

  final List<AppPermission> pending = <AppPermission>[];
  try {
    // `deniedForever` is left out: the system prompt cannot appear again.
    if (await location.currentPermission().timeout(timeout) ==
        LocationPermission.denied) {
      pending.add(AppPermission.location);
    }
  } catch (_) {}
  try {
    if (await push.notificationAccess().timeout(timeout) ==
        NotificationAccess.askable) {
      pending.add(AppPermission.notifications);
    }
  } catch (_) {}
  return pending;
}

/// [pendingPermissions], with its services read from [context].
Future<List<AppPermission>> pendingPermissionsFor(BuildContext context) =>
    pendingPermissions(
      preferences: context.read<PreferencesService>(),
      location: context.read<LocationService>(),
      push: context.read<PushService>(),
    );
