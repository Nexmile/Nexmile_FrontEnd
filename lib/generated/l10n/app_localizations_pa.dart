// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'ਇਹ ਖਾਨਾ ਜ਼ਰੂਰੀ ਹੈ';

  @override
  String get tagline => 'ਤੇਜ਼ ਡਿਲੀਵਰੀ। ਤਾਜ਼ੀ ਮੁਸਕਾਨ।';

  @override
  String get chooseLanguageTitle => 'ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get chooseLanguageSubtitle =>
      'ਉਹ ਭਾਸ਼ਾ ਚੁਣੋ ਜਿਸ ਵਿੱਚ ਤੁਸੀਂ ਸਹਿਜ ਹੋ। ਤੁਸੀਂ ਇਸਨੂੰ ਕਿਸੇ ਵੀ ਸਮੇਂ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਬਦਲ ਸਕਦੇ ਹੋ।';

  @override
  String get searchLanguageHint => 'ਭਾਸ਼ਾ ਖੋਜੋ';

  @override
  String get noLanguageFound => 'ਕੋਈ ਭਾਸ਼ਾ ਨਹੀਂ ਮਿਲੀ';

  @override
  String languagesAvailable(int count) {
    return '$count ਭਾਸ਼ਾਵਾਂ ਉਪਲਬਧ ਹਨ';
  }

  @override
  String get continueLabel => 'ਅੱਗੇ ਵਧੋ';

  @override
  String get selectedLabel => 'ਚੁਣੀ ਗਈ';

  @override
  String get defaultLabel => 'ਡਿਫਾਲਟ';

  @override
  String get homeTitle => 'Nexmile ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ';

  @override
  String get homeSubtitle =>
      'ਤਾਜ਼ਾ ਕਰਿਆਨਾ, ਗਰਮ ਖਾਣਾ ਅਤੇ ਰੋਜ਼ਾਨਾ ਲੋੜਾਂ ਤੁਹਾਡੇ ਨੇੜਲੀਆਂ ਦੁਕਾਨਾਂ ਤੋਂ।';

  @override
  String get changeLanguage => 'ਭਾਸ਼ਾ ਬਦਲੋ';

  @override
  String get languageUpdated => 'ਭਾਸ਼ਾ ਬਦਲ ਦਿੱਤੀ ਗਈ';

  @override
  String get appLanguageLabel => 'ਐਪ ਦੀ ਭਾਸ਼ਾ';

  @override
  String greetingNamed(String name) {
    return 'ਸਤ ਸ੍ਰੀ ਅਕਾਲ, $name';
  }

  @override
  String get loginTitle => 'Nexmile ਵਿੱਚ ਸਾਈਨ ਇਨ ਕਰੋ';

  @override
  String get loginSubtitle =>
      'ਆਪਣਾ ਈਮੇਲ ਜਾਂ ਮੋਬਾਈਲ ਨੰਬਰ ਦਰਜ ਕਰੋ, ਅਸੀਂ ਤਸਦੀਕ ਕੋਡ ਭੇਜਾਂਗੇ।';

  @override
  String get emailOrPhoneLabel => 'ਈਮੇਲ ਜਾਂ ਮੋਬਾਈਲ ਨੰਬਰ';

  @override
  String get emailOrPhoneHint => 'name@example.com ਜਾਂ 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'ਸਹੀ ਈਮੇਲ ਪਤਾ ਜਾਂ 10 ਅੰਕਾਂ ਦਾ ਮੋਬਾਈਲ ਨੰਬਰ ਦਰਜ ਕਰੋ';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'ਕੋਡ ਭੇਜੋ';

  @override
  String get agreeToTermsOnContinue =>
      'ਅੱਗੇ ਵਧ ਕੇ ਤੁਸੀਂ ਸਾਡੀਆਂ ਸੇਵਾ ਸ਼ਰਤਾਂ ਅਤੇ ਪਰਦੇਦਾਰੀ ਨੀਤੀ ਨਾਲ ਸਹਿਮਤ ਹੁੰਦੇ ਹੋ।';

  @override
  String get otpTitle => 'ਪੁਸ਼ਟੀ ਕਰੋ ਕਿ ਇਹ ਤੁਸੀਂ ਹੋ';

  @override
  String otpSubtitle(String target) {
    return '$target \'ਤੇ ਭੇਜਿਆ 6 ਅੰਕਾਂ ਦਾ ਕੋਡ ਦਰਜ ਕਰੋ';
  }

  @override
  String get verifyCode => 'ਤਸਦੀਕ ਕਰੋ';

  @override
  String get resendCode => 'ਕੋਡ ਦੁਬਾਰਾ ਭੇਜੋ';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ਸਕਿੰਟਾਂ ਵਿੱਚ ਦੁਬਾਰਾ ਭੇਜੋ';
  }

  @override
  String get codeResent => 'ਨਵਾਂ ਕੋਡ ਭੇਜ ਦਿੱਤਾ ਗਿਆ ਹੈ';

  @override
  String get incorrectCode =>
      'ਇਹ ਕੋਡ ਗਲਤ ਹੈ ਜਾਂ ਮਿਆਦ ਪੁੱਗ ਗਈ ਹੈ। ਨਵਾਂ ਕੋਡ ਮੰਗਵਾਓ।';

  @override
  String get enterFullCode => 'ਪੂਰੇ 6 ਅੰਕ ਦਰਜ ਕਰੋ';

  @override
  String get accountSuspended =>
      'ਇਹ ਖਾਤਾ ਮੁਅੱਤਲ ਕਰ ਦਿੱਤਾ ਗਿਆ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਸਹਾਇਤਾ ਨਾਲ ਸੰਪਰਕ ਕਰੋ।';

  @override
  String get tooManyAttempts =>
      'ਬਹੁਤ ਵਾਰ ਕੋਸ਼ਿਸ਼ ਹੋ ਗਈ। ਕਿਰਪਾ ਕਰਕੇ ਥੋੜ੍ਹੀ ਦੇਰ ਬਾਅਦ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get sessionExpired =>
      'ਤੁਹਾਡਾ ਸੈਸ਼ਨ ਖਤਮ ਹੋ ਗਿਆ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਸਾਈਨ ਇਨ ਕਰੋ।';

  @override
  String get networkError =>
      'ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ ਨਹੀਂ ਹੈ। ਆਪਣਾ ਕਨੈਕਸ਼ਨ ਜਾਂਚੋ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get developmentCode => 'ਡਿਵੈਲਪਮੈਂਟ ਕੋਡ';

  @override
  String get signOut => 'ਸਾਈਨ ਆਊਟ';

  @override
  String get signedOut => 'ਤੁਸੀਂ ਸਾਈਨ ਆਊਟ ਹੋ ਗਏ ਹੋ';

  @override
  String get somethingWentWrong =>
      'ਕੁਝ ਗਲਤ ਹੋ ਗਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get profileTitle => 'ਪ੍ਰੋਫਾਈਲ';

  @override
  String get viewProfile => 'ਪ੍ਰੋਫਾਈਲ ਦੇਖੋ';

  @override
  String get nameLabel => 'ਨਾਮ';

  @override
  String get emailLabel => 'ਈਮੇਲ';

  @override
  String get mobileLabel => 'ਮੋਬਾਈਲ ਨੰਬਰ';

  @override
  String get accountStatusLabel => 'ਖਾਤੇ ਦੀ ਸਥਿਤੀ';

  @override
  String get statusActive => 'ਸਰਗਰਮ';

  @override
  String get statusPending => 'ਬਕਾਇਆ';

  @override
  String get statusSuspended => 'ਮੁਅੱਤਲ';

  @override
  String get verifiedLabel => 'ਤਸਦੀਕਸ਼ੁਦਾ';

  @override
  String get notProvided => 'ਸ਼ਾਮਲ ਨਹੀਂ ਕੀਤਾ';

  @override
  String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get navHome => 'ਹੋਮ';

  @override
  String get navSearch => 'ਖੋਜੋ';

  @override
  String get navOrders => 'ਆਰਡਰ';

  @override
  String get cancelLabel => 'ਰੱਦ ਕਰੋ';

  @override
  String get deliverTo => 'ਡਿਲੀਵਰੀ ਪਤਾ';

  @override
  String get searchDishesHint => 'ਪਕਵਾਨ ਜਾਂ ਰੈਸਟੋਰੈਂਟ ਖੋਜੋ';

  @override
  String get searchTitle => 'ਖੋਜੋ';

  @override
  String get searchNoResultsTitle => 'ਕੁਝ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get searchNoResultsSubtitle =>
      'ਕੋਈ ਹੋਰ ਪਕਵਾਨ, ਪਕਵਾਨ-ਸ਼ੈਲੀ ਜਾਂ ਰੈਸਟੋਰੈਂਟ ਦਾ ਨਾਮ ਅਜ਼ਮਾਓ।';

  @override
  String get cravingTitle => 'ਅੱਜ ਕੀ ਖਾਣ ਦਾ ਮਨ ਹੈ?';

  @override
  String get offersTitle => 'ਤੁਹਾਡੇ ਲਈ ਆਫ਼ਰ';

  @override
  String get restaurantsNearby => 'ਤੁਹਾਡੇ ਨੇੜੇ ਦੇ ਰੈਸਟੋਰੈਂਟ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਰੈਸਟੋਰੈਂਟ',
      one: '1 ਰੈਸਟੋਰੈਂਟ',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'ਇੱਥੇ ਅਜੇ ਕੁਝ ਨਹੀਂ ਹੈ';

  @override
  String get noRestaurantsSubtitle => 'ਕੋਈ ਹੋਰ ਸ਼੍ਰੇਣੀ ਦੇਖੋ ਜਾਂ ਫਿਲਟਰ ਹਟਾਓ।';

  @override
  String minutesAway(int minutes) {
    return '$minutes ਮਿੰਟ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance ਕਿਮੀ';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਰੇਟਿੰਗਾਂ',
      one: '1 ਰੇਟਿੰਗ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'ਦੋ ਲਈ ₹$amount';
  }

  @override
  String get freeDelivery => 'ਮੁਫ਼ਤ ਡਿਲੀਵਰੀ';

  @override
  String percentOff(int percent) {
    return '$percent% ਛੋਟ';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'ਤੁਹਾਡੇ ਆਰਡਰ \'ਤੇ $percent% ਛੋਟ';
  }

  @override
  String get vegOnly => 'ਸਿਰਫ਼ ਸ਼ਾਕਾਹਾਰੀ';

  @override
  String get bestseller => 'ਸਭ ਤੋਂ ਵੱਧ ਵਿਕਣ ਵਾਲਾ';

  @override
  String get addLabel => 'ਸ਼ਾਮਲ';

  @override
  String get noVegDishesTitle => 'ਇੱਥੇ ਸ਼ਾਕਾਹਾਰੀ ਪਕਵਾਨ ਨਹੀਂ ਹਨ';

  @override
  String get noVegDishesSubtitle =>
      'ਪੂਰਾ ਮੀਨੂ ਦੇਖਣ ਲਈ ਸ਼ਾਕਾਹਾਰੀ ਫਿਲਟਰ ਬੰਦ ਕਰੋ।';

  @override
  String get replaceCartTitle => 'ਨਵੀਂ ਕਾਰਟ ਸ਼ੁਰੂ ਕਰੀਏ?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'ਤੁਹਾਡੀ ਕਾਰਟ ਵਿੱਚ $restaurant ਤੋਂ ਚੀਜ਼ਾਂ ਹਨ। ਇਹ ਸ਼ਾਮਲ ਕਰਨ \'ਤੇ ਉਹ ਹਟ ਜਾਣਗੀਆਂ।';
  }

  @override
  String get replaceCartConfirm => 'ਹਟਾ ਕੇ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get cartTitle => 'ਤੁਹਾਡੀ ਕਾਰਟ';

  @override
  String get cartEmptyTitle => 'ਤੁਹਾਡੀ ਕਾਰਟ ਖਾਲੀ ਹੈ';

  @override
  String get cartEmptySubtitle =>
      'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਕਿਸੇ ਰੈਸਟੋਰੈਂਟ ਤੋਂ ਪਕਵਾਨ ਸ਼ਾਮਲ ਕਰੋ।';

  @override
  String get browseRestaurants => 'ਰੈਸਟੋਰੈਂਟ ਦੇਖੋ';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਚੀਜ਼ਾਂ',
      one: '1 ਚੀਜ਼',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'ਕਾਰਟ ਦੇਖੋ';

  @override
  String get itemTotal => 'ਚੀਜ਼ਾਂ ਦਾ ਕੁੱਲ';

  @override
  String get deliveryFeeLabel => 'ਡਿਲੀਵਰੀ ਫ਼ੀਸ';

  @override
  String get taxesAndCharges => 'ਟੈਕਸ ਅਤੇ ਖਰਚੇ';

  @override
  String get freeLabel => 'ਮੁਫ਼ਤ';

  @override
  String get toPay => 'ਦੇਣ ਯੋਗ';

  @override
  String placeOrderFor(String amount) {
    return 'ਆਰਡਰ ਕਰੋ · $amount';
  }

  @override
  String get ordersTitle => 'ਤੁਹਾਡੇ ਆਰਡਰ';

  @override
  String get ordersEmptyTitle => 'ਅਜੇ ਕੋਈ ਆਰਡਰ ਨਹੀਂ';

  @override
  String get ordersEmptySubtitle => 'ਤੁਹਾਡੇ ਪਿਛਲੇ ਆਰਡਰ ਇੱਥੇ ਦਿਖਣਗੇ।';

  @override
  String get reorder => 'ਦੁਬਾਰਾ ਆਰਡਰ';

  @override
  String orderTitle(String id) {
    return 'ਆਰਡਰ $id';
  }

  @override
  String get orderPlacedTitle => 'ਆਰਡਰ ਹੋ ਗਿਆ';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'ਲਗਭਗ $minutes ਮਿੰਟਾਂ ਵਿੱਚ ਪਹੁੰਚੇਗਾ।';
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
  String get orderDeliveredTitle => 'ਡਿਲੀਵਰ ਹੋ ਗਿਆ';

  @override
  String get orderDeliveredSubtitle => 'ਖਾਣੇ ਦਾ ਆਨੰਦ ਲਓ।';

  @override
  String get statusOrderPlaced => 'ਆਰਡਰ ਹੋ ਗਿਆ';

  @override
  String get statusPreparing => 'ਖਾਣਾ ਤਿਆਰ ਹੋ ਰਿਹਾ ਹੈ';

  @override
  String get statusOnTheWay => 'ਰਸਤੇ ਵਿੱਚ ਹੈ';

  @override
  String get statusDelivered => 'ਡਿਲੀਵਰ ਹੋ ਗਿਆ';

  @override
  String get keepBrowsing => 'ਦੇਖਦੇ ਰਹੋ';

  @override
  String get backToHome => 'ਹੋਮ \'ਤੇ ਵਾਪਸ';

  @override
  String get prototypeNotice =>
      'ਨਮੂਨਾ ਸਟੋਰਫ੍ਰੰਟ — ਅਸਲੀ ਦੁਕਾਨਾਂ ਕੈਟਾਲਾਗ API ਨਾਲ ਆਉਣਗੀਆਂ।';

  @override
  String get prototypeCheckoutNotice =>
      'ਇਹ ਇੱਕ ਪ੍ਰੋਟੋਟਾਈਪ ਹੈ। ਕੋਈ ਭੁਗਤਾਨ ਨਹੀਂ ਲਿਆ ਜਾਂਦਾ ਅਤੇ ਕੋਈ ਅਸਲੀ ਆਰਡਰ ਨਹੀਂ ਹੁੰਦਾ।';

  @override
  String get prototypeTrackingNotice => 'ਪ੍ਰੋਟੋਟਾਈਪ ਲਈ ਟ੍ਰੈਕਿੰਗ ਨਕਲੀ ਹੈ।';

  @override
  String get locationTitle => 'ਡਿਲੀਵਰੀ ਕਿੱਥੇ ਕਰਨੀ ਹੈ?';

  @override
  String get locationSubtitle =>
      'Nexmile ਸਿਰਫ਼ 1 ਕਿਮੀ ਦੇ ਅੰਦਰਲੀਆਂ ਦੁਕਾਨਾਂ ਤੋਂ ਡਿਲੀਵਰੀ ਕਰਦਾ ਹੈ, ਇਸ ਲਈ ਸਾਨੂੰ ਤੁਹਾਡੀ ਸਹੀ ਥਾਂ ਚਾਹੀਦੀ ਹੈ।';

  @override
  String get locationReasonRadiusTitle => '1 ਕਿਮੀ ਦੇ ਅੰਦਰ ਦੀਆਂ ਦੁਕਾਨਾਂ';

  @override
  String get locationReasonRadiusBody =>
      'ਅਸੀਂ ਸਿਰਫ਼ ਉਹੀ ਰਸੋਈਆਂ ਦਿਖਾਉਂਦੇ ਹਾਂ ਜਿੱਥੋਂ ਖਾਣਾ ਗਰਮ ਪਹੁੰਚੇ।';

  @override
  String get locationReasonAccuracyTitle => 'ਸਹੀ ਦਰਵਾਜ਼ੇ ਤੱਕ';

  @override
  String get locationReasonAccuracyBody =>
      'ਸਹੀ ਪਿੰਨ ਹੋਵੇ ਤਾਂ ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ ਫ਼ੋਨ ਕੀਤੇ ਬਿਨਾਂ ਤੁਹਾਡੇ ਤੱਕ ਪਹੁੰਚ ਜਾਂਦਾ ਹੈ।';

  @override
  String get locationReasonPrivacyTitle => 'ਸਿਰਫ਼ ਐਪ ਵਰਤਦੇ ਸਮੇਂ';

  @override
  String get locationReasonPrivacyBody =>
      'ਅਸੀਂ ਪਿਛੋਕੜ ਵਿੱਚ ਤੁਹਾਨੂੰ ਟ੍ਰੈਕ ਨਹੀਂ ਕਰਦੇ, ਅਤੇ ਪਤਾ ਤੁਸੀਂ ਆਪ ਵੀ ਲਿਖ ਸਕਦੇ ਹੋ।';

  @override
  String get allowLocation => 'ਟਿਕਾਣੇ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get enterAddressManually => 'ਮੈਂ ਪਤਾ ਆਪ ਲਿਖਾਂਗਾ';

  @override
  String get locationDenied =>
      'ਟਿਕਾਣੇ ਦੀ ਇਜਾਜ਼ਤ ਨਹੀਂ ਮਿਲੀ। ਤੁਸੀਂ ਪਿੰਨ ਆਪ ਲਗਾ ਸਕਦੇ ਹੋ।';

  @override
  String get locationDeniedForever =>
      'Nexmile ਲਈ ਟਿਕਾਣਾ ਬੰਦ ਹੈ। ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਚਾਲੂ ਕਰੋ ਜਾਂ ਪਿੰਨ ਆਪ ਲਗਾਓ।';

  @override
  String get locationServiceOff => 'ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਟਿਕਾਣਾ ਬੰਦ ਹੈ।';

  @override
  String get locationUnavailable =>
      'ਟਿਕਾਣਾ ਨਹੀਂ ਮਿਲ ਸਕਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਪਿੰਨ ਆਪ ਲਗਾਓ।';

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
  String get openSettings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get pinLocationTitle => 'ਆਪਣਾ ਡਿਲੀਵਰੀ ਪਿੰਨ ਲਗਾਓ';

  @override
  String get deliveryRadiusHint =>
      'ਘੇਰਾ ਉਹ 1 ਕਿਮੀ ਦਿਖਾਉਂਦਾ ਹੈ ਜਿਸ ਵਿੱਚ Nexmile ਡਿਲੀਵਰੀ ਕਰਦਾ ਹੈ।';

  @override
  String get useMyLocation => 'ਮੇਰਾ ਟਿਕਾਣਾ ਵਰਤੋ';

  @override
  String get deliveringHere => 'ਇੱਥੇ ਡਿਲੀਵਰੀ';

  @override
  String get dragToAdjust => 'ਪਿੰਨ ਬਦਲਣ ਲਈ ਨਕਸ਼ਾ ਖਿੱਚੋ';

  @override
  String get confirmLocation => 'ਟਿਕਾਣਾ ਪੱਕਾ ਕਰੋ';

  @override
  String get addressDetailsTitle => 'ਪਤੇ ਦੇ ਵੇਰਵੇ';

  @override
  String get addressDetailsSubtitle =>
      'ਸਹੀ ਦਰਵਾਜ਼ੇ ਤੱਕ ਪਹੁੰਚਣ ਲਈ ਘਰ ਨੰਬਰ ਅਤੇ ਨਿਸ਼ਾਨੀ ਜੋੜੋ।';

  @override
  String get pinnedLocation => 'ਚੁਣਿਆ ਟਿਕਾਣਾ';

  @override
  String get changePin => 'ਬਦਲੋ';

  @override
  String get saveAddressAs => 'ਇਹ ਪਤਾ ਇੰਝ ਸੰਭਾਲੋ';

  @override
  String get labelHome => 'ਘਰ';

  @override
  String get labelWork => 'ਦਫ਼ਤਰ';

  @override
  String get labelOther => 'ਹੋਰ';

  @override
  String get addressLine1Label => 'ਘਰ, ਫਲੈਟ ਜਾਂ ਇਮਾਰਤ';

  @override
  String get addressLine1Hint => '12A, ਗ੍ਰੀਨ ਰੈਜ਼ੀਡੈਂਸੀ';

  @override
  String get addressLine2Label => 'ਗਲੀ ਜਾਂ ਇਲਾਕਾ';

  @override
  String get addressLine2Hint => 'ਦੂਜੀ ਐਵੇਨਿਊ, ਅੰਨਾ ਨਗਰ';

  @override
  String get landmarkLabel => 'ਨਿਸ਼ਾਨੀ';

  @override
  String get landmarkHint => 'ਬੱਸ ਸਟਾਪ ਦੇ ਸਾਹਮਣੇ';

  @override
  String get cityLabel => 'ਸ਼ਹਿਰ';

  @override
  String get stateLabel => 'ਰਾਜ';

  @override
  String get pincodeLabel => 'ਪਿੰਨ ਕੋਡ';

  @override
  String get invalidPincode => 'ਸਹੀ 6 ਅੰਕਾਂ ਦਾ ਪਿੰਨ ਕੋਡ ਦਰਜ ਕਰੋ';

  @override
  String get contactNameLabel => 'ਸੰਪਰਕ ਨਾਮ';

  @override
  String get contactPhoneLabel => 'ਸੰਪਰਕ ਨੰਬਰ';

  @override
  String get invalidMobileNumber => 'ਸਹੀ 10 ਅੰਕਾਂ ਦਾ ਮੋਬਾਈਲ ਨੰਬਰ ਦਰਜ ਕਰੋ';

  @override
  String get makeDefaultAddress => 'ਡਿਫਾਲਟ ਤੌਰ \'ਤੇ ਇੱਥੇ ਹੀ ਡਿਲੀਵਰੀ';

  @override
  String get saveAddress => 'ਪਤਾ ਸੰਭਾਲੋ';

  @override
  String get addressSaved => 'ਪਤਾ ਸੰਭਾਲ ਲਿਆ';

  @override
  String get addressBookTitle => 'ਡਿਲੀਵਰੀ ਪਤੇ';

  @override
  String get manageAddresses => 'ਸੰਭਾਲੇ ਪਤੇ ਸੰਭਾਲੋ';

  @override
  String get noAddressesTitle => 'ਅਜੇ ਕੋਈ ਪਤਾ ਨਹੀਂ';

  @override
  String get noAddressesSubtitle =>
      'ਇੱਕ ਪਤਾ ਜੋੜੋ ਤਾਂ ਜੋ ਅਸੀਂ ਤੁਹਾਡੇ ਤੱਕ ਡਿਲੀਵਰੀ ਕਰਨ ਵਾਲੀਆਂ ਦੁਕਾਨਾਂ ਦਿਖਾ ਸਕੀਏ।';

  @override
  String get addAddress => 'ਪਤਾ ਜੋੜੋ';

  @override
  String get setAsDefault => 'ਡਿਫਾਲਟ ਬਣਾਓ';

  @override
  String get editLabel => 'ਸੋਧੋ';

  @override
  String get addressUpdated => 'ਪਤਾ ਅੱਪਡੇਟ ਹੋ ਗਿਆ';

  @override
  String get deleteLabel => 'ਮਿਟਾਓ';

  @override
  String get deleteAddressTitle => 'ਇਹ ਪਤਾ ਮਿਟਾਉਣਾ ਹੈ?';

  @override
  String get deleteAddressMessage =>
      'ਤੁਸੀਂ ਇਸਨੂੰ ਬਾਅਦ ਵਿੱਚ ਦੁਬਾਰਾ ਜੋੜ ਸਕਦੇ ਹੋ।';

  @override
  String get rescueDealsTitle => 'ਫੂਡ ਰੈਸਕਿਊ';

  @override
  String get notTakingOrders => 'ਆਰਡਰ ਨਹੀਂ ਲੈ ਰਹੇ';

  @override
  String get closedRightNow => 'ਹੁਣ ਬੰਦ ਹੈ';

  @override
  String minimumOrder(String amount) {
    return 'ਘੱਟੋ-ਘੱਟ $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count ਬਾਕੀ';
  }

  @override
  String get soldOut => 'ਮੁੱਕ ਗਿਆ';

  @override
  String get menuEmptyTitle => 'ਹਾਲੇ ਕੋਈ ਪਕਵਾਨ ਨਹੀਂ';

  @override
  String get menuEmptySubtitle => 'ਇਸ ਰੈਸਟੋਰੈਂਟ ਨੇ ਆਪਣਾ ਮੀਨੂ ਨਹੀਂ ਜੋੜਿਆ।';

  @override
  String get moreDishesTitle => 'ਹੋਰ ਪਕਵਾਨ';

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
  String get customisable => 'ਪਸੰਦ ਮੁਤਾਬਕ';

  @override
  String get requiredLabel => 'ਲਾਜ਼ਮੀ';

  @override
  String get optionalLabel => 'ਚੋਣਵਾਂ';

  @override
  String get chooseOne => 'ਇੱਕ ਚੁਣੋ';

  @override
  String chooseUpTo(int count) {
    return 'ਵੱਧ ਤੋਂ ਵੱਧ $count ਚੁਣੋ';
  }

  @override
  String chooseAtLeast(int count) {
    return 'ਘੱਟੋ-ਘੱਟ $count ਚੁਣੋ';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min ਤੋਂ $max ਚੁਣੋ';
  }

  @override
  String get specialInstructions => 'ਖਾਸ ਹਦਾਇਤਾਂ';

  @override
  String get specialInstructionsHint => 'ਘੱਟ ਤਿੱਖਾ, ਪਿਆਜ਼ ਨਹੀਂ…';

  @override
  String addForAmount(String amount) {
    return 'ਜੋੜੋ · $amount';
  }

  @override
  String get deliveryLabel => 'ਡਿਲੀਵਰੀ';

  @override
  String get pickupLabel => 'ਆਪ ਲੈਣਾ';

  @override
  String get packagingLabel => 'ਪੈਕਿੰਗ';

  @override
  String get discountLabel => 'ਛੋਟ';

  @override
  String get billDetailsTitle => 'ਬਿੱਲ ਵੇਰਵਾ';

  @override
  String get clearCart => 'ਕਾਰਟ ਖਾਲੀ ਕਰੋ';

  @override
  String get clearCartTitle => 'ਇਹ ਕਾਰਟ ਖਾਲੀ ਕਰਨੀ ਹੈ?';

  @override
  String get clearCartMessage => 'ਇਸ ਵਿਚਲਾ ਸਭ ਕੁਝ ਹਟਾ ਦਿੱਤਾ ਜਾਵੇਗਾ।';

  @override
  String unavailableItemsNotice(String items) {
    return 'ਹੁਣ ਉਪਲਬਧ ਨਹੀਂ: $items';
  }

  @override
  String get removeUnavailable => 'ਇਹ ਹਟਾਓ';

  @override
  String minimumNotMet(String amount) {
    return 'ਘੱਟੋ-ਘੱਟ ਆਰਡਰ $amount ਹੈ';
  }

  @override
  String get checkoutTitle => 'ਚੈੱਕਆਊਟ';

  @override
  String get deliveryAddressLabel => 'ਡਿਲੀਵਰੀ ਪਤਾ';

  @override
  String get noAddressSelected => 'ਕੋਈ ਪਤਾ ਨਹੀਂ ਚੁਣਿਆ';

  @override
  String get paymentMethodLabel => 'ਭੁਗਤਾਨ';

  @override
  String get payOnDelivery => 'ਡਿਲੀਵਰੀ ਵੇਲੇ ਨਕਦ';

  @override
  String get noteToRestaurant => 'ਰੈਸਟੋਰੈਂਟ ਲਈ ਨੋਟ';

  @override
  String get noteToRestaurantHint => 'ਘੰਟੀ ਦੋ ਵਾਰ ਵਜਾਓ…';

  @override
  String get activeOrdersTitle => 'ਚੱਲ ਰਹੇ ਆਰਡਰ';

  @override
  String get pastOrdersTitle => 'ਪੁਰਾਣੇ ਆਰਡਰ';

  @override
  String get orderItemsTitle => 'ਪਕਵਾਨ';

  @override
  String get orderProgressTitle => 'ਪ੍ਰਗਤੀ';

  @override
  String get arrivingIn => 'ਪਹੁੰਚਣ ਵਿੱਚ';

  @override
  String get pickupCodeLabel => 'ਪਿਕਅੱਪ ਕੋਡ';

  @override
  String get cancellationReasonLabel => 'ਰੱਦ ਹੋਣ ਦਾ ਕਾਰਨ';

  @override
  String get riderLabel => 'ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ';

  @override
  String get callRider => 'ਕਾਲ ਕਰੋ';

  @override
  String get trackRider => 'ਰਾਈਡਰ ਟਰੈਕ ਕਰੋ';

  @override
  String get riderLocationSoon =>
      'ਆਰਡਰ ਚੁੱਕਣ ਤੋਂ ਬਾਅਦ ਰਾਈਡਰ ਦੀ ਥਾਂ ਇੱਥੇ ਦਿਖੇਗੀ।';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'ਰਾਈਡਰ ’ਤੇ ਕੇਂਦਰਿਤ ਕਰੋ';

  @override
  String get viewInvoice => 'ਟੈਕਸ ਇਨਵੌਇਸ';

  @override
  String get cancelOrder => 'ਆਰਡਰ ਰੱਦ ਕਰੋ';

  @override
  String get cancelOrderTitle => 'ਇਹ ਆਰਡਰ ਰੱਦ ਕਰਨਾ ਹੈ?';

  @override
  String get cancelOrderMessage =>
      'ਰੈਸਟੋਰੈਂਟ ਵੱਲੋਂ ਸਵੀਕਾਰ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਹੀ ਰੱਦ ਕੀਤਾ ਜਾ ਸਕਦਾ ਹੈ।';

  @override
  String get cancelReasonLabel => 'ਕਾਰਨ';

  @override
  String get cancelReasonFallback => 'ਗਾਹਕ ਨੇ ਰੱਦ ਕੀਤਾ';

  @override
  String get orderCancelled => 'ਆਰਡਰ ਰੱਦ ਹੋ ਗਿਆ';

  @override
  String get currentLocationLabel => 'ਮੌਜੂਦਾ ਟਿਕਾਣਾ';

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
  String get editProfileTitle => 'ਪ੍ਰੋਫਾਈਲ ਸੋਧੋ';

  @override
  String get editProfileSubtitle =>
      'ਰੈਸਟੋਰੈਂਟ ਅਤੇ ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ ਨੂੰ ਤੁਹਾਡਾ ਨਾਂ ਹੀ ਦਿਸਦਾ ਹੈ।';

  @override
  String get saveChanges => 'ਤਬਦੀਲੀਆਂ ਸੰਭਾਲੋ';

  @override
  String get profileUpdated => 'ਪ੍ਰੋਫਾਈਲ ਅੱਪਡੇਟ ਹੋ ਗਈ';

  @override
  String get deleteAccount => 'ਖਾਤਾ ਮਿਟਾਓ';

  @override
  String get deleteAccountTitle => 'ਆਪਣਾ ਖਾਤਾ ਮਿਟਾਉਣਾ ਹੈ?';

  @override
  String get deleteAccountMessage =>
      'ਹਰ ਡੀਵਾਈਸ ਤੋਂ ਸਾਈਨ ਆਊਟ ਹੋ ਜਾਓਗੇ। ਪੁਰਾਣੇ ਆਰਡਰ ਤੇ ਬਿੱਲ ਟੈਕਸ ਰਿਕਾਰਡ ਲਈ ਰੱਖੇ ਜਾਂਦੇ ਹਨ।';

  @override
  String get accountDeleted => 'ਤੁਹਾਡਾ ਖਾਤਾ ਮਿਟਾ ਦਿੱਤਾ ਗਿਆ';

  @override
  String get devicesTitle => 'ਸਾਈਨ-ਇਨ ਡੀਵਾਈਸ';

  @override
  String get devicesSubtitle => 'ਤੁਸੀਂ ਕਿੱਥੇ ਸਾਈਨ ਇਨ ਹੋ';

  @override
  String get devicesEmptyTitle => 'ਕੋਈ ਹੋਰ ਡੀਵਾਈਸ ਨਹੀਂ';

  @override
  String get devicesEmptySubtitle => 'ਤੁਸੀਂ ਸਿਰਫ਼ ਇਸੇ ਡੀਵਾਈਸ ਉੱਤੇ ਸਾਈਨ ਇਨ ਹੋ।';

  @override
  String get signOutDevice => 'ਸਾਈਨ ਆਊਟ';

  @override
  String get signOutDeviceTitle => 'ਇਹ ਡੀਵਾਈਸ ਸਾਈਨ ਆਊਟ ਕਰਨੀ ਹੈ?';

  @override
  String get signOutDeviceMessage =>
      'ਜੇ ਤੁਸੀਂ ਇਹੀ ਡੀਵਾਈਸ ਵਰਤ ਰਹੇ ਹੋ ਤਾਂ ਮੁੜ ਸਾਈਨ ਇਨ ਕਰਨਾ ਪਵੇਗਾ।';

  @override
  String get deviceSignedOut => 'ਡੀਵਾਈਸ ਸਾਈਨ ਆਊਟ ਹੋ ਗਈ';

  @override
  String get signOutEverywhere => 'ਹਰ ਥਾਂ ਤੋਂ ਸਾਈਨ ਆਊਟ';

  @override
  String get signOutEverywhereTitle => 'ਹਰ ਥਾਂ ਤੋਂ ਸਾਈਨ ਆਊਟ ਕਰਨਾ ਹੈ?';

  @override
  String get signOutEverywhereMessage =>
      'ਇਸ ਡੀਵਾਈਸ ਸਮੇਤ ਹਰ ਡੀਵਾਈਸ ਸਾਈਨ ਆਊਟ ਹੋ ਜਾਵੇਗੀ।';

  @override
  String get unknownDevice => 'ਅਣਜਾਣ ਡੀਵਾਈਸ';

  @override
  String get activeNow => 'ਹੁਣੇ ਸਰਗਰਮ';

  @override
  String minutesAgo(int count) {
    return '$count ਮਿੰਟ ਪਹਿਲਾਂ';
  }

  @override
  String hoursAgo(int count) {
    return '$count ਘੰਟੇ ਪਹਿਲਾਂ';
  }

  @override
  String daysAgo(int count) {
    return '$count ਦਿਨ ਪਹਿਲਾਂ';
  }

  @override
  String get filtersAndSorting => 'ਫਿਲਟਰ ਤੇ ਕ੍ਰਮ';

  @override
  String get clearAll => 'ਸਭ ਹਟਾਓ';

  @override
  String get showResults => 'ਨਤੀਜੇ ਵੇਖੋ';

  @override
  String get closeLabel => 'ਬੰਦ ਕਰੋ';

  @override
  String get sortByTitle => 'ਕ੍ਰਮ';

  @override
  String get sortRelevance => 'ਸੰਬੰਧਿਤਤਾ';

  @override
  String get sortRating => 'ਰੇਟਿੰਗ';

  @override
  String get sortDeliveryTime => 'ਡਿਲੀਵਰੀ ਸਮਾਂ';

  @override
  String get sortCostLowHigh => 'ਕੀਮਤ: ਘੱਟ ਤੋਂ ਵੱਧ';

  @override
  String get sortCostHighLow => 'ਕੀਮਤ: ਵੱਧ ਤੋਂ ਘੱਟ';

  @override
  String get timeSection => 'ਸਮਾਂ';

  @override
  String get nearAndFast => 'ਨੇੜੇ ਤੇ ਤੇਜ਼';

  @override
  String get openNow => 'ਹੁਣ ਖੁੱਲ੍ਹਾ';

  @override
  String get ratingSection => 'ਰੈਸਟੋਰੈਂਟ ਰੇਟਿੰਗ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ਰੇਟਿੰਗ';
  }

  @override
  String get offersSection => 'ਆਫ਼ਰ';

  @override
  String get hasOffersLabel => 'ਆਫ਼ਰ ਵਾਲੇ';

  @override
  String get dishPriceSection => 'ਪਕਵਾਨ ਦੀ ਕੀਮਤ';

  @override
  String costUnder(String amount) {
    return '$amount ਤੋਂ ਘੱਟ';
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
  String get moreSection => 'ਹੋਰ';

  @override
  String get noPackagingCharges => 'ਪੈਕਿੰਗ ਖ਼ਰਚ ਨਹੀਂ';

  @override
  String get allRestaurantsTitle => 'ਸਾਰੇ ਰੈਸਟੋਰੈਂਟ';

  @override
  String get whatsOnYourMind => 'ਕੀ ਖਾਣ ਨੂੰ ਦਿਲ ਕਰਦਾ ਹੈ?';

  @override
  String get listeningNow => 'ਸੁਣ ਰਹੇ ਹਾਂ…';

  @override
  String get speakNowHint => 'ਕੋਈ ਪਕਵਾਨ ਜਾਂ ਰੈਸਟੋਰੈਂਟ ਬੋਲੋ';

  @override
  String get voiceUnavailable => 'ਵੌਇਸ ਖੋਜ ਉਪਲਬਧ ਨਹੀਂ';

  @override
  String get voiceUnavailableBody => 'ਤੁਸੀਂ ਟਾਈਪ ਕਰਕੇ ਵੀ ਖੋਜ ਸਕਦੇ ਹੋ।';

  @override
  String get microphoneDenied => 'ਮਾਈਕ੍ਰੋਫ਼ੋਨ ਇਜਾਜ਼ਤ ਬੰਦ';

  @override
  String get voiceSearchLabel => 'ਬੋਲ ਕੇ ਖੋਜੋ';

  @override
  String get ratingsAndReviews => 'ਰੇਟਿੰਗ ਅਤੇ ਸਮੀਖਿਆਵਾਂ';

  @override
  String get reviewsWithTextOnly => 'ਸਮੀਖਿਆ ਵਾਲੇ';

  @override
  String get noReviewsTitle => 'ਹਾਲੇ ਕੋਈ ਰੇਟਿੰਗ ਨਹੀਂ';

  @override
  String get noReviewsSubtitle => 'ਆਰਡਰ ਤੋਂ ਬਾਅਦ ਪਹਿਲੀ ਰੇਟਿੰਗ ਤੁਸੀਂ ਦਿਓ।';

  @override
  String get rateOrderTitle => 'ਆਪਣੇ ਆਰਡਰ ਨੂੰ ਰੇਟ ਕਰੋ';

  @override
  String get rateDishesTitle => 'ਪਕਵਾਨਾਂ ਨੂੰ ਰੇਟ ਕਰੋ';

  @override
  String get reviewHint => 'ਕੁਝ ਹੋਰ ਕਹਿਣਾ ਹੈ? (ਵਿਕਲਪਿਕ)';

  @override
  String get submitRating => 'ਰੇਟਿੰਗ ਭੇਜੋ';

  @override
  String get reviewThanks => 'ਧੰਨਵਾਦ — ਤੁਹਾਡੀ ਰੇਟਿੰਗ ਮਿਲ ਗਈ।';

  @override
  String get rateThisOrder => 'ਇਸ ਆਰਡਰ ਨੂੰ ਰੇਟ ਕਰੋ';

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
