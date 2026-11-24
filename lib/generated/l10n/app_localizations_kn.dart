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
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

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
    return '$restaurant has your order.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'Ready in about $minutes minutes.';
  }

  @override
  String get trackYourOrder => 'Track your order';

  @override
  String get couponApplyTitle => 'Apply a coupon';

  @override
  String get couponCodeLabel => 'Coupon code';

  @override
  String get couponApply => 'Apply';

  @override
  String couponAppliedTitle(String code) {
    return '$code applied';
  }

  @override
  String couponSaving(String amount) {
    return 'You save $amount';
  }

  @override
  String get couponRemove => 'Remove';

  @override
  String searchFor(String term) {
    return 'Search \"$term\"';
  }

  @override
  String get vegModeBadge => 'Pure veg';

  @override
  String trackingExpectedBy(String time) {
    return 'Expected by $time';
  }

  @override
  String get orderAgainTitle => 'Order again';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count more',
      one: '$first + 1 more',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max min';
  }

  @override
  String riderRatingLabel(String rating) {
    return 'Rated $rating out of 5';
  }

  @override
  String get reorderReplaceTitle => 'Replace your basket?';

  @override
  String reorderReplaceBody(String restaurant) {
    return 'Your basket from $restaurant will be replaced with the dishes from this order.';
  }

  @override
  String get reorderReplace => 'Replace';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes aren\'t available right now, so they were left out.',
      one: '$dishes isn\'t available right now, so it was left out.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'None of these dishes are available right now.';

  @override
  String get searchShort => 'Search';

  @override
  String get favouriteSave => 'Save to favourites';

  @override
  String get restaurantAbout => 'About this restaurant';

  @override
  String ratingByCount(String count) {
    return 'By $count';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count offers',
      one: '1 offer',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Order from $restaurant on Nexmile';
  }

  @override
  String get ordersSearchHint => 'Search by restaurant or dish…';

  @override
  String get ordersNoMatch =>
      'No orders from a restaurant or dish by that name.';

  @override
  String orderPlacedOn(String date) {
    return 'Order placed on $date';
  }

  @override
  String get viewMenu => 'View menu';

  @override
  String get navHistory => 'History';

  @override
  String get exploreMore => 'Explore more';

  @override
  String get exploreTopRated => 'Top rated';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count restaurants delivering to you',
      one: '1 restaurant delivering to you',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'How was your delivery?';

  @override
  String get rateHowWasFood => 'How was the food?';

  @override
  String get rateWordTerrible => 'Terrible';

  @override
  String get rateWordBad => 'Bad';

  @override
  String get rateWordOkay => 'Okay';

  @override
  String get rateWordGood => 'Good';

  @override
  String get rateWordLoved => 'Loved it!';

  @override
  String get rateWhatWentWrong => 'What went wrong?';

  @override
  String get rateWhatYouLiked => 'What did you like?';

  @override
  String get rateRiderNoteHint => 'A note about the delivery (optional)';

  @override
  String get rateReviewHeading => 'Write a review';

  @override
  String get rateFoodFirst => 'Rate the food to submit';

  @override
  String get rateYouRated => 'You rated this order';

  @override
  String get ratePromptLater => 'Not now';

  @override
  String get tagTasty => 'Tasty';

  @override
  String get tagFreshHot => 'Hot & fresh';

  @override
  String get tagGoodPortion => 'Good portion';

  @override
  String get tagGoodPackaging => 'Good packaging';

  @override
  String get tagValueForMoney => 'Value for money';

  @override
  String get tagHygienic => 'Hygienic';

  @override
  String get tagColdFood => 'Cold food';

  @override
  String get tagPoorTaste => 'Didn\'t taste good';

  @override
  String get tagSmallPortion => 'Small portion';

  @override
  String get tagWrongItems => 'Wrong items';

  @override
  String get tagMissingItems => 'Missing items';

  @override
  String get tagPoorPackaging => 'Poor packaging';

  @override
  String get tagTooOily => 'Too oily or spicy';

  @override
  String get tagOnTime => 'On time';

  @override
  String get tagPolite => 'Polite';

  @override
  String get tagFollowedInstructions => 'Followed instructions';

  @override
  String get tagCarefulHandling => 'Handled food with care';

  @override
  String get tagGoodCommunication => 'Kept me updated';

  @override
  String get tagLate => 'Late delivery';

  @override
  String get tagRude => 'Rude behaviour';

  @override
  String get tagIgnoredInstructions => 'Didn\'t follow instructions';

  @override
  String get tagFoodSpilled => 'Food spilled';

  @override
  String get tagAskedExtraMoney => 'Asked for extra money';

  @override
  String get tagUnprofessional => 'Unprofessional';

  @override
  String rateDeliveredBy(String name) {
    return 'Delivered by $name';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return 'From $restaurant';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return 'How was your order from $restaurant?';
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
    return '$step of $total';
  }

  @override
  String get permNotNow => 'Not now';

  @override
  String get permLocationTitle => 'Find food near you';

  @override
  String get permNotifyTitle => 'Never miss an order update';

  @override
  String get permNotifyBody =>
      'Turn on notifications to know when your order is accepted, picked up and at your door.';

  @override
  String get permNotifyLiveTitle => 'Live order updates';

  @override
  String get permNotifyLiveBody => 'Accepted, cooking, picked up, delivered.';

  @override
  String get permNotifyRiderTitle => 'Rider at your door';

  @override
  String get permNotifyRiderBody =>
      'Know when to step out, without watching the app.';

  @override
  String get permNotifyControlTitle => 'You stay in control';

  @override
  String get permNotifyControlBody =>
      'Turn notifications off any time in your phone\'s Settings.';

  @override
  String get permNotifyAllow => 'Turn on notifications';

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
  String get menuSearchHint => 'Search for dishes';

  @override
  String get filtersShort => 'Filters';

  @override
  String get dietVeg => 'Veg';

  @override
  String get dietEgg => 'Egg';

  @override
  String get dietNonVeg => 'Non-veg';

  @override
  String get menuBestsellerChip => 'Bestseller';

  @override
  String get menuFoodType => 'Food type';

  @override
  String get menuShowOnly => 'Show only';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dishes',
      one: '1 dish',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Show $count dishes',
      one: 'Show 1 dish',
      zero: 'No dishes',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'Try another dish name, or remove a filter.';

  @override
  String get menuBrowse => 'Menu';

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
  String get riderLocationStale => 'Updating rider\'s location…';

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
  String get onLabel => 'On';

  @override
  String get offLabel => 'Off';

  @override
  String get profileCoupons => 'Your coupons';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count to use',
      one: '1 to use',
      zero: 'None yet',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'Your preferences';

  @override
  String get profileVegMode => 'Veg mode';

  @override
  String get profileVegModeHint => 'Only veg restaurants and dishes';

  @override
  String get profileAppearance => 'Appearance';

  @override
  String get appearanceSystem => 'Same as phone';

  @override
  String get appearanceLight => 'Light';

  @override
  String get appearanceDark => 'Dark';

  @override
  String get profileNotifications => 'Notifications';

  @override
  String get profileFoodDelivery => 'Food delivery';

  @override
  String get profileFavourites => 'Your favourites';

  @override
  String get profileHelp => 'Help & support';

  @override
  String get profileMore => 'More';

  @override
  String get profileFeedback => 'Send feedback';

  @override
  String get profileSafety => 'Report a safety emergency';

  @override
  String get profileAbout => 'About Nexmile';

  @override
  String get couponsEmptyTitle => 'No coupons right now';

  @override
  String get couponsEmptyBody =>
      'When there\'s a coupon you can use, it will show up here.';

  @override
  String couponFlatOff(String amount) {
    return '$amount OFF';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% OFF';
  }

  @override
  String couponUpTo(String amount) {
    return 'Up to $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return 'On orders above $amount';
  }

  @override
  String couponValidTill(String date) {
    return 'Valid till $date';
  }

  @override
  String get couponAllRestaurants => 'At all restaurants';

  @override
  String couponAtRestaurant(String restaurant) {
    return 'At $restaurant';
  }

  @override
  String couponCopied(String code) {
    return 'Code $code copied';
  }

  @override
  String get favouritesEmptyTitle => 'No favourites yet';

  @override
  String get favouritesEmptyBody =>
      'Tap the heart on a restaurant to save it here.';

  @override
  String get helpCall => 'Call us';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'Email us';

  @override
  String helpHours(String hours) {
    return 'We\'re available $hours';
  }

  @override
  String get helpFaqs => 'Common questions';

  @override
  String get helpNothing =>
      'Help details aren\'t available right now. Please try again later.';

  @override
  String get feedbackPrompt => 'How is Nexmile working for you?';

  @override
  String get feedbackHint => 'Tell us what you liked, or what we can do better';

  @override
  String get feedbackNeedRating => 'Choose a rating first';

  @override
  String get feedbackThanks => 'Thanks! Your feedback has reached our team.';

  @override
  String get safetyIntro =>
      'If you or someone else is in danger, call the emergency services first.';

  @override
  String get safetyCallEmergency => 'Call 112';

  @override
  String get safetyCallEmergencyBody => 'Police, fire and ambulance';

  @override
  String get safetyCallNexmile => 'Call Nexmile safety line';

  @override
  String get safetyCallNexmileBody => 'Answered at all hours';

  @override
  String aboutVersion(String version) {
    return 'Version $version';
  }

  @override
  String get aboutTerms => 'Terms of service';

  @override
  String get aboutPrivacy => 'Privacy policy';

  @override
  String get aboutLicences => 'Open-source licences';

  @override
  String get notifyOrderUpdates => 'Order updates';

  @override
  String get notifyOrderUpdatesBody =>
      'Always on, so you know where your food is.';

  @override
  String get notifyPromotions => 'Offers and promotions';

  @override
  String get notifyPromotionsBody =>
      'Deals, coupons and new restaurants near you.';

  @override
  String get notifyPhoneOff =>
      'Notifications are turned off for Nexmile on this phone.';

  @override
  String get notifyTurnOn => 'Turn on';

  @override
  String get linkOpenFailed => 'That couldn\'t be opened on this phone.';

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
  String get walletTitle => 'Nexmile Wallet';

  @override
  String get walletBalance => 'Wallet balance';

  @override
  String get walletBalanceHint => 'Use it to pay for any order.';

  @override
  String get walletAddMoney => 'Add money';

  @override
  String get walletEnterAmount => 'Enter amount';

  @override
  String walletAmountRange(String min, String max) {
    return 'Between $min and $max';
  }

  @override
  String walletAddAmount(String amount) {
    return 'Add $amount';
  }

  @override
  String get walletSecuredBy => 'Payments are secured by Razorpay';

  @override
  String get walletHistory => 'History';

  @override
  String get walletNoHistory =>
      'No transactions yet. Money you add or spend will show here.';

  @override
  String get walletEntryTopUp => 'Money added';

  @override
  String get walletEntryOrder => 'Paid for an order';

  @override
  String walletEntryOrderNumber(String number) {
    return 'Paid for order $number';
  }

  @override
  String get walletEntryRefund => 'Refund';

  @override
  String walletMoneyAdded(String amount) {
    return '$amount added to your wallet';
  }

  @override
  String get walletPaymentFailed =>
      'Payment failed. No money was taken from your account.';

  @override
  String get walletPaymentConfirming =>
      'Payment received. Your balance will update in a few minutes.';

  @override
  String get walletUseBalance => 'Use wallet balance';

  @override
  String walletAvailable(String amount) {
    return 'Available: $amount';
  }

  @override
  String get walletPaidFromWallet => 'Paid from wallet';

  @override
  String get walletPayOnDelivery => 'Pay on delivery';

  @override
  String get walletCoversOrder => 'Paid fully from your wallet';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet from wallet, $rest on delivery';
  }

  @override
  String get walletTopUpUnavailable =>
      'Adding money isn\'t available right now. Please try again later.';

  @override
  String walletFull(String limit) {
    return 'Your wallet is at its $limit limit.';
  }

  @override
  String get searchAddressHint => 'Search area, street or landmark';

  @override
  String get selectLocationTitle => 'Select a location';

  @override
  String get useCurrentLocation => 'Use current location';

  @override
  String get locatingYou => 'Finding where you are…';

  @override
  String get locationOffHint => 'Allow location access to use this';

  @override
  String get savedAddressesHeading => 'Saved addresses';

  @override
  String get recentLocationsHeading => 'Recent locations';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'Select delivery location';

  @override
  String get movePinTooltip => 'Move pin to your exact delivery location';

  @override
  String get locatingPin => 'Finding the address…';

  @override
  String get deliveryDetailsHeading => 'Delivery details';

  @override
  String get addressDetailsLabel => 'Address details*';

  @override
  String get addressDetailsHint => 'E.g. Floor, House no.';

  @override
  String get missingAreaHint =>
      'We couldn\'t read the full address for this pin. Please fill in the rest.';

  @override
  String get whoToContact => 'Who should we contact for this delivery?';

  @override
  String get contactMyself => 'Myself';

  @override
  String get contactSomeoneElse => 'Someone else';

  @override
  String get receiverDetailsHeading => 'Receiver details for this address';

  @override
  String get receiverAddPrompt => 'Add the receiver\'s name and number';

  @override
  String get receiverSheetTitle => 'Receiver details';

  @override
  String get doorPhotoHeading => 'Door/building image (optional)';

  @override
  String get doorPhotoAdd => 'Add an image';

  @override
  String get doorPhotoBody =>
      'This helps our delivery partners find your exact location faster';

  @override
  String get doorPhotoChange => 'Change';

  @override
  String get doorPhotoRemove => 'Remove';

  @override
  String get photoFromCamera => 'Take a photo';

  @override
  String get photoFromGallery => 'Choose from gallery';

  @override
  String get photoUploaded => 'Photo added';

  @override
  String get photoUploadFailed =>
      'The photo couldn\'t be uploaded. Please try again later.';

  @override
  String get addressSavedPhotoFailed =>
      'Address saved. The photo couldn\'t be uploaded.';

  @override
  String get removePhotoLabel => 'Remove photo';

  @override
  String get photoRemoved => 'Photo removed';

  @override
  String get shareLabel => 'Share';

  @override
  String get addDoorPhotoLabel => 'Add a door photo';

  @override
  String get searchAddressNoResults =>
      'No places found. Try a nearby landmark, area name or pincode.';

  @override
  String get clearLabel => 'Clear';

  @override
  String get trackingArrivingNow => 'Arriving now';

  @override
  String get trackingLive => 'Live';

  @override
  String get trackingStepConfirmed => 'Confirmed';

  @override
  String get trackingStepPreparing => 'Preparing';

  @override
  String get trackingStepOnTheWay => 'On the way';

  @override
  String get trackingStepDelivered => 'Delivered';

  @override
  String get trackingFindingRider => 'Assigning a delivery partner…';

  @override
  String get trackingPinYou => 'You';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name is $distance away';
  }

  @override
  String trackingMessageRider(String name) {
    return 'Message $name';
  }

  @override
  String get trackingDeliveringTo => 'Delivering to';

  @override
  String get trackingOrderDetails => 'Order details';

  @override
  String get dispatchSearching =>
      'Finding a delivery partner near the restaurant…';

  @override
  String get dispatchNoRider =>
      'No delivery partner has taken it yet. Our team is assigning one now.';

  @override
  String get vehicleBike => 'Bike';

  @override
  String get vehicleScooter => 'Scooter';

  @override
  String get vehicleBicycle => 'Bicycle';

  @override
  String get vehicleElectric => 'Electric scooter';

  @override
  String get exitTitle => 'Exit Nexmile?';

  @override
  String get exitBody => 'Are you sure you want to exit the app?';

  @override
  String get exitConfirm => 'Exit';

  @override
  String cartSavedBanner(String amount) {
    return 'You saved $amount on this order';
  }

  @override
  String get cartAddMoreItems => 'Add more items';

  @override
  String get cartAddNote => 'Add a note for the restaurant';

  @override
  String get cartNoteHint => 'Less spicy, no onions, extra chutney…';

  @override
  String get cartNoteSave => 'Save';

  @override
  String get cartNoCutlery => 'Don\'t send cutlery';

  @override
  String get cartNoCutleryThanks => 'Thank you for helping cut plastic waste';

  @override
  String get cartSavingsCorner => 'Savings corner';

  @override
  String get cartDeliveryInstructions => 'Delivery instructions';

  @override
  String get cartInstructionsNote => 'Sent with your order';

  @override
  String get instructionLeaveAtDoor => 'Leave at the door';

  @override
  String get instructionNoBell => 'Avoid ringing the bell';

  @override
  String get instructionNoCall => 'Avoid calling';

  @override
  String get instructionSecurity => 'Leave with security';

  @override
  String get instructionPet => 'Pet at home';

  @override
  String get cartInclTaxes => 'Incl. taxes and charges';

  @override
  String cartSavedTag(String amount) {
    return '$amount saved';
  }

  @override
  String get cartPayUsing => 'Pay using';

  @override
  String get cartWalletAndCash => 'Wallet + cash';

  @override
  String cartCashRest(String amount) {
    return 'Pay $amount when it arrives';
  }

  @override
  String get cartCashFull => 'Pay when your order arrives';

  @override
  String get cartCashNothing => 'Nothing to pay on delivery';

  @override
  String get cartTotal => 'Total';

  @override
  String get cartPlaceOrder => 'Place order';

  @override
  String cartDeliverTo(String place) {
    return 'Delivering to $place';
  }

  @override
  String get cartChange => 'Change';

  @override
  String get cartNoAddress => 'Where should we deliver?';

  @override
  String get cartNoAddressHint => 'Add an address to place your order';

  @override
  String cartPickupFrom(String restaurant) {
    return 'Pick up from $restaurant';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'Ready in about $minutes mins';
  }

  @override
  String get cartChooseAddress => 'Choose a delivery address';

  @override
  String get cartDone => 'Done';
}
