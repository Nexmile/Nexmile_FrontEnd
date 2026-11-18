import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' show Locale;
import 'package:geocoding/geocoding.dart' as geo;
import 'package:geolocator/geolocator.dart';

import 'google_places.dart';

/// Why a location request failed, as a closed set the UI can translate.
enum LocationFailure {
  /// The customer said no, but can be asked again.
  denied,

  /// "Don't ask again" on Android, or Settings-level denial on iOS. Only the
  /// system settings screen can undo this, so the UI must say so rather than
  /// re-prompting into a dialog that will never appear.
  deniedForever,

  /// Location is switched off device-wide.
  serviceDisabled,

  /// The fix timed out or the platform returned an error.
  unavailable,
}

@immutable
class LocationFix {
  const LocationFix({required this.latitude, required this.longitude});

  final double latitude;
  final double longitude;
}

/// A best-effort street address for a coordinate, used to prefill the form.
@immutable
class ResolvedPlace {
  const ResolvedPlace({
    this.line1,
    this.landmark,
    this.city,
    this.state,
    this.pincode,
  });

  final String? line1;
  final String? landmark;
  final String? city;
  final String? state;
  final String? pincode;

  bool get isEmpty =>
      (line1 ?? '').isEmpty &&
      (city ?? '').isEmpty &&
      (pincode ?? '').isEmpty;
}

/// One hit from an address search: how to label it, and where it is.
///
/// A Google suggestion arrives with a [placeId] and no coordinates; they are
/// fetched only for the one the customer taps, through
/// [LocationService.resolve]. A geocoder hit or a recent place arrives with
/// coordinates already.
@immutable
class PlaceSuggestion {
  const PlaceSuggestion({
    required this.title,
    required this.subtitle,
    this.latitude,
    this.longitude,
    this.placeId,
    this.distanceMetres,
  });

  final String title;
  final String subtitle;
  final double? latitude;
  final double? longitude;

  /// Google's id for the place, for fetching its coordinates.
  final String? placeId;

  /// How far it is from where the customer is, when Google said.
  final double? distanceMetres;

  bool get isResolved => latitude != null && longitude != null;

  PlaceSuggestion copyWith({
    double? latitude,
    double? longitude,
    double? distanceMetres,
  }) =>
      PlaceSuggestion(
        title: title,
        subtitle: subtitle,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        placeId: placeId,
        distanceMetres: distanceMetres ?? this.distanceMetres,
      );

  /// For the recent places list. Only resolved places are stored.
  Map<String, Object?> toJson() => <String, Object?>{
        'title': title,
        'subtitle': subtitle,
        'latitude': latitude,
        'longitude': longitude,
      };

  static PlaceSuggestion? fromJson(Object? raw) {
    if (raw is! Map) return null;
    final Object? title = raw['title'];
    final Object? latitude = raw['latitude'];
    final Object? longitude = raw['longitude'];
    if (title is! String || latitude is! num || longitude is! num) return null;
    return PlaceSuggestion(
      title: title,
      subtitle: raw['subtitle'] is String ? raw['subtitle']! as String : '',
      latitude: latitude.toDouble(),
      longitude: longitude.toDouble(),
    );
  }
}

/// Wraps geolocator and geocoding so the UI never touches the plugins, and so
/// tests can substitute a fake.
abstract class LocationService {
  /// Current permission state without prompting.
  Future<LocationPermission> currentPermission();

  /// Shows the system prompt if it still can, and returns the answer. Unlike
  /// [requestFix] it does not then wait for GPS, so the first-run screen can
  /// move on the moment the customer answers.
  Future<LocationPermission> requestPermission();

  /// Prompts if needed, then returns a fix. Throws [LocationFailure] cases via
  /// [LocationException].
  Future<LocationFix> requestFix();

  /// Reverse-geocodes a coordinate. Never throws — an unresolvable point just
  /// means the customer types the address themselves.
  Future<ResolvedPlace> describe(double latitude, double longitude);

  /// Finds places matching [query]: an area, a street, a landmark, a pincode.
  /// Near [nearLatitude], [nearLongitude] first when given. Never throws; no
  /// match and no network both come back empty.
  Future<List<PlaceSuggestion>> search(
    String query, {
    double? nearLatitude,
    double? nearLongitude,
    String? language,
  });

  /// [suggestion] with coordinates, fetching them if it has none yet. Null
  /// when they cannot be found.
  Future<PlaceSuggestion?> resolve(PlaceSuggestion suggestion);

  /// Opens the OS settings page so a "denied forever" customer can recover.
  Future<void> openSettings();
}

class LocationException implements Exception {
  const LocationException(this.failure);

  final LocationFailure failure;

  @override
  String toString() => 'LocationException(${failure.name})';
}

class GeolocatorLocationService implements LocationService {
  const GeolocatorLocationService({this.places});

  /// Google's type-ahead search. Without it, or when Google cannot be used,
  /// search falls back to the phone's own geocoder.
  final GooglePlaces? places;

