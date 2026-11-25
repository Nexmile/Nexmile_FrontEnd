// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'ಈ ಕ್ಷೇತ್ರ ಅಗತ್ಯವಿದೆ';

  @override
  String get tagline => 'ವೇಗದ ಡೆಲಿವರಿ. ತಾಜಾ ನಗು.';

  @override
  String get chooseLanguageTitle => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get chooseLanguageSubtitle =>
      'ನಿಮಗೆ ಅನುಕೂಲವಾದ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ. ಇದನ್ನು ಯಾವಾಗ ಬೇಕಾದರೂ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು.';

  @override
  String get searchLanguageHint => 'ಭಾಷೆಯನ್ನು ಹುಡುಕಿ';

  @override
  String get noLanguageFound => 'ಯಾವುದೇ ಭಾಷೆ ಸಿಗಲಿಲ್ಲ';

  @override
  String languagesAvailable(int count) {
    return '$count ಭಾಷೆಗಳು ಲಭ್ಯವಿದೆ';
  }

  @override
  String get continueLabel => 'ಮುಂದುವರಿಸಿ';

  @override
  String get selectedLabel => 'ಆಯ್ಕೆಯಾಗಿದೆ';

  @override
  String get defaultLabel => 'ಡೀಫಾಲ್ಟ್';

  @override
  String get homeTitle => 'Nexmile ಗೆ ಸ್ವಾಗತ';

  @override
  String get homeSubtitle =>
      'ತಾಜಾ ದಿನಸಿ, ಬಿಸಿ ಆಹಾರ ಮತ್ತು ದೈನಂದಿನ ಅಗತ್ಯ ವಸ್ತುಗಳು ನಿಮ್ಮ ಹತ್ತಿರದ ಅಂಗಡಿಗಳಿಂದ.';

  @override
  String get changeLanguage => 'ಭಾಷೆ ಬದಲಾಯಿಸಿ';

  @override
  String get languageUpdated => 'ಭಾಷೆ ಬದಲಾಗಿದೆ';

  @override
  String get appLanguageLabel => 'ಆ್ಯಪ್ ಭಾಷೆ';

  @override
  String greetingNamed(String name) {
    return 'ನಮಸ್ಕಾರ, $name';
  }

  @override
  String get loginTitle => 'Nexmile ಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get loginSubtitle =>
      'ನಿಮ್ಮ ಇಮೇಲ್ ಅಥವಾ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ, ನಾವು ಪರಿಶೀಲನಾ ಕೋಡ್ ಕಳುಹಿಸುತ್ತೇವೆ.';

  @override
  String get emailOrPhoneLabel => 'ಇಮೇಲ್ ಅಥವಾ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ';

  @override
  String get emailOrPhoneHint => 'name@example.com ಅಥವಾ 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'ಸರಿಯಾದ ಇಮೇಲ್ ವಿಳಾಸ ಅಥವಾ 10 ಅಂಕಿಯ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ';

  @override
  String get loginHeadline => 'ಹತ್ತಿರದ ಅಂಗಡಿಗಳಿಂದ ಬಿಸಿ ಆಹಾರ, ವೇಗವಾಗಿ ಡೆಲಿವರಿ';

  @override
  String get loginOrSignUp => 'ಲಾಗ್ ಇನ್ ಅಥವಾ ಸೈನ್ ಅಪ್ ಮಾಡಿ';

  @override
  String get loginEmailHint => 'ನಿಮ್ಮ ಇಮೇಲ್ ವಿಳಾಸ ನಮೂದಿಸಿ';

  @override
  String get invalidEmail => 'ಸರಿಯಾದ ಇಮೇಲ್ ವಿಳಾಸ ನಮೂದಿಸಿ';

  @override
  String get sendCode => 'ಕೋಡ್ ಕಳುಹಿಸಿ';

  @override
  String get agreeToTermsOnContinue =>
      'ಮುಂದುವರಿಯುವ ಮೂಲಕ ನೀವು ನಮ್ಮ ಸೇವಾ ನಿಯಮಗಳು ಮತ್ತು ಗೌಪ್ಯತಾ ನೀತಿಗೆ ಒಪ್ಪುತ್ತೀರಿ.';

  @override
  String get otpTitle => 'ಇದು ನೀವೇ ಎಂದು ಖಚಿತಪಡಿಸಿ';

  @override
  String otpSubtitle(String target) {
    return '$target ಗೆ ಕಳುಹಿಸಿದ 6 ಅಂಕಿಯ ಕೋಡ್ ನಮೂದಿಸಿ';
  }

  @override
  String get verifyCode => 'ಪರಿಶೀಲಿಸಿ';

  @override
  String get resendCode => 'ಕೋಡ್ ಮತ್ತೆ ಕಳುಹಿಸಿ';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಮತ್ತೆ ಕಳುಹಿಸಿ';
  }

  @override
  String get codeResent => 'ಹೊಸ ಕೋಡ್ ಕಳುಹಿಸಲಾಗಿದೆ';

  @override
  String get incorrectCode =>
      'ಈ ಕೋಡ್ ತಪ್ಪಾಗಿದೆ ಅಥವಾ ಅವಧಿ ಮುಗಿದಿದೆ. ಹೊಸದನ್ನು ಕೇಳಿ.';

  @override
  String get enterFullCode => 'ಪೂರ್ಣ 6 ಅಂಕಿಗಳನ್ನು ನಮೂದಿಸಿ';

  @override
  String get accountSuspended =>
      'ಈ ಖಾತೆಯನ್ನು ಅಮಾನತುಗೊಳಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ.';

  @override
  String get tooManyAttempts =>
      'ತುಂಬಾ ಪ್ರಯತ್ನಗಳಾಗಿವೆ. ದಯವಿಟ್ಟು ಸ್ವಲ್ಪ ಸಮಯದ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get sessionExpired =>
      'ನಿಮ್ಮ ಸೆಷನ್ ಅವಧಿ ಮುಗಿದಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get networkError =>
      'ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವಿಲ್ಲ. ನಿಮ್ಮ ಸಂಪರ್ಕ ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get developmentCode => 'ಡೆವಲಪ್‌ಮೆಂಟ್ ಕೋಡ್';

  @override
  String get signOut => 'ಸೈನ್ ಔಟ್';

  @override
  String get signedOut => 'ನೀವು ಸೈನ್ ಔಟ್ ಆಗಿದ್ದೀರಿ';

  @override
  String get somethingWentWrong => 'ಏನೋ ತಪ್ಪಾಗಿದೆ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get profileTitle => 'ಪ್ರೊಫೈಲ್';

  @override
  String get viewProfile => 'ಪ್ರೊಫೈಲ್ ನೋಡಿ';

  @override
  String get nameLabel => 'ಹೆಸರು';

  @override
  String get emailLabel => 'ಇಮೇಲ್';

  @override
  String get mobileLabel => 'ಮೊಬೈಲ್ ಸಂಖ್ಯೆ';

  @override
  String get accountStatusLabel => 'ಖಾತೆಯ ಸ್ಥಿತಿ';

  @override
  String get statusActive => 'ಸಕ್ರಿಯ';

  @override
  String get statusPending => 'ಬಾಕಿ ಇದೆ';

  @override
  String get statusSuspended => 'ಅಮಾನತು';

  @override
  String get verifiedLabel => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get notProvided => 'ಸೇರಿಸಿಲ್ಲ';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get navHome => 'ಹೋಮ್';

  @override
  String get navSearch => 'ಹುಡುಕಿ';

  @override
  String get navOrders => 'ಆರ್ಡರ್‌ಗಳು';

  @override
  String get cancelLabel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get deliverTo => 'ಡೆಲಿವರಿ ವಿಳಾಸ';

  @override
  String get searchDishesHint => 'ಖಾದ್ಯ ಅಥವಾ ರೆಸ್ಟೋರೆಂಟ್ ಹುಡುಕಿ';

  @override
  String get searchTitle => 'ಹುಡುಕಿ';

  @override
  String get searchNoResultsTitle => 'ಏನೂ ಸಿಗಲಿಲ್ಲ';

  @override
  String get searchNoResultsSubtitle =>
      'ಬೇರೆ ಖಾದ್ಯ, ಪಾಕಶೈಲಿ ಅಥವಾ ರೆಸ್ಟೋರೆಂಟ್ ಹೆಸರು ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get cravingTitle => 'ಏನು ತಿನ್ನಬೇಕು ಅನಿಸುತ್ತಿದೆ?';

  @override
  String get offersTitle => 'ನಿಮಗಾಗಿ ಆಫರ್‌ಗಳು';

  @override
  String get restaurantsNearby => 'ನಿಮ್ಮ ಹತ್ತಿರದ ರೆಸ್ಟೋರೆಂಟ್‌ಗಳು';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ರೆಸ್ಟೋರೆಂಟ್‌ಗಳು',
      one: '1 ರೆಸ್ಟೋರೆಂಟ್',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'ಇಲ್ಲಿ ಇನ್ನೂ ಏನೂ ಇಲ್ಲ';

  @override
  String get noRestaurantsSubtitle => 'ಬೇರೆ ವಿಭಾಗ ನೋಡಿ ಅಥವಾ ಫಿಲ್ಟರ್ ತೆಗೆಯಿರಿ.';

  @override
  String minutesAway(int minutes) {
    return '$minutes ನಿಮಿ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance ಕಿಮೀ';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ರೇಟಿಂಗ್‌ಗಳು',
      one: '1 ರೇಟಿಂಗ್',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'ಇಬ್ಬರಿಗೆ ₹$amount';
  }

  @override
  String get freeDelivery => 'ಉಚಿತ ಡೆಲಿವರಿ';

  @override
  String percentOff(int percent) {
    return '$percent% ರಿಯಾಯಿತಿ';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'ನಿಮ್ಮ ಆರ್ಡರ್ ಮೇಲೆ $percent% ರಿಯಾಯಿತಿ';
  }

  @override
  String get vegOnly => 'ಸಸ್ಯಾಹಾರ ಮಾತ್ರ';

  @override
  String get bestseller => 'ಅತಿ ಹೆಚ್ಚು ಮಾರಾಟ';

  @override
  String get addLabel => 'ಸೇರಿಸಿ';

  @override
  String get noVegDishesTitle => 'ಇಲ್ಲಿ ಸಸ್ಯಾಹಾರಿ ಖಾದ್ಯಗಳಿಲ್ಲ';

  @override
  String get noVegDishesSubtitle =>
      'ಪೂರ್ಣ ಮೆನು ನೋಡಲು ಸಸ್ಯಾಹಾರಿ ಫಿಲ್ಟರ್ ಆಫ್ ಮಾಡಿ.';

  @override
  String get replaceCartTitle => 'ಹೊಸ ಕಾರ್ಟ್ ಶುರುಮಾಡಬೇಕೇ?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'ನಿಮ್ಮ ಕಾರ್ಟ್‌ನಲ್ಲಿ $restaurant ನಿಂದ ವಸ್ತುಗಳಿವೆ. ಇದನ್ನು ಸೇರಿಸಿದರೆ ಅವು ತೆಗೆದುಹೋಗುತ್ತವೆ.';
  }

  @override
  String get replaceCartConfirm => 'ತೆಗೆದು ಸೇರಿಸಿ';

  @override
  String get cartTitle => 'ನಿಮ್ಮ ಕಾರ್ಟ್';

  @override
  String get cartEmptyTitle => 'ನಿಮ್ಮ ಕಾರ್ಟ್ ಖಾಲಿಯಿದೆ';

  @override
  String get cartEmptySubtitle =>
      'ಶುರುಮಾಡಲು ಯಾವುದಾದರೂ ರೆಸ್ಟೋರೆಂಟ್‌ನಿಂದ ಖಾದ್ಯ ಸೇರಿಸಿ.';

  @override
  String get browseRestaurants => 'ರೆಸ್ಟೋರೆಂಟ್‌ಗಳನ್ನು ನೋಡಿ';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ವಸ್ತುಗಳು',
      one: '1 ವಸ್ತು',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'ಕಾರ್ಟ್ ನೋಡಿ';

  @override
  String get itemTotal => 'ವಸ್ತುಗಳ ಒಟ್ಟು';

  @override
  String get deliveryFeeLabel => 'ಡೆಲಿವರಿ ಶುಲ್ಕ';

  @override
  String get taxesAndCharges => 'ತೆರಿಗೆ ಮತ್ತು ಶುಲ್ಕಗಳು';

  @override
  String get freeLabel => 'ಉಚಿತ';

  @override
  String get toPay => 'ಪಾವತಿಸಬೇಕಾದದ್ದು';

  @override
  String placeOrderFor(String amount) {
    return 'ಆರ್ಡರ್ ಮಾಡಿ · $amount';
  }

  @override
  String get ordersTitle => 'ನಿಮ್ಮ ಆರ್ಡರ್‌ಗಳು';

  @override
  String get ordersEmptyTitle => 'ಇನ್ನೂ ಆರ್ಡರ್‌ಗಳಿಲ್ಲ';

  @override
  String get ordersEmptySubtitle =>
      'ನಿಮ್ಮ ಹಿಂದಿನ ಆರ್ಡರ್‌ಗಳು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get reorder => 'ಮತ್ತೆ ಆರ್ಡರ್';

  @override
  String orderTitle(String id) {
    return 'ಆರ್ಡರ್ $id';
  }

  @override
  String get orderPlacedTitle => 'ಆರ್ಡರ್ ಆಗಿದೆ';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'ಸುಮಾರು $minutes ನಿಮಿಷಗಳಲ್ಲಿ ಬರುತ್ತದೆ.';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return 'ನಿಮ್ಮ ಆರ್ಡರ್ $restaurant ಗೆ ತಲುಪಿದೆ.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'ಸುಮಾರು $minutes ನಿಮಿಷಗಳಲ್ಲಿ ಸಿದ್ಧವಾಗುತ್ತದೆ.';
  }

  @override
  String get trackYourOrder => 'ಆರ್ಡರ್ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get couponApplyTitle => 'ಕೂಪನ್ ಅಪ್ಲೈ ಮಾಡಿ';

  @override
  String get couponCodeLabel => 'ಕೂಪನ್ ಕೋಡ್';

  @override
  String get couponApply => 'ಅಪ್ಲೈ ಮಾಡಿ';

  @override
  String couponAppliedTitle(String code) {
    return '$code ಅಪ್ಲೈ ಆಗಿದೆ';
  }

  @override
  String couponSaving(String amount) {
    return 'ನಿಮಗೆ $amount ಉಳಿತಾಯ';
  }

  @override
  String get couponRemove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String searchFor(String term) {
    return '\"$term\" ಹುಡುಕಿ';
  }

  @override
  String get vegModeBadge => 'ಶುದ್ಧ ಸಸ್ಯಾಹಾರ';

  @override
  String trackingExpectedBy(String time) {
    return '$time ಒಳಗೆ ತಲುಪುವ ನಿರೀಕ್ಷೆ';
  }

  @override
  String get orderAgainTitle => 'ಮತ್ತೆ ಆರ್ಡರ್ ಮಾಡಿ';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + ಇನ್ನೂ $count',
      one: '$first + ಇನ್ನೂ 1',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max ನಿಮಿ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 ರಲ್ಲಿ $rating ರೇಟಿಂಗ್';
  }

  @override
  String get reorderReplaceTitle => 'ಕಾರ್ಟ್ ಬದಲಾಯಿಸಬೇಕೇ?';

  @override
  String reorderReplaceBody(String restaurant) {
    return 'ನಿಮ್ಮ ಕಾರ್ಟ್‌ನಲ್ಲಿರುವ $restaurant ನ ಖಾದ್ಯಗಳ ಬದಲು ಈ ಆರ್ಡರ್‌ನ ಖಾದ್ಯಗಳು ಸೇರುತ್ತವೆ.';
  }

  @override
  String get reorderReplace => 'ಬದಲಾಯಿಸಿ';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes ಈಗ ಲಭ್ಯವಿಲ್ಲ, ಹಾಗಾಗಿ ಅವುಗಳನ್ನು ಸೇರಿಸಿಲ್ಲ.',
      one: '$dishes ಈಗ ಲಭ್ಯವಿಲ್ಲ, ಹಾಗಾಗಿ ಅದನ್ನು ಸೇರಿಸಿಲ್ಲ.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable => 'ಈ ಖಾದ್ಯಗಳಲ್ಲಿ ಯಾವುದೂ ಈಗ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get searchShort => 'ಹುಡುಕಿ';

  @override
  String get favouriteSave => 'ಮೆಚ್ಚಿನವುಗಳಿಗೆ ಸೇರಿಸಿ';

  @override
  String get restaurantAbout => 'ಈ ರೆಸ್ಟೋರೆಂಟ್ ಬಗ್ಗೆ';

  @override
  String ratingByCount(String count) {
    return '$count ಜನರಿಂದ';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಆಫರ್‌ಗಳು',
      one: '1 ಆಫರ್',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile ನಲ್ಲಿ $restaurant ನಿಂದ ಆರ್ಡರ್ ಮಾಡಿ';
  }

  @override
  String get ordersSearchHint => 'ರೆಸ್ಟೋರೆಂಟ್ ಅಥವಾ ಖಾದ್ಯದ ಹೆಸರಿನಿಂದ ಹುಡುಕಿ…';

  @override
  String get ordersNoMatch => 'ಆ ಹೆಸರಿನ ರೆಸ್ಟೋರೆಂಟ್ ಅಥವಾ ಖಾದ್ಯದ ಆರ್ಡರ್‌ಗಳಿಲ್ಲ.';

  @override
  String orderPlacedOn(String date) {
    return '$date ರಂದು ಆರ್ಡರ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get viewMenu => 'ಮೆನು ನೋಡಿ';

  @override
  String get navHistory => 'ಇತಿಹಾಸ';

  @override
  String get exploreMore => 'ಇನ್ನಷ್ಟು ನೋಡಿ';

  @override
  String get exploreTopRated => 'ಅತ್ಯುತ್ತಮ ರೇಟಿಂಗ್';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ನಿಮಗೆ ಡೆಲಿವರಿ ಮಾಡುವ $count ರೆಸ್ಟೋರೆಂಟ್‌ಗಳು',
      one: 'ನಿಮಗೆ ಡೆಲಿವರಿ ಮಾಡುವ 1 ರೆಸ್ಟೋರೆಂಟ್',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ಡೆಲಿವರಿ ಹೇಗಿತ್ತು?';

  @override
  String get rateHowWasFood => 'ಆಹಾರ ಹೇಗಿತ್ತು?';

  @override
  String get rateWordTerrible => 'ತುಂಬಾ ಕೆಟ್ಟದು';

  @override
  String get rateWordBad => 'ಕೆಟ್ಟದು';

  @override
  String get rateWordOkay => 'ಪರವಾಗಿಲ್ಲ';

  @override
  String get rateWordGood => 'ಚೆನ್ನಾಗಿದೆ';

  @override
  String get rateWordLoved => 'ತುಂಬಾ ಇಷ್ಟವಾಯಿತು!';

  @override
  String get rateWhatWentWrong => 'ಏನು ತಪ್ಪಾಯಿತು?';

  @override
  String get rateWhatYouLiked => 'ನಿಮಗೆ ಏನು ಇಷ್ಟವಾಯಿತು?';

  @override
  String get rateRiderNoteHint => 'ಡೆಲಿವರಿ ಬಗ್ಗೆ ಟಿಪ್ಪಣಿ (ಐಚ್ಛಿಕ)';

  @override
  String get rateReviewHeading => 'ವಿಮರ್ಶೆ ಬರೆಯಿರಿ';

  @override
  String get rateFoodFirst => 'ಕಳುಹಿಸಲು ಆಹಾರಕ್ಕೆ ರೇಟಿಂಗ್ ನೀಡಿ';

  @override
  String get rateYouRated => 'ನೀವು ಈ ಆರ್ಡರ್‌ಗೆ ರೇಟಿಂಗ್ ನೀಡಿದ್ದೀರಿ';

  @override
  String get ratePromptLater => 'ಈಗ ಬೇಡ';

  @override
  String get tagTasty => 'ರುಚಿಕರ';

  @override
  String get tagFreshHot => 'ಬಿಸಿ ಮತ್ತು ತಾಜಾ';

  @override
  String get tagGoodPortion => 'ಸಾಕಷ್ಟು ಪ್ರಮಾಣ';

  @override
  String get tagGoodPackaging => 'ಉತ್ತಮ ಪ್ಯಾಕಿಂಗ್';

  @override
  String get tagValueForMoney => 'ಹಣಕ್ಕೆ ತಕ್ಕ ಮೌಲ್ಯ';

  @override
  String get tagHygienic => 'ಸ್ವಚ್ಛ';

  @override
  String get tagColdFood => 'ಆಹಾರ ತಣ್ಣಗಿತ್ತು';

  @override
  String get tagPoorTaste => 'ರುಚಿ ಚೆನ್ನಾಗಿರಲಿಲ್ಲ';

  @override
  String get tagSmallPortion => 'ಪ್ರಮಾಣ ಕಡಿಮೆ';

  @override
  String get tagWrongItems => 'ತಪ್ಪು ಖಾದ್ಯಗಳು';

  @override
  String get tagMissingItems => 'ಕೆಲವು ಖಾದ್ಯ ಬಂದಿಲ್ಲ';

  @override
  String get tagPoorPackaging => 'ಕಳಪೆ ಪ್ಯಾಕಿಂಗ್';

  @override
  String get tagTooOily => 'ತುಂಬಾ ಎಣ್ಣೆ ಅಥವಾ ಖಾರ';

  @override
  String get tagOnTime => 'ಸಮಯಕ್ಕೆ ಸರಿಯಾಗಿ';

  @override
  String get tagPolite => 'ವಿನಯದ ವರ್ತನೆ';

  @override
  String get tagFollowedInstructions => 'ಸೂಚನೆಗಳನ್ನು ಪಾಲಿಸಿದರು';

  @override
  String get tagCarefulHandling => 'ಆಹಾರವನ್ನು ಜಾಗ್ರತೆಯಿಂದ ತಂದರು';

  @override
  String get tagGoodCommunication => 'ಮಾಹಿತಿ ನೀಡುತ್ತಿದ್ದರು';

  @override
  String get tagLate => 'ತಡವಾದ ಡೆಲಿವರಿ';

  @override
  String get tagRude => 'ಅಸಭ್ಯ ವರ್ತನೆ';

  @override
  String get tagIgnoredInstructions => 'ಸೂಚನೆಗಳನ್ನು ಪಾಲಿಸಲಿಲ್ಲ';

  @override
  String get tagFoodSpilled => 'ಆಹಾರ ಚೆಲ್ಲಿತ್ತು';

  @override
  String get tagAskedExtraMoney => 'ಹೆಚ್ಚುವರಿ ಹಣ ಕೇಳಿದರು';

  @override
  String get tagUnprofessional => 'ವೃತ್ತಿಪರವಾಗಿರಲಿಲ್ಲ';

  @override
  String rateDeliveredBy(String name) {
    return '$name ಡೆಲಿವರಿ ಮಾಡಿದ್ದಾರೆ';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant ನಿಂದ';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant ನಿಂದ ನಿಮ್ಮ ಆರ್ಡರ್ ಹೇಗಿತ್ತು?';
  }

  @override
  String get orderDeliveredTitle => 'ಡೆಲಿವರಿ ಆಗಿದೆ';

  @override
  String get orderDeliveredSubtitle => 'ಊಟವನ್ನು ಆನಂದಿಸಿ.';

  @override
  String get statusOrderPlaced => 'ಆರ್ಡರ್ ಆಗಿದೆ';

  @override
  String get statusPreparing => 'ಆಹಾರ ತಯಾರಾಗುತ್ತಿದೆ';

  @override
  String get statusOnTheWay => 'ದಾರಿಯಲ್ಲಿದೆ';

  @override
  String get statusDelivered => 'ಡೆಲಿವರಿ ಆಗಿದೆ';

  @override
  String get keepBrowsing => 'ನೋಡುತ್ತಿರಿ';

  @override
  String get backToHome => 'ಹೋಮ್‌ಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get prototypeNotice =>
      'ಮಾದರಿ ಸ್ಟೋರ್‌ಫ್ರಂಟ್ — ನಿಜವಾದ ಅಂಗಡಿಗಳು ಕ್ಯಾಟಲಾಗ್ API ಜೊತೆ ಬರುತ್ತವೆ.';

  @override
  String get prototypeCheckoutNotice =>
      'ಇದು ಪ್ರೊಟೊಟೈಪ್. ಯಾವುದೇ ಪಾವತಿ ಪಡೆಯುವುದಿಲ್ಲ ಮತ್ತು ನಿಜವಾದ ಆರ್ಡರ್ ಆಗುವುದಿಲ್ಲ.';

  @override
  String get prototypeTrackingNotice =>
      'ಪ್ರೊಟೊಟೈಪ್‌ಗಾಗಿ ಟ್ರ್ಯಾಕಿಂಗ್ ಕೃತಕವಾಗಿದೆ.';

  @override
  String get locationTitle => 'ಎಲ್ಲಿಗೆ ಡೆಲಿವರಿ ಮಾಡಬೇಕು?';

  @override
  String get locationSubtitle =>
      'Nexmile 1 ಕಿಮೀ ಒಳಗಿನ ಅಂಗಡಿಗಳಿಂದ ಮಾತ್ರ ಡೆಲಿವರಿ ಮಾಡುತ್ತದೆ, ಹಾಗಾಗಿ ನಿಮ್ಮ ನಿಖರ ಸ್ಥಳ ಬೇಕು.';

  @override
  String get locationReasonRadiusTitle => '1 ಕಿಮೀ ಒಳಗಿನ ಅಂಗಡಿಗಳು';

  @override
  String get locationReasonRadiusBody =>
      'ಬಿಸಿಯಾಗಿ ತಲುಪಬಲ್ಲ ಅಡುಗೆಮನೆಗಳನ್ನು ಮಾತ್ರ ತೋರಿಸುತ್ತೇವೆ.';

  @override
  String get locationReasonAccuracyTitle => 'ಸರಿಯಾದ ಬಾಗಿಲಿಗೆ';

  @override
  String get locationReasonAccuracyBody =>
      'ನಿಖರ ಪಿನ್ ಇದ್ದರೆ ಡೆಲಿವರಿ ಪಾಲುದಾರರು ಕರೆ ಮಾಡದೆ ನಿಮ್ಮನ್ನು ತಲುಪುತ್ತಾರೆ.';

  @override
  String get locationReasonPrivacyTitle => 'ಆ್ಯಪ್ ಬಳಸುವಾಗ ಮಾತ್ರ';

  @override
  String get locationReasonPrivacyBody =>
      'ಹಿನ್ನೆಲೆಯಲ್ಲಿ ನಿಮ್ಮನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡುವುದಿಲ್ಲ, ವಿಳಾಸವನ್ನು ನೀವೇ ಟೈಪ್ ಮಾಡಬಹುದು.';

  @override
  String get allowLocation => 'ಸ್ಥಳಕ್ಕೆ ಅನುಮತಿ ನೀಡಿ';

  @override
  String get enterAddressManually => 'ನಾನೇ ವಿಳಾಸ ಬರೆಯುತ್ತೇನೆ';

  @override
  String get locationDenied =>
      'ಸ್ಥಳದ ಅನುಮತಿ ನಿರಾಕರಿಸಲಾಗಿದೆ. ನೀವೇ ಪಿನ್ ಇಡಬಹುದು.';

  @override
  String get locationDeniedForever =>
      'Nexmile ಗೆ ಸ್ಥಳ ನಿರ್ಬಂಧಿಸಲಾಗಿದೆ. ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಆನ್ ಮಾಡಿ ಅಥವಾ ಪಿನ್ ನೀವೇ ಇಡಿ.';

  @override
  String get locationServiceOff => 'ಈ ಸಾಧನದಲ್ಲಿ ಸ್ಥಳ ಆಫ್ ಆಗಿದೆ.';

  @override
  String get locationUnavailable => 'ಸ್ಥಳ ಸಿಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಪಿನ್ ನೀವೇ ಇಡಿ.';

  @override
  String permStepCount(int step, int total) {
    return '$total ರಲ್ಲಿ $step';
  }

  @override
  String get permNotNow => 'ಈಗ ಬೇಡ';

  @override
  String get permLocationTitle => 'ನಿಮ್ಮ ಹತ್ತಿರದ ಆಹಾರ ಹುಡುಕಿ';

  @override
  String get permNotifyTitle => 'ಆರ್ಡರ್ ಅಪ್‌ಡೇಟ್ ತಪ್ಪಿಸಿಕೊಳ್ಳಬೇಡಿ';

  @override
  String get permNotifyBody =>
      'ನಿಮ್ಮ ಆರ್ಡರ್ ಸ್ವೀಕರಿಸಿದಾಗ, ಪಿಕಪ್ ಆದಾಗ ಮತ್ತು ನಿಮ್ಮ ಬಾಗಿಲಿಗೆ ಬಂದಾಗ ತಿಳಿಯಲು ನೋಟಿಫಿಕೇಶನ್ ಆನ್ ಮಾಡಿ.';

  @override
  String get permNotifyLiveTitle => 'ಲೈವ್ ಆರ್ಡರ್ ಅಪ್‌ಡೇಟ್‌ಗಳು';

  @override
  String get permNotifyLiveBody =>
      'ಸ್ವೀಕರಿಸಲಾಗಿದೆ, ತಯಾರಾಗುತ್ತಿದೆ, ಪಿಕಪ್ ಆಗಿದೆ, ಡೆಲಿವರಿ ಆಗಿದೆ.';

  @override
  String get permNotifyRiderTitle => 'ರೈಡರ್ ನಿಮ್ಮ ಬಾಗಿಲಲ್ಲಿ';

  @override
  String get permNotifyRiderBody =>
      'ಆ್ಯಪ್ ನೋಡುತ್ತಾ ಕೂರದೆ, ಯಾವಾಗ ಹೊರಗೆ ಬರಬೇಕು ಎಂದು ತಿಳಿಯಿರಿ.';

  @override
  String get permNotifyControlTitle => 'ನಿಯಂತ್ರಣ ನಿಮ್ಮ ಕೈಯಲ್ಲಿ';

  @override
  String get permNotifyControlBody =>
      'ಫೋನ್‌ನ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಯಾವಾಗ ಬೇಕಾದರೂ ನೋಟಿಫಿಕೇಶನ್ ಆಫ್ ಮಾಡಬಹುದು.';

  @override
  String get permNotifyAllow => 'ನೋಟಿಫಿಕೇಶನ್ ಆನ್ ಮಾಡಿ';

  @override
  String get openSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get pinLocationTitle => 'ನಿಮ್ಮ ಡೆಲಿವರಿ ಪಿನ್ ಇಡಿ';

  @override
  String get deliveryRadiusHint =>
      'Nexmile ಡೆಲಿವರಿ ಮಾಡುವ 1 ಕಿಮೀ ವ್ಯಾಪ್ತಿಯನ್ನು ವೃತ್ತ ತೋರಿಸುತ್ತದೆ.';

  @override
  String get useMyLocation => 'ನನ್ನ ಸ್ಥಳ ಬಳಸಿ';

  @override
  String get deliveringHere => 'ಇಲ್ಲಿಗೆ ಡೆಲಿವರಿ';

  @override
  String get dragToAdjust => 'ಪಿನ್ ಸರಿಪಡಿಸಲು ನಕ್ಷೆಯನ್ನು ಎಳೆಯಿರಿ';

  @override
  String get confirmLocation => 'ಸ್ಥಳ ಖಚಿತಪಡಿಸಿ';

  @override
  String get addressDetailsTitle => 'ವಿಳಾಸದ ವಿವರಗಳು';

  @override
  String get addressDetailsSubtitle =>
      'ಸರಿಯಾದ ಬಾಗಿಲು ತಲುಪಲು ಮನೆ ಸಂಖ್ಯೆ ಮತ್ತು ಗುರುತು ಸೇರಿಸಿ.';

  @override
  String get pinnedLocation => 'ಗುರುತಿಸಿದ ಸ್ಥಳ';

  @override
  String get changePin => 'ಬದಲಾಯಿಸಿ';

  @override
  String get saveAddressAs => 'ಈ ವಿಳಾಸವನ್ನು ಹೀಗೆ ಉಳಿಸಿ';

  @override
  String get labelHome => 'ಮನೆ';

  @override
  String get labelWork => 'ಕಚೇರಿ';

  @override
  String get labelOther => 'ಇತರೆ';

  @override
  String get addressLine1Label => 'ಮನೆ, ಫ್ಲ್ಯಾಟ್ ಅಥವಾ ಕಟ್ಟಡ';

  @override
  String get addressLine1Hint => '12A, ಗ್ರೀನ್ ರೆಸಿಡೆನ್ಸಿ';

  @override
  String get addressLine2Label => 'ರಸ್ತೆ ಅಥವಾ ಪ್ರದೇಶ';

  @override
  String get addressLine2Hint => '2ನೇ ಅವೆನ್ಯೂ, ಅಣ್ಣಾ ನಗರ';

  @override
  String get landmarkLabel => 'ಗುರುತು';

  @override
  String get landmarkHint => 'ಬಸ್ ನಿಲ್ದಾಣದ ಎದುರು';

  @override
  String get cityLabel => 'ನಗರ';

  @override
  String get stateLabel => 'ರಾಜ್ಯ';

  @override
  String get pincodeLabel => 'ಪಿನ್ ಕೋಡ್';

  @override
  String get invalidPincode => 'ಸರಿಯಾದ 6 ಅಂಕಿಯ ಪಿನ್ ಕೋಡ್ ನಮೂದಿಸಿ';

  @override
  String get contactNameLabel => 'ಸಂಪರ್ಕ ಹೆಸರು';

  @override
  String get contactPhoneLabel => 'ಸಂಪರ್ಕ ಸಂಖ್ಯೆ';

  @override
  String get invalidMobileNumber => 'ಸರಿಯಾದ 10 ಅಂಕಿಯ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ';

  @override
  String get makeDefaultAddress => 'ಡೀಫಾಲ್ಟ್ ಆಗಿ ಇಲ್ಲಿಗೇ ಡೆಲಿವರಿ';

  @override
  String get saveAddress => 'ವಿಳಾಸ ಉಳಿಸಿ';

  @override
  String get addressSaved => 'ವಿಳಾಸ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get addressBookTitle => 'ಡೆಲಿವರಿ ವಿಳಾಸಗಳು';

  @override
  String get manageAddresses => 'ಉಳಿಸಿದ ವಿಳಾಸಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get noAddressesTitle => 'ಇನ್ನೂ ವಿಳಾಸಗಳಿಲ್ಲ';

  @override
  String get noAddressesSubtitle =>
      'ನಿಮಗೆ ಡೆಲಿವರಿ ಮಾಡುವ ಅಂಗಡಿಗಳನ್ನು ತೋರಿಸಲು ಒಂದು ವಿಳಾಸ ಸೇರಿಸಿ.';

  @override
  String get addAddress => 'ವಿಳಾಸ ಸೇರಿಸಿ';

  @override
  String get setAsDefault => 'ಡೀಫಾಲ್ಟ್ ಮಾಡಿ';

  @override
  String get editLabel => 'ಸಂಪಾದಿಸಿ';

  @override
  String get addressUpdated => 'ವಿಳಾಸ ನವೀಕರಿಸಲಾಗಿದೆ';

  @override
  String get deleteLabel => 'ಅಳಿಸಿ';

  @override
  String get deleteAddressTitle => 'ಈ ವಿಳಾಸ ಅಳಿಸಬೇಕೇ?';

  @override
  String get deleteAddressMessage => 'ನೀವು ನಂತರ ಮತ್ತೆ ಸೇರಿಸಬಹುದು.';

  @override
  String get rescueDealsTitle => 'ಫುಡ್ ರೆಸ್ಕ್ಯೂ';

  @override
  String get notTakingOrders => 'ಆರ್ಡರ್ ಸ್ವೀಕರಿಸುತ್ತಿಲ್ಲ';

  @override
  String get closedRightNow => 'ಈಗ ಮುಚ್ಚಿದೆ';

  @override
  String minimumOrder(String amount) {
    return 'ಕನಿಷ್ಠ $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count ಉಳಿದಿವೆ';
  }

  @override
  String get soldOut => 'ಮುಗಿದಿದೆ';

  @override
  String get menuEmptyTitle => 'ಇನ್ನೂ ಖಾದ್ಯಗಳಿಲ್ಲ';

  @override
  String get menuEmptySubtitle => 'ಈ ರೆಸ್ಟೋರೆಂಟ್ ತನ್ನ ಮೆನು ಸೇರಿಸಿಲ್ಲ.';

  @override
  String get moreDishesTitle => 'ಇನ್ನಷ್ಟು ಖಾದ್ಯಗಳು';

  @override
  String get menuSearchHint => 'ಖಾದ್ಯಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get filtersShort => 'ಫಿಲ್ಟರ್';

  @override
  String get dietVeg => 'ಸಸ್ಯಾಹಾರ';

  @override
  String get dietEgg => 'ಮೊಟ್ಟೆ';

  @override
  String get dietNonVeg => 'ಮಾಂಸಾಹಾರ';

  @override
  String get menuBestsellerChip => 'ಅತಿ ಹೆಚ್ಚು ಮಾರಾಟ';

  @override
  String get menuFoodType => 'ಆಹಾರದ ಪ್ರಕಾರ';

  @override
  String get menuShowOnly => 'ಇವನ್ನು ಮಾತ್ರ ತೋರಿಸಿ';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಖಾದ್ಯಗಳು',
      one: '1 ಖಾದ್ಯ',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಖಾದ್ಯ ತೋರಿಸಿ',
      one: '1 ಖಾದ್ಯ ತೋರಿಸಿ',
      zero: 'ಖಾದ್ಯಗಳಿಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'ಬೇರೆ ಖಾದ್ಯದ ಹೆಸರು ಪ್ರಯತ್ನಿಸಿ, ಅಥವಾ ಫಿಲ್ಟರ್ ತೆಗೆಯಿರಿ.';

  @override
  String get menuBrowse => 'ಮೆನು';

  @override
  String get customisable => 'ಇಷ್ಟದಂತೆ';

  @override
  String get requiredLabel => 'ಕಡ್ಡಾಯ';

  @override
  String get optionalLabel => 'ಐಚ್ಛಿಕ';

  @override
  String get chooseOne => 'ಒಂದನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';

  @override
  String chooseUpTo(int count) {
    return 'ಗರಿಷ್ಠ $count ಆಯ್ಕೆ ಮಾಡಿ';
  }

  @override
  String chooseAtLeast(int count) {
    return 'ಕನಿಷ್ಠ $count ಆಯ್ಕೆ ಮಾಡಿ';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min ರಿಂದ $max ಆಯ್ಕೆ ಮಾಡಿ';
  }

  @override
  String get specialInstructions => 'ವಿಶೇಷ ಸೂಚನೆಗಳು';

  @override
  String get specialInstructionsHint => 'ಕಡಿಮೆ ಖಾರ, ಈರುಳ್ಳಿ ಬೇಡ…';

  @override
  String addForAmount(String amount) {
    return 'ಸೇರಿಸಿ · $amount';
  }

  @override
  String get deliveryLabel => 'ಡೆಲಿವರಿ';

  @override
  String get pickupLabel => 'ಸ್ವತಃ ತೆಗೆದುಕೊಳ್ಳುವುದು';

  @override
  String get packagingLabel => 'ಪ್ಯಾಕಿಂಗ್';

  @override
  String get discountLabel => 'ರಿಯಾಯಿತಿ';

  @override
  String get billDetailsTitle => 'ಬಿಲ್ ವಿವರ';

  @override
  String get clearCart => 'ಕಾರ್ಟ್ ಖಾಲಿ ಮಾಡಿ';

  @override
  String get clearCartTitle => 'ಈ ಕಾರ್ಟ್ ಖಾಲಿ ಮಾಡಬೇಕೆ?';

  @override
  String get clearCartMessage => 'ಅದರಲ್ಲಿರುವ ಎಲ್ಲವನ್ನೂ ತೆಗೆದುಹಾಕಲಾಗುತ್ತದೆ.';

  @override
  String unavailableItemsNotice(String items) {
    return 'ಈಗ ಲಭ್ಯವಿಲ್ಲ: $items';
  }

  @override
  String get removeUnavailable => 'ಅವುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String minimumNotMet(String amount) {
    return 'ಕನಿಷ್ಠ ಆರ್ಡರ್ $amount';
  }

  @override
  String get checkoutTitle => 'ಚೆಕ್‌ಔಟ್';

  @override
  String get deliveryAddressLabel => 'ಡೆಲಿವರಿ ವಿಳಾಸ';

  @override
  String get noAddressSelected => 'ವಿಳಾಸ ಆಯ್ಕೆಯಾಗಿಲ್ಲ';

  @override
  String get paymentMethodLabel => 'ಪಾವತಿ';

  @override
  String get payOnDelivery => 'ಡೆಲಿವರಿ ಸಮಯದಲ್ಲಿ ನಗದು';

  @override
  String get noteToRestaurant => 'ರೆಸ್ಟೋರೆಂಟ್‌ಗೆ ಟಿಪ್ಪಣಿ';

  @override
  String get noteToRestaurantHint => 'ಬೆಲ್ ಎರಡು ಬಾರಿ ಬಾರಿಸಿ…';

  @override
  String get activeOrdersTitle => 'ನಡೆಯುತ್ತಿರುವ ಆರ್ಡರ್';

  @override
  String get pastOrdersTitle => 'ಹಿಂದಿನ ಆರ್ಡರ್';

  @override
  String get orderItemsTitle => 'ಖಾದ್ಯಗಳು';

  @override
  String get orderProgressTitle => 'ಪ್ರಗತಿ';

  @override
  String get arrivingIn => 'ತಲುಪಲು';

  @override
  String get pickupCodeLabel => 'ಪಿಕಪ್ ಕೋಡ್';

  @override
  String get cancellationReasonLabel => 'ರದ್ದಾದ ಕಾರಣ';

  @override
  String get riderLabel => 'ಡೆಲಿವರಿ ಪಾರ್ಟನರ್';

  @override
  String get callRider => 'ಕರೆ ಮಾಡಿ';

  @override
  String get trackRider => 'ರೈಡರ್ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get riderLocationSoon =>
      'ನಿಮ್ಮ ಆರ್ಡರ್ ಪಡೆದ ನಂತರ ರೈಡರ್ ಸ್ಥಳ ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get riderLocationStale => 'ರೈಡರ್ ಸ್ಥಳ ಅಪ್‌ಡೇಟ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get recentreOnRider => 'ರೈಡರ್ ಮೇಲೆ ಕೇಂದ್ರೀಕರಿಸಿ';

  @override
  String get viewInvoice => 'ತೆರಿಗೆ ಇನ್‌ವಾಯ್ಸ್';

  @override
  String get cancelOrder => 'ಆರ್ಡರ್ ರದ್ದುಗೊಳಿಸಿ';

  @override
  String get cancelOrderTitle => 'ಈ ಆರ್ಡರ್ ರದ್ದುಗೊಳಿಸಬೇಕೆ?';

  @override
  String get cancelOrderMessage =>
      'ರೆಸ್ಟೋರೆಂಟ್ ಸ್ವೀಕರಿಸುವ ಮೊದಲು ಮಾತ್ರ ರದ್ದುಗೊಳಿಸಬಹುದು.';

  @override
  String get cancelReasonLabel => 'ಕಾರಣ';

  @override
  String get cancelReasonFallback => 'ಗ್ರಾಹಕರು ರದ್ದುಗೊಳಿಸಿದ್ದಾರೆ';

  @override
  String get orderCancelled => 'ಆರ್ಡರ್ ರದ್ದಾಗಿದೆ';

  @override
  String get currentLocationLabel => 'ಪ್ರಸ್ತುತ ಸ್ಥಳ';

  @override
  String get onLabel => 'ಆನ್';

  @override
  String get offLabel => 'ಆಫ್';

  @override
  String get profileCoupons => 'ನಿಮ್ಮ ಕೂಪನ್‌ಗಳು';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಬಳಸಬಹುದು',
      one: '1 ಬಳಸಬಹುದು',
      zero: 'ಇನ್ನೂ ಇಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'ನಿಮ್ಮ ಆದ್ಯತೆಗಳು';

  @override
  String get profileVegMode => 'ಸಸ್ಯಾಹಾರ ಮೋಡ್';

  @override
  String get profileVegModeHint => 'ಸಸ್ಯಾಹಾರಿ ರೆಸ್ಟೋರೆಂಟ್ ಮತ್ತು ಖಾದ್ಯಗಳು ಮಾತ್ರ';

  @override
  String get profileAppearance => 'ಥೀಮ್';

  @override
  String get appearanceSystem => 'ಫೋನ್‌ನಂತೆಯೇ';

  @override
  String get appearanceLight => 'ಲೈಟ್';

  @override
  String get appearanceDark => 'ಡಾರ್ಕ್';

  @override
  String get profileNotifications => 'ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get profileFoodDelivery => 'ಫುಡ್ ಡೆಲಿವರಿ';

  @override
  String get profileFavourites => 'ನಿಮ್ಮ ಮೆಚ್ಚಿನವು';

  @override
  String get profileHelp => 'ಸಹಾಯ ಮತ್ತು ಬೆಂಬಲ';

  @override
  String get profileMore => 'ಇನ್ನಷ್ಟು';

  @override
  String get profileFeedback => 'ಅಭಿಪ್ರಾಯ ಕಳುಹಿಸಿ';

  @override
  String get profileSafety => 'ಸುರಕ್ಷತಾ ತುರ್ತು ಸ್ಥಿತಿ ವರದಿ ಮಾಡಿ';

  @override
  String get profileAbout => 'Nexmile ಬಗ್ಗೆ';

  @override
  String get couponsEmptyTitle => 'ಸದ್ಯಕ್ಕೆ ಕೂಪನ್‌ಗಳಿಲ್ಲ';

  @override
  String get couponsEmptyBody =>
      'ನೀವು ಬಳಸಬಹುದಾದ ಕೂಪನ್ ಬಂದಾಗ ಅದು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String couponFlatOff(String amount) {
    return '$amount ರಿಯಾಯಿತಿ';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% ರಿಯಾಯಿತಿ';
  }

  @override
  String couponUpTo(String amount) {
    return 'ಗರಿಷ್ಠ $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount ಕ್ಕಿಂತ ಹೆಚ್ಚಿನ ಆರ್ಡರ್‌ಗಳಿಗೆ';
  }

  @override
  String couponValidTill(String date) {
    return '$date ವರೆಗೆ ಮಾನ್ಯ';
  }

  @override
  String get couponAllRestaurants => 'ಎಲ್ಲಾ ರೆಸ್ಟೋರೆಂಟ್‌ಗಳಲ್ಲಿ';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant ನಲ್ಲಿ';
  }

  @override
  String couponCopied(String code) {
    return '$code ಕೋಡ್ ಕಾಪಿ ಆಗಿದೆ';
  }

  @override
  String get favouritesEmptyTitle => 'ಇನ್ನೂ ಮೆಚ್ಚಿನವುಗಳಿಲ್ಲ';

  @override
  String get favouritesEmptyBody =>
      'ರೆಸ್ಟೋರೆಂಟ್ ಅನ್ನು ಇಲ್ಲಿ ಉಳಿಸಲು ಅದರ ಮೇಲಿನ ಹೃದಯ ಚಿಹ್ನೆ ಒತ್ತಿ.';

  @override
  String get helpCall => 'ನಮಗೆ ಕರೆ ಮಾಡಿ';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'ನಮಗೆ ಇಮೇಲ್ ಮಾಡಿ';

  @override
  String helpHours(String hours) {
    return 'ನಾವು $hours ಲಭ್ಯವಿರುತ್ತೇವೆ';
  }

  @override
  String get helpFaqs => 'ಸಾಮಾನ್ಯ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get helpNothing =>
      'ಸಹಾಯದ ವಿವರಗಳು ಸದ್ಯಕ್ಕೆ ಲಭ್ಯವಿಲ್ಲ. ದಯವಿಟ್ಟು ಸ್ವಲ್ಪ ಸಮಯದ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get feedbackPrompt => 'Nexmile ಬಳಸುವ ಅನುಭವ ಹೇಗಿದೆ?';

  @override
  String get feedbackHint =>
      'ನಿಮಗೆ ಏನು ಇಷ್ಟವಾಯಿತು, ಅಥವಾ ನಾವು ಏನನ್ನು ಇನ್ನೂ ಚೆನ್ನಾಗಿ ಮಾಡಬಹುದು ಎಂದು ತಿಳಿಸಿ';

  @override
  String get feedbackNeedRating => 'ಮೊದಲು ರೇಟಿಂಗ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get feedbackThanks => 'ಧನ್ಯವಾದ! ನಿಮ್ಮ ಅಭಿಪ್ರಾಯ ನಮ್ಮ ತಂಡಕ್ಕೆ ತಲುಪಿದೆ.';

  @override
  String get safetyIntro =>
      'ನಿಮಗೆ ಅಥವಾ ಬೇರೆಯವರಿಗೆ ಅಪಾಯವಿದ್ದರೆ, ಮೊದಲು ತುರ್ತು ಸೇವೆಗಳಿಗೆ ಕರೆ ಮಾಡಿ.';

  @override
  String get safetyCallEmergency => '112 ಗೆ ಕರೆ ಮಾಡಿ';

  @override
  String get safetyCallEmergencyBody => 'ಪೊಲೀಸ್, ಅಗ್ನಿಶಾಮಕ ಮತ್ತು ಆಂಬ್ಯುಲೆನ್ಸ್';

  @override
  String get safetyCallNexmile => 'Nexmile ಸುರಕ್ಷತಾ ಲೈನ್‌ಗೆ ಕರೆ ಮಾಡಿ';

  @override
  String get safetyCallNexmileBody => 'ದಿನದ 24 ಗಂಟೆಯೂ ಲಭ್ಯ';

  @override
  String aboutVersion(String version) {
    return 'ಆವೃತ್ತಿ $version';
  }

  @override
  String get aboutTerms => 'ಸೇವಾ ನಿಯಮಗಳು';

  @override
  String get aboutPrivacy => 'ಗೌಪ್ಯತಾ ನೀತಿ';

  @override
  String get aboutLicences => 'ಓಪನ್-ಸೋರ್ಸ್ ಲೈಸೆನ್ಸ್‌ಗಳು';

  @override
  String get notifyOrderUpdates => 'ಆರ್ಡರ್ ಅಪ್‌ಡೇಟ್‌ಗಳು';

  @override
  String get notifyOrderUpdatesBody =>
      'ನಿಮ್ಮ ಆಹಾರ ಎಲ್ಲಿದೆ ಎಂದು ತಿಳಿಯಲು ಇದು ಯಾವಾಗಲೂ ಆನ್ ಇರುತ್ತದೆ.';

  @override
  String get notifyPromotions => 'ಆಫರ್ ಮತ್ತು ಪ್ರಚಾರಗಳು';

  @override
  String get notifyPromotionsBody =>
      'ಡೀಲ್‌ಗಳು, ಕೂಪನ್‌ಗಳು ಮತ್ತು ನಿಮ್ಮ ಹತ್ತಿರದ ಹೊಸ ರೆಸ್ಟೋರೆಂಟ್‌ಗಳು.';

  @override
  String get notifyPhoneOff => 'ಈ ಫೋನ್‌ನಲ್ಲಿ Nexmile ಗೆ ನೋಟಿಫಿಕೇಶನ್ ಆಫ್ ಆಗಿದೆ.';

  @override
  String get notifyTurnOn => 'ಆನ್ ಮಾಡಿ';

  @override
  String get linkOpenFailed => 'ಇದನ್ನು ಈ ಫೋನ್‌ನಲ್ಲಿ ತೆರೆಯಲು ಆಗಲಿಲ್ಲ.';

  @override
  String get editProfileTitle => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ';

  @override
  String get editProfileSubtitle =>
      'ರೆಸ್ಟೋರೆಂಟ್ ಮತ್ತು ಡೆಲಿವರಿ ಪಾರ್ಟನರ್‌ಗೆ ನಿಮ್ಮ ಹೆಸರೇ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get saveChanges => 'ಬದಲಾವಣೆಗಳನ್ನು ಉಳಿಸಿ';

  @override
  String get profileUpdated => 'ಪ್ರೊಫೈಲ್ ನವೀಕರಿಸಲಾಗಿದೆ';

  @override
  String get deleteAccount => 'ಖಾತೆ ಅಳಿಸಿ';

  @override
  String get deleteAccountTitle => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಅಳಿಸಬೇಕೆ?';

  @override
  String get deleteAccountMessage =>
      'ಎಲ್ಲಾ ಸಾಧನಗಳಿಂದ ಸೈನ್ ಔಟ್ ಆಗುತ್ತೀರಿ. ಹಳೆಯ ಆರ್ಡರ್ ಮತ್ತು ಬಿಲ್‌ಗಳನ್ನು ತೆರಿಗೆ ದಾಖಲೆಗಾಗಿ ಇಡಲಾಗುತ್ತದೆ.';

  @override
  String get accountDeleted => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get devicesTitle => 'ಸೈನ್-ಇನ್ ಸಾಧನಗಳು';

  @override
  String get devicesSubtitle => 'ನೀವು ಎಲ್ಲಿ ಸೈನ್ ಇನ್ ಆಗಿದ್ದೀರಿ';

  @override
  String get devicesEmptyTitle => 'ಬೇರೆ ಸಾಧನಗಳಿಲ್ಲ';

  @override
  String get devicesEmptySubtitle =>
      'ನೀವು ಈ ಸಾಧನದಲ್ಲಿ ಮಾತ್ರ ಸೈನ್ ಇನ್ ಆಗಿದ್ದೀರಿ.';

  @override
  String get signOutDevice => 'ಸೈನ್ ಔಟ್';

  @override
  String get signOutDeviceTitle => 'ಈ ಸಾಧನವನ್ನು ಸೈನ್ ಔಟ್ ಮಾಡಬೇಕೆ?';

  @override
  String get signOutDeviceMessage =>
      'ನೀವು ಬಳಸುತ್ತಿರುವುದು ಇದೇ ಆದರೆ ಮತ್ತೆ ಸೈನ್ ಇನ್ ಮಾಡಬೇಕಾಗುತ್ತದೆ.';

  @override
  String get deviceSignedOut => 'ಸಾಧನ ಸೈನ್ ಔಟ್ ಆಗಿದೆ';

  @override
  String get signOutEverywhere => 'ಎಲ್ಲೆಡೆ ಸೈನ್ ಔಟ್';

  @override
  String get signOutEverywhereTitle => 'ಎಲ್ಲೆಡೆ ಸೈನ್ ಔಟ್ ಮಾಡಬೇಕೆ?';

  @override
  String get signOutEverywhereMessage =>
      'ಈ ಸಾಧನ ಸೇರಿದಂತೆ ಎಲ್ಲಾ ಸಾಧನಗಳು ಸೈನ್ ಔಟ್ ಆಗುತ್ತವೆ.';

  @override
  String get unknownDevice => 'ಅಜ್ಞಾತ ಸಾಧನ';

  @override
  String get activeNow => 'ಈಗ ಸಕ್ರಿಯ';

  @override
  String minutesAgo(int count) {
    return '$count ನಿಮಿಷಗಳ ಹಿಂದೆ';
  }

  @override
  String hoursAgo(int count) {
    return '$count ಗಂಟೆಗಳ ಹಿಂದೆ';
  }

  @override
  String daysAgo(int count) {
    return '$count ದಿನಗಳ ಹಿಂದೆ';
  }

  @override
  String get filtersAndSorting => 'ಫಿಲ್ಟರ್ ಮತ್ತು ಕ್ರಮ';

  @override
  String get clearAll => 'ಎಲ್ಲವನ್ನೂ ತೆಗೆ';

  @override
  String get showResults => 'ಫಲಿತಾಂಶ ತೋರಿಸು';

  @override
  String get closeLabel => 'ಮುಚ್ಚು';

  @override
  String get sortByTitle => 'ಕ್ರಮ';

  @override
  String get sortRelevance => 'ಪ್ರಸ್ತುತತೆ';

  @override
  String get sortRating => 'ರೇಟಿಂಗ್';

  @override
  String get sortDeliveryTime => 'ಡೆಲಿವರಿ ಸಮಯ';

  @override
  String get sortCostLowHigh => 'ಬೆಲೆ: ಕಡಿಮೆಯಿಂದ ಹೆಚ್ಚು';

  @override
  String get sortCostHighLow => 'ಬೆಲೆ: ಹೆಚ್ಚಿನಿಂದ ಕಡಿಮೆ';

  @override
  String get timeSection => 'ಸಮಯ';

  @override
  String get nearAndFast => 'ಹತ್ತಿರ ಮತ್ತು ವೇಗ';

  @override
  String get openNow => 'ಈಗ ತೆರೆದಿದೆ';

  @override
  String get ratingSection => 'ರೆಸ್ಟೋರೆಂಟ್ ರೇಟಿಂಗ್';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ರೇಟಿಂಗ್';
  }

  @override
  String get offersSection => 'ಆಫರ್';

  @override
  String get hasOffersLabel => 'ಆಫರ್ ಇರುವವು';

  @override
  String get dishPriceSection => 'ಖಾದ್ಯದ ಬೆಲೆ';

  @override
  String costUnder(String amount) {
    return '$amount ಕ್ಕಿಂತ ಕಡಿಮೆ';
  }

  @override
  String costBetween(String min, String max) {
    return '$min – $max';
  }

  @override
  String costOver(String amount) {
    return '$amount+';
  }

  @override
  String get moreSection => 'ಇನ್ನಷ್ಟು';

  @override
  String get noPackagingCharges => 'ಪ್ಯಾಕಿಂಗ್ ಶುಲ್ಕವಿಲ್ಲ';

  @override
  String get allRestaurantsTitle => 'ಎಲ್ಲಾ ರೆಸ್ಟೋರೆಂಟ್‌ಗಳು';

  @override
  String get whatsOnYourMind => 'ಏನು ತಿನ್ನಬೇಕು?';

  @override
  String get listeningNow => 'ಕೇಳುತ್ತಿದ್ದೇವೆ…';

  @override
  String get speakNowHint => 'ಖಾದ್ಯ ಅಥವಾ ರೆಸ್ಟೋರೆಂಟ್ ಹೇಳಿ';

  @override
  String get voiceUnavailable => 'ಧ್ವನಿ ಹುಡುಕಾಟ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get voiceUnavailableBody => 'ನೀವು ಟೈಪ್ ಮಾಡಿಯೂ ಹುಡುಕಬಹುದು.';

  @override
  String get microphoneDenied => 'ಮೈಕ್ರೋಫೋನ್ ಅನುಮತಿ ಇಲ್ಲ';

  @override
  String get voiceSearchLabel => 'ಧ್ವನಿಯಿಂದ ಹುಡುಕಿ';

  @override
  String get ratingsAndReviews => 'ರೇಟಿಂಗ್‌ಗಳು ಮತ್ತು ವಿಮರ್ಶೆಗಳು';

  @override
  String get reviewsWithTextOnly => 'ವಿಮರ್ಶೆ ಇರುವವು';

  @override
  String get noReviewsTitle => 'ಇನ್ನೂ ರೇಟಿಂಗ್ ಇಲ್ಲ';

  @override
  String get noReviewsSubtitle => 'ಆರ್ಡರ್ ನಂತರ ಮೊದಲ ರೇಟಿಂಗ್ ನೀವೇ ನೀಡಿ.';

  @override
  String get rateOrderTitle => 'ನಿಮ್ಮ ಆರ್ಡರ್‌ಗೆ ರೇಟಿಂಗ್ ನೀಡಿ';

  @override
  String get rateDishesTitle => 'ಖಾದ್ಯಗಳಿಗೆ ರೇಟಿಂಗ್ ನೀಡಿ';

  @override
  String get reviewHint => 'ಇನ್ನೇನಾದರೂ ಹೇಳಬೇಕೆ? (ಐಚ್ಛಿಕ)';

  @override
  String get submitRating => 'ರೇಟಿಂಗ್ ಕಳುಹಿಸಿ';

  @override
  String get reviewThanks => 'ಧನ್ಯವಾದ — ನಿಮ್ಮ ರೇಟಿಂಗ್ ಸೇರಿದೆ.';

  @override
  String get rateThisOrder => 'ಈ ಆರ್ಡರ್‌ಗೆ ರೇಟಿಂಗ್ ನೀಡಿ';

  @override
  String get walletTitle => 'Nexmile ವಾಲೆಟ್';

  @override
  String get walletBalance => 'ವಾಲೆಟ್ ಬ್ಯಾಲೆನ್ಸ್';

  @override
  String get walletBalanceHint => 'ಯಾವುದೇ ಆರ್ಡರ್‌ಗೆ ಪಾವತಿಸಲು ಬಳಸಿ.';

  @override
  String get walletAddMoney => 'ಹಣ ಸೇರಿಸಿ';

  @override
  String get walletEnterAmount => 'ಮೊತ್ತ ನಮೂದಿಸಿ';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ರಿಂದ $max ವರೆಗೆ';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount ಸೇರಿಸಿ';
  }

  @override
  String get walletSecuredBy => 'ಪಾವತಿಗಳು Razorpay ಮೂಲಕ ಸುರಕ್ಷಿತ';

  @override
  String get walletHistory => 'ಇತಿಹಾಸ';

  @override
  String get walletNoHistory =>
      'ಇನ್ನೂ ವಹಿವಾಟುಗಳಿಲ್ಲ. ನೀವು ಸೇರಿಸುವ ಅಥವಾ ಖರ್ಚು ಮಾಡುವ ಹಣ ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get walletEntryTopUp => 'ಹಣ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get walletEntryOrder => 'ಆರ್ಡರ್‌ಗೆ ಪಾವತಿಸಲಾಗಿದೆ';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ಆರ್ಡರ್ $number ಗೆ ಪಾವತಿಸಲಾಗಿದೆ';
  }

  @override
  String get walletEntryRefund => 'ರೀಫಂಡ್';

  @override
  String walletMoneyAdded(String amount) {
    return 'ನಿಮ್ಮ ವಾಲೆಟ್‌ಗೆ $amount ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String get walletPaymentFailed =>
      'ಪಾವತಿ ವಿಫಲವಾಗಿದೆ. ನಿಮ್ಮ ಖಾತೆಯಿಂದ ಹಣ ಕಡಿತವಾಗಿಲ್ಲ.';

  @override
  String get walletPaymentConfirming =>
      'ಪಾವತಿ ಸಿಕ್ಕಿದೆ. ಕೆಲವು ನಿಮಿಷಗಳಲ್ಲಿ ನಿಮ್ಮ ಬ್ಯಾಲೆನ್ಸ್ ಅಪ್‌ಡೇಟ್ ಆಗುತ್ತದೆ.';

  @override
  String get walletUseBalance => 'ವಾಲೆಟ್ ಬ್ಯಾಲೆನ್ಸ್ ಬಳಸಿ';

  @override
  String walletAvailable(String amount) {
    return 'ಲಭ್ಯ: $amount';
  }

  @override
  String get walletPaidFromWallet => 'ವಾಲೆಟ್‌ನಿಂದ ಪಾವತಿ';

  @override
  String get walletPayOnDelivery => 'ಡೆಲಿವರಿ ಸಮಯದಲ್ಲಿ ಪಾವತಿ';

  @override
  String get walletCoversOrder => 'ಪೂರ್ತಿಯಾಗಿ ವಾಲೆಟ್‌ನಿಂದ ಪಾವತಿ';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return 'ವಾಲೆಟ್‌ನಿಂದ $wallet, ಡೆಲಿವರಿ ಸಮಯದಲ್ಲಿ $rest';
  }

  @override
  String get walletTopUpUnavailable =>
      'ಹಣ ಸೇರಿಸುವ ಸೌಲಭ್ಯ ಸದ್ಯಕ್ಕೆ ಲಭ್ಯವಿಲ್ಲ. ದಯವಿಟ್ಟು ಸ್ವಲ್ಪ ಸಮಯದ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String walletFull(String limit) {
    return 'ನಿಮ್ಮ ವಾಲೆಟ್ $limit ಮಿತಿ ತಲುಪಿದೆ.';
  }

  @override
  String get searchAddressHint => 'ಪ್ರದೇಶ, ರಸ್ತೆ ಅಥವಾ ಗುರುತು ಹುಡುಕಿ';

  @override
  String get selectLocationTitle => 'ಸ್ಥಳ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get useCurrentLocation => 'ಪ್ರಸ್ತುತ ಸ್ಥಳ ಬಳಸಿ';

  @override
  String get locatingYou => 'ನೀವು ಎಲ್ಲಿದ್ದೀರಿ ಎಂದು ಹುಡುಕುತ್ತಿದ್ದೇವೆ…';

  @override
  String get locationOffHint => 'ಇದನ್ನು ಬಳಸಲು ಸ್ಥಳಕ್ಕೆ ಅನುಮತಿ ನೀಡಿ';

  @override
  String get savedAddressesHeading => 'ಉಳಿಸಿದ ವಿಳಾಸಗಳು';

  @override
  String get recentLocationsHeading => 'ಇತ್ತೀಚಿನ ಸ್ಥಳಗಳು';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ಡೆಲಿವರಿ ಸ್ಥಳ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get movePinTooltip => 'ಪಿನ್ ಅನ್ನು ನಿಮ್ಮ ನಿಖರ ಡೆಲಿವರಿ ಸ್ಥಳಕ್ಕೆ ಸರಿಸಿ';

  @override
  String get locatingPin => 'ವಿಳಾಸ ಹುಡುಕುತ್ತಿದ್ದೇವೆ…';

  @override
  String get deliveryDetailsHeading => 'ಡೆಲಿವರಿ ವಿವರಗಳು';

  @override
  String get addressDetailsLabel => 'ವಿಳಾಸದ ವಿವರಗಳು*';

  @override
  String get addressDetailsHint => 'ಉದಾ. ಮಹಡಿ, ಮನೆ ಸಂಖ್ಯೆ';

  @override
  String get missingAreaHint =>
      'ಈ ಪಿನ್‌ಗೆ ಪೂರ್ಣ ವಿಳಾಸ ಸಿಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಉಳಿದ ವಿವರ ತುಂಬಿ.';

  @override
  String get whoToContact => 'ಈ ಡೆಲಿವರಿಗೆ ಯಾರನ್ನು ಸಂಪರ್ಕಿಸಬೇಕು?';

  @override
  String get contactMyself => 'ನಾನೇ';

  @override
  String get contactSomeoneElse => 'ಬೇರೆಯವರು';

  @override
  String get receiverDetailsHeading => 'ಈ ವಿಳಾಸಕ್ಕೆ ಸ್ವೀಕರಿಸುವವರ ವಿವರ';

  @override
  String get receiverAddPrompt => 'ಸ್ವೀಕರಿಸುವವರ ಹೆಸರು ಮತ್ತು ಸಂಖ್ಯೆ ಸೇರಿಸಿ';

  @override
  String get receiverSheetTitle => 'ಸ್ವೀಕರಿಸುವವರ ವಿವರ';

  @override
  String get doorPhotoHeading => 'ಬಾಗಿಲು/ಕಟ್ಟಡದ ಫೋಟೋ (ಐಚ್ಛಿಕ)';

  @override
  String get doorPhotoAdd => 'ಫೋಟೋ ಸೇರಿಸಿ';

  @override
  String get doorPhotoBody =>
      'ಇದರಿಂದ ನಮ್ಮ ಡೆಲಿವರಿ ಪಾರ್ಟನರ್‌ಗಳು ನಿಮ್ಮ ನಿಖರ ಸ್ಥಳವನ್ನು ಬೇಗ ಹುಡುಕುತ್ತಾರೆ';

  @override
  String get doorPhotoChange => 'ಬದಲಾಯಿಸಿ';

  @override
  String get doorPhotoRemove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get photoFromCamera => 'ಫೋಟೋ ತೆಗೆಯಿರಿ';

  @override
  String get photoFromGallery => 'ಗ್ಯಾಲರಿಯಿಂದ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get photoUploaded => 'ಫೋಟೋ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get photoUploadFailed =>
      'ಫೋಟೋ ಅಪ್‌ಲೋಡ್ ಆಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಸ್ವಲ್ಪ ಸಮಯದ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get addressSavedPhotoFailed =>
      'ವಿಳಾಸ ಉಳಿಸಲಾಗಿದೆ. ಫೋಟೋ ಅಪ್‌ಲೋಡ್ ಆಗಲಿಲ್ಲ.';

  @override
  String get removePhotoLabel => 'ಫೋಟೋ ತೆಗೆದುಹಾಕಿ';

  @override
  String get photoRemoved => 'ಫೋಟೋ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String get shareLabel => 'ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get addDoorPhotoLabel => 'ಬಾಗಿಲಿನ ಫೋಟೋ ಸೇರಿಸಿ';

  @override
  String get searchAddressNoResults =>
      'ಯಾವುದೇ ಸ್ಥಳ ಸಿಗಲಿಲ್ಲ. ಹತ್ತಿರದ ಗುರುತು, ಪ್ರದೇಶದ ಹೆಸರು ಅಥವಾ ಪಿನ್ ಕೋಡ್ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get clearLabel => 'ಖಾಲಿ ಮಾಡಿ';

  @override
  String get trackingArrivingNow => 'ಈಗಲೇ ತಲುಪುತ್ತಿದೆ';

  @override
  String get trackingLive => 'ಲೈವ್';

  @override
  String get trackingStepConfirmed => 'ಖಚಿತವಾಗಿದೆ';

  @override
  String get trackingStepPreparing => 'ತಯಾರಾಗುತ್ತಿದೆ';

  @override
  String get trackingStepOnTheWay => 'ದಾರಿಯಲ್ಲಿದೆ';

  @override
  String get trackingStepDelivered => 'ಡೆಲಿವರಿ ಆಗಿದೆ';

  @override
  String get trackingFindingRider => 'ಡೆಲಿವರಿ ಪಾರ್ಟನರ್ ಅನ್ನು ನೇಮಿಸುತ್ತಿದ್ದೇವೆ…';

  @override
  String get trackingPinYou => 'ನೀವು';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance ದೂರದಲ್ಲಿದ್ದಾರೆ';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name ಗೆ ಮೆಸೇಜ್ ಮಾಡಿ';
  }

  @override
  String get trackingDeliveringTo => 'ಡೆಲಿವರಿ ವಿಳಾಸ';

  @override
  String get trackingOrderDetails => 'ಆರ್ಡರ್ ವಿವರಗಳು';

  @override
  String get dispatchSearching =>
      'ರೆಸ್ಟೋರೆಂಟ್ ಹತ್ತಿರ ಡೆಲಿವರಿ ಪಾರ್ಟನರ್ ಹುಡುಕುತ್ತಿದ್ದೇವೆ…';

  @override
  String get dispatchNoRider =>
      'ಇನ್ನೂ ಯಾವ ಡೆಲಿವರಿ ಪಾರ್ಟನರ್ ಕೂಡ ಆರ್ಡರ್ ಸ್ವೀಕರಿಸಿಲ್ಲ. ನಮ್ಮ ತಂಡ ಈಗ ಒಬ್ಬರನ್ನು ನೇಮಿಸುತ್ತಿದೆ.';

  @override
  String get vehicleBike => 'ಬೈಕ್';

  @override
  String get vehicleScooter => 'ಸ್ಕೂಟರ್';

  @override
  String get vehicleBicycle => 'ಸೈಕಲ್';

  @override
  String get vehicleElectric => 'ಎಲೆಕ್ಟ್ರಿಕ್ ಸ್ಕೂಟರ್';

  @override
  String get exitTitle => 'Nexmile ನಿಂದ ಹೊರಬರಬೇಕೇ?';

  @override
  String get exitBody => 'ನೀವು ಖಚಿತವಾಗಿ ಆ್ಯಪ್‌ನಿಂದ ಹೊರಬರಬೇಕೇ?';

  @override
  String get exitConfirm => 'ಹೊರಬನ್ನಿ';

  @override
  String cartSavedBanner(String amount) {
    return 'ಈ ಆರ್ಡರ್‌ನಲ್ಲಿ ನೀವು $amount ಉಳಿಸಿದ್ದೀರಿ';
  }

  @override
  String get cartAddMoreItems => 'ಇನ್ನಷ್ಟು ಖಾದ್ಯ ಸೇರಿಸಿ';

  @override
  String get cartAddNote => 'ರೆಸ್ಟೋರೆಂಟ್‌ಗೆ ಟಿಪ್ಪಣಿ ಸೇರಿಸಿ';

  @override
  String get cartOrderNoteHint => 'ಉದಾ. ಯಾವುದರಲ್ಲೂ ಈರುಳ್ಳಿ, ಬೆಳ್ಳುಳ್ಳಿ ಹಾಕಬೇಡಿ';

  @override
  String get cartNoteSave => 'ಉಳಿಸಿ';

  @override
  String get cartNoCutlery => 'ಸ್ಪೂನ್, ಫೋರ್ಕ್ ಕಳುಹಿಸಬೇಡಿ';

  @override
  String get cartNoCutleryThanks =>
      'ಪ್ಲಾಸ್ಟಿಕ್ ತ್ಯಾಜ್ಯ ಕಡಿಮೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡಿದ್ದಕ್ಕೆ ಧನ್ಯವಾದ';

  @override
  String get cartSavingsCorner => 'ಉಳಿತಾಯ ವಿಭಾಗ';

  @override
  String get cartDeliveryInstructions => 'ಡೆಲಿವರಿ ಸೂಚನೆಗಳು';

  @override
  String get cartInstructionsRider =>
      'ಇವು ನಿಮ್ಮ ಡೆಲಿವರಿ ಪಾರ್ಟನರ್‌ಗೆ ಮಾತ್ರ ಕಾಣಿಸುತ್ತವೆ';

  @override
  String get instructionLeaveAtDoor => 'ಬಾಗಿಲ ಬಳಿ ಇಡಿ';

  @override
  String get instructionNoBell => 'ಬೆಲ್ ಬಾರಿಸಬೇಡಿ';

  @override
  String get instructionNoCall => 'ಕರೆ ಮಾಡಬೇಡಿ';

  @override
  String get instructionSecurity => 'ಸೆಕ್ಯುರಿಟಿ ಬಳಿ ಕೊಡಿ';

  @override
  String get instructionPet => 'ಮನೆಯಲ್ಲಿ ಸಾಕುಪ್ರಾಣಿ ಇದೆ';

  @override
  String get cartInclTaxes => 'ತೆರಿಗೆ ಮತ್ತು ಶುಲ್ಕಗಳು ಸೇರಿ';

  @override
  String cartSavedTag(String amount) {
    return '$amount ಉಳಿತಾಯ';
  }

  @override
  String get cartPayUsing => 'ಪಾವತಿ ವಿಧಾನ';

  @override
  String get cartWalletAndCash => 'ವಾಲೆಟ್ + ನಗದು';

  @override
  String cartCashRest(String amount) {
    return 'ಆರ್ಡರ್ ಬಂದಾಗ $amount ಪಾವತಿಸಿ';
  }

  @override
  String get cartCashFull => 'ಆರ್ಡರ್ ಬಂದಾಗ ಪಾವತಿಸಿ';

  @override
  String get cartCashNothing => 'ಡೆಲಿವರಿ ಸಮಯದಲ್ಲಿ ಏನೂ ಪಾವತಿಸಬೇಕಿಲ್ಲ';

  @override
  String get cartTotal => 'ಒಟ್ಟು';

  @override
  String get cartPlaceOrder => 'ಆರ್ಡರ್ ಮಾಡಿ';

  @override
  String cartDeliverTo(String place) {
    return '$place ಗೆ ಡೆಲಿವರಿ';
  }

  @override
  String get cartChange => 'ಬದಲಾಯಿಸಿ';

  @override
  String get cartNoAddress => 'ಎಲ್ಲಿಗೆ ಡೆಲಿವರಿ ಮಾಡಬೇಕು?';

  @override
  String get cartNoAddressHint => 'ಆರ್ಡರ್ ಮಾಡಲು ವಿಳಾಸ ಸೇರಿಸಿ';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant ನಿಂದ ಪಿಕಪ್';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'ಸುಮಾರು $minutes ನಿಮಿಷಗಳಲ್ಲಿ ಸಿದ್ಧ';
  }

  @override
  String get cartChooseAddress => 'ಡೆಲಿವರಿ ವಿಳಾಸ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get cartDone => 'ಸರಿ';

  @override
  String get supportTitle => 'Nexmile ಬೆಂಬಲ';

  @override
  String get supportBubble => 'ಸಹಾಯ';

  @override
  String get supportAiLabel => 'AI ಸಹಾಯಕ';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ತಂಡ';
  }

  @override
  String get supportDemoBanner =>
      'ಡೆಮೊ: ಇವು ಮಾದರಿ ಉತ್ತರಗಳು ಮಾತ್ರ. ನಿಜವಾದ AI ಸಹಾಯಕ ಇನ್ನೂ ಸಂಪರ್ಕಗೊಂಡಿಲ್ಲ.';

  @override
  String get supportEmptyTitle => 'ನಿಮಗೆ ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?';

  @override
  String get supportEmptyBody =>
      'ಆರ್ಡರ್, ಪಾವತಿ ಅಥವಾ ಬೇರೆ ಯಾವುದೇ ವಿಷಯದ ಬಗ್ಗೆ ಕೇಳಿ. ಮೊದಲು ನಮ್ಮ AI ಸಹಾಯಕ ಉತ್ತರಿಸುತ್ತದೆ; ಅದರಿಂದ ಸಹಾಯ ಸಾಧ್ಯವಾಗದಿದ್ದಾಗ ನಮ್ಮ ತಂಡದ ಒಬ್ಬರು ಮುಂದುವರಿಸುತ್ತಾರೆ.';

  @override
  String get supportSuggestWhere => 'ನನ್ನ ಆರ್ಡರ್ ಎಲ್ಲಿದೆ?';

  @override
  String get supportSuggestMissing => 'ಆರ್ಡರ್‌ನಲ್ಲಿ ಏನೋ ಬಂದಿಲ್ಲ';

  @override
  String get supportSuggestRefund => 'ರೀಫಂಡ್ ಬಗ್ಗೆ ಒಂದು ಪ್ರಶ್ನೆ ಇದೆ';

  @override
  String get supportComposerHint => 'ಮೆಸೇಜ್ ಟೈಪ್ ಮಾಡಿ';

  @override
  String get supportSend => 'ಕಳುಹಿಸಿ';

  @override
  String get supportTyping => 'AI ಸಹಾಯಕ ಟೈಪ್ ಮಾಡುತ್ತಿದೆ…';

  @override
  String get supportNotSent => 'ಕಳುಹಿಸಲಾಗಿಲ್ಲ';

  @override
  String get supportTookTooLong => 'ಉತ್ತರ ಬರಲು ತುಂಬಾ ಸಮಯ ಹಿಡಿಯಿತು.';

  @override
  String get supportSlowDown => 'ಇನ್ನಷ್ಟು ಮೆಸೇಜ್ ಕಳುಹಿಸುವ ಮೊದಲು ಸ್ವಲ್ಪ ಕಾಯಿರಿ.';

  @override
  String get supportUnreachable =>
      'ಈಗ ಚಾಟ್ ಸಂಪರ್ಕಿಸಲು ಸಾಧ್ಯವಾಗುತ್ತಿಲ್ಲ. ನಮಗೆ ಕರೆ ಮಾಡಿ, ಅಥವಾ ಕೆಲವು ನಿಮಿಷಗಳ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get supportOffline =>
      'ನೀವು ಆಫ್‌ಲೈನ್ ಇದ್ದೀರಿ. ಇದು ಕೊನೆಯದಾಗಿ ಉಳಿಸಿದ ನಿಮ್ಮ ಚಾಟ್.';

  @override
  String get supportClosed => 'ಈ ಚಾಟ್ ಮುಚ್ಚಲಾಗಿದೆ.';

  @override
  String get supportStartNew => 'ಹೊಸ ಚಾಟ್ ಶುರುಮಾಡಿ';

  @override
  String get supportTalkToPerson => 'ಒಬ್ಬ ವ್ಯಕ್ತಿಯೊಂದಿಗೆ ಮಾತನಾಡಿ';

  @override
  String get supportMarkSolved => 'ಪರಿಹಾರವಾಗಿದೆ ಎಂದು ಗುರುತಿಸಿ';

  @override
  String get supportHelpful => 'ಉಪಯುಕ್ತವಾಗಿದೆ';

  @override
  String get supportNotHelpful => 'ಉಪಯುಕ್ತವಾಗಿಲ್ಲ';

  @override
  String get supportNeedHelp => 'ಸಹಾಯ ಬೇಕೇ?';

  @override
  String get supportChatWithUs => 'ನಮ್ಮೊಂದಿಗೆ ಚಾಟ್ ಮಾಡಿ';

  @override
  String get supportChatWithUsBody =>
      'ನಮ್ಮ AI ಸಹಾಯಕ ಕ್ಷಣಗಳಲ್ಲಿ ಉತ್ತರಿಸುತ್ತದೆ; ಬೇಕಾದಾಗ ನಮ್ಮ ತಂಡದ ಒಬ್ಬರು ಮುಂದುವರಿಸುತ್ತಾರೆ.';

  @override
  String get supportActionFailed => 'ಅದು ಆಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get restaurantNew => 'ಹೊಸದು';

  @override
  String get walletHideBalance => 'ಬ್ಯಾಲೆನ್ಸ್ ಮರೆಮಾಡಿ';

  @override
  String get walletShowBalance => 'ಬ್ಯಾಲೆನ್ಸ್ ತೋರಿಸಿ';

  @override
  String get walletBalanceHiddenLabel => 'ಬ್ಯಾಲೆನ್ಸ್ ಮರೆಮಾಡಲಾಗಿದೆ';

  @override
  String walletUpdatedAt(String time) {
    return 'ಅಪ್‌ಡೇಟ್ ಆಗಿದೆ: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'ಕನಿಷ್ಠ $amount ಸೇರಿಸಿ';
  }

  @override
  String walletAboveMax(String amount) {
    return 'ಗರಿಷ್ಠ $amount ವರೆಗೆ ಸೇರಿಸಬಹುದು';
  }

  @override
  String get walletOpeningPayment => 'ಪಾವತಿ ಆರಂಭವಾಗುತ್ತಿದೆ…';

  @override
  String get walletConfirmingPayment => 'ಪಾವತಿ ಖಚಿತಪಡಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get walletTransactions => 'ವಹಿವಾಟುಗಳು';

  @override
  String get walletFilterAll => 'ಎಲ್ಲಾ';

  @override
  String get walletFilterAdded => 'ಸೇರಿಸಿದ ಹಣ';

  @override
  String get walletFilterSpent => 'ಖರ್ಚು ಮಾಡಿದ ಹಣ';

  @override
  String get walletSearch => 'ಹುಡುಕಿ';

  @override
  String get walletSearchHint => 'ಆರ್ಡರ್ ಸಂಖ್ಯೆ ಅಥವಾ ID ಹುಡುಕಿ';

  @override
  String get walletDateFilter => 'ದಿನಾಂಕದ ಮೂಲಕ ಫಿಲ್ಟರ್ ಮಾಡಿ';

  @override
  String get walletClearFilters => 'ಫಿಲ್ಟರ್ ತೆಗೆಯಿರಿ';

  @override
  String get walletNoMatches => 'ನಿಮ್ಮ ಫಿಲ್ಟರ್‌ಗೆ ಹೊಂದುವ ವಹಿವಾಟುಗಳಿಲ್ಲ';

  @override
  String get walletEmptyTitle => 'ಇನ್ನೂ ವಹಿವಾಟುಗಳಿಲ್ಲ';

  @override
  String get walletEmptyBody =>
      'ನೀವು ಸೇರಿಸುವ, ಆರ್ಡರ್‌ಗಳಿಗೆ ಖರ್ಚು ಮಾಡುವ ಅಥವಾ ರೀಫಂಡ್ ಆಗಿ ಮರಳಿ ಪಡೆಯುವ ಹಣ ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get walletToday => 'ಇಂದು';

  @override
  String get walletYesterday => 'ನಿನ್ನೆ';

  @override
  String walletLatestOnly(int count) {
    return 'ನಿಮ್ಮ ಇತ್ತೀಚಿನ $count ವಹಿವಾಟುಗಳನ್ನು ತೋರಿಸಲಾಗುತ್ತಿದೆ';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ಆರ್ಡರ್ $number ಗೆ ರೀಫಂಡ್';
  }

  @override
  String get walletDetailsTitle => 'ವಹಿವಾಟಿನ ವಿವರಗಳು';

  @override
  String get walletDetailDate => 'ದಿನಾಂಕ ಮತ್ತು ಸಮಯ';

  @override
  String get walletDetailId => 'ವಹಿವಾಟು ID';

  @override
  String get walletDetailType => 'ಪ್ರಕಾರ';

  @override
  String get walletDetailMethod => 'ಪಾವತಿ ವಿಧಾನ';

  @override
  String get walletDetailStatus => 'ಸ್ಥಿತಿ';

  @override
  String get walletDetailOrder => 'ಆರ್ಡರ್';

  @override
  String get walletDetailReference => 'ಪಾವತಿ ರೆಫರೆನ್ಸ್';

  @override
  String get walletDetailBalanceAfter => 'ವಹಿವಾಟಿನ ನಂತರದ ಬ್ಯಾಲೆನ್ಸ್';

  @override
  String get walletCredit => 'ಕ್ರೆಡಿಟ್';

  @override
  String get walletDebit => 'ಡೆಬಿಟ್';

  @override
  String get walletStatusSuccess => 'ಯಶಸ್ವಿ';

  @override
  String get walletStatusPending => 'ಬಾಕಿ ಇದೆ';

  @override
  String get walletStatusFailed => 'ವಿಫಲ';

  @override
  String get walletMethodOnline => 'ಆನ್‌ಲೈನ್ ಪಾವತಿ';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'ಕಾರ್ಡ್';

  @override
  String get walletMethodNetbanking => 'ನೆಟ್ ಬ್ಯಾಂಕಿಂಗ್';

  @override
  String get walletMethodRefund => 'ವಾಲೆಟ್‌ಗೆ ರೀಫಂಡ್';

  @override
  String get walletCopyId => 'ID ಕಾಪಿ ಮಾಡಿ';

  @override
  String get walletIdCopied => 'ವಹಿವಾಟು ID ಕಾಪಿ ಆಗಿದೆ';

  @override
  String get walletShareDetails => 'ವಿವರ ಹಂಚಿಕೊಳ್ಳಿ';
}
