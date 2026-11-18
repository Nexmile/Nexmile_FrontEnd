import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/geo_distance.dart';
import '../../data/location_service.dart';

// ---------------------------------------------------------------------------
// Where the phone is
// ---------------------------------------------------------------------------

/// The phone's position and what it reverse-geocodes to.
@immutable
class CurrentSpot {
  const CurrentSpot({
    required this.latitude,
    required this.longitude,
    required this.place,
  });

  final double latitude;
  final double longitude;
  final ResolvedPlace place;

  String? get title => placeTitle(place);

  String get subtitle => placeSubtitle(place);

  /// As a search result, so "use current location" travels the same road as
  /// a picked place.
  PlaceSuggestion toSuggestion(String fallbackTitle) => PlaceSuggestion(
        title: title ?? fallbackTitle,
        subtitle: subtitle,
        latitude: latitude,
        longitude: longitude,
      );
}

/// The current spot, but only with permission already given. Never prompts:
/// a screen that merely opens should not throw a system dialog at anyone.
Future<CurrentSpot?> currentSpotQuietly(LocationService location) async {
  try {
    final LocationPermission permission = await location.currentPermission();
    if (permission != LocationPermission.whileInUse &&
        permission != LocationPermission.always) {
      return null;
    }
    return await currentSpot(location);
  } catch (_) {
    return null;
  }
}

/// The current spot, asking for permission if need be. Throws
/// [LocationException] when there is no fix to be had.
Future<CurrentSpot> currentSpot(LocationService location) async {
  final LocationFix fix = await location.requestFix();
  final ResolvedPlace place =
      await location.describe(fix.latitude, fix.longitude);
  return CurrentSpot(
    latitude: fix.latitude,
    longitude: fix.longitude,
    place: place,
  );
}

/// The neighbourhood, which is what a person calls the place: "K L K S
/// Nagar" rather than a door number.
String? placeTitle(ResolvedPlace place) {
  for (final String? part in <String?>[place.landmark, place.line1, place.city]) {
    if (part != null && part.trim().isNotEmpty) return part.trim();
  }
  return null;
}

/// Everything after the title: "Pudukkottai, Tamil Nadu, 622001".
String placeSubtitle(ResolvedPlace place) {
  final String? title = placeTitle(place);
  final List<String> parts = <String>[];
  for (final String? part in <String?>[
    place.line1,
    place.city,
    place.state,
    place.pincode,
  ]) {
    final String text = part?.trim() ?? '';
    if (text.isEmpty || text == title || parts.contains(text)) continue;
    parts.add(text);
  }
  return parts.join(', ');
}

String locationFailureMessage(AppLocalizations l10n, LocationFailure failure) =>
    switch (failure) {
      LocationFailure.denied => l10n.locationDenied,
      LocationFailure.deniedForever => l10n.locationDeniedForever,
      LocationFailure.serviceDisabled => l10n.locationServiceOff,
      LocationFailure.unavailable => l10n.locationUnavailable,
    };

String? distanceLabel(CurrentSpot? from, double? latitude, double? longitude) {
  if (from == null || latitude == null || longitude == null) return null;
  return formatDistance(
    metresBetween(from.latitude, from.longitude, latitude, longitude),
  );
}

// ---------------------------------------------------------------------------
// Search
// ---------------------------------------------------------------------------

/// Type-ahead over [LocationService.search]: waits for a pause in typing,
/// and drops an answer that a later query has already overtaken.
class PlaceSearch extends ChangeNotifier {
  PlaceSearch({required LocationService service}) : _service = service;

  final LocationService _service;
  final TextEditingController text = TextEditingController();

  /// Ranks results near here, and lets Google say how far each one is.
  CurrentSpot? near;
  String? language;

  Timer? _debounce;
  int _generation = 0;

  List<PlaceSuggestion> results = const <PlaceSuggestion>[];
  bool searching = false;
  bool searched = false;

  /// True once anything is typed: the screen swaps its usual content for the
  /// results.
  bool get active => text.text.trim().isNotEmpty;

