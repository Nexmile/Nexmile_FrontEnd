import 'support_models.dart';
import 'support_repository.dart';

/// The support contract played out in memory, until the server exists.
///
/// Answers are canned and in English, and the chat says so: no customer may
/// take a demo for the real assistant. A reply turns up on the second poll
/// after a question, which is what the real one will look like on a good
/// day, and which needs no timer to drive it.
class DemoSupportRepository implements SupportRepository {
  DemoSupportRepository({this.pollsBeforeReply = 2});

  /// How many polls a question waits for its answer.
  final int pollsBeforeReply;

  SupportConversation? _thread;
  final List<SupportMessage> _messages = <SupportMessage>[];
  final List<_Queued> _queue = <_Queued>[];
  int _nextId = 1;

  /// Every question the demo was sent, for tests.
  final List<String> received = <String>[];

  /// The `client_id`s seen, so a retry is not answered twice.
  final Set<String> _clientIds = <String>{};

  String _id() => 'demo-${_nextId++}';

  /// False to play out a support platform that cannot be reached.
  bool available = true;

  /// Queues no answer to the next question, and says so: the send comes
  /// back with `pending_reply: false`.
  bool loseNextReply = false;

  /// The order card on the demo's answer about a known order, given its id.
  /// Sample figures by default; a test swaps in its own.
  SupportOrderCard? Function(int orderId) orderCard = (int orderId) =>
      SupportOrderCard(
        orderId: orderId,
        orderNumber: 'NX$orderId',
        restaurant: 'Anjappar Chettinad',
        status: 'picked_up',
        statusLabel: 'On the way',
        etaMinutes: 12,
        distanceMetres: 1800,
        riderName: 'Suresh Kumar',
      );

  @override
  Future<SupportEntry> entry() async => SupportEntry(
        hasOpenThread: _thread != null && !_thread!.isClosed,
        available: available,
      );

  @override
  Future<SupportConversation> start({int? orderId, String? language}) async {
    final SupportConversation? open = _thread;
    if (open != null && !open.isClosed) return _snapshot();
    _messages.clear();
    _queue.clear();
    _thread = SupportConversation(
      id: 'demo-thread-${_nextId++}',
      status: ConversationStatus.open,
      orderId: orderId,
      language: language,
    );
    return _snapshot();
  }

  @override
  Future<SupportConversation> conversation(String id) async => _snapshot();

  @override
  Future<SupportPoll> messagesAfter(String id, {String? afterId}) async {
    for (final _Queued queued in _queue) {
      queued.polls++;
    }
    final List<_Queued> due = _queue
        .where((_Queued q) => q.polls >= pollsBeforeReply)
        .toList(growable: false);
    for (final _Queued queued in due) {
      _queue.remove(queued);
      _messages.add(queued.message);
    }
    final int from = afterId == null
        ? 0
        : _messages.indexWhere((SupportMessage m) => m.id == afterId) + 1;
    return SupportPoll(
      messages: List<SupportMessage>.of(_messages.skip(from)),
      pendingReply: _queue.isNotEmpty,
      language: _thread?.language,
    );
  }

  @override
  Future<SupportSent> send(
    String id, {
    required String content,
    required String clientId,
  }) async {
    if (!_clientIds.add(clientId)) {
      // Not stored twice. Asked again with nothing in flight and nothing
      // answering it, the answer is queued again, as the server does.
      final int at =
          _messages.indexWhere((SupportMessage m) => m.clientId == clientId);
      final bool answered =
          _messages.skip(at + 1).any((SupportMessage m) => !m.isMine);
      if (_queue.isEmpty && !answered && !_handedOver) {
        _queue.add(_Queued(_answer(_messages[at].content)));
      }
      return SupportSent(
        message: _messages[at],
        pendingReply: _queue.isNotEmpty,
      );
    }
    received.add(content);
    // As the server does: writing in Tamil script switches the thread to
    // Tamil, and it stays there.
    if (RegExp('[\u0B80-\u0BFF]').hasMatch(content)) {
      _thread = _thread?.copyWith(language: 'ta');
    }
    final SupportMessage saved = SupportMessage(
      id: _id(),
      sender: SupportSender.customer,
      content: content,
      createdAt: DateTime.now(),
      clientId: clientId,
    );
    _messages.add(saved);
    if (loseNextReply) {
      // Nothing queued: the server says so with `pending_reply: false`.
      loseNextReply = false;
    } else if (!_handedOver) {
      // Once a person owns the thread, the assistant stays out of it.
      _queue.add(_Queued(_answer(content)));
    }
    return SupportSent(
      message: saved,
      pendingReply: _queue.isNotEmpty,
      language: _thread?.language,
    );
  }

