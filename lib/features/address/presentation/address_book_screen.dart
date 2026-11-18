import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../auth/data/auth_failure.dart';
import '../data/address.dart';
import '../data/location_service.dart';
import '../state/address_controller.dart';
import 'address_flow.dart';
import 'widgets/address_sheets.dart';
import 'widgets/place_search.dart';

/// "Select a location": where to deliver.
///
/// Search for a place, use where the phone is, add an address, or pick a
/// saved one. Each saved address shows how far it is from here, and carries
/// its own edit, delete, share and door-photo actions.
///
/// Pops `true` when the delivery location changed, so the storefront knows to
/// look again. From the profile ([AddressBookArgs.managing]) it is the same
/// list, for editing rather than choosing.
class AddressBookScreen extends StatefulWidget {
  const AddressBookScreen({super.key, this.args = const AddressBookArgs()});

  final AddressBookArgs args;

  @override
  State<AddressBookScreen> createState() => _AddressBookScreenState();
}

class _AddressBookScreenState extends State<AddressBookScreen> {
  late final LocationService _location = context.read<LocationService>();
  late final PlaceSearch _search = PlaceSearch(service: _location);

  CurrentSpot? _here;
  bool _locating = true;
  bool _busy = false;

  bool get _managing => widget.args.managing;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AddressController>().load();
      _locateQuietly();
    });
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

  /// Where the phone is, for "use current location" and the distances, but
  /// only with permission already given: opening a list is no reason for a
  /// system prompt.
  Future<void> _locateQuietly() async {
    final CurrentSpot? here = await currentSpotQuietly(_location);
    if (!mounted) return;
    setState(() {
      _here = here;
      _locating = false;
    });
    _search.near = here;
  }

  void _showMessage(String text) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(text)));
  }

  /// Browse by where the phone is. Asks for permission if it has to.
  Future<void> _useCurrentLocation() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NavigatorState navigator = Navigator.of(context);
    final AddressController controller = context.read<AddressController>();
    setState(() => _busy = true);
    try {
      final CurrentSpot spot = await currentSpot(_location);
      if (!mounted) return;
      setState(() {
        _here = spot;
        _busy = false;
      });
      controller.useCurrentLocation();
      navigator.pop(true);
    } on LocationException catch (error) {
      if (!mounted) return;
      setState(() => _busy = false);
      _showMessage(locationFailureMessage(l10n, error.failure));
    }
  }

  /// The add flow, from the sheet or from a place searched for here.
  Future<void> _add({PlaceSuggestion? start}) async {
    final NavigatorState navigator = Navigator.of(context);
    final Address? saved = await addAddress(context, start: start);
    if (saved == null || !mounted) return;
    // Saved as the default, so it is where delivery goes now.
    if (!_managing) navigator.pop(true);
  }

  Future<void> _pickSearchResult(PlaceSuggestion suggestion) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _busy = true);
    final PlaceSuggestion? place = await _location.resolve(suggestion);
    if (!mounted) return;
    setState(() => _busy = false);
    if (place == null) {
      _showMessage(l10n.locationUnavailable);
      return;
    }
    await _add(start: place);
  }

  Future<void> _choose(Address address) async {
    final NavigatorState navigator = Navigator.of(context);
    final AuthFailure? failure =
        await context.read<AddressController>().choose(address);
    if (!mounted) return;
    if (failure != null) {
      _showMessage(failure.message(AppLocalizations.of(context)));
      return;
    }
    navigator.pop(true);
  }

  Future<void> _confirmDelete(Address address) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AddressController controller = context.read<AddressController>();
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(l10n.deleteAddressTitle),
        content: Text(l10n.deleteAddressMessage),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.cancelLabel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: Text(l10n.deleteLabel),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    await controller.delete(address.id);
  }

  Future<void> _addPhoto(Address address) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AddressController controller = context.read<AddressController>();
    final PickedPhoto? photo = await pickDoorPhoto(
      context,
      onRemove: address.photoUrl == null ? null : () => _removePhoto(address),
    );
    if (photo == null || !mounted) return;
    setState(() => _busy = true);
    final AuthFailure? failure = await controller.uploadPhoto(
      address.id,
      bytes: photo.bytes,
      filename: photo.filename,
    );
    if (!mounted) return;
    setState(() => _busy = false);
    _showMessage(failure == null ? l10n.photoUploaded : l10n.photoUploadFailed);
  }

  Future<void> _removePhoto(Address address) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AddressController controller = context.read<AddressController>();
    setState(() => _busy = true);
    final AuthFailure? failure = await controller.deletePhoto(address.id);
    if (!mounted) return;
    setState(() => _busy = false);
    _showMessage(
      failure == null
          ? l10n.photoRemoved
          : failure.message(AppLocalizations.of(context)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: addressPageColour(theme),
      appBar: AppBar(
        backgroundColor: addressPageColour(theme),
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
          // A chooser closes down onto the storefront; the profile's list
          // goes back like any page.
          icon: Icon(
            _managing
                ? Icons.arrow_back_rounded
                : Icons.keyboard_arrow_down_rounded,
            size: _managing ? 24 : 30,
          ),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        titleSpacing: 0,
        title: Text(
          _managing ? l10n.addressBookTitle : l10n.selectLocationTitle,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          if (_busy) const LinearProgressIndicator(minHeight: 2),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: AddressSearchField(search: _search),
          ),
          Expanded(
            child: AbsorbPointer(
              absorbing: _busy,
              child: ListenableBuilder(
                listenable: _search,
                builder: (BuildContext context, _) => _search.active
                    ? PlaceResults(search: _search, onPick: _pickSearchResult)
                    : _list(theme, l10n),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _list(ThemeData theme, AppLocalizations l10n) {
    final AddressController controller = context.watch<AddressController>();
    final List<Address> addresses = controller.addresses;
    final Address? delivering = controller.deliveryAddress;

    return RefreshIndicator(
      onRefresh: () => context.read<AddressController>().load(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
        children: <Widget>[
          WhiteCard(
            children: <Widget>[
              if (!_managing) ...<Widget>[
                CurrentLocationRow(
                  spot: _here,
                  locating: _locating,
                  onTap: _useCurrentLocation,
                ),
                const Divider(height: 1, indent: 66),
              ],
              PlaceRow(
                icon: Icons.add_rounded,
                title: l10n.addAddress,
                accent: true,
                chevron: true,
                onTap: _add,
              ),
            ],
          ),
          if (addresses.isNotEmpty) ...<Widget>[
            const SizedBox(height: 6),
            SectionHeading(l10n.savedAddressesHeading),
            for (final Address address in addresses)
              _SavedAddressCard(
                address: address,
                distance:
                    distanceLabel(_here, address.latitude, address.longitude),
                selected: !_managing && delivering?.id == address.id,
                onTap: () =>
                    _managing ? editAddress(context, address) : _choose(address),
                onEdit: () => editAddress(context, address),
                onDelete: () => _confirmDelete(address),
                onMakeDefault: _managing && !address.isDefault
                    ? () => context.read<AddressController>().makeDefault(
                          address.id,
                        )
                    : null,
                onShare: () => shareAddress(context, address),
                onPhoto: () => _addPhoto(address),
              ),
          ] else if (controller.hasLoaded) ...<Widget>[
            const SizedBox(height: 32),
            Icon(
              Icons.location_on_outlined,
              size: 44,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 10),
            Text(
              l10n.noAddressesTitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            Text(
              l10n.noAddressesSubtitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// One saved address: the label's icon with the distance under it, the label
/// and the full address, and its actions.
class _SavedAddressCard extends StatelessWidget {
  const _SavedAddressCard({
    required this.address,
    required this.distance,
    required this.selected,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
    required this.onShare,
    required this.onPhoto,
    this.onMakeDefault,
  });

  final Address address;
  final String? distance;

  /// Where delivery currently goes.
  final bool selected;

  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onShare;
  final VoidCallback onPhoto;
  final VoidCallback? onMakeDefault;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color accent = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : AppColors.greenDeep;

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: theme.brightness == Brightness.dark
            ? theme.colorScheme.surfaceContainerLow
            : theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: selected ? accent : Colors.transparent,
          width: 1.6,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(18),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 18, 16, 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 40,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        addressLabelIcon(address.label),
                        size: 26,
                        color: selected
                            ? accent
                            : theme.colorScheme.onSurfaceVariant,
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
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              addressLabelName(l10n, address.label),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                          if (selected) ...<Widget>[
                            const SizedBox(width: 8),
                            _Badge(text: l10n.selectedLabel, colour: accent),
                          ] else if (address.isDefault) ...<Widget>[
                            const SizedBox(width: 8),
                            _Badge(
                              text: l10n.defaultLabel,
                              colour: theme.colorScheme.onSurfaceVariant,
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        address.summary,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                          height: 1.35,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: <Widget>[
                          _ActionMenu(
                            onEdit: onEdit,
                            onDelete: onDelete,
                            onMakeDefault: onMakeDefault,
                          ),
                          const SizedBox(width: 12),
                          _RoundAction(
                            icon: Icons.share_outlined,
                            tooltip: l10n.shareLabel,
                            onTap: onShare,
                          ),
                          const SizedBox(width: 12),
                          _RoundAction(
                            icon: address.photoUrl == null
                                ? Icons.add_a_photo_outlined
                                : Icons.photo_camera_back_outlined,
                            tooltip: l10n.addDoorPhotoLabel,
                            onTap: onPhoto,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.text, required this.colour});

  final String text;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: colour.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: colour,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}

/// A small round outlined button, as on the reference design.
class _RoundAction extends StatelessWidget {
  const _RoundAction({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Tooltip(
      message: tooltip,
      child: Material(
        shape: CircleBorder(
          side: BorderSide(color: theme.colorScheme.outlineVariant),
        ),
        color: Colors.transparent,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: SizedBox(
            width: 40,
            height: 40,
            child: Icon(icon, size: 19, color: AppColors.orangeDeep),
          ),
        ),
      ),
    );
  }
}

enum _CardAction { edit, makeDefault, delete }

/// "⋯": edit, delete, and from the profile, make default.
class _ActionMenu extends StatelessWidget {
  const _ActionMenu({
    required this.onEdit,
    required this.onDelete,
    this.onMakeDefault,
  });

  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback? onMakeDefault;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    return PopupMenuButton<_CardAction>(
      tooltip: MaterialLocalizations.of(context).showMenuTooltip,
      onSelected: (_CardAction action) => switch (action) {
        _CardAction.edit => onEdit(),
        _CardAction.makeDefault => onMakeDefault?.call(),
        _CardAction.delete => onDelete(),
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_CardAction>>[
        PopupMenuItem<_CardAction>(
          value: _CardAction.edit,
          child: Text(l10n.editLabel),
        ),
        if (onMakeDefault != null)
          PopupMenuItem<_CardAction>(
            value: _CardAction.makeDefault,
            child: Text(l10n.setAsDefault),
          ),
        PopupMenuItem<_CardAction>(
          value: _CardAction.delete,
          child: Text(
            l10n.deleteLabel,
            style: TextStyle(color: theme.colorScheme.error),
          ),
        ),
      ],
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: theme.colorScheme.outlineVariant),
        ),
        child: const Icon(
          Icons.more_horiz_rounded,
          size: 20,
          color: AppColors.orangeDeep,
        ),
      ),
    );
  }
}
