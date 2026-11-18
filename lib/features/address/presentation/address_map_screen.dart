import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart' show LocationPermission;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../auth/data/auth_failure.dart';
import '../../auth/data/auth_user.dart';
import '../../auth/presentation/widgets/auth_scaffold.dart';
import '../../auth/state/auth_controller.dart';
import '../../catalogue/presentation/widgets/filter_bar.dart' show FilterPill;
import '../data/address.dart';
import '../data/location_service.dart';
import '../state/address_controller.dart';
import 'address_flow.dart';
import 'widgets/address_sheets.dart';
import 'widgets/place_search.dart';

/// "Select delivery location": the map, and everything else about the address
/// underneath it.
///
/// The customer drags the map under a fixed pin, which is how every delivery
/// app does it: dragging a marker hides it under the thumb, and on a small
/// screen that is exactly the pixel that matters. Where the pin lands is
/// turned into the area and city by the phone's geocoder; the customer adds
/// only what no map knows: the flat and floor, who takes the delivery, what to
/// call the address, and, if they like, a photo of the door.
///
/// One screen rather than a map followed by a form, so a wrong pin is never
/// more than a scroll away from the details it belongs to.
class AddressMapScreen extends StatefulWidget {
  const AddressMapScreen({super.key, required this.args});

  final AddressMapArgs args;

  @override
  State<AddressMapScreen> createState() => _AddressMapScreenState();
}

class _AddressMapScreenState extends State<AddressMapScreen> {
  /// Central Chennai, only when there is nothing better to open on.
  static const LatLng _fallbackCentre = LatLng(13.0827, 80.2707);

  static const double _zoom = 17;

  final Completer<GoogleMapController> _map = Completer<GoogleMapController>();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  late LatLng _pin;
  ResolvedPlace? _place;
  bool _resolving = false;

  /// True between the customer touching the map and the camera coming to
  /// rest. The geocoder runs once per drag, on rest, not once per frame.
  bool _moving = false;
  bool _locating = false;

  /// The blue dot, shown once location permission is known to be given.
  bool _showMyLocation = false;

  late final TextEditingController _details;
  late final TextEditingController _city;
  late final TextEditingController _state;
  late final TextEditingController _pincode;

  /// City, state and PIN code come from the pin. They are shown as fields
  /// only when the geocoder could not supply them, or the server objected.
  bool _askArea = false;

  AddressLabel _label = AddressLabel.home;
  bool _someoneElse = false;
  String _receiverName = '';
  String _receiverPhone = '';
  bool _receiverError = false;

  PickedPhoto? _photo;

  /// The saved photo, taken off when the address is saved.
  bool _removeSavedPhoto = false;

  bool _saving = false;
  AuthFailure? _failure;

  /// The server's field errors from the last save. Cleared before each save
  /// so a corrected field is checked again rather than held to the old answer.
  Map<String, List<String>> _serverErrors = const <String, List<String>>{};

  Address? get _editing => widget.args.editing;

