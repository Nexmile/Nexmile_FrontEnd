import 'dart:async';

import 'package:flutter/services.dart';

/// The small buzzes that make a tap feel answered.
///
/// One place for all of them, so the app uses three strengths consistently
/// rather than whatever each screen picked: a tick for choosing, a tap for
/// doing, and a firm one for something that just happened. Fire and forget;
/// a phone without a vibration motor simply ignores them.
class Haptics {
  const Haptics._();

  /// Choosing: a filter chip, a tab, a switch, a star.
  static void select() => _send(HapticFeedback.selectionClick);

  /// Doing: adding to the cart, saving a favourite, pulling to refresh.
  static void tap() => _send(HapticFeedback.lightImpact);

  /// Something done that matters: the order went through.
  static void success() => _send(HapticFeedback.mediumImpact);

  static void _send(Future<void> Function() buzz) {
    unawaited(buzz().catchError((Object _) {}));
  }
}
