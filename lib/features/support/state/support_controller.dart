import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/services/preferences_service.dart';
import '../data/support_models.dart';
import '../data/support_repository.dart';

/// Why the chat is showing a notice rather than carrying on as normal.
enum SupportProblem {
  /// 429: too many messages too fast. Never retried on its own.
  slowDown,

  /// 503: the support platform itself cannot be reached, so nothing sent
  /// now is saved anywhere. The phone number is offered at once. (An
  /// assistant that is merely down is the server's business: it still takes
  /// the message and hands it to a person.)
  unreachable,
}

/// A small note inside the chat about one thing that did not work. The chat
/// itself carries on: the customer can still type.
enum SupportNotice {
  /// 404 on picking an order: it is not on this customer's account.
  orderNotFound,

  /// 503 on picking an order, after one quiet retry: the order system could
  /// not be asked just now. Not the chat being down.
  orderLookupDown,
}

/// What came of picking an order from a `select_order` button.
enum OrderPick {
  /// Sent; the answer about it is on its way.
  sent,

  /// Not this customer's order (404). Shown as a [SupportNotice].
  notFound,

  /// The thread had already closed (409). The chat now shows it closed,
  /// with "Start a new chat".
  closed,

  /// The order system could not be reached (503), even on a second try.
  /// Shown as a [SupportNotice].
  unavailable,

  /// Anything else: offline, too fast, or a refusal with no better word.
  failed,
}

/// The support thread: what is on screen, what is still on its way, and the
/// one poll that runs while — and only while — a reply is being written.
class SupportController extends ChangeNotifier {
  SupportController({
    required PreferencesService preferences,
    SupportRepository? repository,
    this.isDemo = false,
  })  : _preferences = preferences,
        _repository = repository {
    _restore();
  }

  final PreferencesService _preferences;
  final SupportRepository? _repository;

  /// Answers come from [DemoSupportRepository], and the chat says so.
  final bool isDemo;

  /// How often to ask for the reply, and for how long. The answer cannot
  /// come faster; a dead job must not keep a phone polling all evening.
  static const Duration pollEvery = Duration(seconds: 2);
  static const int pollLimit = 15; // 15 × 2 s = 30 s

  /// The thread kept on the phone never grows past this.
  static const int keepMessages = 200;

  bool get isEnabled => _repository != null;

  SupportConversation? _thread;
  SupportConversation? get thread => _thread;
  List<SupportMessage> get messages =>
      _thread?.messages ?? const <SupportMessage>[];

  SupportEntry _entry = const SupportEntry();
  SupportEntry get entry => _entry;

  /// The support platform cannot be reached: the chat leads with a person
  /// and the phone number.
  bool get isUnavailable => !_entry.available;

  bool _loading = false;
  bool get isLoading => _loading;

  /// The last attempt to reach the server failed for want of a network:
  /// the thread on screen is the phone's copy, to read but not to add to.
  bool _offline = false;
  bool get isOffline => _offline;

  bool _busy = false;
  bool get isBusy => _busy;

  /// A reply is being written: the assistant shows as typing.
  bool _waiting = false;
  bool get isWaiting => _waiting;

  /// Waited the full 30 seconds and nothing came.
  bool _timedOut = false;
  bool get replyTimedOut => _timedOut;

  SupportProblem? _problem;
  SupportProblem? get problem => _problem;

  SupportNotice? _notice;
  SupportNotice? get notice => _notice;

  /// Put aside once read, or by the next thing that works.
  void dismissNotice() {
    if (_notice == null) return;
    _notice = null;
    notifyListeners();
  }

  /// How long to wait before asking once more after a 503 on picking an
  /// order. A test sets it to nothing.
  @visibleForTesting
  Duration orderRetryDelay = const Duration(seconds: 2);

  /// An order pick is on its way, so a second tap on a button does nothing.
  bool _picking = false;
  bool _disposed = false;

  String get draft => _preferences.supportDraft;

  Timer? _poller;
  int _polls = 0;

  // ---------------------------------------------------------------------------
  // The bubble

  Future<void> loadEntry() async {
    final SupportRepository? repository = _repository;
    if (repository == null) return;
    try {
      _entry = await repository.entry();
      notifyListeners();
    } on Object {
      // The bubble works without a count; a failed read is not worth a word.
    }
  }

  // ---------------------------------------------------------------------------
  // The thread