  bool get _handedOver => _thread?.status == ConversationStatus.handedOver;

  /// The orders the demo pretends are on their way, for "which one?".
  static const List<(int, String)> liveOrders = <(int, String)>[
    (1, 'Anjappar Chettinad'),
    (2, 'Saravana Bhavan'),
  ];

  /// Every order picked from a `select_order` button, for tests.
  final List<int> selected = <int>[];

  @override
  Future<SupportPoll> selectOrder(String id, int orderId) async {
    selected.add(orderId);
    _thread = _thread?.copyWith(orderId: orderId);
    _queue.add(
      _Queued(
        SupportMessage(
          id: _id(),
          sender: SupportSender.ai,
          content: 'You can follow this order live on the map.',
          createdAt: DateTime.now(),
          actions: <SupportAction>[
            SupportAction(code: 'track_order', label: 'Track it', orderId: orderId),
            SupportAction(
              code: 'view_order',
              label: 'Order details',
              orderId: orderId,
            ),
          ],
        ),
      ),
    );
    return const SupportPoll(messages: <SupportMessage>[], pendingReply: true);
  }

  @override
  Future<SupportHandover> handover(String id) async {
    const String promise =
        "I've passed this to the Nexmile team. They reply within 4 working "
        'hours.';
    _thread = _thread?.copyWith(status: ConversationStatus.handedOver);
    _queue.clear();
    _messages.add(
      SupportMessage(
        id: _id(),
        sender: SupportSender.system,
        content: promise,
        createdAt: DateTime.now(),
      ),
    );
    return const SupportHandover(
      status: ConversationStatus.handedOver,
      systemMessage: promise,
    );
  }

  @override
  Future<void> close(String id) async {
    _thread = _thread?.copyWith(status: ConversationStatus.closed);
    _queue.clear();
  }

  @override
  Future<void> feedback(String messageId, String value) async {
    final int at = _messages.indexWhere((SupportMessage m) => m.id == messageId);
    if (at >= 0) _messages[at] = _messages[at].copyWith(feedback: value);
  }

  SupportConversation _snapshot() => _thread!.copyWith(
        pendingReply: _queue.isNotEmpty,
        messages: List<SupportMessage>.of(_messages),
      );

  SupportMessage _answer(String question) {
    final String q = question.toLowerCase();
    final int? orderId = _thread?.orderId;
    bool has(List<String> words) => words.any(q.contains);

    String content;
    SupportOrderCard? card;
    List<SupportAction> actions = const <SupportAction>[];
    if (has(<String>['refund', 'money', 'charged', 'wrong', 'missing'])) {
      content = "Refunds and wrong or missing items need a person to look at "
          "them. I can pass this to the Nexmile team.";
      actions = const <SupportAction>[
        SupportAction(code: 'talk_to_person', label: 'Talk to someone'),
      ];
    } else if (orderId == null &&
        has(<String>['where', 'track', 'late', 'status', 'when'])) {
      // More than one order on its way: ask which.
      content = 'You have two orders on the way. Which one?';
      actions = <SupportAction>[
        for (final (int id, String title) in liveOrders)
          // As the server sends it: the label is the finished button text
          // and already names the restaurant; the title is the bare name.
          SupportAction(
            code: 'select_order',
            label: 'The $title order',
            orderId: id,
            title: title,
          ),
      ];
    } else if (has(<String>['where', 'track', 'late', 'status', 'when'])) {
      content = 'You can follow this order live on the map.';
      // The order card, as the server sends it for a known order.
      card = orderId == null ? null : orderCard(orderId);
      actions = <SupportAction>[
        if (orderId != null)
          SupportAction(code: 'track_order', label: 'Track it', orderId: orderId),
        if (orderId != null)
          SupportAction(
            code: 'view_order',
            label: 'Order details',
            orderId: orderId,
          ),
      ];
    } else if (has(<String>['thank', 'ok', 'done', 'solved'])) {
      content = 'Glad that helped.';
      actions = const <SupportAction>[
        SupportAction(code: 'close_thread', label: 'Mark as solved'),
      ];
    } else {
      content = "This is a demo answer: the real assistant isn't connected "
          'yet. It will answer from your order once it is.';
      actions = const <SupportAction>[
        SupportAction(code: 'talk_to_person', label: 'Talk to someone'),
      ];
    }
    return SupportMessage(
      id: _id(),
      sender: SupportSender.ai,
      content: content,
      createdAt: DateTime.now(),
      actions: actions,
      card: card,
    );
  }
}

class _Queued {
  _Queued(this.message);

  final SupportMessage message;
  int polls = 0;
}
