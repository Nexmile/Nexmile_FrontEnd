import 'package:flutter/foundation.dart';

import '../../../core/network/api_exception.dart';
import '../../auth/data/auth_failure.dart';
import '../data/address.dart';
import '../data/address_repository.dart';

/// Owns the customer's address book.
///
/// The post-login flow branches on [hasAddresses], so the list is loaded once
/// after sign-in and kept in memory; every mutation writes through to the API
/// and refreshes local state from the response rather than guessing.
class AddressController extends ChangeNotifier {
  AddressController({required AddressRepository repository})
      : _repository = repository;

  final AddressRepository _repository;

  List<Address> _addresses = <Address>[];
  bool _isLoading = false;
  bool _hasLoaded = false;

  List<Address> get addresses => List<Address>.unmodifiable(_addresses);

  bool get isLoading => _isLoading;

  /// False until [load] has completed once, so the router can tell "no
  /// addresses" apart from "not asked yet".
  bool get hasLoaded => _hasLoaded;

  bool get hasAddresses => _addresses.isNotEmpty;

  Address? get defaultAddress {
    for (final Address address in _addresses) {
      if (address.isDefault) return address;
    }
    return _addresses.isEmpty ? null : _addresses.first;
  }

  // --- Where to deliver ----------------------------------------------------

  /// True after "Use current location": the storefront follows the phone
  /// rather than a saved address, until the customer picks or saves one.
  bool _deliverToCurrentLocation = false;

  /// The saved address the storefront and checkout work from. Null while
  /// delivering to the current location, or with nothing saved, which both
  /// mean "wherever the phone is".
  Address? get deliveryAddress =>
      _deliverToCurrentLocation ? null : defaultAddress;

  bool get deliversToCurrentLocation => deliveryAddress == null;

  /// Browse by where the phone is, without saving anything. Checkout still
  /// needs a saved address, and asks for one.
  void useCurrentLocation() {
    if (_deliverToCurrentLocation) return;
    _deliverToCurrentLocation = true;
    notifyListeners();
  }

  /// Delivers to [address] from now on. It becomes the default, which is the
  /// address the API anchors the nearby search on.
  Future<AuthFailure?> choose(Address address) async {
    _deliverToCurrentLocation = false;
    if (defaultAddress?.id == address.id) {
      notifyListeners();
      return null;
    }
    return makeDefault(address.id);
  }

  /// What the last successful [save] wrote, for the screen that saved it to
  /// hand back to whoever asked for an address.
  Address? _lastSaved;

  Address? get lastSaved => _lastSaved;

  Future<AuthFailure?> load() async {
    _isLoading = true;
    notifyListeners();
    try {
      _addresses = await _repository.list();
      _hasLoaded = true;
      return null;
    } on ApiException catch (error) {
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } catch (_) {
      return AuthFailure.unknown;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Field-level errors from the last 422, keyed by API field name, so the form
  /// can put "The pincode is invalid" under the pincode input rather than in a
  /// generic banner.
  Map<String, List<String>> _fieldErrors = const <String, List<String>>{};

  Map<String, List<String>> get fieldErrors => _fieldErrors;

  Future<AuthFailure?> save(AddressDraft draft, {int? id}) async {
    _isLoading = true;
    _fieldErrors = const <String, List<String>>{};
    notifyListeners();
    try {
      final Address saved = id == null
          ? await _repository.create(draft)
          : await _repository.update(id, draft);
      _lastSaved = saved;
      // A new default is where the customer now wants delivery.
      if (saved.isDefault) _deliverToCurrentLocation = false;

      // The API owns default-flag bookkeeping: saving a new default clears the
      // old one server-side, so re-read rather than patching locally.
      if (saved.isDefault) {
        await _refreshQuietly();
      } else {
        _upsert(saved);
      }
      return null;
    } on ApiException catch (error) {
      _fieldErrors = error.errors;
      return authFailureFrom(
        error,
        validationFailure: AuthFailure.invalidIdentifier,
      );
    } catch (_) {
      return AuthFailure.unknown;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<AuthFailure?> makeDefault(int id) async {
    _isLoading = true;
    notifyListeners();
    try {
      await _repository.makeDefault(id);
      await _refreshQuietly();
      return null;
    } on ApiException catch (error) {
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Fetches one address fresh from the server, for the edit screen.
  Future<Address?> fetch(int id) async {
    try {
      return await _repository.show(id);
    } on ApiException {
      // Fall back to the cached copy rather than blocking the edit.
      for (final Address address in _addresses) {
        if (address.id == id) return address;
      }
      return null;
    }
  }

  Future<AuthFailure?> delete(int id) async {
    _isLoading = true;
    notifyListeners();

    // Deleting the default makes the server promote the next most recent
    // address, so dropping the row locally would leave the app showing a book
    // with no default at all. Re-read in that case.
    final bool wasDefault =
        _addresses.any((Address a) => a.id == id && a.isDefault);

    try {
      await _repository.delete(id);
      if (wasDefault) {
        await _refreshQuietly();
      } else {
        _addresses = _addresses.where((Address a) => a.id != id).toList();
      }
      return null;
    } on ApiException catch (error) {
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Attaches a door or building photo to a saved address.
  Future<AuthFailure?> uploadPhoto(
    int id, {
    required List<int> bytes,
    required String filename,
  }) async {
    try {
      final Address updated = await _repository.uploadPhoto(
        id,
        bytes: bytes,
        filename: filename,
      );
      _upsert(updated);
      if (_lastSaved?.id == id) _lastSaved = updated;
      notifyListeners();
      return null;
    } on ApiException catch (error) {
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } catch (_) {
      return AuthFailure.unknown;
    }
  }

  /// Takes the door photo off a saved address.
  Future<AuthFailure?> deletePhoto(int id) async {
    try {
      final Address updated = await _repository.deletePhoto(id);
      _upsert(updated);
      if (_lastSaved?.id == id) _lastSaved = updated;
      notifyListeners();
      return null;
    } on ApiException catch (error) {
      return authFailureFrom(error, validationFailure: AuthFailure.unknown);
    } catch (_) {
      return AuthFailure.unknown;
    }
  }

  /// Re-reads the list without touching the loading flag, for use inside an
  /// operation that is already showing a spinner.
  Future<void> _refreshQuietly() async {
    try {
      _addresses = await _repository.list();
      _hasLoaded = true;
    } on ApiException {
      // Keep whatever is on screen; the next explicit load will correct it.
    }
  }

  void _upsert(Address address) {
    final int index = _addresses.indexWhere((Address a) => a.id == address.id);
    if (index == -1) {
      _addresses = <Address>[..._addresses, address];
    } else {
      final List<Address> next = <Address>[..._addresses];
      next[index] = address;
      _addresses = next;
    }
  }

  /// Called on sign-out so the next customer does not inherit the list.
  void clear() {
    _addresses = <Address>[];
    _hasLoaded = false;
    _fieldErrors = const <String, List<String>>{};
    _deliverToCurrentLocation = false;
    _lastSaved = null;
    notifyListeners();
  }
}
