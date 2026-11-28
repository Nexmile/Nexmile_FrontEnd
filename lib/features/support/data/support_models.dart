import 'dart:math';

import 'package:flutter/foundation.dart';

import '../../catalogue/data/storefront_models.dart'
    show asBool, asDate, asInt, asMapList, asString;

/// Who wrote a message. The app draws each one differently, and never draws
/// the assistant and a person alike: a customer must always be able to tell
/// whether anyone is actually reading.
enum SupportSender {
  customer,
  ai,
  agent,
  system;

  static SupportSender? fromJson(Object? raw) => switch (asString(raw)) {
        'customer' => customer,
        'ai' => ai,
        'agent' => agent,
        'system' => system,
        _ => null,
      };
}

/// Where a customer's own message has got to. The server's copy is always
/// [sent]; the other two exist only on the phone.
enum DeliveryState { sending, sent, failed }

/// A button the assistant attached to its answer: a destination, never a
/// payload. Whatever the screen shows on arrival is fetched fresh.
@immutable
class SupportAction {
  const SupportAction({
    required this.code,
    required this.label,
    this.orderId,
    this.title,
  });

  /// What this build knows how to do. Anything else is skipped without a
  /// trace, so the server can add an action before the app knows it.
  static const Set<String> known = <String>{
    'track_order',
    'view_order',
    'call_rider',
    'reorder',
    'leave_review',
    'talk_to_person',
    'close_thread',
    // "Which order?" when there is more than one live: one per order.
    'select_order',
  };

  final String code;

  /// Already in the customer's language; shown as given.
  final String label;

  /// Sent as a string on actions (`"10432"`), read as a number either way.
  final int? orderId;

  /// What the button is about, beside its label: on `select_order`, the
  /// order it picks.
  final String? title;

  static SupportAction? fromJson(Map<String, dynamic> json) {
    final String code = asString(json['code']).trim();
    final String label = asString(json['label']).trim();
    if (!known.contains(code) || label.isEmpty) return null;
    final int orderId = asInt(json['order_id']);
    final String title = asString(json['title']).trim();
    return SupportAction(
      code: code,
      label: label,
      orderId: orderId > 0 ? orderId : null,
      title: title.isEmpty ? null : title,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        'label': label,
        if (orderId != null) 'order_id': orderId,
        if (title != null) 'title': title,
      };
}

/// The order an assistant reply is about, as a few labelled rows under it:
/// `card` on the message, null on most of them.
///
/// Every field is absent when the server does not know it, never empty, so
/// a row is drawn only for what is here: an order still in the kitchen has
/// no arrival time and no distance, and "Arriving in: —" would read as a
/// broken screen.
@immutable
class SupportOrderCard {
  const SupportOrderCard({
    this.orderId,
    this.orderNumber,
    this.restaurant,
    this.status,
    this.statusLabel,
    this.etaMinutes,
    this.distanceMetres,
    this.riderName,
    this.trackingStale = false,
  });

  final int? orderId;
  final String? orderNumber;
  final String? restaurant;

  /// The raw status, for picking an icon. Never shown.
  final String? status;

  /// The server's own words for the status, already in the chat's language.
  final String? statusLabel;

  final int? etaMinutes;

  /// Only once the rider is carrying the order.
  final int? distanceMetres;
  final String? riderName;

  /// The rider's last fix is over ten minutes old: the distance is shown
  /// greyed, as where they were rather than where they are.
  final bool trackingStale;

  bool get _hasAnything =>
      orderNumber != null ||
      restaurant != null ||
      statusLabel != null ||
      etaMinutes != null ||
      distanceMetres != null ||
      riderName != null;

  /// Null for no card, or one with nothing in it to draw.
  static SupportOrderCard? fromJson(Object? raw) {
    if (raw is! Map<String, dynamic>) return null;
    String? text(Object? value) {
      final String v = asString(value).trim();
      return v.isEmpty ? null : v;
    }

    int? number(Object? value) {
      if (value == null) return null;
      final int v = asInt(value, -1);
      return v < 0 ? null : v;
    }

    final Object? rider = raw['rider'];
    final int orderId = asInt(raw['order_id']);
    final SupportOrderCard card = SupportOrderCard(
      orderId: orderId > 0 ? orderId : null,
      orderNumber: text(raw['order_number']),
      // Always a plain string: the server flattens its own nested name.
      restaurant: text(raw['restaurant']),
      status: text(raw['status']),
      statusLabel: text(raw['status_label']),
      etaMinutes: number(raw['eta_minutes']),
      distanceMetres: number(raw['distance_metres']),
      riderName: text(raw['rider_name']) ??
          (rider is Map<String, dynamic> ? text(rider['name']) : null),
      trackingStale: asBool(raw['tracking_stale']),
    );
    return card._hasAnything ? card : null;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (orderId != null) 'order_id': orderId,
        if (orderNumber != null) 'order_number': orderNumber,
        if (restaurant != null) 'restaurant': restaurant,
        if (status != null) 'status': status,
        if (statusLabel != null) 'status_label': statusLabel,
        if (etaMinutes != null) 'eta_minutes': etaMinutes,
        if (distanceMetres != null) 'distance_metres': distanceMetres,
        if (riderName != null) 'rider_name': riderName,
        if (trackingStale) 'tracking_stale': true,
      };
}

@immutable
class SupportMessage {
  const SupportMessage({
    required this.id,
    required this.sender,
    required this.content,
    required this.createdAt,
    this.clientId,
    this.agentName,
    this.actions = const <SupportAction>[],
    this.card,
    this.spoken,
    this.feedback,
    this.state = DeliveryState.sent,
  });

