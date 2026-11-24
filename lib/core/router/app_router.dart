import 'package:flutter/material.dart';

import '../../features/account/presentation/account_screens.dart';
import '../../features/address/data/address.dart';
import '../../features/address/data/location_service.dart';
import '../../features/address/presentation/address_book_screen.dart';
import '../../features/address/presentation/address_map_screen.dart';
import '../../features/address/presentation/location_permission_screen.dart';
import '../../features/auth/data/login_identifier.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/otp_verification_screen.dart';
import '../../features/catalogue/presentation/cart_screen.dart';
import '../../features/catalogue/data/order_models.dart';
import '../../features/catalogue/data/storefront_models.dart';
import '../../features/catalogue/presentation/live_tracking_screen.dart';
import '../../features/catalogue/presentation/order_placed_screen.dart';
import '../../features/catalogue/presentation/order_status_screen.dart';
import '../../features/catalogue/presentation/rate_order_screen.dart';
import '../../features/catalogue/presentation/reviews_screen.dart';
import '../../features/catalogue/presentation/restaurant_screen.dart';
import '../../features/catalogue/presentation/search_tab.dart';
import '../../features/language/language_screen.dart';
import '../../features/permissions/permission_onboarding.dart';
import '../../features/permissions/permissions_screen.dart';
import '../../features/profile/devices_screen.dart';
import '../../features/profile/profile_screen.dart';
import '../../features/shell/app_shell.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/support/presentation/support_screen.dart';
import '../../features/wallet/presentation/wallet_screen.dart';

class AppRoutes {
  const AppRoutes._();

  static const String splash = '/';
  static const String language = '/language';

  /// First-run permission pages, between choosing a language and signing in.
  static const String permissions = '/permissions';

  // Customer auth is two screens. The API offers no registration, password
  // recovery or password reset for customers — an account is created on the
  // first successful code verification.
  static const String login = '/login';
  static const String otpVerification = '/otp';

  /// Signed-in home. Hosts the storefront tabs.
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';

  /// "Where am I signed in" — every device holding a live refresh token.
  static const String devices = '/devices';

  // The profile page's own screens.
  static const String coupons = '/coupons';
  static const String favourites = '/favourites';
  static const String help = '/help';
  static const String orders = '/orders';

  /// Balance, add money, and history.
  static const String wallet = '/wallet';

  /// Pushed from the header search field rather than living in the tab bar.
  static const String search = '/search';

  // Storefront: nearby restaurants, the per-restaurant cart, and orders.
  static const String restaurant = '/restaurant';
  static const String cart = '/cart';
  static const String orderStatus = '/order';

  /// The moment after checkout: a short celebration, then tracking.
  static const String orderPlaced = '/order/placed';

  /// The rider, full screen. Pushed from the order screen, which owns the
  /// poll both of them read.
  static const String liveTracking = '/order/track';

  /// Ratings and reviews for one restaurant, and the screen that leaves one.
  static const String reviews = '/reviews';
  static const String rateOrder = '/order/review';

  // Address book. Delivery is limited to 1 km and the API makes coordinates
  // mandatory, so the pin step is not skippable — only the GPS part is.
  static const String locationPermission = '/location';
  static const String addressMap = '/address/map';
  static const String addressBook = '/addresses';

  /// The support chat: an AI assistant first, a person when it cannot help.
  static const String support = '/support';
}

/// Argument bundle for [AppRoutes.support]. Optional: the chat opens about
/// [orderId] when it was asked for from an order, and about nothing in
/// particular from the bubble or the help page.
@immutable
class SupportArgs {
  const SupportArgs({this.orderId});

  final int? orderId;
}

/// Argument bundle for [AppRoutes.locationPermission].
@immutable
class LocationPermissionArgs {
  const LocationPermissionArgs({this.isFirstAddress = true});

  /// True during onboarding, when saving lands on the storefront instead of
  /// returning to the address book.
  final bool isFirstAddress;
}

/// Argument bundle for [AppRoutes.addressMap].
@immutable
class AddressMapArgs {
  const AddressMapArgs({
    this.latitude,
    this.longitude,
    this.isFirstAddress = true,
    this.editing,
    this.place,
  });

  /// Where to open. Null when the customer declined location: the map falls
  /// back to a city-level centre and they search or drag from there.
  final double? latitude;
  final double? longitude;

  /// Onboarding: saving goes on to the storefront. Otherwise the screen pops
  /// with the saved address, for whoever asked for one.
  final bool isFirstAddress;

  /// Set when correcting a saved address, so the pin opens where it already is
  /// and saving issues a PATCH rather than a POST.
  final Address? editing;