  @override
  void initState() {
    super.initState();
    final Address? editing = _editing;
    final AddressMapArgs args = widget.args;

    _pin = editing != null
        ? LatLng(editing.latitude, editing.longitude)
        : (args.latitude != null && args.longitude != null
            ? LatLng(args.latitude!, args.longitude!)
            : _fallbackCentre);

    _details = TextEditingController(text: editing?.line1 ?? '');
    _city = TextEditingController(text: editing?.city ?? '');
    _state = TextEditingController(text: editing?.state ?? '');
    _pincode = TextEditingController(text: editing?.pincode ?? '');

    final AuthUser? me = context.read<AuthController>().user;
    if (editing != null) {
      _label = editing.label;
      // What was saved stands until the pin moves.
      _place = ResolvedPlace(
        line1: editing.line2,
        landmark: editing.landmark,
        city: editing.city,
        state: editing.state,
        pincode: editing.pincode,
      );
      final String savedName = editing.contactName?.trim() ?? '';
      _someoneElse = savedName.isNotEmpty && savedName != me?.name.trim();
    }
    _receiverName = _text(editing?.contactName) ?? me?.name ?? '';
    _receiverPhone = _text(editing?.contactPhone) ?? me?.phone ?? '';

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (editing == null) _resolve();
      _checkMyLocation();
    });
  }

  static String? _text(String? value) {
    final String text = value?.trim() ?? '';
    return text.isEmpty ? null : text;
  }

  @override
  void dispose() {
    _details.dispose();
    _city.dispose();
    _state.dispose();
    _pincode.dispose();
    super.dispose();
  }

  // --- The pin ---------------------------------------------------------------

  void _onCameraMove(CameraPosition position) {
    _pin = position.target;
    if (!_moving) setState(() => _moving = true);
  }

  void _onCameraIdle() {
    if (!_moving) return;
    setState(() => _moving = false);
    _resolve();
  }

  Future<void> _resolve() async {
    if (!mounted) return;
    setState(() => _resolving = true);
    final LatLng target = _pin;
    final ResolvedPlace place = await context
        .read<LocationService>()
        .describe(target.latitude, target.longitude);
    if (!mounted) return;

    setState(() {
      _resolving = false;
      // A later drag may already have moved on from this spot.
      if (target != _pin) return;
      _place = place;
      // Only overwrite with something: an empty answer must not wipe a PIN
      // code the customer typed in by hand.
      if ((place.city ?? '').trim().isNotEmpty) _city.text = place.city!;
      if ((place.state ?? '').trim().isNotEmpty) _state.text = place.state!;
      if ((place.pincode ?? '').trim().isNotEmpty) {
        _pincode.text = place.pincode!;
      }
      if (_city.text.trim().isEmpty ||
          _state.text.trim().isEmpty ||
          _pincode.text.trim().isEmpty) {
        _askArea = true;
      }
    });
  }

  Future<void> _moveTo(LatLng target) async {
    _pin = target;
    if (_map.isCompleted) {
      final GoogleMapController map = await _map.future;
      await map.animateCamera(CameraUpdate.newLatLngZoom(target, _zoom));
    }
    if (!mounted) return;
    // The camera's idle callback resolves the place once the animation lands;
    // this covers a map that has not finished loading.
    if (!_moving) await _resolve();
  }

  Future<void> _checkMyLocation() async {
    try {
      final LocationPermission permission =
          await context.read<LocationService>().currentPermission();
      if (!mounted) return;
      setState(() {
        _showMyLocation = permission == LocationPermission.whileInUse ||
            permission == LocationPermission.always;
      });
    } catch (_) {
      // No blue dot, then; the pin works without it.
    }
  }

  Future<void> _useCurrentLocation() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final LocationService location = context.read<LocationService>();
    setState(() => _locating = true);
    try {
      final LocationFix fix = await location.requestFix();
      if (!mounted) return;
      setState(() {
        _locating = false;
        _showMyLocation = true;
      });
      await _moveTo(LatLng(fix.latitude, fix.longitude));
    } on LocationException catch (error) {
      if (!mounted) return;
      setState(() => _locating = false);
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(locationFailureMessage(l10n, error.failure))),
        );
    }
  }

  /// The search bar and the delivery card both lead here: search, current
  /// location, or a recent place, and the map follows.
  Future<void> _search() async {
    final PlaceSuggestion? place = await showAddAddressSheet(context);
    if (place == null || !place.isResolved || !mounted) return;
    await _moveTo(LatLng(place.latitude!, place.longitude!));
  }

  // --- Who receives it -------------------------------------------------------

  Future<void> _setSomeoneElse(bool value) async {
    if (value == _someoneElse) return;
    final AuthUser? me = context.read<AuthController>().user;
    if (!value) {
      setState(() {
        _someoneElse = false;
        _receiverName = me?.name ?? '';
        _receiverPhone = me?.phone ?? '';
        _receiverError = false;
      });
      return;
    }
    setState(() {
      _someoneElse = true;
      _receiverName = '';
      _receiverPhone = '';
    });
    // Asking straight away saves a tap: a different receiver means a
    // different name and number, and nothing else is needed from them.
    await _editReceiver();
  }

  Future<void> _editReceiver() async {
    final ({String name, String phone})? receiver = await showReceiverSheet(
      context,
      name: _receiverName,
      phone: _receiverPhone,
    );
    if (receiver == null || !mounted) return;
    setState(() {
      _receiverName = receiver.name;
      _receiverPhone = receiver.phone;
      _receiverError = false;
    });
  }

  bool get _receiverValid =>
      _receiverName.trim().isNotEmpty && isMobileNumber(_receiverPhone);

  Future<void> _pickPhoto() async {
    final PickedPhoto? photo = await pickDoorPhoto(context);
    if (photo == null || !mounted) return;
    setState(() => _photo = photo);
  }

  // --- Saving ----------------------------------------------------------------

  Future<void> _save() async {
    FocusScope.of(context).unfocus();
    setState(() {
      _failure = null;
      _serverErrors = const <String, List<String>>{};
      _receiverError = !_receiverValid;
    });
    final bool formValid = _form.currentState?.validate() ?? false;
    if (!formValid || _receiverError) return;

    final AppLocalizations l10n = AppLocalizations.of(context);
    final NavigatorState navigator = Navigator.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AddressController controller = context.read<AddressController>();
    final Address? editing = _editing;

    setState(() => _saving = true);
    final AuthFailure? failure = await controller.save(
      id: editing?.id,
      AddressDraft(
        label: _label,
        line1: _details.text,
        line2: _place?.line1 ?? editing?.line2,
        landmark: _place?.landmark ?? editing?.landmark,
        city: _city.text,
        state: _state.text,
        pincode: _pincode.text,
        latitude: _pin.latitude,
        longitude: _pin.longitude,
        contactName: _receiverName,
        contactPhone: _receiverPhone,
        // A new address is where the customer wants delivery now. A corrected
        // one keeps whatever it was.
        isDefault: editing?.isDefault ?? true,
      ),
    );
    if (!mounted) return;

    if (failure != null) {
      final Map<String, List<String>> errors = controller.fieldErrors;
      setState(() {
        _saving = false;
        _failure = failure;
        _serverErrors = errors;
        if (errors.containsKey('city') ||
            errors.containsKey('state') ||
            errors.containsKey('pincode')) {
          _askArea = true;
        }
        if (errors.containsKey('contact_name') ||
            errors.containsKey('contact_phone')) {
          _receiverError = true;
        }
      });
      // Validators do not re-run by themselves after a failed save; without
      // this the server's "we don't deliver to this PIN code" is never shown.
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => _form.currentState?.validate(),
      );
      return;
    }

    Address saved = controller.lastSaved!;
    bool photoFailed = false;
    final PickedPhoto? photo = _photo;
    if (photo != null) {
      // A new photo replaces the old one on the server, so there is nothing
      // to remove first.
      final AuthFailure? upload = await controller.uploadPhoto(
        saved.id,
        bytes: photo.bytes,
        filename: photo.filename,
      );
      photoFailed = upload != null;
      saved = controller.lastSaved ?? saved;
    } else if (_removeSavedPhoto && editing?.photoUrl != null) {
      await controller.deletePhoto(saved.id);
      saved = controller.lastSaved ?? saved;
    }
    if (!mounted) return;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            photoFailed
                ? l10n.addressSavedPhotoFailed
                : (editing == null ? l10n.addressSaved : l10n.addressUpdated),
          ),
        ),
      );

    if (widget.args.isFirstAddress && editing == null) {
      // Onboarding: this was the last step before the storefront.
      navigator.pushNamedAndRemoveUntil(
        AppRoutes.dashboard,
        (Route<void> route) => false,
      );
    } else {
      navigator.pop(saved);
    }
  }

  String? _serverError(String field) => _serverErrors[field]?.first;

  // --- Layout ----------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final double mapHeight =
        (MediaQuery.sizeOf(context).height * 0.42).clamp(240.0, 400.0);

    return Scaffold(
      backgroundColor: addressPageColour(theme),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: theme.colorScheme.surface,
            surfaceTintColor: Colors.transparent,
            title: Text(
              l10n.selectDeliveryLocationTitle,
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
                child: AddressSearchField(onTap: _search),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: mapHeight,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: GoogleMap(
                      initialCameraPosition:
                          CameraPosition(target: _pin, zoom: _zoom),
                      onMapCreated: (GoogleMapController controller) {
                        if (!_map.isCompleted) _map.complete(controller);
                      },
                      onCameraMove: _onCameraMove,
                      onCameraIdle: _onCameraIdle,
                      // Drags inside the map move the map; the page scrolls
                      // from the details below it.
                      gestureRecognizers: <Factory<
                          OneSequenceGestureRecognizer>>{
                        Factory<OneSequenceGestureRecognizer>(
                          EagerGestureRecognizer.new,
                        ),
                      },
                      myLocationEnabled: _showMyLocation,
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: false,
                      mapToolbarEnabled: false,
                      compassEnabled: false,
                      // A rotated map only makes a pin harder to place.
                      rotateGesturesEnabled: false,
                      tiltGesturesEnabled: false,
                      minMaxZoomPreference: const MinMaxZoomPreference(4, 20),
                    ),
                  ),
                  IgnorePointer(
                    child: _CentrePin(
                      tooltip: l10n.movePinTooltip,
                      lifted: _moving,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 34,
                    child: Center(
                      child: _MapPill(
                        label: l10n.useCurrentLocation,
                        busy: _locating,
                        onTap: _useCurrentLocation,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: const Offset(0, -20),
              child: _detailsSheet(theme, l10n),
            ),
          ),
        ],
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
            child: AuthSubmitButton(
              label: l10n.saveAddress,
              isBusy: _saving,
              onPressed: _save,
            ),
          ),
        ),
      ),
    );
  }

  Widget _detailsSheet(ThemeData theme, AppLocalizations l10n) {
    final ResolvedPlace? place = _place;
    final bool busy = _resolving || _moving;
    final String? title = place == null ? null : placeTitle(place);
    final String? waitingTitle = widget.args.place?.title;

    return Container(
      decoration: BoxDecoration(
        color: addressPageColour(theme),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 28),
      child: Form(
        key: _form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _Label(l10n.deliveryDetailsHeading),
            _OutlinedTile(
              onTap: _search,
              leading: const Icon(
                Icons.location_on_rounded,
                color: AppColors.orangeDeep,
                size: 26,
              ),
              child: busy && title == null && waitingTitle == null
                  ? Text(
                      l10n.locatingPin,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    )
                  : Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: busy
                                ? (waitingTitle ?? l10n.locatingPin)
                                : (title ?? waitingTitle ?? l10n.locatingPin),
                            style: const TextStyle(fontWeight: FontWeight.w800),
                          ),
                          if (!busy &&
                              place != null &&
                              placeSubtitle(place).isNotEmpty)
                            TextSpan(text: ', ${placeSubtitle(place)}'),
                        ],
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge?.copyWith(height: 1.35),
                    ),
            ),
            if (_askArea) ...<Widget>[
              const SizedBox(height: 12),
              Text(
                l10n.missingAreaHint,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 10),
              _Field(
                controller: _city,
                label: l10n.cityLabel,
                validator: (String? v) =>
                    _serverError('city') ??
                    ((v ?? '').trim().isEmpty ? l10n.fieldRequired : null),
              ),
              const SizedBox(height: 10),
              _Field(
                controller: _state,
                label: l10n.stateLabel,
                validator: (String? v) =>
                    _serverError('state') ??
                    ((v ?? '').trim().isEmpty ? l10n.fieldRequired : null),
              ),
              const SizedBox(height: 10),
              _Field(
                controller: _pincode,
                label: l10n.pincodeLabel,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(6),
                ],
                validator: (String? v) =>
                    _serverError('pincode') ??
                    (RegExp(r'^[1-9]\d{5}$').hasMatch((v ?? '').trim())
                        ? null
                        : l10n.invalidPincode),
              ),
            ],
            const SizedBox(height: 16),
            _Field(
              controller: _details,
              label: l10n.addressDetailsLabel,
              helper: l10n.addressDetailsHint,
              validator: (String? v) =>
                  _serverError('line1') ??
                  ((v ?? '').trim().isEmpty ? l10n.fieldRequired : null),
            ),
            const SizedBox(height: 22),
            _Label(l10n.whoToContact),
            RadioGroup<bool>(
              groupValue: _someoneElse,
              onChanged: (bool? value) => _setSomeoneElse(value ?? false),
              child: Wrap(
                spacing: 18,
                children: <Widget>[
                  _RadioOption(
                    value: false,
                    label: l10n.contactMyself,
                    onSelect: () => _setSomeoneElse(false),
                  ),
                  _RadioOption(
                    value: true,
                    label: l10n.contactSomeoneElse,
                    onSelect: () => _setSomeoneElse(true),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _Label(l10n.receiverDetailsHeading),
            _OutlinedTile(
              onTap: _editReceiver,
              error: _receiverError,
              leading: Icon(
                Icons.phone_in_talk_outlined,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              child: _receiverName.isEmpty && _receiverPhone.isEmpty
                  ? Text(
                      l10n.receiverAddPrompt,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: AppColors.orangeDeep,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(text: _receiverName),
                          if (_receiverPhone.isNotEmpty)
                            TextSpan(
                              text: '${_receiverName.isEmpty ? '' : ', '}'
                                  '$_receiverPhone',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700),
                            ),
                        ],
                      ),
                      style: theme.textTheme.bodyLarge,
                    ),
            ),
            if (_receiverError)
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
                child: Text(
                  _serverError('contact_phone') ??
                      _serverError('contact_name') ??
                      (isMobileNumber(_receiverPhone) || _receiverPhone.isEmpty
                          ? l10n.receiverAddPrompt
                          : l10n.invalidMobileNumber),
                  style: theme.textTheme.bodySmall
                      ?.copyWith(color: theme.colorScheme.error),
                ),
              ),
            const SizedBox(height: 22),
            _Label(l10n.saveAddressAs),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: <Widget>[
                for (final AddressLabel label in AddressLabel.values)
                  FilterPill(
                    label: addressLabelName(l10n, label),
                    icon: addressLabelIcon(label),
                    selected: _label == label,
                    onTap: () => setState(() => _label = label),
                  ),
              ],
            ),
            const SizedBox(height: 22),
            _Label(l10n.doorPhotoHeading),
            _DoorPhoto(
              photo: _photo,
              existingUrl: _removeSavedPhoto ? null : _editing?.photoUrl,
              onPick: _pickPhoto,
              onRemove: () => setState(() {
                if (_photo != null) {
                  _photo = null;
                } else {
                  _removeSavedPhoto = true;
                }
              }),
            ),
            if (_failure != null) ...<Widget>[
              const SizedBox(height: 16),
              AuthErrorBanner(message: _failure!.message(l10n)),
            ],
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Pieces
// ---------------------------------------------------------------------------

