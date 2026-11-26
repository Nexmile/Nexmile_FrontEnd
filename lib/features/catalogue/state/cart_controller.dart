import 'package:flutter/foundation.dart';

import '../../../core/network/api_exception.dart';
import '../../auth/data/auth_failure.dart';
import '../data/cart_models.dart';
import '../data/delivery_instruction.dart';
import '../data/order_models.dart';
import '../data/storefront_repository.dart';

/// The basket, which lives on the server.
///
/// There is one cart per restaurant, so the app no longer enforces a
/// single-restaurant rule itself — opening another shop simply shows that
/// shop's own basket, and `GET /v1/carts` powers an "unfinished order" banner.
///
/// Every mutation returns the whole cart, so state is replaced from the
/// response rather than patched locally. Totals, the minimum, sold-out lines
/// and [Cart.canCheckout] are all the server's answer; recomputing any of them
/// here would only drift.
class CartController extends ChangeNotifier {
  CartController({required StorefrontRepository repository})
      : _repository = repository;

  final StorefrontRepository _repository;

  Cart? _cart;
  List<OpenCart> _openCarts = <OpenCart>[];
  bool _isLoading = false;
  bool _isMutating = false;

  /// Field errors from the last rejected call, keyed by API field name.
  Map<String, List<String>> _fieldErrors = const <String, List<String>>{};

  Cart? get cart => _cart;

  List<OpenCart> get openCarts => List<OpenCart>.unmodifiable(_openCarts);

  /// Baskets whose bar the customer closed, with how many items they held
  /// then. Closing is only "not now": the bar comes back once that basket
  /// changes, and on the next launch.
  final Map<String, int> _closedBars = <String, int>{};

  /// The basket the cart bar offers: the first one not closed as it stands.
  OpenCart? get barCart {
    for (final OpenCart cart in _openCarts) {
      if (cart.itemCount > 0 && _closedBars[cart.restaurantId] != cart.itemCount) {
        return cart;
      }
    }
    return null;
  }

  void closeBar(OpenCart cart) {
    _closedBars[cart.restaurantId] = cart.itemCount;
    notifyListeners();
  }

  /// Keeps the bar's list true to the basket the server just returned, so a
  /// dish added on a restaurant page is on the bar back home without
  /// another read.
  void _syncOpenCart(Cart cart) {
    final String id = cart.restaurant.id;
    final int at =
        _openCarts.indexWhere((OpenCart open) => open.restaurantId == id);
    final List<OpenCart> next = List<OpenCart>.of(_openCarts);
    if (cart.isEmpty) {
      if (at >= 0) next.removeAt(at);
    } else {
      final OpenCart open = OpenCart.fromCart(
        cart,
        imageUrl: at >= 0 ? _openCarts[at].imageUrl : null,
      );
      if (at >= 0) {
        next[at] = open;
      } else {
        next.insert(0, open);
      }
    }
    _openCarts = next;
  }

  void _dropOpenCart(String restaurantId) {
    _openCarts = _openCarts
        .where((OpenCart open) => open.restaurantId != restaurantId)
        .toList();
  }

  bool get isLoading => _isLoading;

  /// True while an add/remove/quantity call is in flight, so the steppers can
  /// be disabled without blanking the screen.
  bool get isMutating => _isMutating;

  Map<String, List<String>> get fieldErrors => _fieldErrors;

  bool get isEmpty => _cart?.isEmpty ?? true;

  int get itemCount => _cart?.itemCount ?? 0;

  /// Quantity of a menu item across the cart, for the ADD/stepper on a menu
  /// row. Lines with different options are separate, so they are summed.
  int quantityOfMenuItem(int menuItemId) {
    final Cart? cart = _cart;
    if (cart == null) return 0;
    return cart.lines
        .where((CartLine l) => l.menuItemId == menuItemId)
        .fold(0, (int sum, CartLine l) => sum + l.quantity);
  }

  /// The single line for a menu item, or null when it is absent or split
  /// across several option combinations.
  CartLine? soleLineFor(int menuItemId) {
    final Cart? cart = _cart;
    if (cart == null) return null;
    final List<CartLine> matches =
        cart.lines.where((CartLine l) => l.menuItemId == menuItemId).toList();
    return matches.length == 1 ? matches.first : null;
  }