  /// The searched place the map opens on, so its name shows while the pin's
  /// own address is still being looked up.
  final PlaceSuggestion? place;
}

/// Argument bundle for [AppRoutes.addressBook].
@immutable
class AddressBookArgs {
  const AddressBookArgs({this.managing = false});

  /// From the profile: a list to edit, rather than a choice of where to
  /// deliver. No "use current location", and a tap edits.
  final bool managing;
}

/// Argument bundle for [AppRoutes.search]. Optional — the route works without
/// it, which is what the plain search field pushes.
@immutable
class SearchArgs {
  const SearchArgs({this.startWithVoice = false});

  final bool startWithVoice;
}

/// Argument bundle for [AppRoutes.reviews].
@immutable
class ReviewsArgs {
  const ReviewsArgs({required this.restaurantId});

  final String restaurantId;
}

/// Argument bundle for [AppRoutes.rateOrder].
@immutable
class RateOrderArgs {
  const RateOrderArgs({required this.order, this.initialRating});

  /// The stars already tapped on a prompt card, so the screen opens with them.
  final int? initialRating;

  /// Carried rather than re-fetched: the screen needs the lines to put stars
  /// against, and the customer arrives here from a screen that already has it.
  final Order order;
}

/// Argument bundle for [AppRoutes.restaurant].
@immutable
class RestaurantArgs {
  const RestaurantArgs({
    required this.restaurantId,
    this.preview,
    this.heroTag,
  });

  /// Opened from a restaurant card, carrying what the card already shows.
  RestaurantArgs.fromCard(Restaurant restaurant, {required Object this.heroTag})
      : restaurantId = restaurant.id,
        preview = restaurant;

  final String restaurantId;

  /// The list's copy of the restaurant, so the page can show its photo and
  /// name at once while the full details and menu load.
  final Restaurant? preview;

  /// The card photo's tag, so it grows into the banner.
  final Object? heroTag;
}

/// Argument bundle for [AppRoutes.cart].
@immutable
class CartArgs {
  const CartArgs({required this.restaurantId, this.fromMenu = false});

  /// Carts are per-restaurant server-side, so the screen is always opened
  /// against one shop rather than a global basket.
  final String restaurantId;

  /// Opened from that restaurant's own menu, so "Add more items" goes back
  /// to it rather than opening a second copy.
  final bool fromMenu;
}

/// Argument bundle for [AppRoutes.orderStatus].
@immutable
class OrderArgs {
  const OrderArgs({required this.orderId});

  final int orderId;
}

/// Argument bundle for [AppRoutes.orderPlaced]: the order checkout just
/// returned, so the celebration can name the restaurant and the wait.
@immutable
class OrderPlacedArgs {
  const OrderPlacedArgs({required this.order});

  final Order order;
}

/// Argument bundle for [AppRoutes.permissions].
@immutable
class PermissionsArgs {
  const PermissionsArgs({required this.steps, required this.next});

  /// The pages to show, in order. Never empty: with nothing to ask the route
  /// is not pushed at all.
  final List<AppPermission> steps;

  /// Where to go after the last page.
  final String next;
}

/// Argument bundle for [AppRoutes.otpVerification].
@immutable
class OtpArgs {
  const OtpArgs({required this.identifier});