  @override
  Future<LocationPermission> currentPermission() =>
      Geolocator.checkPermission();

  @override
  Future<LocationPermission> requestPermission() async {
    try {
      return await Geolocator.requestPermission();
    } catch (_) {
      // A prompt already on screen, or a build missing the manifest entry.
      // Either way the customer has not said yes.
      return LocationPermission.denied;
    }
  }

  @override
  Future<LocationFix> requestFix() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      throw const LocationException(LocationFailure.serviceDisabled);
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      throw const LocationException(LocationFailure.deniedForever);
    }
    if (permission == LocationPermission.denied) {
      throw const LocationException(LocationFailure.denied);
    }

    try {
      final Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          // A delivery pin is worth waiting a few seconds for, but not
          // forever — the customer can always drag the pin instead.
          timeLimit: Duration(seconds: 20),
        ),
      );
      return LocationFix(
        latitude: position.latitude,
        longitude: position.longitude,
      );
    } catch (_) {
      throw const LocationException(LocationFailure.unavailable);
    }
  }

  @override
  Future<ResolvedPlace> describe(double latitude, double longitude) async {
    try {
      // geocoding 5 replaced the top-level functions with an instance; the
      // instance is cheap and holds no platform resources between calls.
      final List<geo.Placemark> marks =
          await geo.Geocoding().placemarkFromCoordinates(latitude, longitude);
      if (marks.isEmpty) return const ResolvedPlace();

      final geo.Placemark mark = marks.first;
      // Indian placemarks put the useful street in `street`, the
      // neighbourhood in `subLocality` and the city in `locality`.
      final String line1 = <String?>[mark.name, mark.thoroughfare]
          .where((String? p) => p != null && p.trim().isNotEmpty)
          .toSet()
          .join(', ');

      return ResolvedPlace(
        line1: line1.isEmpty ? mark.street : line1,
        landmark: mark.subLocality,
        city: mark.locality?.isNotEmpty == true
            ? mark.locality
            : mark.subAdministrativeArea,
        state: mark.administrativeArea,
        pincode: mark.postalCode,
      );
    } catch (_) {
      // Geocoding is a convenience, never a requirement.
      return const ResolvedPlace();
    }
  }

  @override
  Future<List<PlaceSuggestion>> search(
    String query, {
    double? nearLatitude,
    double? nearLongitude,
    String? language,
  }) async {
    final String q = query.trim();
    if (q.length < 3) return const <PlaceSuggestion>[];

    final List<PlaceSuggestion>? google = await places?.autocomplete(
      q,
      latitude: nearLatitude,
      longitude: nearLongitude,
      language: language,
    );
    if (google != null) return google;

    try {
      // The platform geocoder: Google's on Android, Apple's on iOS. No key and
      // no billing, at the cost of returning a handful of exact matches
      // rather than type-ahead suggestions. Swapping in Places Autocomplete
      // later changes this method and nothing that calls it.
      final geo.Geocoding geocoder = geo.Geocoding();
      final List<geo.Location> hits = await geocoder.locationFromAddress(
        q,
        locale: const Locale('en', 'IN'),
      );

      final List<PlaceSuggestion> results = await Future.wait(
        hits.take(5).map((geo.Location hit) async {
          final ResolvedPlace place =
              await describe(hit.latitude, hit.longitude);
          final String title = <String?>[place.line1, place.landmark]
              .firstWhere(
                (String? p) => p != null && p.trim().isNotEmpty,
                orElse: () => q,
              )!;
          final String subtitle = <String?>[
            place.landmark == title ? null : place.landmark,
            place.city,
            place.state,
            place.pincode,
          ].where((String? p) => p != null && p.trim().isNotEmpty).join(', ');
          return PlaceSuggestion(
            title: title,
            subtitle: subtitle,
            latitude: hit.latitude,
            longitude: hit.longitude,
          );
        }),
      );
      return results;
    } catch (_) {
      // "No results found" is thrown as an error by both platforms.
      return const <PlaceSuggestion>[];
    }
  }

  @override
  Future<PlaceSuggestion?> resolve(PlaceSuggestion suggestion) async {
    if (suggestion.isResolved) return suggestion;
    final PlaceSuggestion? fromGoogle = await places?.details(suggestion);
    if (fromGoogle != null) return fromGoogle;

    // Google could not give coordinates; ask the phone's geocoder for the
    // place by its name instead.
    try {
      final List<geo.Location> hits = await geo.Geocoding().locationFromAddress(
        <String>[suggestion.title, suggestion.subtitle]
            .where((String p) => p.trim().isNotEmpty)
            .join(', '),
        locale: const Locale('en', 'IN'),
      );
      if (hits.isEmpty) return null;
      return suggestion.copyWith(
        latitude: hits.first.latitude,
        longitude: hits.first.longitude,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> openSettings() async {
    // App settings first: the usual cause is a per-app denial.
    final bool opened = await Geolocator.openAppSettings();
    if (!opened) await Geolocator.openLocationSettings();
  }
}
