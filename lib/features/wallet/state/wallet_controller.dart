import 'package:flutter/foundation.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/services/preferences_service.dart';
import '../../auth/data/auth_failure.dart';
import '../data/payment_gateway.dart';
import '../data/wallet_models.dart';
import '../data/wallet_repository.dart';

/// How an "add money" attempt ended, for the screen to word.
enum TopUpOutcome {
  added,

  /// The customer closed the gateway. Nothing to say.
  cancelled,

  /// The gateway declined: card refused, UPI timed out.
  paymentFailed,

  /// Razorpay took the money but our server has not confirmed it yet,
  /// usually a dropped connection right after paying. The server's webhook
  /// still credits it, so this is "wait", not "failed".
  confirming,

  /// The server refused the amount (422), usually because it would take the
  /// balance over the ceiling. [WalletController.rejection] says why.
  rejected,

  /// The server has no live gateway yet (503). Not the customer's fault.
  unavailable,

  /// We could not start the top-up at all.
  failed,
}

/// Where an add-money attempt is, for the button to say.
enum TopUpPhase {
  idle,

  /// Asking the server for a Razorpay order.
  starting,

  /// Razorpay's checkout is open.
  paying,

  /// Paid; the server is checking the signature and crediting the wallet.
  verifying,
}

/// Owns the wallet balance and the add-money flow.
///
/// [isAvailable] stays false until a load succeeds. That lets the profile
/// tile and the checkout switch stay hidden on a server that has no wallet
/// yet, rather than showing a balance of zero that is not true.
class WalletController extends ChangeNotifier {
  WalletController({
    required WalletRepository repository,
    PaymentGateway? gateway,
    PreferencesService? preferences,
  })  : _repository = repository,
        _gateway = gateway,
        _preferences = preferences,
        _hidden = preferences?.walletBalanceHidden ?? false;

  final WalletRepository _repository;
  final PreferencesService? _preferences;

  /// Built on first use so that merely constructing the app never touches the
  /// Razorpay plugin.
  PaymentGateway? _gateway;
  PaymentGateway get _payments => _gateway ??= RazorpayGateway();

  /// Smallest and largest single top-up the app offers. The server enforces
  /// its own limits; these only stop an obviously wrong amount early.
  static const double minTopUp = 10;
  static const double maxTopUp = 10000;

  /// The most a wallet may hold. A regulatory limit, enforced by the server.
  static const double maxBalance = 10000;

  Wallet? _wallet;
  bool _isLoading = false;
  bool _isAdding = false;
  AuthFailure? _failure;

  Wallet? get wallet => _wallet;
  double get balance => _wallet?.balance ?? 0;

  TopUpPhase _phase = TopUpPhase.idle;
  TopUpPhase get phase => _phase;

  /// When the balance on screen was last known to be right: the server's
  /// `updated_at` when it sends one, else when it was last read.
  DateTime? _readAt;
  DateTime? get updatedAt => _wallet?.updatedAt ?? _readAt;

  /// The balance shown as dots, remembered on this phone.
  bool _hidden;
  bool get isBalanceHidden => _hidden;

  void toggleBalanceHidden() {
    _hidden = !_hidden;
    _preferences?.saveWalletBalanceHidden(_hidden);
    notifyListeners();
  }

  void _setPhase(TopUpPhase phase) {
    _phase = phase;
    notifyListeners();
  }

  void _took(Wallet wallet) {
    _wallet = wallet;
    _readAt = DateTime.now();
  }
  bool get isAvailable => _wallet != null;
  bool get isLoading => _isLoading;
  bool get isAdding => _isAdding;
  AuthFailure? get failure => _failure;

  /// The server's reason for the last [TopUpOutcome.rejected]. Shown as is,
  /// the way checkout shows its field errors: it carries the exact rupees left.
  String? _rejection;
  String? get rejection => _rejection;

  /// The largest top-up that still fits under [maxBalance].
  double get maxAddable {
    final double room = maxBalance - balance;
    return room < maxTopUp ? (room < 0 ? 0 : room) : maxTopUp;
  }

  Future<AuthFailure?> load() async {
    if (_isLoading) return null;
    _isLoading = true;
    notifyListeners();
    try {
      _took(await _repository.wallet());
      _failure = null;
      return null;
    } on ApiException catch (error) {
      _failure = authFailureFrom(error, validationFailure: AuthFailure.unknown);
      return _failure;
    } catch (_) {
      _failure = AuthFailure.unknown;
      return _failure;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<TopUpOutcome> addMoney(double amount, PayerDetails payer) async {
    if (_isAdding) return TopUpOutcome.cancelled;
    _isAdding = true;
    _rejection = null;
    _phase = TopUpPhase.starting;
    notifyListeners();

    try {
      final TopUp topUp;
      try {
        topUp = await _repository.createTopUp(amount);
      } on ApiException catch (error) {
        if (error.isValidation) {
          _rejection = error.errorFor('amount') ??
              (error.errors.values.isNotEmpty &&
                      error.errors.values.first.isNotEmpty
                  ? error.errors.values.first.first
                  : null);
          return TopUpOutcome.rejected;
        }
        if (error.statusCode == 503) return TopUpOutcome.unavailable;
        return TopUpOutcome.failed;
      } catch (_) {
        return TopUpOutcome.failed;
      }

      _setPhase(TopUpPhase.paying);
      final GatewayOutcome outcome = await _payments.pay(topUp, payer);
      switch (outcome) {
        case GatewayCancelled():
          return TopUpOutcome.cancelled;
        case GatewayFailed():
          return TopUpOutcome.paymentFailed;
        case GatewayPaid(:final GatewayReceipt receipt):
          _setPhase(TopUpPhase.verifying);
          try {
            // Only the server's answer moves the balance: it has checked the
            // signature, and credits a payment once however often it is
            // asked.
            _took(await _repository.verifyTopUp(topUp.id, receipt));
            return TopUpOutcome.added;
          } catch (_) {
            // The money has left the customer's account. Razorpay's webhook
            // credits it independently of verify, and often first, so re-read
            // before telling the customer anything.
            final double before = balance;
            await _refreshQuietly();
            return balance > before
                ? TopUpOutcome.added
                : TopUpOutcome.confirming;
          }
      }
    } finally {
      _isAdding = false;
      _phase = TopUpPhase.idle;
      notifyListeners();
    }
  }

  Future<void> _refreshQuietly() async {
    try {
      _took(await _repository.wallet());
    } catch (_) {
      // Keep what is on screen.
    }
  }

  /// Called on sign-out so the next customer does not see this balance.
  void clear() {
    _wallet = null;
    _readAt = null;
    _failure = null;
    notifyListeners();
  }
}