  /// The server's id; a customer message not yet saved uses its [clientId].
  final String id;
  final SupportSender sender;
  final String content;
  final DateTime createdAt;

  /// Made on the phone for every message the customer sends, and sent again
  /// unchanged on a retry, so the server can drop a duplicate.
  final String? clientId;

  /// A first name, and only ever on [SupportSender.agent].
  final String? agentName;
  final List<SupportAction> actions;

  /// The order this reply is about, when it is about a settled one.
  final SupportOrderCard? card;

  /// The same reply written to be heard: order numbers as words, and the
  /// card's facts in the sentence, since a card is silent. Null when
  /// [content] already reads aloud well.
  final String? spoken;

  /// What to read aloud: [spoken] when the server wrote one, else [content].
  String get toSpeak => spoken ?? content;

  /// "up", "down" or null, echoed so a reinstall shows what was pressed.
  final String? feedback;
  final DeliveryState state;

  bool get isMine => sender == SupportSender.customer;
  bool get isReply => sender == SupportSender.ai || sender == SupportSender.agent;

  SupportMessage copyWith({
    String? id,
    DeliveryState? state,
    String? feedback,
  }) =>
      SupportMessage(
        id: id ?? this.id,
        sender: sender,
        content: content,
        createdAt: createdAt,
        clientId: clientId,
        agentName: agentName,
        actions: actions,
        card: card,
        spoken: spoken,
        feedback: feedback ?? this.feedback,
        state: state ?? this.state,
      );

  /// Null for a sender this build cannot draw, which is left out rather than
  /// shown as something it is not.
  static SupportMessage? fromJson(Map<String, dynamic> json) {
    final SupportSender? sender = SupportSender.fromJson(json['sender']);
    if (sender == null) return null;
    final String feedback = asString(json['feedback']);
    final String state = asString(json['local_state']);
    return SupportMessage(
      id: asString(json['id']),
      sender: sender,
      content: asString(json['content']),
      createdAt: asDate(json['created_at'])?.toLocal() ?? DateTime.now(),
      clientId: json['client_id'] as String?,
      agentName: sender == SupportSender.agent
          ? _firstName(json['agent_name'])
          : null,
      actions: <SupportAction>[
        for (final Map<String, dynamic> raw in asMapList(json['actions']))
          if (SupportAction.fromJson(raw) case final SupportAction action)
            action,
      ],
      card: SupportOrderCard.fromJson(json['card']),
      spoken: () {
        final String spoken = asString(json['spoken']).trim();
        return spoken.isEmpty ? null : spoken;
      }(),
      feedback: feedback == 'up' || feedback == 'down' ? feedback : null,
      // Only ever written by the phone's own store.
      state: switch (state) {
        'sending' || 'failed' => DeliveryState.failed,
        _ => DeliveryState.sent,
      },
    );
  }

  /// For the phone's own store: everything the server sent, plus how far an
  /// unsent message got. A message still sending when the app died is
  /// restored as not sent, with its retry.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sender': sender.name,
        'content': content,
        'created_at': createdAt.toUtc().toIso8601String(),
        if (clientId != null) 'client_id': clientId,
        if (agentName != null) 'agent_name': agentName,
        if (actions.isNotEmpty)
          'actions': <Map<String, dynamic>>[
            for (final SupportAction action in actions) action.toJson(),
          ],
        if (card != null) 'card': card!.toJson(),
        if (spoken != null) 'spoken': spoken,
        if (feedback != null) 'feedback': feedback,
        if (state != DeliveryState.sent) 'local_state': state.name,
      };

  /// A first name and nothing more, whatever the server sends.
  static String? _firstName(Object? raw) {
    final String name = asString(raw).trim();
    if (name.isEmpty) return null;
    return name.split(RegExp(r'\s+')).first;
  }
}

enum ConversationStatus {
  open,
  handedOver,
  closed;

  static ConversationStatus fromJson(Object? raw) => switch (asString(raw)) {
        'handed_over' => handedOver,
        'closed' || 'resolved' => closed,
        _ => open,
      };

  String get wire => switch (this) {
        open => 'open',
        handedOver => 'handed_over',
        closed => 'closed',
      };
}

@immutable
class SupportConversation {
  const SupportConversation({
    required this.id,
    required this.status,
    this.orderId,
    this.pendingReply = false,
    this.messages = const <SupportMessage>[],
    this.language,
  });

