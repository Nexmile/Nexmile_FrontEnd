import '../../../generated/l10n/app_localizations.dart';

/// What the customer can tick in the cart for the doorstep. Checkout sends
/// the codes as `delivery_instructions`, and the app holds the wording.
///
/// Only the delivery partner sees them, once they accept the order; the
/// restaurant never does. A code added here must be added on the server
/// too, or the server refuses it.
enum DeliveryInstruction {
  leaveAtDoor('leave_at_door'),
  noBell('no_bell'),
  noCall('no_call'),
  security('leave_with_security'),
  pet('pet_at_home');

  const DeliveryInstruction(this.code);

  final String code;

  /// The server takes at most this many.
  static const int max = 5;

  static DeliveryInstruction? fromCode(Object? raw) {
    for (final DeliveryInstruction value in values) {
      if (value.code == raw) return value;
    }
    return null;
  }

  /// [chosen] as codes, in this enum's order rather than the order they were
  /// tapped, so the same choice always reads the same way.
  static List<String> codesOf(Iterable<DeliveryInstruction> chosen) => <String>[
        for (final DeliveryInstruction value in values)
          if (chosen.contains(value)) value.code,
      ].take(max).toList(growable: false);

  String label(AppLocalizations l10n) => switch (this) {
        leaveAtDoor => l10n.instructionLeaveAtDoor,
        noBell => l10n.instructionNoBell,
        noCall => l10n.instructionNoCall,
        security => l10n.instructionSecurity,
        pet => l10n.instructionPet,
      };
}

/// The longest note checkout takes, for the whole order. A request about one
/// dish belongs on that dish instead.
const int maxOrderNoteLength = 500;