  void onChanged(String value) {
    _debounce?.cancel();
    if (value.trim().length < 3) {
      _generation++;
      results = const <PlaceSuggestion>[];
      searching = false;
      searched = false;
      notifyListeners();
      return;
    }
    searching = true;
    notifyListeners();
    _debounce = Timer(const Duration(milliseconds: 350), () => _run(value));
  }

  Future<void> _run(String value) async {
    final int generation = ++_generation;
    final List<PlaceSuggestion> found = await _service.search(
      value,
      nearLatitude: near?.latitude,
      nearLongitude: near?.longitude,
      language: language,
    );
    if (generation != _generation) return;
    results = found;
    searching = false;
    searched = true;
    notifyListeners();
  }

  void clear() {
    text.clear();
    onChanged('');
  }

  @override
  void dispose() {
    _debounce?.cancel();
    text.dispose();
    super.dispose();
  }
}

/// The search box: a white card with the search icon in the brand orange.
class AddressSearchField extends StatelessWidget {
  const AddressSearchField({
    super.key,
    this.search,
    this.autofocus = false,
    this.onTap,
  }) : assert(search != null || onTap != null);

  /// The search this field types into. Unused when [onTap] is set.
  final PlaceSearch? search;
  final bool autofocus;

  /// When set, the field is only a button that opens a search elsewhere.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Material(
      color: theme.colorScheme.surface,
      elevation: 1.5,
      shadowColor: Colors.black.withValues(alpha: 0.18),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 54,
          padding: const EdgeInsetsDirectional.only(start: 14, end: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.7),
            ),
          ),
          child: Row(
            children: <Widget>[
              const Icon(
                Icons.search_rounded,
                color: AppColors.orangeDeep,
                size: 26,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: onTap != null
                    ? Text(
                        l10n.searchAddressHint,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      )
                    : TextField(
                        controller: search!.text,
                        autofocus: autofocus,
                        onChanged: search!.onChanged,
                        textInputAction: TextInputAction.search,
                        style: theme.textTheme.bodyLarge,
                        decoration: InputDecoration(
                          hintText: l10n.searchAddressHint,
                          hintMaxLines: 1,
                          hintStyle: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                          isCollapsed: true,
                          filled: false,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
              ),
              if (search case final PlaceSearch search? when onTap == null)
                ListenableBuilder(
                  listenable: search,
                  builder: (BuildContext context, _) {
                    if (search.searching) {
                      return const Padding(
                        padding: EdgeInsets.all(14),
                        child: SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      );
                    }
                    if (!search.active) return const SizedBox(width: 10);
                    return IconButton(
                      tooltip: l10n.clearLabel,
                      onPressed: search.clear,
                      icon: const Icon(Icons.close_rounded, size: 20),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// What the search found, or that it found nothing, with Google's credit
/// underneath as its terms require.
class PlaceResults extends StatelessWidget {
  const PlaceResults({
    super.key,
    required this.search,
    required this.onPick,
  });

  final PlaceSearch search;
  final ValueChanged<PlaceSuggestion> onPick;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return ListenableBuilder(
      listenable: search,
      builder: (BuildContext context, _) {
        final double keyboard = MediaQuery.viewInsetsOf(context).bottom;
        if (search.searched && search.results.isEmpty && !search.searching) {
          return ListView(
            padding: EdgeInsets.fromLTRB(32, 40, 32, 24 + keyboard),
            children: <Widget>[
              Icon(
                Icons.travel_explore_rounded,
                size: 44,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(height: 12),
              Text(
                l10n.searchAddressNoResults,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          );
        }
        return ListView(
          padding: EdgeInsets.fromLTRB(16, 4, 16, 24 + keyboard),
          children: <Widget>[
            if (search.results.isNotEmpty)
              WhiteCard(
                children: <Widget>[
                  for (int i = 0; i < search.results.length; i++) ...<Widget>[
                    if (i > 0) const Divider(height: 1, indent: 64),
                    PlaceRow(
                      icon: Icons.location_on_outlined,
                      title: search.results[i].title,
                      subtitle: search.results[i].subtitle,
                      distance: search.results[i].distanceMetres == null
                          ? null
                          : formatDistance(search.results[i].distanceMetres!),
                      onTap: () => onPick(search.results[i]),
                    ),
                  ],
                ],
              ),
            if (search.results.isNotEmpty) const PoweredByGoogle(),
          ],
        );
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Rows and cards
// ---------------------------------------------------------------------------

/// The page colour behind the white cards.
Color addressPageColour(ThemeData theme) =>
    theme.brightness == Brightness.dark
        ? theme.colorScheme.surface
        : const Color(0xFFF3F4F8);

/// A white, rounded group of rows.
class WhiteCard extends StatelessWidget {
  const WhiteCard({super.key, required this.children, this.margin});

  final List<Widget> children;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: theme.brightness == Brightness.dark
            ? theme.colorScheme.surfaceContainerLow
            : theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}

/// One tappable row: an icon (with a distance under it, when known), a title
/// and a subtitle, and an optional chevron.
class PlaceRow extends StatelessWidget {
  const PlaceRow({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.distance,
    this.onTap,
    this.accent = false,
    this.chevron = false,
    this.trailing,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final String? distance;
  final VoidCallback? onTap;

  /// Draws the icon and title in the brand orange, for actions.
  final bool accent;
  final bool chevron;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color action = AppColors.orangeDeep;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 12, 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 36,
              child: Column(
                children: <Widget>[
                  Icon(
                    icon,
                    size: 24,
                    color: accent ? action : theme.colorScheme.onSurfaceVariant,
                  ),
                  if (distance != null) ...<Widget>[
                    const SizedBox(height: 4),
                    Text(
                      distance!,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: accent ? FontWeight.w700 : FontWeight.w600,
                      color: accent ? action : null,
                    ),
                  ),
                  if ((subtitle ?? '').isNotEmpty) ...<Widget>[
                    const SizedBox(height: 3),
                    Text(
                      subtitle!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.35,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null) trailing!,
            if (chevron)
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 6, top: 2),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// "Use current location", with where that is underneath.
class CurrentLocationRow extends StatelessWidget {
  const CurrentLocationRow({
    super.key,
    required this.spot,
    required this.locating,
    required this.onTap,
  });

  final CurrentSpot? spot;
  final bool locating;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final CurrentSpot? spot = this.spot;
    final String subtitle = spot != null
        ? <String?>[spot.title, spot.subtitle]
            .where((String? p) => p != null && p.isNotEmpty)
            .join(', ')
        : (locating ? l10n.locatingYou : l10n.locationOffHint);

    return PlaceRow(
      icon: Icons.my_location_rounded,
      title: l10n.useCurrentLocation,
      subtitle: subtitle,
      accent: true,
      chevron: true,
      onTap: onTap,
    );
  }
}

/// "SAVED ADDRESSES": small, spaced capitals above a group of cards.
class SectionHeading extends StatelessWidget {
  const SectionHeading(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 4, 12),
      child: Text(
        text.toUpperCase(),
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
          letterSpacing: 2.2,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// "powered by Google", which Google's terms ask for under Places results
/// shown without a map.
class PoweredByGoogle extends StatelessWidget {
  const PoweredByGoogle({super.key});

  static const List<Color> _colours = <Color>[
    Color(0xFF4285F4),
    Color(0xFFEA4335),
    Color(0xFFFBBC05),
    Color(0xFF4285F4),
    Color(0xFF34A853),
    Color(0xFFEA4335),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle? base = theme.textTheme.titleMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: '${AppLocalizations.of(context).poweredBy} ',
                style: base?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w400,
                ),
              ),
              for (int i = 0; i < 'Google'.length; i++)
                TextSpan(
                  text: 'Google'[i],
                  style: base?.copyWith(
                    color: _colours[i],
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
