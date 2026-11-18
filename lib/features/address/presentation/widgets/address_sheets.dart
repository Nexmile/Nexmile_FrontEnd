import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../../core/services/preferences_service.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';
import '../../data/location_service.dart';
import '../../data/recent_places.dart';
import 'place_search.dart';

// ---------------------------------------------------------------------------
// Add address
// ---------------------------------------------------------------------------

/// "Add address": search, use where the phone is, or pick a recent place.
///
/// Answers with a place that has coordinates, ready for the map, or null when
/// the customer closes it.
Future<PlaceSuggestion?> showAddAddressSheet(BuildContext context) {
  return showModalBottomSheet<PlaceSuggestion>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    builder: (BuildContext context) => const FractionallySizedBox(
      heightFactor: 0.94,
      child: _AddAddressSheet(),
    ),
  );
}

class _AddAddressSheet extends StatefulWidget {
  const _AddAddressSheet();

  @override
  State<_AddAddressSheet> createState() => _AddAddressSheetState();
}

class _AddAddressSheetState extends State<_AddAddressSheet> {
  late final LocationService _location = context.read<LocationService>();
  late final RecentPlaces _recentPlaces =
      RecentPlaces(context.read<PreferencesService>());
  late final PlaceSearch _search = PlaceSearch(service: _location);

  CurrentSpot? _here;
  bool _locating = true;
  bool _busy = false;
  String? _error;
  List<PlaceSuggestion> _recent = const <PlaceSuggestion>[];