  final String id;
  final ConversationStatus status;
  final int? orderId;

  /// The thread's language as the server has it now, such as `ta` or `en`.
  /// It can change under the customer: typing in Tamil script switches the
  /// thread to Tamil. Read fresh from every response, never fixed at open;
  /// the voice speaks and listens in it.
  final String? language;

  /// True while the assistant is still writing, so a reopened app shows it
  /// typing rather than a thread that looks finished.
  final bool pendingReply;
  final List<SupportMessage> messages;

  bool get isClosed => status == ConversationStatus.closed;

  SupportConversation copyWith({
    ConversationStatus? status,
    bool? pendingReply,
    List<SupportMessage>? messages,
    int? orderId,
    String? language,
  }) =>
      SupportConversation(
        id: id,
        status: status ?? this.status,
        orderId: orderId ?? this.orderId,
        pendingReply: pendingReply ?? this.pendingReply,
        messages: messages ?? this.messages,
        language: language ?? this.language,
      );

  static SupportConversation fromJson(Map<String, dynamic> json) {
    final int orderId = asInt(json['order_id']);
    return SupportConversation(
      id: asString(json['id']),
      status: ConversationStatus.fromJson(json['status']),
      orderId: orderId > 0 ? orderId : null,
      pendingReply: asBool(json['pending_reply']),
      messages: SupportConversation.messagesFrom(json['messages']),
      language: languageFrom(json['language']),
    );
  }

  /// A language code, or null for none.
  static String? languageFrom(Object? raw) {
    final String code = asString(raw).trim();
    return code.isEmpty ? null : code;
  }

  static List<SupportMessage> messagesFrom(Object? raw) => <SupportMessage>[
        for (final Map<String, dynamic> json in asMapList(raw))
          if (SupportMessage.fromJson(json) case final SupportMessage message)
            message,
      ];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'status': status.wire,
        if (orderId != null) 'order_id': orderId,
        if (language != null) 'language': language,
        'messages': <Map<String, dynamic>>[
          for (final SupportMessage message in messages) message.toJson(),
        ],
      };
}

/// What the bubble shows before it is tapped, from `GET /v1/support/entry`.
@immutable
class SupportEntry {
  const SupportEntry({
    this.unread = 0,
    this.label,
    this.hasOpenThread = false,
    this.available = true,
  });

  final int unread;

  /// Server wording, so a festival or a bad day can change it without a
  /// release. Null means the app's own.
  final String? label;
  final bool hasOpenThread;

  /// False when the support platform cannot be reached at all. The bubble
  /// still shows: it is the way to the phone number as well as to a chat,
  /// and that is exactly when someone needs the number.
  final bool available;

  static SupportEntry fromJson(Map<String, dynamic> json) {
    final String label = asString(json['label']).trim();
    return SupportEntry(
      unread: asInt(json['unread']),
      label: label.isEmpty ? null : label,
      hasOpenThread: asBool(json['has_open_thread']),
      // Missing means an older server, which only answered when it could.
      available: asBool(json['available'], true),
    );
  }
}

/// One poll: what arrived since the last message, and whether a reply is
/// still being written (`meta.pending_reply`; null when the server did not
/// say).
@immutable
class SupportPoll {
  const SupportPoll({required this.messages, this.pendingReply, this.language});

  final List<SupportMessage> messages;
  final bool? pendingReply;

  /// The thread's language, when this response carried it.
  final String? language;
}

/// A message the server has saved (`202`), and whether an automated reply
/// to it is being written (`meta.pending_reply`; null when the server did not
/// say). False means nothing is coming automatically: no waiting, no
/// "took too long".
@immutable
class SupportSent {
  const SupportSent({required this.message, this.pendingReply, this.language});

  final SupportMessage message;
  final bool? pendingReply;

  /// The thread's language, when this response carried it: the message just
  /// sent may be what switched it.
  final String? language;
}

/// `POST .../handover`: the new status and the server's own promise, shown
/// exactly as written.
@immutable
class SupportHandover {
  const SupportHandover({required this.status, required this.systemMessage});

  final ConversationStatus status;
  final String systemMessage;

  static SupportHandover fromJson(Map<String, dynamic> json) => SupportHandover(
        status: ConversationStatus.fromJson(json['status']),
        systemMessage: asString(json['system_message']),
      );
}

/// A version-4 UUID for [SupportMessage.clientId].
String newClientId([Random? random]) {
  final Random r = random ?? Random.secure();
  final List<int> b = List<int>.generate(16, (_) => r.nextInt(256));
  b[6] = (b[6] & 0x0f) | 0x40;
  b[8] = (b[8] & 0x3f) | 0x80;
  String hex(int from, int to) => b
      .sublist(from, to)
      .map((int v) => v.toRadixString(16).padLeft(2, '0'))
      .join();
  return '${hex(0, 4)}-${hex(4, 6)}-${hex(6, 8)}-${hex(8, 10)}-${hex(10, 16)}';
}
