import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../core/services/preferences_service.dart';
import '../data/order_models.dart';

/// Which orders this phone has rated, and which rating prompts were waved
/// away.
///
/// The server's own `review` on an order wins whenever it is sent; this is
/// what keeps the prompts honest before it is, so an order rated a minute
/// ago does not ask to be rated again.
class RatedOrders extends ChangeNotifier {
  RatedOrders(this._store) {
    _read();
  }

  final PreferencesService _store;

  /// Order id to the food rating given.
  final Map<int, int> _rated = <int, int>{};
  final Set<int> _dismissed = <int>{};

  /// Enough to cover any order still worth asking about.
  static const int _kept = 60;

  void _read() {
    final String? raw = _store.ratedOrdersJson;
    if (raw == null) return;
    try {
      final Object? decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      final Object? rated = decoded['rated'];
      if (rated is Map<String, dynamic>) {
        for (final MapEntry<String, dynamic> entry in rated.entries) {
          final int? id = int.tryParse(entry.key);
          if (id != null && entry.value is int) _rated[id] = entry.value as int;
        }
      }
      final Object? dismissed = decoded['dismissed'];
      if (dismissed is List) _dismissed.addAll(dismissed.whereType<int>());
    } on FormatException {
      // A corrupt entry costs a prompt or two, nothing more.
    }
  }

  Future<void> _write() => _store.saveRatedOrdersJson(
        jsonEncode(<String, Object>{
          'rated': <String, int>{
            for (final MapEntry<int, int> e in _rated.entries.toList()
                .reversed
                .take(_kept))
              '${e.key}': e.value,
          },
          'dismissed': _dismissed.toList().reversed.take(_kept).toList(),
        }),
      );

  /// The food rating given to [order]: the server's, or this phone's.
  int? ratingOf(Order order) => order.review?.rating ?? _rated[order.id];

  /// Delivered, not rated, and still open to rating as far as anyone knows.
  bool needsRating(Order order) =>
      order.status == OrderStatus.delivered &&
      ratingOf(order) == null &&
      (order.canReview ?? true);

  /// Whether the customer waved this order's prompt away.
  bool isDismissed(Order order) => _dismissed.contains(order.id);

  Future<void> remember(int orderId, int rating) async {
    _rated.remove(orderId);
    _rated[orderId] = rating;
    notifyListeners();
    await _write();
  }

  Future<void> dismiss(int orderId) async {
    _dismissed.add(orderId);
    notifyListeners();
    await _write();
  }
}