  /// Opens the customer's thread, starting one if none is open. [orderId] is
  /// what lets the assistant start out knowing which order this is about.
  Future<void> open({int? orderId, String? language}) async {
    final SupportRepository? repository = _repository;
    if (repository == null) return;
    _loading = true;
    _problem = null;
    _notice = null;
    // Opening reads it.
    _entry = SupportEntry(
      label: _entry.label,
      hasOpenThread: _entry.hasOpenThread,
      available: _entry.available,
    );
    notifyListeners();
    try {
      // Starting (or reopening) the thread marks it read on the server too:
      // one call clears the badge.
      final SupportConversation fresh =
          await repository.start(orderId: orderId, language: language);
      _adopt(fresh);
      _offline = false;
      _entry = SupportEntry(label: _entry.label, hasOpenThread: true);
      if (fresh.pendingReply && !fresh.isClosed) _startWaiting();
    } on ApiException catch (error) {
      _offline = error.kind == ApiErrorKind.network;
      if (error.statusCode == 503) _problem = SupportProblem.unreachable;
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  /// A new thread once the last one was closed.
  Future<void> startNew({int? orderId, String? language}) async {
    _stopWaiting();
    _thread = null;
    _notice = null;
    _timedOut = false;
    await _persist();
    await open(orderId: orderId, language: language);
  }

  Future<void> saveDraft(String text) => _preferences.saveSupportDraft(text);

  /// Puts the message on screen at once, marked as sending, then sends it.
  Future<void> send(String text) async {
    final String content = text.trim();
    final SupportConversation? thread = _thread;
    if (content.isEmpty || thread == null || thread.isClosed) return;
    final String clientId = newClientId();
    final SupportMessage local = SupportMessage(
      id: clientId,
      clientId: clientId,
      sender: SupportSender.customer,
      content: content,
      createdAt: DateTime.now(),
      state: DeliveryState.sending,
    );
    _setMessages(<SupportMessage>[...messages, local]);
    await _preferences.saveSupportDraft('');
    await _deliver(local);
  }

  /// Sends a message that did not get through, with the same `client_id`
  /// so the server can tell a retry from a second question.
  Future<void> retry(SupportMessage message) async {
    if (message.state != DeliveryState.failed) return;
    _replace(message.clientId, message.copyWith(state: DeliveryState.sending));
    await _deliver(message.copyWith(state: DeliveryState.sending));
  }

  Future<void> _deliver(SupportMessage local) async {
    final SupportRepository repository = _repository!;
    final SupportConversation thread = _thread!;
    try {
      final SupportMessage saved = await repository.send(
        thread.id,
        content: local.content,
        clientId: local.clientId!,
      );
      _replace(local.clientId, saved.copyWith(state: DeliveryState.sent));
      _offline = false;
      _notice = null;
      if (_problem == SupportProblem.slowDown) _problem = null;
      _startWaiting();
    } on ApiException catch (error) {
      _replace(local.clientId, local.copyWith(state: DeliveryState.failed));
      _offline = error.kind == ApiErrorKind.network;
      if (error.kind == ApiErrorKind.tooManyRequests) {
        _problem = SupportProblem.slowDown;
      } else if (error.statusCode == 503) {
        _problem = SupportProblem.unreachable;
      }
      notifyListeners();
    }
  }

  /// "Try again" after no answer came: asks again. The last unanswered
  /// question goes again with its own `client_id`; the server does not store
  /// it twice, but with nothing in flight and nothing answering it, it
  /// queues the answer again — which covers a worker that died mid-job and
  /// left no failure behind.
  Future<void> askAgain() async {
    final SupportRepository? repository = _repository;
    final SupportConversation? thread = _thread;
    if (repository == null || thread == null) return;
    final SupportMessage? question = _unanswered();
    if (question == null || question.clientId == null) {
      _startWaiting();
      return;
    }
    _timedOut = false;
    _waiting = true;
    notifyListeners();
    try {
      await repository.send(
        thread.id,
        content: question.content,
        clientId: question.clientId!,
      );
      _offline = false;
      _startWaiting();
    } on ApiException catch (error) {
      // The question itself is saved; only the asking again failed.
      _waiting = false;
      _timedOut = true;
      _offline = error.kind == ApiErrorKind.network;
      if (error.kind == ApiErrorKind.tooManyRequests) {
        _problem = SupportProblem.slowDown;
      } else if (error.statusCode == 503) {
        _problem = SupportProblem.unreachable;
      }
      notifyListeners();
    }
  }

  /// The customer's last saved question, if nothing has answered it since.
  SupportMessage? _unanswered() {
    for (final SupportMessage message in messages.reversed) {
      if (!message.isMine) return null;
      if (message.state == DeliveryState.sent) return message;
    }
    return null;
  }

  /// The customer picked one of their live orders from a `select_order`
  /// button. The answer about it is waited for as after a message.
  ///
  /// A 503 here is the order system, not the chat: the thread still works,
  /// so it is asked once more after a moment, and then left as a small note
  /// while the customer carries on typing.
  Future<OrderPick> selectOrder(int orderId) async {
    final SupportRepository? repository = _repository;
    final SupportConversation? thread = _thread;
    if (repository == null || thread == null || thread.isClosed) {
      return OrderPick.failed;
    }
    if (_picking) return OrderPick.sent;
    _picking = true;
    _notice = null;
    try {
      for (int attempt = 0;; attempt++) {
        try {
          final SupportPoll poll =
              await repository.selectOrder(thread.id, orderId);
          if (poll.messages.isNotEmpty) _merge(poll.messages);
          _offline = false;
          if (poll.pendingReply != false) _startWaiting();
          return OrderPick.sent;
        } on ApiException catch (error) {
          if (error.statusCode == 503 && attempt == 0) {
            await Future<void>.delayed(orderRetryDelay);
            if (_disposed) return OrderPick.failed;
            continue;
          }
          return _orderRefused(error, thread);
        }
      }
    } finally {
      _picking = false;
      if (!_disposed) notifyListeners();
    }
  }

  OrderPick _orderRefused(ApiException error, SupportConversation thread) {
    _offline = error.kind == ApiErrorKind.network;
    switch (error.statusCode) {
      case 404:
        _notice = SupportNotice.orderNotFound;
        return OrderPick.notFound;
      case 409:
        // Closed on the server since the button was drawn.
        _stopWaiting();
        if (_thread?.id == thread.id) {
          _thread = _thread?.copyWith(
            status: ConversationStatus.closed,
            pendingReply: false,
          );
          _persist();
        }
        return OrderPick.closed;
      case 503:
        _notice = SupportNotice.orderLookupDown;
        return OrderPick.unavailable;
    }
    if (error.kind == ApiErrorKind.tooManyRequests) {
      _problem = SupportProblem.slowDown;
    }
    return OrderPick.failed;
  }

  /// Asks for a person: a ticket, not a live chat. The words that come back
  /// are the server's promise and are shown exactly as written.
  Future<String?> handover() async {
    final SupportRepository? repository = _repository;
    final SupportConversation? thread = _thread;
    if (repository == null || thread == null || _busy) return null;
    _busy = true;
    notifyListeners();
    try {
      final SupportHandover result = await repository.handover(thread.id);
      _stopWaiting();
      _timedOut = false;
      try {
        // The thread as the server now has it, its note included.
        _adopt(await repository.conversation(thread.id));
      } on ApiException {
        _thread = _thread?.copyWith(status: result.status);
        _setMessages(<SupportMessage>[
          ...messages,
          SupportMessage(
            id: 'local-${DateTime.now().microsecondsSinceEpoch}',
            sender: SupportSender.system,
            content: result.systemMessage,
            createdAt: DateTime.now(),
          ),
        ]);
      }
      return result.systemMessage;
    } on ApiException {
      return null;
    } finally {
      _busy = false;
      notifyListeners();
    }
  }

  /// The customer marks it solved. The composer gives way to "Start a new
  /// chat".
  Future<bool> close() async {
    final SupportRepository? repository = _repository;
    final SupportConversation? thread = _thread;
    if (repository == null || thread == null || _busy) return false;
    _busy = true;
    notifyListeners();
    try {
      await repository.close(thread.id);
      _stopWaiting();
      _thread = _thread?.copyWith(status: ConversationStatus.closed);
      await _persist();
      return true;
    } on ApiException {
      return false;
    } finally {
      _busy = false;
      notifyListeners();
    }
  }

  /// Thumbs on an answer. Shown at once; put back if the server refuses.
  Future<void> rate(SupportMessage message, String value) async {
    final SupportRepository? repository = _repository;
    if (repository == null || message.sender != SupportSender.ai) return;
    final String? before = message.feedback;
    _replaceById(message.id, message.copyWith(feedback: value));
    try {
      await repository.feedback(message.id, value);
    } on ApiException {
      _replaceById(
        message.id,
        SupportMessage(
          id: message.id,
          sender: message.sender,
          content: message.content,
          createdAt: message.createdAt,
          actions: message.actions,
          feedback: before,
        ),
      );
    }
  }

  /// Signed out or deleted: the conversation leaves with the customer.
  Future<void> clear() async {
    _stopWaiting();
    _thread = null;
    _entry = const SupportEntry();
    _offline = false;
    _timedOut = false;
    _problem = null;
    _notice = null;
    await _preferences.clearSupport();
    notifyListeners();
  }

  // ---------------------------------------------------------------------------
  // Waiting for the reply

  void _startWaiting() {
    _waiting = true;
    _timedOut = false;
    // A new question earns a fresh 30 seconds.
    _polls = 0;
    _poller ??= Timer.periodic(pollEvery, (_) => _poll());
    notifyListeners();
  }

  void _stopWaiting() {
    _poller?.cancel();
    _poller = null;
    _waiting = false;
  }

  bool _polling = false;

  Future<void> _poll() async {
    final SupportRepository? repository = _repository;
    final SupportConversation? thread = _thread;
    if (repository == null || thread == null) return _stopWaiting();
    if (_polling) return;
    _polling = true;
    _polls++;
    try {
      final SupportPoll poll =
          await repository.messagesAfter(thread.id, afterId: _lastServerId());
      final List<SupportMessage> arrived = poll.messages;
      _offline = false;
      if (arrived.isNotEmpty) _merge(arrived);
      final bool replied = arrived.any((SupportMessage m) => !m.isMine);
      if (replied && poll.pendingReply != true) {
        _stopWaiting();
        notifyListeners();
        return;
      }
      if (replied) {
        // An answer came and another is still being written, to a second
        // question: keep the dots, with a fresh 30 seconds for it.
        _polls = 0;
      } else if (poll.pendingReply == false) {
        // Nothing being written and nothing came: the job ended without an
        // answer, and waiting out the 30 seconds would only keep the dots up.
        _stopWaiting();
        _timedOut = true;
        notifyListeners();
        return;
      }
    } on ApiException {
      // A missed poll is not a failed reply; the next one tries again.
    } finally {
      _polling = false;
    }
    if (_waiting && _polls >= pollLimit) {
      _stopWaiting();
      _timedOut = true;
      notifyListeners();
    }
  }

  // ---------------------------------------------------------------------------
  // Keeping the thread

  String? _lastServerId() {
    for (final SupportMessage message in messages.reversed) {
      if (message.state == DeliveryState.sent &&
          !message.id.startsWith('local-') &&
          message.id != message.clientId) {
        return message.id;
      }
    }
    return null;
  }

  /// The server's thread, keeping anything of the customer's it has not got
  /// yet (a message that failed to send stays where it was, with its retry).
  void _adopt(SupportConversation fresh) {
    final Set<String?> saved = fresh.messages
        .map((SupportMessage m) => m.clientId)
        .where((String? id) => id != null)
        .toSet();
    final List<SupportMessage> unsent = <SupportMessage>[
      if (_thread?.id == fresh.id)
        for (final SupportMessage m in messages)
          if (m.state != DeliveryState.sent && !saved.contains(m.clientId)) m,
    ];
    _thread = fresh.copyWith(messages: <SupportMessage>[
      ...fresh.messages,
      ...unsent,
    ]);
    _persist();
  }

  void _merge(List<SupportMessage> arrived) {
    final List<SupportMessage> next = List<SupportMessage>.of(messages);
    for (final SupportMessage message in arrived) {
      final int sameId = next.indexWhere((SupportMessage m) => m.id == message.id);
      final int sameClient = message.clientId == null
          ? -1
          : next.indexWhere((SupportMessage m) => m.clientId == message.clientId);
      if (sameId >= 0) {
        next[sameId] = message;
      } else if (sameClient >= 0) {
        next[sameClient] = message;
      } else {
        next.add(message);
      }
    }
    _setMessages(next);
  }

  void _replace(String? clientId, SupportMessage message) {
    final int at =
        messages.indexWhere((SupportMessage m) => m.clientId == clientId);
    if (at < 0) return;
    final List<SupportMessage> next = List<SupportMessage>.of(messages);
    next[at] = message;
    _setMessages(next);
  }

  void _replaceById(String id, SupportMessage message) {
    final int at = messages.indexWhere((SupportMessage m) => m.id == id);
    if (at < 0) return;
    final List<SupportMessage> next = List<SupportMessage>.of(messages);
    next[at] = message;
    _setMessages(next);
  }

  void _setMessages(List<SupportMessage> next) {
    final SupportConversation? thread = _thread;
    if (thread == null) return;
    _thread = thread.copyWith(
      messages: next.length > keepMessages
          ? next.sublist(next.length - keepMessages)
          : next,
    );
    _persist();
    notifyListeners();
  }

  void _restore() {
    final String? raw = _preferences.supportThreadJson;
    if (raw == null) return;
    try {
      final Object? json = jsonDecode(raw);
      if (json is Map<String, dynamic>) {
        _thread = SupportConversation.fromJson(json);
      }
    } on FormatException {
      // A corrupt copy is no thread at all; the server has the real one.
    }
  }

  Future<void> _persist() async {
    final SupportConversation? thread = _thread;
    if (thread == null) {
      await _preferences.forgetSupportThread();
      return;
    }
    await _preferences.saveSupportThreadJson(jsonEncode(thread.toJson()));
  }

  @override
  void dispose() {
    _disposed = true;
    _stopWaiting();
    super.dispose();
  }
}
