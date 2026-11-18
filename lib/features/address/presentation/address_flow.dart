import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/router/app_router.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../data/address.dart';
import '../data/location_service.dart';
import '../state/address_controller.dart';
import 'widgets/address_sheets.dart';

/// Adding an address, start to finish: the search sheet, then the map with
/// the details under it. Answers with the saved address, or null if the
/// customer backed out anywhere along the way.
///
/// [start] skips the sheet, for a place already chosen elsewhere.
Future<Address?> addAddress(BuildContext context, {PlaceSuggestion? start}) async {
  final PlaceSuggestion? place = start ?? await showAddAddressSheet(context);
  if (place == null || !context.mounted) return null;
  final Object? saved = await Navigator.of(context).pushNamed(
    AppRoutes.addressMap,
    arguments: AddressMapArgs(
      latitude: place.latitude,
      longitude: place.longitude,
      place: place,
      isFirstAddress: false,
    ),
  );
  return saved is Address ? saved : null;
}

/// Correcting a saved address on the same map. Re-reads it first, so a copy
/// changed on another phone is not overwritten with what this one last saw.
Future<Address?> editAddress(BuildContext context, Address address) async {
  final Address? fresh =
      await context.read<AddressController>().fetch(address.id);
  if (!context.mounted) return null;
  final Object? saved = await Navigator.of(context).pushNamed(
    AppRoutes.addressMap,
    arguments: AddressMapArgs(editing: fresh ?? address, isFirstAddress: false),
  );
  return saved is Address ? saved : null;
}

/// The address as a message, with a map link, for the share sheet: how a
/// customer sends a friend their way, or a relative the delivery spot.
Future<void> shareAddress(BuildContext context, Address address) {
  final AppLocalizations l10n = AppLocalizations.of(context);
  final String text = <String>[
    addressLabelName(l10n, address.label),
    address.summary,
    'https://maps.google.com/?q=${address.latitude},${address.longitude}',
  ].join('\n');
  return SharePlus.instance.share(ShareParams(text: text));
}

String addressLabelName(AppLocalizations l10n, AddressLabel label) =>
    switch (label) {
      AddressLabel.home => l10n.labelHome,
      AddressLabel.work => l10n.labelWork,
      AddressLabel.other => l10n.labelOther,
    };

IconData addressLabelIcon(AddressLabel label) => switch (label) {
      AddressLabel.home => Icons.home_outlined,
      AddressLabel.work => Icons.work_outline_rounded,
      AddressLabel.other => Icons.location_on_outlined,
    };
