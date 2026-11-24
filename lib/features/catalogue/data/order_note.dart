/// What the customer can tick in the cart for the doorstep. Checkout has one
/// free-text `note`, so these travel inside it until there is a field of
/// their own.
enum DeliveryInstruction {
  leaveAtDoor('Leave at door'),
  noBell("Don't ring bell"),
  noCall("Don't call"),
  security('Leave with security'),
  pet('Pet at home');

  const DeliveryInstruction(this.forKitchen);

  /// Always English, whatever language the app is in: the note is read by
  /// restaurant staff, not by the customer who picked the chip.
  final String forKitchen;
}

/// The longest note the customer may type, so that the note checkout sends
/// stays within [maxOrderNoteLength] with every chip ticked as well.
const int maxCustomerNoteLength = 95;

/// What checkout sends at most.
const int maxOrderNoteLength = 200;

/// Joins the typed note, the doorstep chips and the cutlery choice into the
/// one note checkout takes, in that order, or null when there is nothing to
/// say. Chips follow the order of [DeliveryInstruction], not the order they
/// were tapped, so the same choices always read the same way.
String? composeOrderNote({
  String note = '',
  Set<DeliveryInstruction> instructions = const <DeliveryInstruction>{},
  bool noCutlery = false,
}) {
  final String typed = note.trim();
  final List<String> parts = <String>[
    if (typed.isNotEmpty) typed,
    if (instructions.isNotEmpty)
      'Delivery: ${<String>[
        for (final DeliveryInstruction i in DeliveryInstruction.values)
          if (instructions.contains(i)) i.forKitchen,
      ].join(', ')}',
    if (noCutlery) 'No cutlery',
  ];
  return parts.isEmpty ? null : parts.join(' | ');
}