  /// The email or mobile number the code was sent to. The same value has to be
  /// sent back on verify, so it is carried rather than re-parsed.
  final LoginIdentifier identifier;
}

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        // Fade out of the black splash rather than sliding — a horizontal
        // push from a full-bleed black screen reads as a glitch.
        return _fadeRoute(const SplashScreen(), settings);

      case AppRoutes.language:
        final Object? args = settings.arguments;
        final bool isInitialSetup = args is bool ? args : true;
        return _fadeRoute(
          LanguageScreen(isInitialSetup: isInitialSetup),
          settings,
        );

      case AppRoutes.permissions:
        final Object? args = settings.arguments;
        if (args is! PermissionsArgs || args.steps.isEmpty) {
          return _misroute(settings);
        }
        return _fadeRoute(PermissionsScreen(args: args), settings);

      case AppRoutes.login:
        return _fadeRoute(const LoginScreen(), settings);

      case AppRoutes.otpVerification:
        final Object? args = settings.arguments;
        if (args is! OtpArgs) return _misroute(settings);
        return _slideRoute(OtpVerificationScreen(args: args), settings);

      case AppRoutes.dashboard:
        return _fadeRoute(const AppShell(), settings);

      case AppRoutes.profile:
        return _slideRoute(const ProfileScreen(), settings);

      case AppRoutes.devices:
        return _slideRoute(const DevicesScreen(), settings);

      case AppRoutes.coupons:
        return _slideRoute(const CouponsScreen(), settings);

      case AppRoutes.favourites:
        return _slideRoute(const FavouritesScreen(), settings);

      case AppRoutes.help:
        return _slideRoute(const HelpScreen(), settings);

      case AppRoutes.support:
        final Object? args = settings.arguments;
        return _slideRoute(
          SupportScreen(
            args: args is SupportArgs ? args : const SupportArgs(),
          ),
          settings,
        );

      case AppRoutes.orders:
        return _slideRoute(const OrdersPage(), settings);

      case AppRoutes.wallet:
        return _slideRoute(const WalletScreen(), settings);

      case AppRoutes.search:
        final Object? args = settings.arguments;
        return _slideRoute(
          SearchTab(startWithVoice: args is SearchArgs && args.startWithVoice),
          settings,
        );

      case AppRoutes.locationPermission:
        return _slideRoute(const LocationPermissionScreen(), settings);

      case AppRoutes.addressMap:
        final Object? args = settings.arguments;
        return _slideRoute(
          AddressMapScreen(
            args: args is AddressMapArgs ? args : const AddressMapArgs(),
          ),
          settings,
        );


      case AppRoutes.addressBook:
        final Object? args = settings.arguments;
        final AddressBookArgs book =
            args is AddressBookArgs ? args : const AddressBookArgs();
        // Choosing where to deliver rises over the storefront and closes back
        // down onto it; managing the list from the profile is a normal page.
        return book.managing
            ? _slideRoute(AddressBookScreen(args: book), settings)
            : _riseRoute(AddressBookScreen(args: book), settings);

      case AppRoutes.restaurant:
        final Object? args = settings.arguments;
        if (args is! RestaurantArgs) return _misroute(settings);
        return _slideRoute(RestaurantScreen(args: args), settings);

      case AppRoutes.cart:
        final Object? args = settings.arguments;
        if (args is! CartArgs) return _misroute(settings);
        return _slideRoute(CartScreen(args: args), settings);

      case AppRoutes.orderStatus:
        final Object? args = settings.arguments;
        if (args is! OrderArgs) return _misroute(settings);
        return _slideRoute(OrderStatusScreen(args: args), settings);

      case AppRoutes.orderPlaced:
        final Object? args = settings.arguments;
        if (args is! OrderPlacedArgs) return _misroute(settings);
        // Faded in, not slid: it is a moment, not a place.
        return _fadeRoute(OrderPlacedScreen(args: args), settings);

      case AppRoutes.liveTracking:
        final Object? args = settings.arguments;
        if (args is! OrderArgs) return _misroute(settings);
        return _slideRoute(
          LiveTrackingScreen(orderId: args.orderId),
          settings,
        );

      case AppRoutes.reviews:
        final Object? args = settings.arguments;
        if (args is! ReviewsArgs) return _misroute(settings);
        return _slideRoute(ReviewsScreen(args: args), settings);

      case AppRoutes.rateOrder:
        final Object? args = settings.arguments;
        if (args is! RateOrderArgs) return _misroute(settings);
        return _slideRoute(RateOrderScreen(args: args), settings);

      default:
        return _fadeRoute(const SplashScreen(), settings);
    }
  }

  /// A route that needs typed arguments was pushed without them. Rather than
  /// crashing on a bad cast, fall back to the start of the auth flow.
  static Route<dynamic> _misroute(RouteSettings settings) =>
      _fadeRoute(const LoginScreen(), settings);

  static PageRoute<T> _fadeRoute<T>(Widget page, RouteSettings settings) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: const Duration(milliseconds: 420),
      reverseTransitionDuration: const Duration(milliseconds: 260),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return FadeTransition(
          opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
          child: child,
        );
      },
    );
  }

  /// Standard forward navigation inside a flow. Uses the platform's own
  /// transition, so it slides on Android and swipes back on iOS, and it
  /// mirrors automatically in the right-to-left languages.
  static PageRoute<T> _slideRoute<T>(Widget page, RouteSettings settings) =>
      MaterialPageRoute<T>(settings: settings, builder: (_) => page);

  /// Slides up from the bottom and closes downward, for a screen that is a
  /// choice laid over the one beneath it.
  static PageRoute<T> _riseRoute<T>(Widget page, RouteSettings settings) =>
      PageRouteBuilder<T>(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 320),
        reverseTransitionDuration: const Duration(milliseconds: 260),
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondary,
          Widget child,
        ) =>
            SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
              reverseCurve: Curves.easeInCubic,
            ),
          ),
          child: child,
        ),
      );
}
