import '../../../core/network/api_client.dart';
import '../../../core/network/api_exception.dart';
import 'support_models.dart';

/// The support chat, under `/v1/support` on the Nexmile API with the same
/// token as everything else. Nexmile passes it on to the BPO platform; the
/// app never talks to that directly.
///
/// Built on the server and answering 503 until the support platform is
/// switched on (see docs/API.md, "Support chat"); until then builds use
/// [DemoSupportRepository] unless they ask for the real one.
abstract class SupportRepository {
  /// `GET /v1/support/entry`: the bubble's label and unread count.
  Future<SupportEntry> entry();

  /// `POST /v1/support/conversations`. One open thread per customer: when
  /// one is open the server answers with it rather than making a second.
  Future<SupportConversation> start({int? orderId, String? language});

  /// `GET /v1/support/conversations/{id}`, with its messages and whether a
  /// reply is still being written.
  Future<SupportConversation> conversation(String id);

  /// `GET /v1/support/conversations/{id}/messages?after_id=`: only what came
  /// after [afterId], empty until the reply lands, with `meta.pending_reply`.
  Future<SupportPoll> messagesAfter(String id, {String? afterId});

  /// `POST /v1/support/conversations/{id}/messages`. A 202 with the
  /// customer's own message saved; the reply comes later, by polling.
  Future<SupportMessage> send(
    String id, {
    required String content,
    required String clientId,
  });

  /// `POST /v1/support/conversations/{id}/handover`: a ticket for a person.
  Future<SupportHandover> handover(String id);

  /// `POST /v1/support/conversations/{id}/close`: the customer is done.
  Future<void> close(String id);

  /// `POST /v1/support/messages/{id}/feedback`, `up` or `down`.
  Future<void> feedback(String messageId, String value);
}

class ApiSupportRepository implements SupportRepository {
  const ApiSupportRepository(this._client);

  final ApiClient _client;

  static const String _base = '/v1/support';

  @override
  Future<SupportEntry> entry() async =>
      SupportEntry.fromJson(_data(await _client.get('$_base/entry')));

  @override
  Future<SupportConversation> start({int? orderId, String? language}) async {
    final Map<String, dynamic> response = await _client.post(
      '$_base/conversations',
      body: <String, dynamic>{
        if (orderId != null) 'order_id': orderId,
        if (language != null) 'language': language,
      },
    );
    return SupportConversation.fromJson(_data(response));
  }

  @override
  Future<SupportConversation> conversation(String id) async =>
      SupportConversation.fromJson(
        _data(await _client.get('$_base/conversations/$id')),
      );

  @override
  Future<SupportPoll> messagesAfter(String id, {String? afterId}) async {
    final Map<String, dynamic> response = await _client.get(
      '$_base/conversations/$id/messages',
      query: <String, dynamic>{if (afterId != null) 'after_id': afterId},
    );
    final Object? meta = response['meta'];
    final Object? pending =
        meta is Map<String, dynamic> ? meta['pending_reply'] : null;
    return SupportPoll(
      messages: SupportConversation.messagesFrom(response['data']),
      pendingReply: pending is bool ? pending : null,
    );
  }

  @override
  Future<SupportMessage> send(
    String id, {
    required String content,
    required String clientId,
  }) async {
    final Map<String, dynamic> response = await _client.post(
      '$_base/conversations/$id/messages',
      body: <String, dynamic>{'content': content, 'client_id': clientId},
    );
    final SupportMessage? saved = SupportMessage.fromJson(_data(response));
    if (saved == null) {
      throw const ApiException(
        kind: ApiErrorKind.server,
        message: 'The saved message had no sender',
      );
    }
    return saved;
  }

  @override
  Future<SupportHandover> handover(String id) async => SupportHandover.fromJson(
        _data(await _client.post('$_base/conversations/$id/handover')),
      );

  @override
  Future<void> close(String id) =>
      _client.post('$_base/conversations/$id/close');

  @override
  Future<void> feedback(String messageId, String value) => _client.post(
        '$_base/messages/$messageId/feedback',
        body: <String, dynamic>{'value': value},
      );

  /// Laravel resources wrap the object in `data`; a bare object is taken as
  /// it is.
  static Map<String, dynamic> _data(Map<String, dynamic> response) {
    final Object? data = response['data'];
    return data is Map<String, dynamic> ? data : response;
  }
}
