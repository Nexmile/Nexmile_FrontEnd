import 'dart:convert';

import '../../../core/services/preferences_service.dart';
import 'geo_distance.dart';
import 'location_service.dart';

/// The last few places picked in the address search, newest first.
class RecentPlaces {
  const RecentPlaces(this._preferences);

  final PreferencesService _preferences;

  /// Enough to cover "home, work, and that one friend's place", and short
  /// enough to stay above the fold.
  static const int limit = 5;

  List<PlaceSuggestion> read() {
    final String? raw = _preferences.recentPlacesJson;
    if (raw == null || raw.isEmpty) return const <PlaceSuggestion>[];
    try {
      final Object? decoded = jsonDecode(raw);
      if (decoded is! List) return const <PlaceSuggestion>[];
      return <PlaceSuggestion>[
        for (final Object? item in decoded)
          if (PlaceSuggestion.fromJson(item) case final PlaceSuggestion place)
            place,
      ];
    } catch (_) {
      return const <PlaceSuggestion>[];
    }
  }

  /// Puts [place] first. The same spot picked twice, which is anything
  /// within 50 m, is kept once rather than filling the list.
  Future<void> add(PlaceSuggestion place) async {
    if (!place.isResolved) return;
    final List<PlaceSuggestion> next = <PlaceSuggestion>[
      place,
      for (final PlaceSuggestion old in read())
        if (metresBetween(
              old.latitude!,
              old.longitude!,
              place.latitude!,
              place.longitude!,
            ) >
            50)
          old,
    ].take(limit).toList();
    await _preferences.saveRecentPlacesJson(
      jsonEncode(<Object?>[for (final PlaceSuggestion p in next) p.toJson()]),
    );
  }
}