  @override
  void initState() {
    super.initState();
    _recent = _recentPlaces.read();
    _locateQuietly();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _search.language = Localizations.localeOf(context).languageCode;
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _locateQuietly() async {
    final CurrentSpot? here = await currentSpotQuietly(_location);
    if (!mounted) return;
    setState(() {
      _here = here;
      _locating = false;
    });
    _search.near = here;
  }

  Future<void> _useCurrentLocation() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NavigatorState navigator = Navigator.of(context);
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final CurrentSpot spot = await currentSpot(_location);
      if (!mounted) return;
      navigator.pop(spot.toSuggestion(l10n.currentLocationLabel));
    } on LocationException catch (error) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _error = locationFailureMessage(l10n, error.failure);
      });
    }
  }

  Future<void> _pick(PlaceSuggestion suggestion) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NavigatorState navigator = Navigator.of(context);
    setState(() {
      _busy = true;
      _error = null;
    });
    final PlaceSuggestion? place = await _location.resolve(suggestion);
    if (!mounted) return;
    if (place == null) {
      setState(() {
        _busy = false;
        _error = l10n.locationUnavailable;
      });
      return;
    }
    await _recentPlaces.add(place);
    if (!mounted) return;
    navigator.pop(place);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Column(
      children: <Widget>[
        // Closes the sheet: a round button floating above it.
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Material(
            color: Colors.black.withValues(alpha: 0.82),
            shape: const CircleBorder(),
            child: IconButton(
              tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.close_rounded, color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            child: ColoredBox(
              color: addressPageColour(theme),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  if (_busy) const LinearProgressIndicator(minHeight: 2),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, _busy ? 20 : 22, 20, 0),
                    child: Text(
                      l10n.addAddress,
                      style: theme.textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
                    child: AddressSearchField(search: _search),
                  ),
                  Expanded(
                    child: AbsorbPointer(
                      absorbing: _busy,
                      child: ListenableBuilder(
                        listenable: _search,
                        builder: (BuildContext context, _) => _search.active
                            ? PlaceResults(search: _search, onPick: _pick)
                            : _idle(theme, l10n),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _idle(ThemeData theme, AppLocalizations l10n) {
    return ListView(
      padding: EdgeInsets.fromLTRB(
        16,
        6,
        16,
        24 + MediaQuery.viewInsetsOf(context).bottom,
      ),
      children: <Widget>[
        WhiteCard(
          children: <Widget>[
            CurrentLocationRow(
              spot: _here,
              locating: _locating,
              onTap: _useCurrentLocation,
            ),
          ],
        ),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 14),
            child: Text(
              _error!,
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: theme.colorScheme.error),
            ),
          ),
        if (_recent.isNotEmpty) ...<Widget>[
          SectionHeading(l10n.recentLocationsHeading),
          WhiteCard(
            children: <Widget>[
              for (int i = 0; i < _recent.length; i++) ...<Widget>[
                if (i > 0) const Divider(height: 1, indent: 64),
                PlaceRow(
                  icon: Icons.schedule_rounded,
                  title: _recent[i].title,
                  subtitle: _recent[i].subtitle,
                  distance: distanceLabel(
                    _here,
                    _recent[i].latitude,
                    _recent[i].longitude,
                  ),
                  onTap: () => _pick(_recent[i]),
                ),
              ],
            ],
          ),
        ],
        const PoweredByGoogle(),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Receiver
// ---------------------------------------------------------------------------

/// Edits who receives the delivery. Answers with a trimmed name and a
/// ten-digit number, or null when dismissed.
Future<({String name, String phone})?> showReceiverSheet(
  BuildContext context, {
  required String name,
  required String phone,
}) {
  return showModalBottomSheet<({String name, String phone})>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (BuildContext context) =>
        _ReceiverSheet(name: name, phone: phone),
  );
}

class _ReceiverSheet extends StatefulWidget {
  const _ReceiverSheet({required this.name, required this.phone});

  final String name;
  final String phone;

  @override
  State<_ReceiverSheet> createState() => _ReceiverSheetState();
}

class _ReceiverSheetState extends State<_ReceiverSheet> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  late final TextEditingController _name =
      TextEditingController(text: widget.name);
  late final TextEditingController _phone =
      TextEditingController(text: widget.phone);

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    super.dispose();
  }

  void _save() {
    if (!(_form.currentState?.validate() ?? false)) return;
    Navigator.of(context).pop((name: _name.text.trim(), phone: _phone.text.trim()));
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(
        20,
        0,
        20,
        16 + MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Form(
        key: _form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              l10n.receiverSheetTitle,
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 18),
            AuthTextField(
              label: l10n.contactNameLabel,
              controller: _name,
              prefixIcon: Icons.person_outline_rounded,
              textInputAction: TextInputAction.next,
              forceLtrInput: false,
              autofocus: widget.name.isEmpty,
              validator: (String? v) =>
                  (v ?? '').trim().isEmpty ? l10n.fieldRequired : null,
            ),
            const SizedBox(height: 16),
            AuthTextField(
              label: l10n.contactPhoneLabel,
              controller: _phone,
              prefixIcon: Icons.phone_outlined,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              maxLength: 10,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              validator: (String? v) => isMobileNumber(v)
                  ? null
                  : l10n.invalidMobileNumber,
              onSubmitted: (_) => _save(),
            ),
            const SizedBox(height: 18),
            GradientButton(label: l10n.saveChanges, onPressed: _save),
          ],
        ),
      ),
    );
  }
}

/// An Indian mobile number: ten digits, starting 6 to 9.
bool isMobileNumber(String? value) =>
    RegExp(r'^[6-9]\d{9}$').hasMatch((value ?? '').trim());

// ---------------------------------------------------------------------------
// Door photo
// ---------------------------------------------------------------------------

/// A photo chosen for an address, ready to upload.
@immutable
class PickedPhoto {
  const PickedPhoto({required this.bytes, required this.filename});

  final Uint8List bytes;
  final String filename;
}

/// Lets a test stand in for the camera and the gallery.
@visibleForTesting
Future<PickedPhoto?> Function(ImageSource source)? debugPickPhoto;

enum _PhotoAction { camera, gallery, remove }

/// Asks camera or gallery, then picks one photo, shrunk to a size that
/// uploads quickly on a phone connection and is still clear on the rider's
/// screen. Null when the customer backs out.
///
/// With [onRemove], the sheet also offers to take the current photo off;
/// choosing that runs it and answers null.
Future<PickedPhoto?> pickDoorPhoto(
  BuildContext context, {
  Future<void> Function()? onRemove,
}) async {
  final AppLocalizations l10n = AppLocalizations.of(context);
  final _PhotoAction? action = await showModalBottomSheet<_PhotoAction>(
    context: context,
    showDragHandle: true,
    builder: (BuildContext context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.photo_camera_outlined),
            title: Text(l10n.photoFromCamera),
            onTap: () => Navigator.of(context).pop(_PhotoAction.camera),
          ),
          ListTile(
            leading: const Icon(Icons.photo_library_outlined),
            title: Text(l10n.photoFromGallery),
            onTap: () => Navigator.of(context).pop(_PhotoAction.gallery),
          ),
          if (onRemove != null)
            ListTile(
              leading: Icon(
                Icons.delete_outline_rounded,
                color: Theme.of(context).colorScheme.error,
              ),
              title: Text(
                l10n.removePhotoLabel,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
              onTap: () => Navigator.of(context).pop(_PhotoAction.remove),
            ),
          const SizedBox(height: 8),
        ],
      ),
    ),
  );
  if (action == null) return null;
  if (action == _PhotoAction.remove) {
    await onRemove?.call();
    return null;
  }
  final ImageSource source = action == _PhotoAction.camera
      ? ImageSource.camera
      : ImageSource.gallery;

  final Future<PickedPhoto?> Function(ImageSource source)? override =
      debugPickPhoto;
  if (override != null) return override(source);

  try {
    final XFile? file = await ImagePicker().pickImage(
      source: source,
      maxWidth: 1600,
      maxHeight: 1600,
      imageQuality: 80,
    );
    if (file == null) return null;
    return PickedPhoto(
      bytes: await file.readAsBytes(),
      filename: file.name.isEmpty ? 'door.jpg' : file.name,
    );
  } catch (_) {
    // No camera, or access refused: nothing chosen.
    return null;
  }
}
