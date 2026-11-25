import 'package:flutter/foundation.dart';

import '../../catalogue/data/storefront_models.dart';

/// `GET /v1/wallet` — the balance and the most recent movements on it.
@immutable
class Wallet {
  const Wallet({
    required this.balance,
    this.transactions = const [],
    this.updatedAt,
  });

  /// Rupees. The server is the only place this changes; the app never adds or
  /// subtracts locally, it re-reads.
  final double balance;

  /// Newest first. The server sends the latest 50.
  final List<WalletTransaction> transactions;

  /// When the balance last changed, if the server says (`updated_at`).
  final DateTime? updatedAt;

  static Wallet fromJson(Map<String, dynamic> json) => Wallet(
        balance: asDouble(json['balance']),
        transactions: asMapList(json['transactions'])
            .map(WalletTransaction.fromJson)
            .toList(growable: false),
        updatedAt: DateTime.tryParse(asString(json['updated_at'])),
      );
}

/// Where a movement got to. The wallet's ledger holds settled money, so an
/// entry without a `status` is a successful one; pending and failed only
/// show when the server sends them.
enum WalletEntryStatus { success, pending, failed }

WalletEntryStatus _statusFrom(Object? raw) => switch (asString(raw).toLowerCase()) {
      'pending' || 'processing' || 'created' || 'authorized' || 'initiated' =>
        WalletEntryStatus.pending,
      'failed' || 'declined' || 'cancelled' || 'canceled' || 'expired' =>
        WalletEntryStatus.failed,
      _ => WalletEntryStatus.success,
    };

/// The first non-empty text among [keys].
String? _firstText(Map<String, dynamic> json, List<String> keys) {
  for (final String key in keys) {
    final String value = asString(json[key]).trim();
    if (value.isNotEmpty) return value;
  }
  return null;
}

enum WalletEntryKind {
  /// Money added through the gateway.
  topUp,

  /// Spent on an order.
  orderPayment,

  /// Returned from a cancelled or refunded order.
  refund,

  /// A kind this build predates. Shown with the server's own description.
  other,
}

WalletEntryKind _kindFrom(Object? raw) {
  switch (asString(raw)) {
    case 'topup':
    case 'top_up':
      return WalletEntryKind.topUp;
    case 'order_payment':
    case 'order':
      return WalletEntryKind.orderPayment;
    case 'refund':
      return WalletEntryKind.refund;
    default:
      return WalletEntryKind.other;
  }
}

@immutable
class WalletTransaction {
  const WalletTransaction({
    required this.id,
    required this.kind,
    required this.amount,
    required this.description,
    this.createdAt,
    this.orderNumber,
    this.status = WalletEntryStatus.success,
    this.method,
    this.reference,
    this.balanceAfter,
  });

  final int id;
  final WalletEntryKind kind;

  /// Signed: positive for money in, negative for money out. The server may
  /// send it unsigned with a `direction`, so both are read.
  final double amount;

  final String description;
  final DateTime? createdAt;

  /// Set for order payments and refunds.
  final String? orderNumber;

  final WalletEntryStatus status;

  /// How the money moved, as the server names it (`upi`, `card`…), when it
  /// says. Null: the app words it from [kind].
  final String? method;

  /// The gateway's own reference (a Razorpay payment id), when sent.
  final String? reference;

  /// The balance once this settled, when sent.
  final double? balanceAfter;

  bool get isCredit => amount >= 0;

  static WalletTransaction fromJson(Map<String, dynamic> json) {
    final double raw = asDouble(json['amount']);
    final String direction = asString(json['direction']);
    final double amount = direction == 'debit'
        ? -raw.abs()
        : direction == 'credit'
            ? raw.abs()
            : raw;

    return WalletTransaction(
      id: asInt(json['id']),
      kind: _kindFrom(json['type']),
      amount: amount,
      description: asString(json['description']),
      createdAt: DateTime.tryParse(asString(json['created_at'])),
      orderNumber: _firstText(json, const <String>['order_number']),
      status: _statusFrom(json['status']),
      method: _firstText(json, const <String>['payment_method', 'method']),
      reference: _firstText(json, const <String>[
        'reference',
        'reference_id',
        'razorpay_payment_id',
        'payment_id',
        'transaction_ref',
      ]),
      balanceAfter: json['balance_after'] == null
          ? null
          : asDouble(json['balance_after']),
    );
  }
}

/// `POST /v1/wallet/topups` — a Razorpay order the server created for this
/// top-up, which the checkout sheet is opened against.
///
/// The server creates the Razorpay order, not the app, because creating one
/// needs the Razorpay secret. The publishable [keyId] comes back with it so
/// the app never hard-codes which Razorpay account it pays into.
@immutable
class TopUp {
  const TopUp({
    required this.id,
    required this.gatewayOrderId,
    required this.keyId,
    required this.amountPaise,
    this.currency = 'INR',
  });

  /// Our id for the top-up, used to confirm it afterwards.
  final int id;

  /// Razorpay's `order_...` id.
  final String gatewayOrderId;

  final String keyId;
  final int amountPaise;
  final String currency;

  static TopUp fromJson(Map<String, dynamic> json) => TopUp(
        id: asInt(json['id']),
        gatewayOrderId: asString(json['razorpay_order_id']),
        keyId: asString(json['razorpay_key_id']),
        amountPaise: asInt(json['amount_paise']),
        currency: asString(json['currency'], 'INR'),
      );
}

/// What Razorpay hands back after a successful payment, passed to the server
/// verbatim so it can check the signature.
@immutable
class GatewayReceipt {
  const GatewayReceipt({
    required this.paymentId,
    required this.orderId,
    required this.signature,
  });

  final String paymentId;
  final String orderId;
  final String signature;
}
