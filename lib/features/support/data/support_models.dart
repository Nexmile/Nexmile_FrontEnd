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
  });

  final String id;
  final ConversationStatus status;
  final int? orderId;

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
  }) =>
      SupportConversation(
        id: id,
        status: status ?? this.status,
        orderId: orderId ?? this.orderId,
        pendingReply: pendingReply ?? this.pendingReply,
        messages: messages ?? this.messages,
      );

  static SupportConversation fromJson(Map<String, dynamic> json) {
    final int orderId = asInt(json['order_id']);
    return SupportConversation(
      id: asString(json['id']),
      status: ConversationStatus.fromJson(json['status']),
      orderId: orderId > 0 ? orderId : null,
      pendingReply: asBool(json['pending_reply']),
      messages: SupportConversation.messagesFrom(json['messages']),
    );
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
  const SupportPoll({required this.messages, this.pendingReply});

  final List<SupportMessage> messages;
  final bool? pendingReply;
}

/// A message the server has saved (`202`), and whether an automated reply
/// to it is being written (`meta.pending_reply`; null when the server did not
/// say). False means nothing is coming automatically: no waiting, no
/// "took too long".
@immutable
class SupportSent {
  const SupportSent({required this.message, this.pendingReply});

  final SupportMessage message;
  final bool? pendingReply;
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