class _Label extends StatelessWidget {
  const _Label(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 2, bottom: 10),
      child: Text(
        text,
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// A white, outlined, tappable row with a chevron: the delivery area and the
/// receiver.
class _OutlinedTile extends StatelessWidget {
  const _OutlinedTile({
    required this.leading,
    required this.child,
    required this.onTap,
    this.error = false,
  });

  final Widget leading;
  final Widget child;
  final VoidCallback onTap;
  final bool error;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Material(
      color: theme.brightness == Brightness.dark
          ? theme.colorScheme.surfaceContainerLow
          : theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: error
                  ? theme.colorScheme.error
                  : theme.colorScheme.outlineVariant,
              width: error ? 1.5 : 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 10, 16),
            child: Row(
              children: <Widget>[
                leading,
                const SizedBox(width: 14),
                Expanded(child: child),
                Icon(
                  Icons.chevron_right_rounded,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// A white outlined field with its label inside, as on the reference design.
class _Field extends StatelessWidget {
  const _Field({
    required this.controller,
    required this.label,
    this.helper,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String label;
  final String? helper;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: theme.colorScheme.outlineVariant),
    );
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: label,
        helperText: helper,
        filled: true,
        fillColor: theme.brightness == Brightness.dark
            ? theme.colorScheme.surfaceContainerLow
            : theme.colorScheme.surface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        border: border,
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: const BorderSide(color: AppColors.greenDeep, width: 1.6),
        ),
      ),
    );
  }
}

class _RadioOption extends StatelessWidget {
  const _RadioOption({
    required this.value,
    required this.label,
    required this.onSelect,
  });

  final bool value;
  final String label;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Radio<bool>(value: value, activeColor: AppColors.greenDeep),
            Text(label, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}

/// The optional door or building photo: a dashed invitation, or the photo
/// with a way to change it.
class _DoorPhoto extends StatelessWidget {
  const _DoorPhoto({
    required this.photo,
    required this.existingUrl,
    required this.onPick,
    required this.onRemove,
  });

  final PickedPhoto? photo;
  final String? existingUrl;
  final VoidCallback onPick;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final PickedPhoto? photo = this.photo;
    final String? url = existingUrl;

    if (photo == null && url == null) {
      return Material(
        color: theme.brightness == Brightness.dark
            ? theme.colorScheme.surfaceContainerLow
            : theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onPick,
          borderRadius: BorderRadius.circular(16),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: theme.colorScheme.outlineVariant),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Icon(
                        Icons.add_a_photo_outlined,
                        size: 20,
                        color: AppColors.orangeDeep,
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          l10n.doorPhotoAdd,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: AppColors.orangeDeep,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    l10n.doorPhotoBody,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    final Widget image = photo != null
        ? Image.memory(
            photo.bytes,
            fit: BoxFit.cover,
            // A file the phone cannot decode is still a choice the customer
            // made; show a placeholder rather than fail.
            errorBuilder: (_, __, ___) => const ColoredBox(
              color: Color(0x14000000),
              child: Icon(Icons.image_outlined),
            ),
          )
        : Image.network(
            url!,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => const ColoredBox(
              color: Color(0x14000000),
              child: Icon(Icons.image_not_supported_outlined),
            ),
          );
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: SizedBox(width: 84, height: 84, child: image),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Wrap(
            spacing: 8,
            runSpacing: 4,
            children: <Widget>[
              OutlinedButton.icon(
                onPressed: onPick,
                icon: const Icon(Icons.photo_camera_outlined, size: 18),
                label: Text(l10n.doorPhotoChange),
              ),
              TextButton(
                onPressed: onRemove,
                child: Text(l10n.doorPhotoRemove),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// The fixed pin at the centre of the map, with the hint above it. Its tip,
/// not its middle, sits on the exact centre.
class _CentrePin extends StatelessWidget {
  const _CentrePin({required this.tooltip, required this.lifted});

  final String tooltip;

  /// Raised a little while the map moves, as if picked up.
  final bool lifted;

  static const double _size = 52;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        // The shadow marks the exact point.
        Center(
          child: Container(
            width: 12,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        Center(
          // Up by its own full height, so the bottom edge is the centre.
          child: FractionalTranslation(
            translation: const Offset(0, -0.5),
            child: AnimatedSlide(
              offset: Offset(0, lifted ? -0.06 : 0),
              duration: const Duration(milliseconds: 160),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      tooltip,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  CustomPaint(
                    size: const Size(14, 7),
                    painter: _Pointer(const Color(0xFF1C1C1C)),
                  ),
                  const SizedBox(height: 2),
                  // The glyph's tip sits two units above the bottom of its
                  // box; nudge it down so the tip, not the box, meets the
                  // centre.
                  Transform.translate(
                    offset: const Offset(0, _size * 2 / 24),
                    child: const Icon(
                      Icons.location_on_rounded,
                      size: _size,
                      color: AppColors.orangeDeep,
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
}

class _Pointer extends CustomPainter {
  const _Pointer(this.colour);

  final Color colour;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
      Path()
        ..moveTo(0, 0)
        ..lineTo(size.width, 0)
        ..lineTo(size.width / 2, size.height)
        ..close(),
      Paint()..color = colour,
    );
  }

  @override
  bool shouldRepaint(_Pointer oldDelegate) => oldDelegate.colour != colour;
}

/// "Use current location", floating on the map.
class _MapPill extends StatelessWidget {
  const _MapPill({
    required this.label,
    required this.busy,
    required this.onTap,
  });

  final String label;
  final bool busy;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.surface,
      elevation: 4,
      shadowColor: Colors.black.withValues(alpha: 0.3),
      shape: StadiumBorder(
        side: BorderSide(color: theme.colorScheme.outlineVariant),
      ),
      child: InkWell(
        onTap: busy ? null : onTap,
        customBorder: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (busy)
                const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              else
                const Icon(
                  Icons.my_location_rounded,
                  size: 20,
                  color: AppColors.orangeDeep,
                ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColors.orangeDeep,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