  Future<AuthFailure?> load(
    String restaurantId, {
    FulfilmentType? fulfilmentType,
  }) async {
    _isLoading = true;
    notifyListeners();
    try {
      final Cart cart = await _repository.cart(
        restaurantId,
        fulfilmentType: fulfilmentType,
      );
      _cart = cart;
      _syncOpenCart(cart);
      return null;
    } on ApiException catch (error) {
      // A restaurant with no basket yet is not an error worth surfacing.
      if (error.statusCode == 404) {
        _cart = null;
        return null;
      }
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<AuthFailure?> _mutate(Future<Cart> Function() action) async {
    _isMutating = true;
    _fieldErrors = const <String, List<String>>{};
    notifyListeners();
    try {
      final Cart cart = await action();
      _cart = cart;
      _syncOpenCart(cart);
      return null;
    } on ApiException catch (error) {
      _fieldErrors = error.errors;
      return authFailureFrom(
        error,
        // A 422 here almost always means a required option group was not
        // answered, which the UI turns into "open the customisation sheet".
        validationFailure: AuthFailure.invalidIdentifier,
      );
    } catch (_) {
      return AuthFailure.unknown;
    } finally {
      _isMutating = false;
      notifyListeners();
    }
  }

  Future<AuthFailure?> addItem(
    String restaurantId, {
    required int menuItemId,
    int quantity = 1,
    List<int> optionIds = const <int>[],
    String? notes,
  }) {
    return _mutate(
      () => _repository.addItem(
        restaurantId,
        menuItemId: menuItemId,
        quantity: quantity,
        optionIds: optionIds,
        notes: notes,
      ),
    );
  }

  /// Zero removes the line server-side, so the minus button needs no special
  /// case at the boundary.
  Future<AuthFailure?> setQuantity(
    String restaurantId, {
    required int cartItemId,
    required int quantity,
  }) {
    return _mutate(
      () => _repository.setQuantity(
        restaurantId,
        cartItemId: cartItemId,
        quantity: quantity,
      ),
    );
  }

  Future<AuthFailure?> removeLine(String restaurantId, int cartItemId) =>
      _mutate(() => _repository.removeItem(restaurantId, cartItemId));

  /// A refused code leaves its reason in `firstError('code')`, worded by the
  /// server for the customer.
  Future<AuthFailure?> applyCoupon(String restaurantId, String code) => _mutate(
        () => _repository.applyCoupon(restaurantId, code: code.trim()),
      );

  Future<AuthFailure?> removeCoupon(String restaurantId) =>
      _mutate(() => _repository.removeCoupon(restaurantId));

  /// The unfinished basket at [restaurantId], if there is one.
  OpenCart? openCartFor(String restaurantId) {
    for (final OpenCart cart in _openCarts) {
      if (cart.restaurantId == restaurantId) return cart;
    }
    return null;
  }

  /// Puts a past order back in its restaurant's basket, replacing whatever
  /// was there. Never optimistic: the call is destructive, so nothing on
  /// screen changes until the server has answered.
  Future<(Reorder?, AuthFailure?)> reorder(int orderId) async {
    _isMutating = true;
    _fieldErrors = const <String, List<String>>{};
    notifyListeners();
    try {
      final Reorder result = await _repository.reorder(orderId);
      _cart = result.cart;
      return (result, null);
    } on ApiException catch (error) {
      _fieldErrors = error.errors;
      return (
        null,
        authFailureFrom(error, validationFailure: AuthFailure.unknown),
      );
    } catch (_) {
      return (null, AuthFailure.unknown);
    } finally {
      _isMutating = false;
      notifyListeners();
      // The "you left something" bar now has this basket to point at.
      loadOpenCarts();
    }
  }

  Future<AuthFailure?> empty(String restaurantId) async {
    _isMutating = true;
    notifyListeners();
    try {
      await _repository.emptyCart(restaurantId);
      _cart = null;
      _dropOpenCart(restaurantId);
      return null;
    } on ApiException catch (error) {
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } finally {
      _isMutating = false;
      notifyListeners();
    }
  }

  Future<void> loadOpenCarts() async {
    try {
      _openCarts = await _repository.openCarts();
    } on ApiException {
      _openCarts = <OpenCart>[];
    }
    notifyListeners();
  }

  /// Places the order. Everything is re-checked server-side — availability,
  /// opening hours, the 1 km radius, the minimum — so a 422 is expected even
  /// when the cart looked fine a moment ago. Field errors land in
  /// [fieldErrors] for the checkout sheet to render verbatim.
  ///
  /// Returns the placed order on success; the cart is emptied by the server,
  /// so going back cannot place it twice.
  Future<(Order?, AuthFailure?)> checkout(
    String restaurantId, {
    required FulfilmentType fulfilmentType,
    required String paymentMethod,
    bool useWallet = false,
    int? addressId,
    String? note,
    Set<DeliveryInstruction> instructions = const <DeliveryInstruction>{},
    bool noCutlery = false,
  }) async {
    _isMutating = true;
    _fieldErrors = const <String, List<String>>{};
    notifyListeners();
    try {
      final Order order = await _repository.checkout(
        restaurantId,
        fulfilmentType: fulfilmentType,
        paymentMethod: paymentMethod,
        useWallet: useWallet,
        addressId: addressId,
        note: note,
        instructions: instructions,
        noCutlery: noCutlery,
      );
      _cart = null;
      // Placed: no longer something left behind.
      _dropOpenCart(restaurantId);
      return (order, null);
    } on ApiException catch (error) {
      _fieldErrors = error.errors;
      return (
        null,
        authFailureFrom(
          error,
          validationFailure: AuthFailure.invalidIdentifier,
        ),
      );
    } catch (_) {
      return (null, AuthFailure.unknown);
    } finally {
      _isMutating = false;
      notifyListeners();
    }
  }

  /// First field error for [field], or the first of any field — checkout
  /// rejections name `cart`, `merchant`, `address_id` or `payment_method`, and
  /// the sheet shows whichever came back.
  String? firstError([String? field]) {
    if (field != null) return _fieldErrors[field]?.first;
    for (final List<String> messages in _fieldErrors.values) {
      if (messages.isNotEmpty) return messages.first;
    }
    return null;
  }

  void clear() {
    _cart = null;
    _openCarts = <OpenCart>[];
    _closedBars.clear();
    _fieldErrors = const <String, List<String>>{};
    notifyListeners();
  }
}
