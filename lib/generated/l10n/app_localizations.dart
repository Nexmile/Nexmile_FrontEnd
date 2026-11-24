import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_brx.dart';
import 'app_localizations_doi.dart';
import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_kok.dart';
import 'app_localizations_ks.dart';
import 'app_localizations_mai.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mni.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_sa.dart';
import 'app_localizations_sat.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('as'),
    Locale('bn'),
    Locale('brx'),
    Locale('doi'),
    Locale('en'),
    Locale('gu'),
    Locale('hi'),
    Locale('kn'),
    Locale('kok'),
    Locale('ks'),
    Locale('mai'),
    Locale('ml'),
    Locale('mni'),
    Locale('mr'),
    Locale('ne'),
    Locale('or'),
    Locale('pa'),
    Locale('sa'),
    Locale('sat'),
    Locale('sd'),
    Locale('ta'),
    Locale('te'),
    Locale('ur'),
  ];

  /// The application name. Kept as-is (Latin script) in every locale.
  ///
  /// In en, this message translates to:
  /// **'Nexmile'**
  String get appName;

  /// Validation error shown under an empty required field.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequired;

  /// Brand tagline shown under the logo on the splash screen.
  ///
  /// In en, this message translates to:
  /// **'Fast Delivery. Fresh Smiles.'**
  String get tagline;

  /// Headline of the language selection screen.
  ///
  /// In en, this message translates to:
  /// **'Choose your language'**
  String get chooseLanguageTitle;

  /// Supporting copy under the language screen headline.
  ///
  /// In en, this message translates to:
  /// **'Pick the language you are most comfortable with. You can change it anytime from Settings.'**
  String get chooseLanguageSubtitle;

  /// Placeholder text inside the language search field.
  ///
  /// In en, this message translates to:
  /// **'Search language'**
  String get searchLanguageHint;

  /// Empty state shown when the search query matches no language.
  ///
  /// In en, this message translates to:
  /// **'No language found'**
  String get noLanguageFound;

  /// Count of languages offered by the app.
  ///
  /// In en, this message translates to:
  /// **'{count} languages available'**
  String languagesAvailable(int count);

  /// Generic confirm action.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// Accessibility label on the currently selected language tile.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selectedLabel;

  /// Badge shown on English, the default language.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultLabel;

  /// Greeting headline on the dashboard.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Nexmile'**
  String get homeTitle;

  /// Supporting copy on the dashboard.
  ///
  /// In en, this message translates to:
  /// **'Fresh groceries, hot food and daily essentials delivered from shops near you.'**
  String get homeSubtitle;

  /// Action that reopens the language selection screen.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLanguage;

  /// Snackbar confirmation shown after the language changes.
  ///
  /// In en, this message translates to:
  /// **'Language updated'**
  String get languageUpdated;

  /// Label preceding the name of the currently active language.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get appLanguageLabel;

  /// Personalised greeting on the dashboard.
  ///
  /// In en, this message translates to:
  /// **'Hello, {name}'**
  String greetingNamed(String name);

  /// Headline of the sign-in screen. Serves new and returning customers alike: the API creates the account on first successful verification.
  ///
  /// In en, this message translates to:
  /// **'Sign in to Nexmile'**
  String get loginTitle;

  /// Supporting copy on the sign-in screen.
  ///
  /// In en, this message translates to:
  /// **'Enter your email or mobile number and we will send you a verification code.'**
  String get loginSubtitle;

  /// Label of the single sign-in field, which accepts either.
  ///
  /// In en, this message translates to:
  /// **'Email or mobile number'**
  String get emailOrPhoneLabel;

  /// Placeholder showing both accepted formats. Keep the example values as-is; translate only the word 'or'.
  ///
  /// In en, this message translates to:
  /// **'name@example.com or 9876543210'**
  String get emailOrPhoneHint;

  /// Validation error when the sign-in field is neither a valid email nor a valid Indian mobile number.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address or 10-digit mobile number'**
  String get invalidEmailOrPhone;

  /// Big line on the login screen, under the illustration.
  ///
  /// In en, this message translates to:
  /// **'Hot food from shops near you, delivered fast'**
  String get loginHeadline;

  /// Small heading over the login field. The same field serves new and returning customers.
  ///
  /// In en, this message translates to:
  /// **'Log in or sign up'**
  String get loginOrSignUp;

  /// Hint inside the login field.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get loginEmailHint;

  /// Error under the login field when the text is not an email address.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get invalidEmail;

  /// Primary button on the sign-in screen.
  ///
  /// In en, this message translates to:
  /// **'Send code'**
  String get sendCode;

  /// Implicit-consent note under the sign-in button. There is no registration form, so this is the only place terms can be surfaced.
  ///
  /// In en, this message translates to:
  /// **'By continuing you agree to our Terms of Service and Privacy Policy.'**
  String get agreeToTermsOnContinue;

  /// Headline of the code verification screen.
  ///
  /// In en, this message translates to:
  /// **'Verify it is you'**
  String get otpTitle;

  /// Supporting copy naming the email or mobile number the code went to.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code we sent to {target}'**
  String otpSubtitle(String target);

  /// Primary button on the code verification screen.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verifyCode;

  /// Action that requests a fresh code.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resendCode;

  /// Cooldown label. The wait comes from the server's resend_after value.
  ///
  /// In en, this message translates to:
  /// **'Resend code in {seconds}s'**
  String resendCodeIn(int seconds);

  /// Snackbar confirming a fresh code.
  ///
  /// In en, this message translates to:
  /// **'A new code has been sent'**
  String get codeResent;

  /// Error for a wrong or expired code. Five wrong attempts burn the code, so the copy points at requesting another.
  ///
  /// In en, this message translates to:
  /// **'That code is not correct or has expired. Request a new one.'**
  String get incorrectCode;

  /// Error shown when Verify is pressed with an incomplete code.
  ///
  /// In en, this message translates to:
  /// **'Enter all 6 digits'**
  String get enterFullCode;

  /// Shown on HTTP 403 from the API.
  ///
  /// In en, this message translates to:
  /// **'This account has been suspended. Please contact support.'**
  String get accountSuspended;

  /// Shown on HTTP 429. Codes are limited to 5 per hour per identifier, 60 seconds apart.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Please wait a while and try again.'**
  String get tooManyAttempts;

  /// Shown when the refresh token is rejected and the session cannot be restored.
  ///
  /// In en, this message translates to:
  /// **'Your session has expired. Please sign in again.'**
  String get sessionExpired;

  /// Shown when the request never reached the server.
  ///
  /// In en, this message translates to:
  /// **'No internet connection. Check your connection and try again.'**
  String get networkError;

  /// Label on the card showing the API's debug_code. Only present outside production, while there is no SMS gateway.
  ///
  /// In en, this message translates to:
  /// **'Development code'**
  String get developmentCode;

  /// Action that ends the session on this device.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// Snackbar after signing out.
  ///
  /// In en, this message translates to:
  /// **'You have been signed out'**
  String get signedOut;

  /// Generic fallback error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get somethingWentWrong;

  /// Title of the profile screen, and the label of the dashboard row that opens it.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// Dashboard action that opens the profile screen.
  ///
  /// In en, this message translates to:
  /// **'View profile'**
  String get viewProfile;

  /// Profile field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// Profile field label.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// Profile field label.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get mobileLabel;

  /// Profile field label.
  ///
  /// In en, this message translates to:
  /// **'Account status'**
  String get accountStatusLabel;

  /// Account status. Customers are active immediately after verifying a code.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get statusActive;

  /// Account status. Not expected for customers — riders await approval, customers do not.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get statusPending;

  /// Account status.
  ///
  /// In en, this message translates to:
  /// **'Suspended'**
  String get statusSuspended;

  /// Badge next to a mobile number the customer has verified by code.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get verifiedLabel;

  /// Placeholder for a profile field the customer has not filled in. Signing in with a phone leaves the email empty, and vice versa.
  ///
  /// In en, this message translates to:
  /// **'Not added'**
  String get notProvided;

  /// Action on the profile screen when the refresh failed.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get retry;

  /// Bottom navigation tab.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Bottom navigation tab.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get navSearch;

  /// Bottom navigation tab.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get navOrders;

  /// Dismisses a dialog without acting.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelLabel;

  /// Caption above the delivery address in the home header. Shown in capitals in English; use whatever reads as a small caption in other scripts.
  ///
  /// In en, this message translates to:
  /// **'DELIVER TO'**
  String get deliverTo;

  /// Placeholder in the storefront search field.
  ///
  /// In en, this message translates to:
  /// **'Search for dishes or restaurants'**
  String get searchDishesHint;

  /// Title of the search tab.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchTitle;

  /// Empty state when a search returns nothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing matched'**
  String get searchNoResultsTitle;

  /// Supporting copy for the empty search state.
  ///
  /// In en, this message translates to:
  /// **'Try a different dish, cuisine or restaurant name.'**
  String get searchNoResultsSubtitle;

  /// Heading above the food category shortcuts.
  ///
  /// In en, this message translates to:
  /// **'What are you craving?'**
  String get cravingTitle;

  /// Heading above the promotional carousel.
  ///
  /// In en, this message translates to:
  /// **'Offers for you'**
  String get offersTitle;

  /// Heading above the unfiltered restaurant list.
  ///
  /// In en, this message translates to:
  /// **'Restaurants near you'**
  String get restaurantsNearby;

  /// Heading above the restaurant list once a category filter is applied.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 restaurant} other{{count} restaurants}}'**
  String restaurantsCount(int count);

  /// Empty state when a category has no restaurants.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet'**
  String get noRestaurantsTitle;

  /// Supporting copy for the empty restaurant list.
  ///
  /// In en, this message translates to:
  /// **'Try another category, or clear the filter.'**
  String get noRestaurantsSubtitle;

  /// Delivery time estimate. Keep it short — it sits in a tight row.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String minutesAway(int minutes);

  /// Distance to the restaurant.
  ///
  /// In en, this message translates to:
  /// **'{distance} km'**
  String kilometresAway(String distance);

  /// Number of customer ratings a restaurant has.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 rating} other{{count} ratings}}'**
  String ratingsCount(int count);

  /// Typical spend for two people. Keep the ₹ symbol.
  ///
  /// In en, this message translates to:
  /// **'₹{amount} for two'**
  String priceForTwo(int amount);

  /// Badge on restaurants that do not charge for delivery.
  ///
  /// In en, this message translates to:
  /// **'Free delivery'**
  String get freeDelivery;

  /// Short discount badge on a restaurant card. Space is very tight.
  ///
  /// In en, this message translates to:
  /// **'{percent}% OFF'**
  String percentOff(int percent);

  /// Offer strip on the restaurant screen.
  ///
  /// In en, this message translates to:
  /// **'{percent}% off on your order'**
  String percentOffOnOrder(int percent);

  /// Toggle that hides non-vegetarian dishes.
  ///
  /// In en, this message translates to:
  /// **'Veg only'**
  String get vegOnly;

  /// Badge on a popular dish.
  ///
  /// In en, this message translates to:
  /// **'BESTSELLER'**
  String get bestseller;

  /// Button that puts one unit of a dish in the cart. Must stay very short.
  ///
  /// In en, this message translates to:
  /// **'ADD'**
  String get addLabel;

  /// Empty state when the veg filter hides everything.
  ///
  /// In en, this message translates to:
  /// **'No veg dishes here'**
  String get noVegDishesTitle;

  /// Supporting copy for the empty veg-filtered menu.
  ///
  /// In en, this message translates to:
  /// **'Turn off the veg filter to see the full menu.'**
  String get noVegDishesSubtitle;

  /// Dialog shown when adding a dish from a different restaurant.
  ///
  /// In en, this message translates to:
  /// **'Start a new cart?'**
  String get replaceCartTitle;

  /// Explains that an order cannot span two restaurants.
  ///
  /// In en, this message translates to:
  /// **'Your cart has items from {restaurant}. Adding this will clear it.'**
  String replaceCartMessage(String restaurant);

  /// Confirms discarding the previous restaurant's cart.
  ///
  /// In en, this message translates to:
  /// **'Clear and add'**
  String get replaceCartConfirm;

  /// Title of the cart screen.
  ///
  /// In en, this message translates to:
  /// **'Your cart'**
  String get cartTitle;

  /// Empty state on the cart screen.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get cartEmptyTitle;

  /// Supporting copy for the empty cart.
  ///
  /// In en, this message translates to:
  /// **'Add dishes from a restaurant to get started.'**
  String get cartEmptySubtitle;

  /// Action from an empty cart or empty order list.
  ///
  /// In en, this message translates to:
  /// **'Browse restaurants'**
  String get browseRestaurants;

  /// Item count on the floating cart bar and on an order card.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 item} other{{count} items}}'**
  String itemsInCart(int count);

  /// Action on the floating cart bar.
  ///
  /// In en, this message translates to:
  /// **'View cart'**
  String get viewCart;

  /// Bill line: the dishes before fees.
  ///
  /// In en, this message translates to:
  /// **'Item total'**
  String get itemTotal;

  /// Bill line.
  ///
  /// In en, this message translates to:
  /// **'Delivery fee'**
  String get deliveryFeeLabel;

  /// Bill line.
  ///
  /// In en, this message translates to:
  /// **'Taxes and charges'**
  String get taxesAndCharges;

  /// Replaces the amount on a waived delivery fee.
  ///
  /// In en, this message translates to:
  /// **'FREE'**
  String get freeLabel;

  /// Bill total.
  ///
  /// In en, this message translates to:
  /// **'To pay'**
  String get toPay;

  /// Checkout button carrying the total. The amount arrives already formatted, ₹ symbol included.
  ///
  /// In en, this message translates to:
  /// **'Place order · {amount}'**
  String placeOrderFor(String amount);

  /// Title of the orders tab.
  ///
  /// In en, this message translates to:
  /// **'Your orders'**
  String get ordersTitle;

  /// Empty state on the orders tab.
  ///
  /// In en, this message translates to:
  /// **'No orders yet'**
  String get ordersEmptyTitle;

  /// Supporting copy for the empty order list.
  ///
  /// In en, this message translates to:
  /// **'Your past orders will show up here.'**
  String get ordersEmptySubtitle;

  /// Refills the cart from a past order.
  ///
  /// In en, this message translates to:
  /// **'Reorder'**
  String get reorder;

  /// Title of the order tracking screen.
  ///
  /// In en, this message translates to:
  /// **'Order {id}'**
  String orderTitle(String id);

  /// Headline on the tracking screen before delivery.
  ///
  /// In en, this message translates to:
  /// **'Order placed'**
  String get orderPlacedTitle;

  /// Estimated arrival on the tracking screen.
  ///
  /// In en, this message translates to:
  /// **'Arriving in about {minutes} minutes.'**
  String orderPlacedSubtitle(int minutes);

  /// On the celebration screen right after checkout.
  ///
  /// In en, this message translates to:
  /// **'{restaurant} has your order.'**
  String orderPlacedWith(String restaurant);

  /// The kitchen's estimate, on the celebration screen right after checkout.
  ///
  /// In en, this message translates to:
  /// **'Ready in about {minutes} minutes.'**
  String orderPlacedPrep(int minutes);

  /// Button on the celebration screen that goes straight to tracking.
  ///
  /// In en, this message translates to:
  /// **'Track your order'**
  String get trackYourOrder;

  /// Row on the cart, and the title of the sheet where a code is typed.
  ///
  /// In en, this message translates to:
  /// **'Apply a coupon'**
  String get couponApplyTitle;

  /// Field label on the apply-coupon sheet.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get couponCodeLabel;

  /// Button on the apply-coupon sheet.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get couponApply;

  /// The cart row once a coupon is on the cart, and the confirmation after applying it.
  ///
  /// In en, this message translates to:
  /// **'{code} applied'**
  String couponAppliedTitle(String code);

  /// Under the applied coupon on the cart.
  ///
  /// In en, this message translates to:
  /// **'You save {amount}'**
  String couponSaving(String amount);

  /// Takes the coupon off the cart.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get couponRemove;

  /// The home search field's hint, cycling through food categories.
  ///
  /// In en, this message translates to:
  /// **'Search \"{term}\"'**
  String searchFor(String term);

  /// Badge in the home header while only veg restaurants are shown.
  ///
  /// In en, this message translates to:
  /// **'Pure veg'**
  String get vegModeBadge;

  /// Clock time the order should arrive, under the minutes.
  ///
  /// In en, this message translates to:
  /// **'Expected by {time}'**
  String trackingExpectedBy(String time);

  /// Home row of restaurants the customer has ordered from.
  ///
  /// In en, this message translates to:
  /// **'Order again'**
  String get orderAgainTitle;

  /// What was in a past order: the first dish and how many others.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{{first}} =1{{first} + 1 more} other{{first} + {count} more}}'**
  String orderAgainItems(String first, int count);

  /// Delivery time on a restaurant card.
  ///
  /// In en, this message translates to:
  /// **'{min}–{max} min'**
  String etaRange(int min, int max);

  /// Spoken label for the rider's star rating.
  ///
  /// In en, this message translates to:
  /// **'Rated {rating} out of 5'**
  String riderRatingLabel(String rating);

  /// Asked before a past order replaces a basket that has dishes in it.
  ///
  /// In en, this message translates to:
  /// **'Replace your basket?'**
  String get reorderReplaceTitle;

  /// Under the replace-basket question.
  ///
  /// In en, this message translates to:
  /// **'Your basket from {restaurant} will be replaced with the dishes from this order.'**
  String reorderReplaceBody(String restaurant);

  /// Confirms replacing the basket with a past order.
  ///
  /// In en, this message translates to:
  /// **'Replace'**
  String get reorderReplace;

  /// After reordering, the dishes that could not be added back.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{dishes} isn\'t available right now, so it was left out.} other{{dishes} aren\'t available right now, so they were left out.}}'**
  String reorderSkipped(String dishes, int count);

  /// When nothing from a past order can be added back.
  ///
  /// In en, this message translates to:
  /// **'None of these dishes are available right now.'**
  String get reorderNothingAvailable;

  /// The search button over a restaurant's photo; searches its menu.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchShort;

  /// Tooltip on the heart over a restaurant's photo.
  ///
  /// In en, this message translates to:
  /// **'Save to favourites'**
  String get favouriteSave;

  /// Tooltip on the info button beside a restaurant's name.
  ///
  /// In en, this message translates to:
  /// **'About this restaurant'**
  String get restaurantAbout;

  /// Under a restaurant's rating: how many people rated it, shortened (2.3K+).
  ///
  /// In en, this message translates to:
  /// **'By {count}'**
  String ratingByCount(String count);

  /// Opens the full list of a restaurant's offers.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 offer} other{{count} offers}}'**
  String offersCount(int count);

  /// Text shared when a customer shares a restaurant.
  ///
  /// In en, this message translates to:
  /// **'Order from {restaurant} on Nexmile'**
  String shareRestaurantText(String restaurant);

  /// Search field at the top of the order history.
  ///
  /// In en, this message translates to:
  /// **'Search by restaurant or dish…'**
  String get ordersSearchHint;

  /// When an order-history search finds nothing.
  ///
  /// In en, this message translates to:
  /// **'No orders from a restaurant or dish by that name.'**
  String get ordersNoMatch;

  /// When a past order was placed, on its history card.
  ///
  /// In en, this message translates to:
  /// **'Order placed on {date}'**
  String orderPlacedOn(String date);

  /// Link on an order history card to the restaurant's menu.
  ///
  /// In en, this message translates to:
  /// **'View menu'**
  String get viewMenu;

  /// Bottom bar: the customer's past and current orders.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get navHistory;

  /// Home section of shortcut tiles: offers, near and fast, top rated, pure veg.
  ///
  /// In en, this message translates to:
  /// **'Explore more'**
  String get exploreMore;

  /// Home shortcut tile: restaurants rated 4.0 and above.
  ///
  /// In en, this message translates to:
  /// **'Top rated'**
  String get exploreTopRated;

  /// Heading over the home restaurant list.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 restaurant delivering to you} other{{count} restaurants delivering to you}}'**
  String restaurantsDelivering(int count);

  /// Rating screen: the delivery section's question.
  ///
  /// In en, this message translates to:
  /// **'How was your delivery?'**
  String get rateHowWasDelivery;

  /// Rating screen: the food section's question.
  ///
  /// In en, this message translates to:
  /// **'How was the food?'**
  String get rateHowWasFood;

  /// One star.
  ///
  /// In en, this message translates to:
  /// **'Terrible'**
  String get rateWordTerrible;

  /// Two stars.
  ///
  /// In en, this message translates to:
  /// **'Bad'**
  String get rateWordBad;

  /// Three stars.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get rateWordOkay;

  /// Four stars.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get rateWordGood;

  /// Five stars.
  ///
  /// In en, this message translates to:
  /// **'Loved it!'**
  String get rateWordLoved;

  /// Over the quick answers for one to three stars.
  ///
  /// In en, this message translates to:
  /// **'What went wrong?'**
  String get rateWhatWentWrong;

  /// Over the quick answers for four or five stars.
  ///
  /// In en, this message translates to:
  /// **'What did you like?'**
  String get rateWhatYouLiked;

  /// Private note on the delivery; not shown publicly.
  ///
  /// In en, this message translates to:
  /// **'A note about the delivery (optional)'**
  String get rateRiderNoteHint;

  /// Over the public review text box.
  ///
  /// In en, this message translates to:
  /// **'Write a review'**
  String get rateReviewHeading;

  /// Submit button while the food has no rating yet.
  ///
  /// In en, this message translates to:
  /// **'Rate the food to submit'**
  String get rateFoodFirst;

  /// Shown with the stars once an order is rated.
  ///
  /// In en, this message translates to:
  /// **'You rated this order'**
  String get rateYouRated;

  /// Dismisses the rate-your-order card.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get ratePromptLater;

  /// Food praise.
  ///
  /// In en, this message translates to:
  /// **'Tasty'**
  String get tagTasty;

  /// Food praise.
  ///
  /// In en, this message translates to:
  /// **'Hot & fresh'**
  String get tagFreshHot;

  /// Food praise.
  ///
  /// In en, this message translates to:
  /// **'Good portion'**
  String get tagGoodPortion;

  /// Food praise.
  ///
  /// In en, this message translates to:
  /// **'Good packaging'**
  String get tagGoodPackaging;

  /// Food praise.
  ///
  /// In en, this message translates to:
  /// **'Value for money'**
  String get tagValueForMoney;

  /// Food praise.
  ///
  /// In en, this message translates to:
  /// **'Hygienic'**
  String get tagHygienic;

  /// Food issue.
  ///
  /// In en, this message translates to:
  /// **'Cold food'**
  String get tagColdFood;

  /// Food issue.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t taste good'**
  String get tagPoorTaste;

  /// Food issue.
  ///
  /// In en, this message translates to:
  /// **'Small portion'**
  String get tagSmallPortion;

  /// Food issue.
  ///
  /// In en, this message translates to:
  /// **'Wrong items'**
  String get tagWrongItems;

  /// Food issue.
  ///
  /// In en, this message translates to:
  /// **'Missing items'**
  String get tagMissingItems;

  /// Food issue.
  ///
  /// In en, this message translates to:
  /// **'Poor packaging'**
  String get tagPoorPackaging;

  /// Food issue.
  ///
  /// In en, this message translates to:
  /// **'Too oily or spicy'**
  String get tagTooOily;

  /// Delivery praise.
  ///
  /// In en, this message translates to:
  /// **'On time'**
  String get tagOnTime;

  /// Delivery praise.
  ///
  /// In en, this message translates to:
  /// **'Polite'**
  String get tagPolite;

  /// Delivery praise.
  ///
  /// In en, this message translates to:
  /// **'Followed instructions'**
  String get tagFollowedInstructions;

  /// Delivery praise.
  ///
  /// In en, this message translates to:
  /// **'Handled food with care'**
  String get tagCarefulHandling;

  /// Delivery praise.
  ///
  /// In en, this message translates to:
  /// **'Kept me updated'**
  String get tagGoodCommunication;

  /// Delivery issue.
  ///
  /// In en, this message translates to:
  /// **'Late delivery'**
  String get tagLate;

  /// Delivery issue.
  ///
  /// In en, this message translates to:
  /// **'Rude behaviour'**
  String get tagRude;

  /// Delivery issue.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t follow instructions'**
  String get tagIgnoredInstructions;

  /// Delivery issue.
  ///
  /// In en, this message translates to:
  /// **'Food spilled'**
  String get tagFoodSpilled;

  /// Delivery issue.
  ///
  /// In en, this message translates to:
  /// **'Asked for extra money'**
  String get tagAskedExtraMoney;

  /// Delivery issue.
  ///
  /// In en, this message translates to:
  /// **'Unprofessional'**
  String get tagUnprofessional;

  /// Under the delivery question, naming the rider.
  ///
  /// In en, this message translates to:
  /// **'Delivered by {name}'**
  String rateDeliveredBy(String name);

  /// Under the food question, naming the restaurant.
  ///
  /// In en, this message translates to:
  /// **'From {restaurant}'**
  String rateFoodFrom(String restaurant);

  /// Card asking to rate a delivered order.
  ///
  /// In en, this message translates to:
  /// **'How was your order from {restaurant}?'**
  String ratePromptTitle(String restaurant);

  /// Headline once the order arrives.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get orderDeliveredTitle;

  /// Supporting copy once delivered.
  ///
  /// In en, this message translates to:
  /// **'Enjoy your food.'**
  String get orderDeliveredSubtitle;

  /// Tracking step 1.
  ///
  /// In en, this message translates to:
  /// **'Order placed'**
  String get statusOrderPlaced;

  /// Tracking step 2.
  ///
  /// In en, this message translates to:
  /// **'Preparing your food'**
  String get statusPreparing;

  /// Tracking step 3.
  ///
  /// In en, this message translates to:
  /// **'On the way'**
  String get statusOnTheWay;

  /// Tracking step 4.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get statusDelivered;

  /// Leaves the tracking screen while the order is in progress.
  ///
  /// In en, this message translates to:
  /// **'Keep browsing'**
  String get keepBrowsing;

  /// Leaves the tracking screen once delivered.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get backToHome;

  /// Banner making clear the restaurant list is placeholder data.
  ///
  /// In en, this message translates to:
  /// **'Sample storefront — real shops arrive with the catalogue API.'**
  String get prototypeNotice;

  /// Notice above the checkout button.
  ///
  /// In en, this message translates to:
  /// **'This is a prototype. No payment is taken and no order is really placed.'**
  String get prototypeCheckoutNotice;

  /// Notice on the order tracking screen.
  ///
  /// In en, this message translates to:
  /// **'Tracking is simulated for the prototype.'**
  String get prototypeTrackingNotice;

  /// Headline of the screen that explains the location permission before the OS dialog appears.
  ///
  /// In en, this message translates to:
  /// **'Where should we deliver?'**
  String get locationTitle;

  /// Supporting copy on the location explainer.
  ///
  /// In en, this message translates to:
  /// **'Nexmile delivers from shops within 1 km, so we need your exact spot to show what can reach you.'**
  String get locationSubtitle;

  /// First reason for the location permission.
  ///
  /// In en, this message translates to:
  /// **'Shops within 1 km'**
  String get locationReasonRadiusTitle;

  /// Body of the first reason.
  ///
  /// In en, this message translates to:
  /// **'We only list kitchens close enough to arrive hot.'**
  String get locationReasonRadiusBody;

  /// Second reason for the location permission.
  ///
  /// In en, this message translates to:
  /// **'No missed doorsteps'**
  String get locationReasonAccuracyTitle;

  /// Body of the second reason.
  ///
  /// In en, this message translates to:
  /// **'An exact pin means your rider finds you without calling.'**
  String get locationReasonAccuracyBody;

  /// Third reason — the privacy reassurance.
  ///
  /// In en, this message translates to:
  /// **'Only while you use the app'**
  String get locationReasonPrivacyTitle;

  /// Body of the third reason.
  ///
  /// In en, this message translates to:
  /// **'We never track you in the background, and you can type the address instead.'**
  String get locationReasonPrivacyBody;

  /// Primary button that triggers the OS permission dialog.
  ///
  /// In en, this message translates to:
  /// **'Allow location'**
  String get allowLocation;

  /// Declines location and goes straight to the map.
  ///
  /// In en, this message translates to:
  /// **'I\'ll enter my address instead'**
  String get enterAddressManually;

  /// Shown after a recoverable refusal.
  ///
  /// In en, this message translates to:
  /// **'Location permission was declined. You can still drop the pin yourself.'**
  String get locationDenied;

  /// Shown after a permanent refusal, which cannot be re-prompted from inside the app.
  ///
  /// In en, this message translates to:
  /// **'Location is blocked for Nexmile. Turn it on in Settings, or place the pin by hand.'**
  String get locationDeniedForever;

  /// Shown when device location services are disabled.
  ///
  /// In en, this message translates to:
  /// **'Location is switched off on this device.'**
  String get locationServiceOff;

  /// Shown when the fix timed out or failed.
  ///
  /// In en, this message translates to:
  /// **'We could not get a location fix. Please place the pin yourself.'**
  String get locationUnavailable;

  /// Progress on the first-run permission pages, e.g. '1 of 2'.
  ///
  /// In en, this message translates to:
  /// **'{step} of {total}'**
  String permStepCount(int step, int total);

  /// Skips one first-run permission page without asking.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get permNotNow;

  /// Title of the first-run page that asks for location.
  ///
  /// In en, this message translates to:
  /// **'Find food near you'**
  String get permLocationTitle;

  /// Title of the first-run page that asks for notifications.
  ///
  /// In en, this message translates to:
  /// **'Never miss an order update'**
  String get permNotifyTitle;

  /// Why the app asks for notifications, under the title.
  ///
  /// In en, this message translates to:
  /// **'Turn on notifications to know when your order is accepted, picked up and at your door.'**
  String get permNotifyBody;

  /// First reason for notifications.
  ///
  /// In en, this message translates to:
  /// **'Live order updates'**
  String get permNotifyLiveTitle;

  /// Supporting line for the first reason.
  ///
  /// In en, this message translates to:
  /// **'Accepted, cooking, picked up, delivered.'**
  String get permNotifyLiveBody;

  /// Second reason for notifications.
  ///
  /// In en, this message translates to:
  /// **'Rider at your door'**
  String get permNotifyRiderTitle;

  /// Supporting line for the second reason.
  ///
  /// In en, this message translates to:
  /// **'Know when to step out, without watching the app.'**
  String get permNotifyRiderBody;

  /// Third reason: the customer can switch notifications off.
  ///
  /// In en, this message translates to:
  /// **'You stay in control'**
  String get permNotifyControlTitle;

  /// Supporting line for the third reason.
  ///
  /// In en, this message translates to:
  /// **'Turn notifications off any time in your phone\'s Settings.'**
  String get permNotifyControlBody;

  /// Button that shows the system notification prompt.
  ///
  /// In en, this message translates to:
  /// **'Turn on notifications'**
  String get permNotifyAllow;

  /// Opens the OS settings page so the customer can grant location.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get openSettings;

  /// Title of the map screen.
  ///
  /// In en, this message translates to:
  /// **'Set your delivery pin'**
  String get pinLocationTitle;

  /// Explains the radius drawn on the map.
  ///
  /// In en, this message translates to:
  /// **'The circle shows the 1 km Nexmile delivers within.'**
  String get deliveryRadiusHint;

  /// Re-centres the map on the current GPS fix.
  ///
  /// In en, this message translates to:
  /// **'Use my location'**
  String get useMyLocation;

  /// Caption above the resolved address on the map screen.
  ///
  /// In en, this message translates to:
  /// **'DELIVERING HERE'**
  String get deliveringHere;

  /// Placeholder shown while no address has been resolved for the pin yet.
  ///
  /// In en, this message translates to:
  /// **'Drag the map to adjust the pin'**
  String get dragToAdjust;

  /// Accepts the pin and moves on to the address form.
  ///
  /// In en, this message translates to:
  /// **'Confirm location'**
  String get confirmLocation;

  /// Title of the address form.
  ///
  /// In en, this message translates to:
  /// **'Address details'**
  String get addressDetailsTitle;

  /// Supporting copy on the address form.
  ///
  /// In en, this message translates to:
  /// **'Add the flat and landmark so your rider reaches the right door.'**
  String get addressDetailsSubtitle;

  /// Label on the read-only coordinates in the form.
  ///
  /// In en, this message translates to:
  /// **'Pinned location'**
  String get pinnedLocation;

  /// Returns to the map to move the pin.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get changePin;

  /// Label above the home/work/other picker.
  ///
  /// In en, this message translates to:
  /// **'Save this address as'**
  String get saveAddressAs;

  /// Address label.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get labelHome;

  /// Address label.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get labelWork;

  /// Address label.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get labelOther;

  /// Required address field.
  ///
  /// In en, this message translates to:
  /// **'Flat, house or building'**
  String get addressLine1Label;

  /// Example for the first address line.
  ///
  /// In en, this message translates to:
  /// **'12A, Green Residency'**
  String get addressLine1Hint;

  /// Optional address field.
  ///
  /// In en, this message translates to:
  /// **'Street or area'**
  String get addressLine2Label;

  /// Example for the second address line.
  ///
  /// In en, this message translates to:
  /// **'2nd Avenue, Anna Nagar'**
  String get addressLine2Hint;

  /// Optional address field — often what actually helps a rider in India.
  ///
  /// In en, this message translates to:
  /// **'Landmark'**
  String get landmarkLabel;

  /// Example landmark.
  ///
  /// In en, this message translates to:
  /// **'Opposite the bus stop'**
  String get landmarkHint;

  /// Required address field.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get cityLabel;

  /// Required address field.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get stateLabel;

  /// Required 6-digit Indian postal code.
  ///
  /// In en, this message translates to:
  /// **'PIN code'**
  String get pincodeLabel;

  /// Validation error for a malformed PIN code.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid 6-digit PIN code'**
  String get invalidPincode;

  /// Optional — who the rider should ask for.
  ///
  /// In en, this message translates to:
  /// **'Contact name'**
  String get contactNameLabel;

  /// Optional — an alternate number for this address.
  ///
  /// In en, this message translates to:
  /// **'Contact number'**
  String get contactPhoneLabel;

  /// Validation error for the contact number.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid 10-digit mobile number'**
  String get invalidMobileNumber;

  /// Toggle that marks the address as the default.
  ///
  /// In en, this message translates to:
  /// **'Deliver here by default'**
  String get makeDefaultAddress;

  /// Primary button on the address form.
  ///
  /// In en, this message translates to:
  /// **'Save address'**
  String get saveAddress;

  /// Snackbar after a successful save.
  ///
  /// In en, this message translates to:
  /// **'Address saved'**
  String get addressSaved;

  /// Title of the address book, and its row on the profile.
  ///
  /// In en, this message translates to:
  /// **'Delivery addresses'**
  String get addressBookTitle;

  /// Value on the profile row that opens the address book.
  ///
  /// In en, this message translates to:
  /// **'Manage saved addresses'**
  String get manageAddresses;

  /// Empty state in the address book.
  ///
  /// In en, this message translates to:
  /// **'No addresses yet'**
  String get noAddressesTitle;

  /// Supporting copy for the empty address book.
  ///
  /// In en, this message translates to:
  /// **'Add one so we can show the shops that deliver to you.'**
  String get noAddressesSubtitle;

  /// Starts the location flow for a new address.
  ///
  /// In en, this message translates to:
  /// **'Add address'**
  String get addAddress;

  /// Makes a saved address the default.
  ///
  /// In en, this message translates to:
  /// **'Set as default'**
  String get setAsDefault;

  /// Opens a saved address for correction.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editLabel;

  /// Snackbar after a successful PATCH of an address.
  ///
  /// In en, this message translates to:
  /// **'Address updated'**
  String get addressUpdated;

  /// Deletes a saved address.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteLabel;

  /// Confirmation dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete this address?'**
  String get deleteAddressTitle;

  /// Confirmation dialog body.
  ///
  /// In en, this message translates to:
  /// **'You can always add it again later.'**
  String get deleteAddressMessage;

  /// Heading over the Food Rescue carousel — surplus food, discounted.
  ///
  /// In en, this message translates to:
  /// **'Food Rescue'**
  String get rescueDealsTitle;

  /// Shown when a restaurant is inside its hours but has paused orders.
  ///
  /// In en, this message translates to:
  /// **'Not taking orders'**
  String get notTakingOrders;

  /// Shown when a restaurant is outside its opening hours.
  ///
  /// In en, this message translates to:
  /// **'Closed right now'**
  String get closedRightNow;

  /// Smallest order a restaurant accepts. The amount arrives already formatted with the ₹ symbol.
  ///
  /// In en, this message translates to:
  /// **'Min {amount}'**
  String minimumOrder(String amount);

  /// How many portions of a Food Rescue deal remain. A rescue deal is a race, so this is prominent.
  ///
  /// In en, this message translates to:
  /// **'{count} left'**
  String portionsLeft(int count);

  /// Badge on a dish the kitchen has run out of.
  ///
  /// In en, this message translates to:
  /// **'Sold out'**
  String get soldOut;

  /// Title when a restaurant has published no dishes.
  ///
  /// In en, this message translates to:
  /// **'No dishes yet'**
  String get menuEmptyTitle;

  /// Supporting copy for the empty menu.
  ///
  /// In en, this message translates to:
  /// **'This restaurant has not added its menu.'**
  String get menuEmptySubtitle;

  /// Section heading for dishes the restaurant filed under no category.
  ///
  /// In en, this message translates to:
  /// **'More dishes'**
  String get moreDishesTitle;

  /// Hint in the search field on a restaurant's menu. It searches only this restaurant's dishes.
  ///
  /// In en, this message translates to:
  /// **'Search for dishes'**
  String get menuSearchHint;

  /// Short label on the chip that opens the menu's filter and sort sheet.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filtersShort;

  /// Menu filter chip: vegetarian dishes with no egg. Must stay short.
  ///
  /// In en, this message translates to:
  /// **'Veg'**
  String get dietVeg;

  /// Menu filter chip: dishes that contain egg. Must stay short.
  ///
  /// In en, this message translates to:
  /// **'Egg'**
  String get dietEgg;

  /// Menu filter chip: non-vegetarian dishes. Must stay short.
  ///
  /// In en, this message translates to:
  /// **'Non-veg'**
  String get dietNonVeg;

  /// Menu filter chip for the restaurant's most ordered dishes. Normal case, unlike the BESTSELLER badge on a dish.
  ///
  /// In en, this message translates to:
  /// **'Bestseller'**
  String get menuBestsellerChip;

  /// Heading over the Veg, Egg and Non-veg choices in the menu filter sheet.
  ///
  /// In en, this message translates to:
  /// **'Food type'**
  String get menuFoodType;

  /// Heading over the Bestseller, Rated and Offers choices in the menu filter sheet.
  ///
  /// In en, this message translates to:
  /// **'Show only'**
  String get menuShowOnly;

  /// How many dishes are left after searching or filtering a menu.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 dish} other{{count} dishes}}'**
  String menuMatchCount(int count);

  /// Button that applies the menu filter sheet, with how many dishes it will show.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No dishes} =1{Show 1 dish} other{Show {count} dishes}}'**
  String menuShowDishes(int count);

  /// Shown under 'Nothing matched' when a menu search or filter leaves no dishes.
  ///
  /// In en, this message translates to:
  /// **'Try another dish name, or remove a filter.'**
  String get menuNoMatchSubtitle;

  /// Floating button on a restaurant page that lists the menu sections to jump to. Must stay very short.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menuBrowse;

  /// Tiny label under ADD on a dish with add-on choices. Space is very tight.
  ///
  /// In en, this message translates to:
  /// **'Customisable'**
  String get customisable;

  /// Badge on an add-on group that must be answered.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredLabel;

  /// Rule under an add-on group with no floor and no ceiling.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optionalLabel;

  /// Rule under an add-on group that takes exactly one choice.
  ///
  /// In en, this message translates to:
  /// **'Choose one'**
  String get chooseOne;

  /// Rule under an optional add-on group with a ceiling.
  ///
  /// In en, this message translates to:
  /// **'Choose up to {count}'**
  String chooseUpTo(int count);

  /// Rule under a required add-on group.
  ///
  /// In en, this message translates to:
  /// **'Choose at least {count}'**
  String chooseAtLeast(int count);

  /// Rule under an add-on group with both a floor and a ceiling.
  ///
  /// In en, this message translates to:
  /// **'Choose {min} to {max}'**
  String chooseBetween(int min, int max);

  /// Heading over the per-dish note field.
  ///
  /// In en, this message translates to:
  /// **'Special instructions'**
  String get specialInstructions;

  /// Placeholder in the per-dish note field.
  ///
  /// In en, this message translates to:
  /// **'Less spicy, no onion…'**
  String get specialInstructionsHint;

  /// Confirm button in the customisation sheet. The amount arrives already formatted with the ₹ symbol.
  ///
  /// In en, this message translates to:
  /// **'Add · {amount}'**
  String addForAmount(String amount);

  /// Fulfilment type: brought to the customer.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get deliveryLabel;

  /// Fulfilment type: collected at the counter.
  ///
  /// In en, this message translates to:
  /// **'Pickup'**
  String get pickupLabel;

  /// Bill line: the packaging charge.
  ///
  /// In en, this message translates to:
  /// **'Packaging'**
  String get packagingLabel;

  /// Bill line: money off.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discountLabel;

  /// Heading over the bill breakdown.
  ///
  /// In en, this message translates to:
  /// **'Bill details'**
  String get billDetailsTitle;

  /// Button that empties the basket.
  ///
  /// In en, this message translates to:
  /// **'Clear cart'**
  String get clearCart;

  /// Title of the confirm-before-emptying dialog.
  ///
  /// In en, this message translates to:
  /// **'Clear this cart?'**
  String get clearCartTitle;

  /// Body of the confirm-before-emptying dialog.
  ///
  /// In en, this message translates to:
  /// **'Everything in it will be removed.'**
  String get clearCartMessage;

  /// Warning naming the dishes that sold out while the cart sat there.
  ///
  /// In en, this message translates to:
  /// **'No longer available: {items}'**
  String unavailableItemsNotice(String items);

  /// Button that drops every sold-out line from the cart.
  ///
  /// In en, this message translates to:
  /// **'Remove them'**
  String get removeUnavailable;

  /// Warning when the cart is under the restaurant minimum. The amount arrives already formatted with the ₹ symbol.
  ///
  /// In en, this message translates to:
  /// **'Minimum order is {amount}'**
  String minimumNotMet(String amount);

  /// Title of the checkout sheet.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkoutTitle;

  /// Label over the chosen delivery address.
  ///
  /// In en, this message translates to:
  /// **'Delivery address'**
  String get deliveryAddressLabel;

  /// Shown in place of an address when none is chosen yet.
  ///
  /// In en, this message translates to:
  /// **'No address chosen'**
  String get noAddressSelected;

  /// Label over the payment method.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get paymentMethodLabel;

  /// The only payment method today: cash handed over on delivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on delivery'**
  String get payOnDelivery;

  /// Heading over the per-order note field.
  ///
  /// In en, this message translates to:
  /// **'Note for the restaurant'**
  String get noteToRestaurant;

  /// Placeholder in the per-order note field.
  ///
  /// In en, this message translates to:
  /// **'Ring the bell twice…'**
  String get noteToRestaurantHint;

  /// Heading over orders still in flight.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get activeOrdersTitle;

  /// Heading over finished orders.
  ///
  /// In en, this message translates to:
  /// **'Earlier'**
  String get pastOrdersTitle;

  /// Heading over what was ordered.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get orderItemsTitle;

  /// Heading over the order timeline.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get orderProgressTitle;

  /// Label over the delivery estimate.
  ///
  /// In en, this message translates to:
  /// **'Arriving in'**
  String get arrivingIn;

  /// Label over the code the customer reads out at the counter.
  ///
  /// In en, this message translates to:
  /// **'Pickup code'**
  String get pickupCodeLabel;

  /// Label over the merchant’s reason for cancelling.
  ///
  /// In en, this message translates to:
  /// **'Why it was cancelled'**
  String get cancellationReasonLabel;

  /// Label over the delivery partner’s name.
  ///
  /// In en, this message translates to:
  /// **'Delivery partner'**
  String get riderLabel;

  /// Tooltip on the button that dials the delivery partner.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get callRider;

  /// Title and button for the full-screen rider map.
  ///
  /// In en, this message translates to:
  /// **'Track rider'**
  String get trackRider;

  /// Shown on the tracking map before a rider has picked the order up.
  ///
  /// In en, this message translates to:
  /// **'Your rider\'s location will appear here once they pick up your order.'**
  String get riderLocationSoon;

  /// Shown over the tracking map when the rider's last position is old, usually a patch of poor signal.
  ///
  /// In en, this message translates to:
  /// **'Updating rider\'s location…'**
  String get riderLocationStale;

  /// Tooltip on the button that snaps the map back to the rider.
  ///
  /// In en, this message translates to:
  /// **'Recentre on rider'**
  String get recentreOnRider;

  /// Opens the printable tax invoice in a browser.
  ///
  /// In en, this message translates to:
  /// **'Tax invoice'**
  String get viewInvoice;

  /// Button that cancels an order the restaurant has not accepted yet.
  ///
  /// In en, this message translates to:
  /// **'Cancel order'**
  String get cancelOrder;

  /// Title of the confirm-before-cancelling dialog.
  ///
  /// In en, this message translates to:
  /// **'Cancel this order?'**
  String get cancelOrderTitle;

  /// Body of the confirm-before-cancelling dialog.
  ///
  /// In en, this message translates to:
  /// **'You can only cancel before the restaurant accepts it.'**
  String get cancelOrderMessage;

  /// Field where the customer says why they are cancelling.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get cancelReasonLabel;

  /// Sent as the reason when the customer types nothing. The merchant reads this.
  ///
  /// In en, this message translates to:
  /// **'Cancelled by the customer'**
  String get cancelReasonFallback;

  /// Confirmation after a successful cancellation.
  ///
  /// In en, this message translates to:
  /// **'Order cancelled'**
  String get orderCancelled;

  /// Small caps label above the home header when the customer has no saved address and the list is anchored on the phone GPS instead.
  ///
  /// In en, this message translates to:
  /// **'Current location'**
  String get currentLocationLabel;

  /// A setting that is switched on.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get onLabel;

  /// A setting that is switched off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get offLabel;

  /// Profile tile and screen title for the customer's coupons.
  ///
  /// In en, this message translates to:
  /// **'Your coupons'**
  String get profileCoupons;

  /// How many coupons the customer can use, under the tile title.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{None yet} =1{1 to use} other{{count} to use}}'**
  String profileCouponsCount(int count);

  /// Profile section heading.
  ///
  /// In en, this message translates to:
  /// **'Your preferences'**
  String get profilePreferences;

  /// Setting that shows only veg restaurants and dishes.
  ///
  /// In en, this message translates to:
  /// **'Veg mode'**
  String get profileVegMode;

  /// Explains veg mode under its title.
  ///
  /// In en, this message translates to:
  /// **'Only veg restaurants and dishes'**
  String get profileVegModeHint;

  /// Setting for light or dark colours.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get profileAppearance;

  /// Appearance follows the phone's light or dark setting.
  ///
  /// In en, this message translates to:
  /// **'Same as phone'**
  String get appearanceSystem;

  /// Light appearance.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get appearanceLight;

  /// Dark appearance.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get appearanceDark;

  /// Profile row for notification settings.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get profileNotifications;

  /// Profile section heading.
  ///
  /// In en, this message translates to:
  /// **'Food delivery'**
  String get profileFoodDelivery;

  /// Profile row and screen title for saved restaurants.
  ///
  /// In en, this message translates to:
  /// **'Your favourites'**
  String get profileFavourites;

  /// Profile row and screen title for help.
  ///
  /// In en, this message translates to:
  /// **'Help & support'**
  String get profileHelp;

  /// Profile section heading for everything else.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get profileMore;

  /// Profile row and sheet title for app feedback.
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get profileFeedback;

  /// Profile row and sheet title for safety help.
  ///
  /// In en, this message translates to:
  /// **'Report a safety emergency'**
  String get profileSafety;

  /// Profile row and sheet title for app information.
  ///
  /// In en, this message translates to:
  /// **'About Nexmile'**
  String get profileAbout;

  /// Empty state on the coupons screen.
  ///
  /// In en, this message translates to:
  /// **'No coupons right now'**
  String get couponsEmptyTitle;

  /// Supporting line for the empty coupons screen.
  ///
  /// In en, this message translates to:
  /// **'When there\'s a coupon you can use, it will show up here.'**
  String get couponsEmptyBody;

  /// Headline of a flat-discount coupon. The amount arrives formatted with the rupee sign.
  ///
  /// In en, this message translates to:
  /// **'{amount} OFF'**
  String couponFlatOff(String amount);

  /// Headline of a percentage coupon.
  ///
  /// In en, this message translates to:
  /// **'{percent}% OFF'**
  String couponPercentOff(String percent);

  /// The most a percentage coupon takes off.
  ///
  /// In en, this message translates to:
  /// **'Up to {amount}'**
  String couponUpTo(String amount);

  /// Minimum order for a coupon.
  ///
  /// In en, this message translates to:
  /// **'On orders above {amount}'**
  String couponMinOrder(String amount);

  /// Coupon expiry.
  ///
  /// In en, this message translates to:
  /// **'Valid till {date}'**
  String couponValidTill(String date);

  /// The coupon works everywhere.
  ///
  /// In en, this message translates to:
  /// **'At all restaurants'**
  String get couponAllRestaurants;

  /// The coupon works at one restaurant.
  ///
  /// In en, this message translates to:
  /// **'At {restaurant}'**
  String couponAtRestaurant(String restaurant);

  /// Confirmation after copying a coupon code.
  ///
  /// In en, this message translates to:
  /// **'Code {code} copied'**
  String couponCopied(String code);

  /// Empty state on the favourites screen.
  ///
  /// In en, this message translates to:
  /// **'No favourites yet'**
  String get favouritesEmptyTitle;

  /// Supporting line for the empty favourites screen.
  ///
  /// In en, this message translates to:
  /// **'Tap the heart on a restaurant to save it here.'**
  String get favouritesEmptyBody;

  /// Help screen button that phones support.
  ///
  /// In en, this message translates to:
  /// **'Call us'**
  String get helpCall;

  /// Help screen button that opens a WhatsApp chat with support.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get helpWhatsApp;

  /// Help screen button that writes to support.
  ///
  /// In en, this message translates to:
  /// **'Email us'**
  String get helpEmail;

  /// When support answers. The hours arrive worded by the server.
  ///
  /// In en, this message translates to:
  /// **'We\'re available {hours}'**
  String helpHours(String hours);

  /// Heading over the help screen's questions and answers.
  ///
  /// In en, this message translates to:
  /// **'Common questions'**
  String get helpFaqs;

  /// Shown when the help information could not be loaded.
  ///
  /// In en, this message translates to:
  /// **'Help details aren\'t available right now. Please try again later.'**
  String get helpNothing;

  /// Question above the star rating in the feedback sheet.
  ///
  /// In en, this message translates to:
  /// **'How is Nexmile working for you?'**
  String get feedbackPrompt;

  /// Hint in the feedback text box.
  ///
  /// In en, this message translates to:
  /// **'Tell us what you liked, or what we can do better'**
  String get feedbackHint;

  /// Shown when feedback is sent without stars.
  ///
  /// In en, this message translates to:
  /// **'Choose a rating first'**
  String get feedbackNeedRating;

  /// Confirmation after sending feedback.
  ///
  /// In en, this message translates to:
  /// **'Thanks! Your feedback has reached our team.'**
  String get feedbackThanks;

  /// Top line of the safety sheet.
  ///
  /// In en, this message translates to:
  /// **'If you or someone else is in danger, call the emergency services first.'**
  String get safetyIntro;

  /// Button that phones India's emergency number.
  ///
  /// In en, this message translates to:
  /// **'Call 112'**
  String get safetyCallEmergency;

  /// What 112 reaches.
  ///
  /// In en, this message translates to:
  /// **'Police, fire and ambulance'**
  String get safetyCallEmergencyBody;

  /// Button that phones the Nexmile safety team.
  ///
  /// In en, this message translates to:
  /// **'Call Nexmile safety line'**
  String get safetyCallNexmile;

  /// When the safety line is answered.
  ///
  /// In en, this message translates to:
  /// **'Answered at all hours'**
  String get safetyCallNexmileBody;

  /// The installed app version.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String aboutVersion(String version);

  /// Link to the terms.
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get aboutTerms;

  /// Link to the privacy policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get aboutPrivacy;

  /// Opens the list of open-source licences used in the app.
  ///
  /// In en, this message translates to:
  /// **'Open-source licences'**
  String get aboutLicences;

  /// Notification type that cannot be switched off.
  ///
  /// In en, this message translates to:
  /// **'Order updates'**
  String get notifyOrderUpdates;

  /// Why order updates cannot be switched off.
  ///
  /// In en, this message translates to:
  /// **'Always on, so you know where your food is.'**
  String get notifyOrderUpdatesBody;

  /// Notification type the customer can switch off.
  ///
  /// In en, this message translates to:
  /// **'Offers and promotions'**
  String get notifyPromotions;

  /// What offers and promotions notifications contain.
  ///
  /// In en, this message translates to:
  /// **'Deals, coupons and new restaurants near you.'**
  String get notifyPromotionsBody;

  /// Shown when the phone blocks the app's notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications are turned off for Nexmile on this phone.'**
  String get notifyPhoneOff;

  /// Button that turns notifications on for the app.
  ///
  /// In en, this message translates to:
  /// **'Turn on'**
  String get notifyTurnOn;

  /// Shown when a call, email or web link cannot be opened.
  ///
  /// In en, this message translates to:
  /// **'That couldn\'t be opened on this phone.'**
  String get linkOpenFailed;

  /// Title of the sheet that edits name, email and mobile number.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfileTitle;

  /// Supporting copy explaining why the name matters.
  ///
  /// In en, this message translates to:
  /// **'Your name is what the restaurant and the delivery partner see.'**
  String get editProfileSubtitle;

  /// Confirm button on the edit-profile sheet.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// Confirmation after a successful profile update.
  ///
  /// In en, this message translates to:
  /// **'Profile updated'**
  String get profileUpdated;

  /// Button that deletes the account. Destructive.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// Title of the confirm-before-deleting dialog.
  ///
  /// In en, this message translates to:
  /// **'Delete your account?'**
  String get deleteAccountTitle;

  /// Body of the confirm-before-deleting dialog. The server keeps a soft-deleted record so past orders and invoices survive.
  ///
  /// In en, this message translates to:
  /// **'You will be signed out everywhere. Past orders and invoices are kept for tax records.'**
  String get deleteAccountMessage;

  /// Confirmation after the account is deleted.
  ///
  /// In en, this message translates to:
  /// **'Your account has been deleted'**
  String get accountDeleted;

  /// Title of the screen listing every signed-in device.
  ///
  /// In en, this message translates to:
  /// **'Signed-in devices'**
  String get devicesTitle;

  /// One-line description of the devices screen, also used as the profile row value.
  ///
  /// In en, this message translates to:
  /// **'Where you are signed in'**
  String get devicesSubtitle;

  /// Title when no other device holds a session.
  ///
  /// In en, this message translates to:
  /// **'No other devices'**
  String get devicesEmptyTitle;

  /// Supporting copy for the empty devices list.
  ///
  /// In en, this message translates to:
  /// **'You are signed in on this device only.'**
  String get devicesEmptySubtitle;

  /// Signs one listed device out.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOutDevice;

  /// Title of the confirm-before-revoking dialog.
  ///
  /// In en, this message translates to:
  /// **'Sign out this device?'**
  String get signOutDeviceTitle;

  /// Body of the confirm dialog. The API gives no way to tell which row is this phone, so the copy has to warn it might be.
  ///
  /// In en, this message translates to:
  /// **'If this is the device you are using, you will have to sign in again.'**
  String get signOutDeviceMessage;

  /// Confirmation after one device is signed out.
  ///
  /// In en, this message translates to:
  /// **'Device signed out'**
  String get deviceSignedOut;

  /// Ends every session on every device, this one included.
  ///
  /// In en, this message translates to:
  /// **'Sign out everywhere'**
  String get signOutEverywhere;

  /// Title of the confirm-before-signing-out-everywhere dialog.
  ///
  /// In en, this message translates to:
  /// **'Sign out everywhere?'**
  String get signOutEverywhereTitle;

  /// Body of that dialog.
  ///
  /// In en, this message translates to:
  /// **'Every device, including this one, will be signed out.'**
  String get signOutEverywhereMessage;

  /// Shown in place of a device name when the API returns none.
  ///
  /// In en, this message translates to:
  /// **'Unknown device'**
  String get unknownDevice;

  /// Shown when a device used its session in the last couple of minutes.
  ///
  /// In en, this message translates to:
  /// **'Active now'**
  String get activeNow;

  /// How long ago a device last used its session. Keep it short — it sits under a device name.
  ///
  /// In en, this message translates to:
  /// **'{count} min ago'**
  String minutesAgo(int count);

  /// How long ago a device last used its session.
  ///
  /// In en, this message translates to:
  /// **'{count} h ago'**
  String hoursAgo(int count);

  /// How long ago a device last used its session.
  ///
  /// In en, this message translates to:
  /// **'{count} d ago'**
  String daysAgo(int count);

  /// Title of the filter sheet.
  ///
  /// In en, this message translates to:
  /// **'Filters and sorting'**
  String get filtersAndSorting;

  /// Resets every filter in the sheet.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clearAll;

  /// Confirms the filter sheet and re-queries the list.
  ///
  /// In en, this message translates to:
  /// **'Show results'**
  String get showResults;

  /// Dismisses the filter sheet without applying anything.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closeLabel;

  /// Section heading over the sort options.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get sortByTitle;

  /// Default sort — the server decides the order.
  ///
  /// In en, this message translates to:
  /// **'Relevance'**
  String get sortRelevance;

  /// Sort by customer rating, highest first.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get sortRating;

  /// Sort by fastest delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery time'**
  String get sortDeliveryTime;

  /// Sort by price, cheapest first.
  ///
  /// In en, this message translates to:
  /// **'Cost: low to high'**
  String get sortCostLowHigh;

  /// Sort by price, dearest first.
  ///
  /// In en, this message translates to:
  /// **'Cost: high to low'**
  String get sortCostHighLow;

  /// Filter section heading.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get timeSection;

  /// Filter chip for close, quick restaurants. What qualifies is decided by the server.
  ///
  /// In en, this message translates to:
  /// **'Near & Fast'**
  String get nearAndFast;

  /// Filter chip hiding shut restaurants.
  ///
  /// In en, this message translates to:
  /// **'Open now'**
  String get openNow;

  /// Filter section heading over the rating thresholds.
  ///
  /// In en, this message translates to:
  /// **'Restaurant rating'**
  String get ratingSection;

  /// Rating threshold chip in the filter sheet.
  ///
  /// In en, this message translates to:
  /// **'Rated {rating}+'**
  String ratedAbove(String rating);

  /// Filter section heading.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offersSection;

  /// Filter chip for restaurants running a promotion.
  ///
  /// In en, this message translates to:
  /// **'Has offers'**
  String get hasOffersLabel;

  /// Filter section heading over the price brackets.
  ///
  /// In en, this message translates to:
  /// **'Dish price'**
  String get dishPriceSection;

  /// Price bracket. The amount arrives already formatted with the rupee symbol.
  ///
  /// In en, this message translates to:
  /// **'Under {amount}'**
  String costUnder(String amount);

  /// Price bracket between two already-formatted amounts.
  ///
  /// In en, this message translates to:
  /// **'{min} – {max}'**
  String costBetween(String min, String max);

  /// Open-ended top price bracket.
  ///
  /// In en, this message translates to:
  /// **'{amount}+'**
  String costOver(String amount);

  /// Filter section heading over the remaining toggles.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get moreSection;

  /// Filter for restaurants that add no packaging fee.
  ///
  /// In en, this message translates to:
  /// **'No packaging charges'**
  String get noPackagingCharges;

  /// Heading over the full nearby list, below the curated home sections.
  ///
  /// In en, this message translates to:
  /// **'All restaurants'**
  String get allRestaurantsTitle;

  /// Heading over the cuisine grid on the search screen, before anything is typed.
  ///
  /// In en, this message translates to:
  /// **'What\'s on your mind?'**
  String get whatsOnYourMind;

  /// Title of the voice-search sheet while the microphone is open.
  ///
  /// In en, this message translates to:
  /// **'Listening…'**
  String get listeningNow;

  /// Placeholder under the microphone before any words are recognised.
  ///
  /// In en, this message translates to:
  /// **'Say a dish or a restaurant'**
  String get speakNowHint;

  /// Shown when the device has no speech recogniser at all.
  ///
  /// In en, this message translates to:
  /// **'Voice search is unavailable'**
  String get voiceUnavailable;

  /// Supporting copy for the unavailable and denied states — typing always works.
  ///
  /// In en, this message translates to:
  /// **'You can still type your search.'**
  String get voiceUnavailableBody;

  /// Shown when microphone permission was refused.
  ///
  /// In en, this message translates to:
  /// **'Microphone access is off'**
  String get microphoneDenied;

  /// Tooltip on the microphone button in the search field.
  ///
  /// In en, this message translates to:
  /// **'Search by voice'**
  String get voiceSearchLabel;

  /// Title of the ratings and reviews screen.
  ///
  /// In en, this message translates to:
  /// **'Ratings & reviews'**
  String get ratingsAndReviews;

  /// Filter chip that hides ratings with no written review.
  ///
  /// In en, this message translates to:
  /// **'With reviews'**
  String get reviewsWithTextOnly;

  /// Empty state when a restaurant has no ratings at all.
  ///
  /// In en, this message translates to:
  /// **'No ratings yet'**
  String get noReviewsTitle;

  /// Supporting copy for the empty reviews list.
  ///
  /// In en, this message translates to:
  /// **'Be the first to rate this place after your order.'**
  String get noReviewsSubtitle;

  /// Title of the screen where a customer rates a finished order.
  ///
  /// In en, this message translates to:
  /// **'Rate your order'**
  String get rateOrderTitle;

  /// Heading above the per-dish star rows.
  ///
  /// In en, this message translates to:
  /// **'Rate the dishes'**
  String get rateDishesTitle;

  /// Placeholder in the optional free-text comment field.
  ///
  /// In en, this message translates to:
  /// **'Anything you would like to add? (optional)'**
  String get reviewHint;

  /// Button that posts the rating.
  ///
  /// In en, this message translates to:
  /// **'Submit rating'**
  String get submitRating;

  /// Confirmation shown after a rating is accepted.
  ///
  /// In en, this message translates to:
  /// **'Thanks — your rating is in.'**
  String get reviewThanks;

  /// Call to action on a delivered order.
  ///
  /// In en, this message translates to:
  /// **'Rate this order'**
  String get rateThisOrder;

  /// Title of the wallet screen and the profile entry that opens it.
  ///
  /// In en, this message translates to:
  /// **'Nexmile Wallet'**
  String get walletTitle;

  /// Label above the balance on the wallet card.
  ///
  /// In en, this message translates to:
  /// **'Wallet balance'**
  String get walletBalance;

  /// Small line under the balance on the wallet card.
  ///
  /// In en, this message translates to:
  /// **'Use it to pay for any order.'**
  String get walletBalanceHint;

  /// Heading of the add-money section, and the button before an amount is entered.
  ///
  /// In en, this message translates to:
  /// **'Add money'**
  String get walletAddMoney;

  /// Hint in the amount field.
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get walletEnterAmount;

  /// Helper under the amount field. Amounts arrive formatted with ₹.
  ///
  /// In en, this message translates to:
  /// **'Between {min} and {max}'**
  String walletAmountRange(String min, String max);

  /// Add-money button once an amount is entered.
  ///
  /// In en, this message translates to:
  /// **'Add {amount}'**
  String walletAddAmount(String amount);

  /// Reassurance under the add-money button. Razorpay is a brand name.
  ///
  /// In en, this message translates to:
  /// **'Payments are secured by Razorpay'**
  String get walletSecuredBy;

  /// Heading of the transaction list.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get walletHistory;

  /// Empty state of the transaction list.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet. Money you add or spend will show here.'**
  String get walletNoHistory;

  /// A top-up in the transaction list.
  ///
  /// In en, this message translates to:
  /// **'Money added'**
  String get walletEntryTopUp;

  /// An order payment whose order number is unknown.
  ///
  /// In en, this message translates to:
  /// **'Paid for an order'**
  String get walletEntryOrder;

  /// An order payment in the transaction list.
  ///
  /// In en, this message translates to:
  /// **'Paid for order {number}'**
  String walletEntryOrderNumber(String number);

  /// Money returned to the wallet from a cancelled order.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get walletEntryRefund;

  /// Shown after a successful top-up.
  ///
  /// In en, this message translates to:
  /// **'{amount} added to your wallet'**
  String walletMoneyAdded(String amount);

  /// Shown when the gateway declines a top-up.
  ///
  /// In en, this message translates to:
  /// **'Payment failed. No money was taken from your account.'**
  String get walletPaymentFailed;

  /// Shown when the payment went through but the server has not confirmed it yet.
  ///
  /// In en, this message translates to:
  /// **'Payment received. Your balance will update in a few minutes.'**
  String get walletPaymentConfirming;

  /// Checkout switch that spends the wallet on this order.
  ///
  /// In en, this message translates to:
  /// **'Use wallet balance'**
  String get walletUseBalance;

  /// Under the checkout switch, the current balance.
  ///
  /// In en, this message translates to:
  /// **'Available: {amount}'**
  String walletAvailable(String amount);

  /// Bill row for the wallet's share of the order.
  ///
  /// In en, this message translates to:
  /// **'Paid from wallet'**
  String get walletPaidFromWallet;

  /// Bill row for what is left to pay in cash after the wallet.
  ///
  /// In en, this message translates to:
  /// **'Pay on delivery'**
  String get walletPayOnDelivery;

  /// Payment line at checkout when the wallet covers the whole order.
  ///
  /// In en, this message translates to:
  /// **'Paid fully from your wallet'**
  String get walletCoversOrder;

  /// Payment line at checkout when the wallet covers part of the order.
  ///
  /// In en, this message translates to:
  /// **'{wallet} from wallet, {rest} on delivery'**
  String walletRestOnDelivery(String wallet, String rest);

  /// Shown when the server's payment gateway is not switched on (503).
  ///
  /// In en, this message translates to:
  /// **'Adding money isn\'t available right now. Please try again later.'**
  String get walletTopUpUnavailable;

  /// Shown instead of add money when the balance is at the ceiling. The limit arrives formatted with ₹.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is at its {limit} limit.'**
  String walletFull(String limit);

  /// Search bar on the pin map, and the hint in the search field it opens.
  ///
  /// In en, this message translates to:
  /// **'Search area, street or landmark'**
  String get searchAddressHint;

  /// Title of the screen that picks where to deliver: current location, a saved address, or a new one.
  ///
  /// In en, this message translates to:
  /// **'Select a location'**
  String get selectLocationTitle;

  /// Row and map button that uses where the phone is.
  ///
  /// In en, this message translates to:
  /// **'Use current location'**
  String get useCurrentLocation;

  /// Shown under 'Use current location' while the phone finds its position.
  ///
  /// In en, this message translates to:
  /// **'Finding where you are…'**
  String get locatingYou;

  /// Shown under 'Use current location' when location is off or not allowed.
  ///
  /// In en, this message translates to:
  /// **'Allow location access to use this'**
  String get locationOffHint;

  /// Heading over the customer's saved addresses. Shown in capitals.
  ///
  /// In en, this message translates to:
  /// **'Saved addresses'**
  String get savedAddressesHeading;

  /// Heading over places the customer recently searched for. Shown in capitals.
  ///
  /// In en, this message translates to:
  /// **'Recent locations'**
  String get recentLocationsHeading;

  /// Precedes the Google name under address search results, as Google requires. Keep lower case.
  ///
  /// In en, this message translates to:
  /// **'powered by'**
  String get poweredBy;

  /// Title of the map where the customer places the delivery pin.
  ///
  /// In en, this message translates to:
  /// **'Select delivery location'**
  String get selectDeliveryLocationTitle;

  /// Hint above the pin on the delivery map.
  ///
  /// In en, this message translates to:
  /// **'Move pin to your exact delivery location'**
  String get movePinTooltip;

  /// Shown while the pin's position is turned into an address.
  ///
  /// In en, this message translates to:
  /// **'Finding the address…'**
  String get locatingPin;

  /// Heading over the area the pin is in, on the delivery map.
  ///
  /// In en, this message translates to:
  /// **'Delivery details'**
  String get deliveryDetailsHeading;

  /// Label of the house, flat and floor field. The asterisk marks it as required.
  ///
  /// In en, this message translates to:
  /// **'Address details*'**
  String get addressDetailsLabel;

  /// Help text under the address details field.
  ///
  /// In en, this message translates to:
  /// **'E.g. Floor, House no.'**
  String get addressDetailsHint;

  /// Shown when the city, state or PIN code could not be found for the pin.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t read the full address for this pin. Please fill in the rest.'**
  String get missingAreaHint;

  /// Question over the Myself / Someone else choice.
  ///
  /// In en, this message translates to:
  /// **'Who should we contact for this delivery?'**
  String get whoToContact;

  /// The customer receives the delivery themselves.
  ///
  /// In en, this message translates to:
  /// **'Myself'**
  String get contactMyself;

  /// Another person receives the delivery.
  ///
  /// In en, this message translates to:
  /// **'Someone else'**
  String get contactSomeoneElse;

  /// Heading over the receiver's name and number.
  ///
  /// In en, this message translates to:
  /// **'Receiver details for this address'**
  String get receiverDetailsHeading;

  /// Shown when no receiver is filled in yet.
  ///
  /// In en, this message translates to:
  /// **'Add the receiver\'s name and number'**
  String get receiverAddPrompt;

  /// Title of the sheet that edits the receiver's name and number.
  ///
  /// In en, this message translates to:
  /// **'Receiver details'**
  String get receiverSheetTitle;

  /// Heading over the optional photo of the door or building.
  ///
  /// In en, this message translates to:
  /// **'Door/building image (optional)'**
  String get doorPhotoHeading;

  /// Button that adds a photo of the door or building.
  ///
  /// In en, this message translates to:
  /// **'Add an image'**
  String get doorPhotoAdd;

  /// Why a door photo helps.
  ///
  /// In en, this message translates to:
  /// **'This helps our delivery partners find your exact location faster'**
  String get doorPhotoBody;

  /// Replaces the chosen door photo.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get doorPhotoChange;

  /// Drops the chosen door photo before saving.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get doorPhotoRemove;

  /// Picks a door photo with the camera.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get photoFromCamera;

  /// Picks a door photo from the phone's photos.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get photoFromGallery;

  /// Confirmation after a door photo uploads.
  ///
  /// In en, this message translates to:
  /// **'Photo added'**
  String get photoUploaded;

  /// Shown when a door photo fails to upload.
  ///
  /// In en, this message translates to:
  /// **'The photo couldn\'t be uploaded. Please try again later.'**
  String get photoUploadFailed;

  /// Shown when the address saved but its photo did not.
  ///
  /// In en, this message translates to:
  /// **'Address saved. The photo couldn\'t be uploaded.'**
  String get addressSavedPhotoFailed;

  /// Takes the door photo off a saved address.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get removePhotoLabel;

  /// Confirmation after the door photo is taken off.
  ///
  /// In en, this message translates to:
  /// **'Photo removed'**
  String get photoRemoved;

  /// Shares a saved address.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareLabel;

  /// Adds or replaces the photo of a saved address's door.
  ///
  /// In en, this message translates to:
  /// **'Add a door photo'**
  String get addDoorPhotoLabel;

  /// Shown when an address search returns nothing.
  ///
  /// In en, this message translates to:
  /// **'No places found. Try a nearby landmark, area name or pincode.'**
  String get searchAddressNoResults;

  /// Tooltip on the button that empties a search field.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clearLabel;

  /// Tracking sheet headline when the rider is a minute or less away.
  ///
  /// In en, this message translates to:
  /// **'Arriving now'**
  String get trackingArrivingNow;

  /// Small badge on the tracking sheet showing the position is updating live.
  ///
  /// In en, this message translates to:
  /// **'Live'**
  String get trackingLive;

  /// Progress step: the restaurant accepted the order.
  ///
  /// In en, this message translates to:
  /// **'Confirmed'**
  String get trackingStepConfirmed;

  /// Progress step: the food is being cooked.
  ///
  /// In en, this message translates to:
  /// **'Preparing'**
  String get trackingStepPreparing;

  /// Progress step: the rider has the food.
  ///
  /// In en, this message translates to:
  /// **'On the way'**
  String get trackingStepOnTheWay;

  /// Progress step: the order arrived.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get trackingStepDelivered;

  /// Tracking sheet before a rider is assigned.
  ///
  /// In en, this message translates to:
  /// **'Assigning a delivery partner…'**
  String get trackingFindingRider;

  /// Label beside the delivery pin on the tracking map.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get trackingPinYou;

  /// Under the ETA. The distance arrives formatted with its unit.
  ///
  /// In en, this message translates to:
  /// **'{name} is {distance} away'**
  String trackingRiderAway(String name, String distance);

  /// Button that opens a text message to the delivery partner.
  ///
  /// In en, this message translates to:
  /// **'Message {name}'**
  String trackingMessageRider(String name);

  /// Label over the delivery address on the tracking sheet.
  ///
  /// In en, this message translates to:
  /// **'Delivering to'**
  String get trackingDeliveringTo;

  /// Button on the tracking sheet that goes back to the order.
  ///
  /// In en, this message translates to:
  /// **'Order details'**
  String get trackingOrderDetails;

  /// While the order is being offered to riders. The server's own translated label is preferred when sent.
  ///
  /// In en, this message translates to:
  /// **'Finding a delivery partner near the restaurant…'**
  String get dispatchSearching;

  /// When every wave went unanswered and operations assigns a rider by hand.
  ///
  /// In en, this message translates to:
  /// **'No delivery partner has taken it yet. Our team is assigning one now.'**
  String get dispatchNoRider;

  /// Rider vehicle type on the tracking card.
  ///
  /// In en, this message translates to:
  /// **'Bike'**
  String get vehicleBike;

  /// Rider vehicle type on the tracking card.
  ///
  /// In en, this message translates to:
  /// **'Scooter'**
  String get vehicleScooter;

  /// Rider vehicle type on the tracking card.
  ///
  /// In en, this message translates to:
  /// **'Bicycle'**
  String get vehicleBicycle;

  /// Rider vehicle type on the tracking card.
  ///
  /// In en, this message translates to:
  /// **'Electric scooter'**
  String get vehicleElectric;

  /// Title of the dialog shown when back is pressed on the main screen.
  ///
  /// In en, this message translates to:
  /// **'Exit Nexmile?'**
  String get exitTitle;

  /// Body of the exit confirmation dialog.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit the app?'**
  String get exitBody;

  /// Button that closes the app.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exitConfirm;

  /// Green banner at the top of the cart when the bill takes money off. The amount arrives formatted with the rupee sign.
  ///
  /// In en, this message translates to:
  /// **'You saved {amount} on this order'**
  String cartSavedBanner(String amount);

  /// Row under the dishes in the cart that goes back to the menu.
  ///
  /// In en, this message translates to:
  /// **'Add more items'**
  String get cartAddMoreItems;

  /// Row in the cart that opens the note for the kitchen.
  ///
  /// In en, this message translates to:
  /// **'Add a note for the restaurant'**
  String get cartAddNote;

  /// Hint in the note-for-the-restaurant field.
  ///
  /// In en, this message translates to:
  /// **'Less spicy, no onions, extra chutney…'**
  String get cartNoteHint;

  /// Button that keeps the note for the restaurant.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get cartNoteSave;

  /// Checkbox in the cart asking the restaurant to leave out spoons and forks.
  ///
  /// In en, this message translates to:
  /// **'Don\'t send cutlery'**
  String get cartNoCutlery;

  /// Shown under the no-cutlery checkbox once it is ticked.
  ///
  /// In en, this message translates to:
  /// **'Thank you for helping cut plastic waste'**
  String get cartNoCutleryThanks;

  /// Heading over the coupon row in the cart. Shown in capitals.
  ///
  /// In en, this message translates to:
  /// **'Savings corner'**
  String get cartSavingsCorner;

  /// Heading over the delivery instruction chips in the cart. Shown in capitals.
  ///
  /// In en, this message translates to:
  /// **'Delivery instructions'**
  String get cartDeliveryInstructions;

  /// Small line under the delivery instruction chips.
  ///
  /// In en, this message translates to:
  /// **'Sent with your order'**
  String get cartInstructionsNote;

  /// Delivery instruction chip.
  ///
  /// In en, this message translates to:
  /// **'Leave at the door'**
  String get instructionLeaveAtDoor;

  /// Delivery instruction chip.
  ///
  /// In en, this message translates to:
  /// **'Avoid ringing the bell'**
  String get instructionNoBell;

  /// Delivery instruction chip.
  ///
  /// In en, this message translates to:
  /// **'Avoid calling'**
  String get instructionNoCall;

  /// Delivery instruction chip: hand it to the building's guard.
  ///
  /// In en, this message translates to:
  /// **'Leave with security'**
  String get instructionSecurity;

  /// Delivery instruction chip: warns the delivery partner about a dog or cat.
  ///
  /// In en, this message translates to:
  /// **'Pet at home'**
  String get instructionPet;

  /// Under the total on the folded bill in the cart.
  ///
  /// In en, this message translates to:
  /// **'Incl. taxes and charges'**
  String get cartInclTaxes;

  /// Green tag on the folded bill. The amount arrives formatted with the rupee sign.
  ///
  /// In en, this message translates to:
  /// **'{amount} saved'**
  String cartSavedTag(String amount);

  /// Label over the payment method in the cart's bottom bar, and the title of the payment sheet. Shown in capitals in the bar.
  ///
  /// In en, this message translates to:
  /// **'Pay using'**
  String get cartPayUsing;

  /// Payment method when the wallet pays part and the rest is cash on delivery.
  ///
  /// In en, this message translates to:
  /// **'Wallet + cash'**
  String get cartWalletAndCash;

  /// Under cash on delivery when the wallet pays the rest. The amount arrives formatted with the rupee sign.
  ///
  /// In en, this message translates to:
  /// **'Pay {amount} when it arrives'**
  String cartCashRest(String amount);

  /// Under cash on delivery on the payment sheet.
  ///
  /// In en, this message translates to:
  /// **'Pay when your order arrives'**
  String get cartCashFull;

  /// Under cash on delivery when the wallet covers the whole order.
  ///
  /// In en, this message translates to:
  /// **'Nothing to pay on delivery'**
  String get cartCashNothing;

  /// Small label under the amount on the place-order button. Shown in capitals.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get cartTotal;

  /// The place-order button in the cart.
  ///
  /// In en, this message translates to:
  /// **'Place order'**
  String get cartPlaceOrder;

  /// Over the address in the cart's bottom bar.
  ///
  /// In en, this message translates to:
  /// **'Delivering to {place}'**
  String cartDeliverTo(String place);

  /// Changes the delivery address from the cart.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get cartChange;

  /// In the cart's bottom bar when no address is chosen.
  ///
  /// In en, this message translates to:
  /// **'Where should we deliver?'**
  String get cartNoAddress;

  /// Under the no-address line in the cart's bottom bar.
  ///
  /// In en, this message translates to:
  /// **'Add an address to place your order'**
  String get cartNoAddressHint;

  /// In the cart's bottom bar for a pickup order.
  ///
  /// In en, this message translates to:
  /// **'Pick up from {restaurant}'**
  String cartPickupFrom(String restaurant);

  /// Under the pickup line: the kitchen's usual preparation time.
  ///
  /// In en, this message translates to:
  /// **'Ready in about {minutes} mins'**
  String cartReadyIn(int minutes);

  /// Title of the address sheet opened from the cart.
  ///
  /// In en, this message translates to:
  /// **'Choose a delivery address'**
  String get cartChooseAddress;

  /// Closes the payment sheet.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get cartDone;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'as',
    'bn',
    'brx',
    'doi',
    'en',
    'gu',
    'hi',
    'kn',
    'kok',
    'ks',
    'mai',
    'ml',
    'mni',
    'mr',
    'ne',
    'or',
    'pa',
    'sa',
    'sat',
    'sd',
    'ta',
    'te',
    'ur',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'as':
      return AppLocalizationsAs();
    case 'bn':
      return AppLocalizationsBn();
    case 'brx':
      return AppLocalizationsBrx();
    case 'doi':
      return AppLocalizationsDoi();
    case 'en':
      return AppLocalizationsEn();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'kn':
      return AppLocalizationsKn();
    case 'kok':
      return AppLocalizationsKok();
    case 'ks':
      return AppLocalizationsKs();
    case 'mai':
      return AppLocalizationsMai();
    case 'ml':
      return AppLocalizationsMl();
    case 'mni':
      return AppLocalizationsMni();
    case 'mr':
      return AppLocalizationsMr();
    case 'ne':
      return AppLocalizationsNe();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'sa':
      return AppLocalizationsSa();
    case 'sat':
      return AppLocalizationsSat();
    case 'sd':
      return AppLocalizationsSd();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
