import 'dart:math' as math;

/// Straight-line distance between two points on the earth, in metres.
///
/// Haversine rather than the geolocator call, so it is plain Dart a test can
/// run, and accurate to well under a metre at city distances, which is far
/// finer than the label it feeds.
double metresBetween(
  double latitude1,
  double longitude1,
  double latitude2,
  double longitude2,
) {
  const double earthRadius = 6371000;
  double rad(double degrees) => degrees * math.pi / 180;
  final double dLat = rad(latitude2 - latitude1);
  final double dLng = rad(longitude2 - longitude1);
  final double a = math.pow(math.sin(dLat / 2), 2) +
      math.cos(rad(latitude1)) *
          math.cos(rad(latitude2)) *
          math.pow(math.sin(dLng / 2), 2);
  return earthRadius * 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
}

/// "2 m", "850 m", "1.2 km", "329 km": metres up to a kilometre, one decimal
/// up to ten, whole kilometres after that.
String formatDistance(double metres) {
  if (metres < 1000) return '${metres.round()} m';
  final double km = metres / 1000;
  if (km < 10) return '${km.toStringAsFixed(1)} km';
  return '${km.round()} km';
}
