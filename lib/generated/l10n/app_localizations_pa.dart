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
  String get loginHeadline =>
      'ਤੁਹਾਡੇ ਨੇੜਲੀਆਂ ਦੁਕਾਨਾਂ ਤੋਂ ਗਰਮ ਖਾਣਾ, ਫਟਾਫਟ ਡਿਲੀਵਰੀ';

  @override
  String get loginOrSignUp => 'ਸਾਈਨ ਇਨ ਜਾਂ ਸਾਈਨ ਅੱਪ ਕਰੋ';

  @override
  String get loginEmailHint => 'ਆਪਣਾ ਈਮੇਲ ਪਤਾ ਦਰਜ ਕਰੋ';

  @override
  String get invalidEmail => 'ਸਹੀ ਈਮੇਲ ਪਤਾ ਦਰਜ ਕਰੋ';

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
    return '$restaurant ਨੂੰ ਤੁਹਾਡਾ ਆਰਡਰ ਮਿਲ ਗਿਆ ਹੈ।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'ਲਗਭਗ $minutes ਮਿੰਟਾਂ ਵਿੱਚ ਤਿਆਰ ਹੋ ਜਾਵੇਗਾ।';
  }

  @override
  String get trackYourOrder => 'ਆਪਣਾ ਆਰਡਰ ਟਰੈਕ ਕਰੋ';

  @override
  String get couponApplyTitle => 'ਕੂਪਨ ਲਗਾਓ';

  @override
  String get couponCodeLabel => 'ਕੂਪਨ ਕੋਡ';

  @override
  String get couponApply => 'ਲਗਾਓ';

  @override
  String couponAppliedTitle(String code) {
    return '$code ਲੱਗ ਗਿਆ';
  }

  @override
  String couponSaving(String amount) {
    return 'ਤੁਹਾਡੀ $amount ਦੀ ਬਚਤ';
  }

  @override
  String get couponRemove => 'ਹਟਾਓ';

  @override
  String searchFor(String term) {
    return '\"$term\" ਖੋਜੋ';
  }

  @override
  String get vegModeBadge => 'ਸ਼ੁੱਧ ਸ਼ਾਕਾਹਾਰੀ';

  @override
  String trackingExpectedBy(String time) {
    return '$time ਤੱਕ ਪਹੁੰਚੇਗਾ';
  }

  @override
  String get orderAgainTitle => 'ਦੁਬਾਰਾ ਆਰਡਰ ਕਰੋ';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count ਹੋਰ',
      one: '$first + 1 ਹੋਰ',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max ਮਿੰਟ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 ਵਿੱਚੋਂ $rating ਰੇਟਿੰਗ';
  }

  @override
  String get reorderReplaceTitle => 'ਆਪਣੀ ਕਾਰਟ ਬਦਲਣੀ ਹੈ?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant ਵਾਲੀ ਤੁਹਾਡੀ ਕਾਰਟ ਨੂੰ ਇਸ ਆਰਡਰ ਦੇ ਪਕਵਾਨਾਂ ਨਾਲ ਬਦਲ ਦਿੱਤਾ ਜਾਵੇਗਾ।';
  }

  @override
  String get reorderReplace => 'ਬਦਲੋ';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes ਹੁਣ ਉਪਲਬਧ ਨਹੀਂ ਹਨ, ਇਸ ਲਈ ਇਹਨਾਂ ਨੂੰ ਛੱਡ ਦਿੱਤਾ ਗਿਆ।',
      one: '$dishes ਹੁਣ ਉਪਲਬਧ ਨਹੀਂ ਹੈ, ਇਸ ਲਈ ਇਸਨੂੰ ਛੱਡ ਦਿੱਤਾ ਗਿਆ।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'ਇਹਨਾਂ ਵਿੱਚੋਂ ਕੋਈ ਵੀ ਪਕਵਾਨ ਹੁਣ ਉਪਲਬਧ ਨਹੀਂ ਹੈ।';

  @override
  String get searchShort => 'ਖੋਜੋ';

  @override
  String get favouriteSave => 'ਮਨਪਸੰਦ ਵਿੱਚ ਸੰਭਾਲੋ';

  @override
  String get restaurantAbout => 'ਇਸ ਰੈਸਟੋਰੈਂਟ ਬਾਰੇ';

  @override
  String ratingByCount(String count) {
    return '$count ਲੋਕਾਂ ਵੱਲੋਂ';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਆਫ਼ਰ',
      one: '1 ਆਫ਼ਰ',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile \'ਤੇ $restaurant ਤੋਂ ਆਰਡਰ ਕਰੋ';
  }

  @override
  String get ordersSearchHint => 'ਰੈਸਟੋਰੈਂਟ ਜਾਂ ਪਕਵਾਨ ਖੋਜੋ…';

  @override
  String get ordersNoMatch =>
      'ਇਸ ਨਾਮ ਦੇ ਕਿਸੇ ਰੈਸਟੋਰੈਂਟ ਜਾਂ ਪਕਵਾਨ ਦਾ ਕੋਈ ਆਰਡਰ ਨਹੀਂ ਮਿਲਿਆ।';

  @override
  String orderPlacedOn(String date) {
    return '$date ਨੂੰ ਆਰਡਰ ਕੀਤਾ';
  }

  @override
  String get viewMenu => 'ਮੀਨੂ ਦੇਖੋ';

  @override
  String get navHistory => 'ਹਿਸਟਰੀ';

  @override
  String get exploreMore => 'ਹੋਰ ਦੇਖੋ';

  @override
  String get exploreTopRated => 'ਉੱਚੀ ਰੇਟਿੰਗ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਰੈਸਟੋਰੈਂਟ ਤੁਹਾਡੇ ਤੱਕ ਡਿਲੀਵਰੀ ਕਰਦੇ ਹਨ',
      one: '1 ਰੈਸਟੋਰੈਂਟ ਤੁਹਾਡੇ ਤੱਕ ਡਿਲੀਵਰੀ ਕਰਦਾ ਹੈ',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ਤੁਹਾਡੀ ਡਿਲੀਵਰੀ ਕਿਵੇਂ ਰਹੀ?';

  @override
  String get rateHowWasFood => 'ਖਾਣਾ ਕਿਵੇਂ ਲੱਗਿਆ?';

  @override
  String get rateWordTerrible => 'ਬਹੁਤ ਮਾੜਾ';

  @override
  String get rateWordBad => 'ਮਾੜਾ';

  @override
  String get rateWordOkay => 'ਠੀਕ-ਠਾਕ';

  @override
  String get rateWordGood => 'ਵਧੀਆ';

  @override
  String get rateWordLoved => 'ਬਹੁਤ ਪਸੰਦ ਆਇਆ!';

  @override
  String get rateWhatWentWrong => 'ਕੀ ਗਲਤ ਹੋਇਆ?';

  @override
  String get rateWhatYouLiked => 'ਤੁਹਾਨੂੰ ਕੀ ਪਸੰਦ ਆਇਆ?';

  @override
  String get rateRiderNoteHint => 'ਡਿਲੀਵਰੀ ਬਾਰੇ ਨੋਟ (ਵਿਕਲਪਿਕ)';

  @override
  String get rateReviewHeading => 'ਸਮੀਖਿਆ ਲਿਖੋ';

  @override
  String get rateFoodFirst => 'ਭੇਜਣ ਲਈ ਖਾਣੇ ਨੂੰ ਰੇਟ ਕਰੋ';

  @override
  String get rateYouRated => 'ਤੁਸੀਂ ਇਸ ਆਰਡਰ ਨੂੰ ਰੇਟ ਕੀਤਾ';

  @override
  String get ratePromptLater => 'ਹੁਣ ਨਹੀਂ';

  @override
  String get tagTasty => 'ਸੁਆਦੀ';

  @override
  String get tagFreshHot => 'ਗਰਮ ਤੇ ਤਾਜ਼ਾ';

  @override
  String get tagGoodPortion => 'ਚੰਗੀ ਮਾਤਰਾ';

  @override
  String get tagGoodPackaging => 'ਵਧੀਆ ਪੈਕਿੰਗ';

  @override
  String get tagValueForMoney => 'ਪੈਸਾ ਵਸੂਲ';

  @override
  String get tagHygienic => 'ਸਾਫ਼-ਸੁਥਰਾ';

  @override
  String get tagColdFood => 'ਠੰਢਾ ਖਾਣਾ';

  @override
  String get tagPoorTaste => 'ਸੁਆਦ ਨਹੀਂ ਸੀ';

  @override
  String get tagSmallPortion => 'ਘੱਟ ਮਾਤਰਾ';

  @override
  String get tagWrongItems => 'ਗਲਤ ਚੀਜ਼ਾਂ';

  @override
  String get tagMissingItems => 'ਚੀਜ਼ਾਂ ਗਾਇਬ';

  @override
  String get tagPoorPackaging => 'ਮਾੜੀ ਪੈਕਿੰਗ';

  @override
  String get tagTooOily => 'ਬਹੁਤ ਤੇਲ ਵਾਲਾ ਜਾਂ ਤਿੱਖਾ';

  @override
  String get tagOnTime => 'ਸਮੇਂ ਸਿਰ';

  @override
  String get tagPolite => 'ਨਿਮਰ';

  @override
  String get tagFollowedInstructions => 'ਹਦਾਇਤਾਂ ਮੰਨੀਆਂ';

  @override
  String get tagCarefulHandling => 'ਖਾਣਾ ਧਿਆਨ ਨਾਲ ਲਿਆਂਦਾ';

  @override
  String get tagGoodCommunication => 'ਅੱਪਡੇਟ ਮਿਲਦੀ ਰਹੀ';

  @override
  String get tagLate => 'ਦੇਰ ਨਾਲ ਡਿਲੀਵਰੀ';

  @override
  String get tagRude => 'ਰੁੱਖਾ ਵਿਹਾਰ';

  @override
  String get tagIgnoredInstructions => 'ਹਦਾਇਤਾਂ ਨਹੀਂ ਮੰਨੀਆਂ';

  @override
  String get tagFoodSpilled => 'ਖਾਣਾ ਡੁੱਲ੍ਹਿਆ ਹੋਇਆ';

  @override
  String get tagAskedExtraMoney => 'ਵਾਧੂ ਪੈਸੇ ਮੰਗੇ';

  @override
  String get tagUnprofessional => 'ਗ਼ੈਰ-ਪੇਸ਼ੇਵਰ';

  @override
  String rateDeliveredBy(String name) {
    return '$name ਨੇ ਡਿਲੀਵਰ ਕੀਤਾ';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant ਤੋਂ';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant ਤੋਂ ਤੁਹਾਡਾ ਆਰਡਰ ਕਿਵੇਂ ਰਿਹਾ?';
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
    return '$total ਵਿੱਚੋਂ $step';
  }

  @override
  String get permNotNow => 'ਹੁਣ ਨਹੀਂ';

  @override
  String get permLocationTitle => 'ਆਪਣੇ ਨੇੜੇ ਖਾਣਾ ਲੱਭੋ';

  @override
  String get permNotifyTitle => 'ਆਰਡਰ ਦੀ ਕੋਈ ਅੱਪਡੇਟ ਨਾ ਖੁੰਝਾਓ';

  @override
  String get permNotifyBody =>
      'ਨੋਟੀਫਿਕੇਸ਼ਨ ਚਾਲੂ ਕਰੋ ਤਾਂ ਜੋ ਪਤਾ ਲੱਗੇ ਕਿ ਤੁਹਾਡਾ ਆਰਡਰ ਕਦੋਂ ਸਵੀਕਾਰ ਹੋਇਆ, ਕਦੋਂ ਚੁੱਕਿਆ ਗਿਆ ਅਤੇ ਕਦੋਂ ਤੁਹਾਡੇ ਦਰਵਾਜ਼ੇ \'ਤੇ ਪਹੁੰਚਿਆ।';

  @override
  String get permNotifyLiveTitle => 'ਆਰਡਰ ਦੀਆਂ ਲਾਈਵ ਅੱਪਡੇਟਾਂ';

  @override
  String get permNotifyLiveBody =>
      'ਸਵੀਕਾਰ, ਤਿਆਰ ਹੋ ਰਿਹਾ, ਚੁੱਕ ਲਿਆ, ਡਿਲੀਵਰ ਹੋ ਗਿਆ।';

  @override
  String get permNotifyRiderTitle => 'ਰਾਈਡਰ ਤੁਹਾਡੇ ਦਰਵਾਜ਼ੇ \'ਤੇ';

  @override
  String get permNotifyRiderBody =>
      'ਐਪ ਦੇਖੇ ਬਿਨਾਂ ਪਤਾ ਲੱਗੇ ਕਿ ਕਦੋਂ ਬਾਹਰ ਨਿਕਲਣਾ ਹੈ।';

  @override
  String get permNotifyControlTitle => 'ਕੰਟਰੋਲ ਤੁਹਾਡੇ ਹੱਥ ਵਿੱਚ';

  @override
  String get permNotifyControlBody =>
      'ਤੁਸੀਂ ਕਿਸੇ ਵੀ ਸਮੇਂ ਆਪਣੇ ਫ਼ੋਨ ਦੀਆਂ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਨੋਟੀਫਿਕੇਸ਼ਨ ਬੰਦ ਕਰ ਸਕਦੇ ਹੋ।';

  @override
  String get permNotifyAllow => 'ਨੋਟੀਫਿਕੇਸ਼ਨ ਚਾਲੂ ਕਰੋ';

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
  String get menuSearchHint => 'ਪਕਵਾਨ ਖੋਜੋ';

  @override
  String get filtersShort => 'ਫਿਲਟਰ';

  @override
  String get dietVeg => 'ਸ਼ਾਕਾਹਾਰੀ';

  @override
  String get dietEgg => 'ਅੰਡਾ';

  @override
  String get dietNonVeg => 'ਮਾਸਾਹਾਰੀ';

  @override
  String get menuBestsellerChip => 'ਬੈਸਟਸੈਲਰ';

  @override
  String get menuFoodType => 'ਖਾਣੇ ਦੀ ਕਿਸਮ';

  @override
  String get menuShowOnly => 'ਸਿਰਫ਼ ਦਿਖਾਓ';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਪਕਵਾਨ',
      one: '1 ਪਕਵਾਨ',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਪਕਵਾਨ ਦਿਖਾਓ',
      one: '1 ਪਕਵਾਨ ਦਿਖਾਓ',
      zero: 'ਕੋਈ ਪਕਵਾਨ ਨਹੀਂ',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'ਕਿਸੇ ਹੋਰ ਪਕਵਾਨ ਦਾ ਨਾਮ ਅਜ਼ਮਾਓ, ਜਾਂ ਕੋਈ ਫਿਲਟਰ ਹਟਾਓ।';

  @override
  String get menuBrowse => 'ਮੀਨੂ';

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
  String get riderLocationStale => 'ਰਾਈਡਰ ਦੀ ਥਾਂ ਅੱਪਡੇਟ ਹੋ ਰਹੀ ਹੈ…';

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
  String get onLabel => 'ਚਾਲੂ';

  @override
  String get offLabel => 'ਬੰਦ';

  @override
  String get profileCoupons => 'ਤੁਹਾਡੇ ਕੂਪਨ';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਉਪਲਬਧ',
      one: '1 ਉਪਲਬਧ',
      zero: 'ਅਜੇ ਕੋਈ ਨਹੀਂ',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'ਤੁਹਾਡੀਆਂ ਪਸੰਦਾਂ';

  @override
  String get profileVegMode => 'ਸ਼ਾਕਾਹਾਰੀ ਮੋਡ';

  @override
  String get profileVegModeHint => 'ਸਿਰਫ਼ ਸ਼ਾਕਾਹਾਰੀ ਰੈਸਟੋਰੈਂਟ ਅਤੇ ਪਕਵਾਨ';

  @override
  String get profileAppearance => 'ਦਿੱਖ';

  @override
  String get appearanceSystem => 'ਫ਼ੋਨ ਵਾਂਗ';

  @override
  String get appearanceLight => 'ਹਲਕਾ';

  @override
  String get appearanceDark => 'ਗੂੜ੍ਹਾ';

  @override
  String get profileNotifications => 'ਨੋਟੀਫਿਕੇਸ਼ਨ';

  @override
  String get profileFoodDelivery => 'ਖਾਣੇ ਦੀ ਡਿਲੀਵਰੀ';

  @override
  String get profileFavourites => 'ਤੁਹਾਡੇ ਮਨਪਸੰਦ';

  @override
  String get profileHelp => 'ਮਦਦ ਅਤੇ ਸਹਾਇਤਾ';

  @override
  String get profileMore => 'ਹੋਰ';

  @override
  String get profileFeedback => 'ਫੀਡਬੈਕ ਭੇਜੋ';

  @override
  String get profileSafety => 'ਸੁਰੱਖਿਆ ਐਮਰਜੈਂਸੀ ਦੀ ਰਿਪੋਰਟ ਕਰੋ';

  @override
  String get profileAbout => 'Nexmile ਬਾਰੇ';

  @override
  String get couponsEmptyTitle => 'ਹੁਣ ਕੋਈ ਕੂਪਨ ਨਹੀਂ';

  @override
  String get couponsEmptyBody =>
      'ਜਦੋਂ ਕੋਈ ਕੂਪਨ ਤੁਹਾਡੇ ਵਰਤਣ ਲਈ ਹੋਵੇਗਾ, ਉਹ ਇੱਥੇ ਦਿਖੇਗਾ।';

  @override
  String couponFlatOff(String amount) {
    return '$amount ਛੋਟ';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% ਛੋਟ';
  }

  @override
  String couponUpTo(String amount) {
    return '$amount ਤੱਕ';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount ਤੋਂ ਵੱਧ ਦੇ ਆਰਡਰਾਂ \'ਤੇ';
  }

  @override
  String couponValidTill(String date) {
    return '$date ਤੱਕ ਵੈਧ';
  }

  @override
  String get couponAllRestaurants => 'ਸਾਰੇ ਰੈਸਟੋਰੈਂਟਾਂ \'ਤੇ';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant \'ਤੇ';
  }

  @override
  String couponCopied(String code) {
    return 'ਕੋਡ $code ਕਾਪੀ ਹੋ ਗਿਆ';
  }

  @override
  String get favouritesEmptyTitle => 'ਅਜੇ ਕੋਈ ਮਨਪਸੰਦ ਨਹੀਂ';

  @override
  String get favouritesEmptyBody =>
      'ਕਿਸੇ ਰੈਸਟੋਰੈਂਟ ਨੂੰ ਇੱਥੇ ਸੰਭਾਲਣ ਲਈ ਉਸਦੇ ਦਿਲ \'ਤੇ ਟੈਪ ਕਰੋ।';

  @override
  String get helpCall => 'ਸਾਨੂੰ ਕਾਲ ਕਰੋ';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'ਸਾਨੂੰ ਈਮੇਲ ਕਰੋ';

  @override
  String helpHours(String hours) {
    return 'ਅਸੀਂ $hours ਉਪਲਬਧ ਹਾਂ';
  }

  @override
  String get helpFaqs => 'ਆਮ ਸਵਾਲ';

  @override
  String get helpNothing =>
      'ਮਦਦ ਦੀ ਜਾਣਕਾਰੀ ਹੁਣ ਉਪਲਬਧ ਨਹੀਂ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਥੋੜ੍ਹੀ ਦੇਰ ਬਾਅਦ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get feedbackPrompt => 'Nexmile ਤੁਹਾਡੇ ਲਈ ਕਿਵੇਂ ਕੰਮ ਕਰ ਰਿਹਾ ਹੈ?';

  @override
  String get feedbackHint =>
      'ਦੱਸੋ ਤੁਹਾਨੂੰ ਕੀ ਪਸੰਦ ਆਇਆ, ਜਾਂ ਅਸੀਂ ਕੀ ਬਿਹਤਰ ਕਰ ਸਕਦੇ ਹਾਂ';

  @override
  String get feedbackNeedRating => 'ਪਹਿਲਾਂ ਰੇਟਿੰਗ ਚੁਣੋ';

  @override
  String get feedbackThanks =>
      'ਧੰਨਵਾਦ! ਤੁਹਾਡਾ ਫੀਡਬੈਕ ਸਾਡੀ ਟੀਮ ਤੱਕ ਪਹੁੰਚ ਗਿਆ ਹੈ।';

  @override
  String get safetyIntro =>
      'ਜੇ ਤੁਸੀਂ ਜਾਂ ਕੋਈ ਹੋਰ ਖ਼ਤਰੇ ਵਿੱਚ ਹੈ, ਤਾਂ ਪਹਿਲਾਂ ਐਮਰਜੈਂਸੀ ਸੇਵਾਵਾਂ ਨੂੰ ਕਾਲ ਕਰੋ।';

  @override
  String get safetyCallEmergency => '112 \'ਤੇ ਕਾਲ ਕਰੋ';

  @override
  String get safetyCallEmergencyBody => 'ਪੁਲਿਸ, ਫਾਇਰ ਅਤੇ ਐਂਬੂਲੈਂਸ';

  @override
  String get safetyCallNexmile => 'Nexmile ਸੁਰੱਖਿਆ ਲਾਈਨ \'ਤੇ ਕਾਲ ਕਰੋ';

  @override
  String get safetyCallNexmileBody => 'ਹਰ ਵੇਲੇ ਜਵਾਬ ਮਿਲਦਾ ਹੈ';

  @override
  String aboutVersion(String version) {
    return 'ਵਰਜ਼ਨ $version';
  }

  @override
  String get aboutTerms => 'ਸੇਵਾ ਸ਼ਰਤਾਂ';

  @override
  String get aboutPrivacy => 'ਪਰਦੇਦਾਰੀ ਨੀਤੀ';

  @override
  String get aboutLicences => 'ਓਪਨ-ਸੋਰਸ ਲਾਇਸੈਂਸ';

  @override
  String get notifyOrderUpdates => 'ਆਰਡਰ ਅੱਪਡੇਟ';

  @override
  String get notifyOrderUpdatesBody =>
      'ਹਮੇਸ਼ਾ ਚਾਲੂ, ਤਾਂ ਜੋ ਤੁਹਾਨੂੰ ਪਤਾ ਰਹੇ ਕਿ ਤੁਹਾਡਾ ਖਾਣਾ ਕਿੱਥੇ ਹੈ।';

  @override
  String get notifyPromotions => 'ਆਫ਼ਰ ਅਤੇ ਪ੍ਰੋਮੋਸ਼ਨ';

  @override
  String get notifyPromotionsBody =>
      'ਡੀਲਾਂ, ਕੂਪਨ ਅਤੇ ਤੁਹਾਡੇ ਨੇੜੇ ਦੇ ਨਵੇਂ ਰੈਸਟੋਰੈਂਟ।';

  @override
  String get notifyPhoneOff => 'ਇਸ ਫ਼ੋਨ \'ਤੇ Nexmile ਲਈ ਨੋਟੀਫਿਕੇਸ਼ਨ ਬੰਦ ਹਨ।';

  @override
  String get notifyTurnOn => 'ਚਾਲੂ ਕਰੋ';

  @override
  String get linkOpenFailed => 'ਇਹ ਇਸ ਫ਼ੋਨ \'ਤੇ ਨਹੀਂ ਖੁੱਲ੍ਹ ਸਕਿਆ।';

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
  String get walletTitle => 'Nexmile ਵਾਲਿਟ';

  @override
  String get walletBalance => 'ਵਾਲਿਟ ਬੈਲੰਸ';

  @override
  String get walletBalanceHint => 'ਇਸ ਨਾਲ ਕਿਸੇ ਵੀ ਆਰਡਰ ਦਾ ਭੁਗਤਾਨ ਕਰੋ।';

  @override
  String get walletAddMoney => 'ਪੈਸੇ ਪਾਓ';

  @override
  String get walletEnterAmount => 'ਰਕਮ ਦਰਜ ਕਰੋ';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ਤੋਂ $max ਤੱਕ';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount ਪਾਓ';
  }

  @override
  String get walletSecuredBy => 'ਭੁਗਤਾਨ Razorpay ਰਾਹੀਂ ਸੁਰੱਖਿਅਤ ਹਨ';

  @override
  String get walletHistory => 'ਹਿਸਟਰੀ';

  @override
  String get walletNoHistory =>
      'ਅਜੇ ਕੋਈ ਲੈਣ-ਦੇਣ ਨਹੀਂ। ਤੁਸੀਂ ਜੋ ਪੈਸੇ ਪਾਓਗੇ ਜਾਂ ਖ਼ਰਚੋਗੇ, ਉਹ ਇੱਥੇ ਦਿਖਣਗੇ।';

  @override
  String get walletEntryTopUp => 'ਪੈਸੇ ਪਾਏ';

  @override
  String get walletEntryOrder => 'ਆਰਡਰ ਲਈ ਭੁਗਤਾਨ';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ਆਰਡਰ $number ਲਈ ਭੁਗਤਾਨ';
  }

  @override
  String get walletEntryRefund => 'ਰਿਫੰਡ';

  @override
  String walletMoneyAdded(String amount) {
    return 'ਤੁਹਾਡੇ ਵਾਲਿਟ ਵਿੱਚ $amount ਜੁੜ ਗਏ';
  }

  @override
  String get walletPaymentFailed =>
      'ਭੁਗਤਾਨ ਨਹੀਂ ਹੋਇਆ। ਤੁਹਾਡੇ ਖਾਤੇ ਵਿੱਚੋਂ ਕੋਈ ਪੈਸਾ ਨਹੀਂ ਕੱਟਿਆ ਗਿਆ।';

  @override
  String get walletPaymentConfirming =>
      'ਭੁਗਤਾਨ ਮਿਲ ਗਿਆ। ਤੁਹਾਡਾ ਬੈਲੰਸ ਕੁਝ ਮਿੰਟਾਂ ਵਿੱਚ ਅੱਪਡੇਟ ਹੋ ਜਾਵੇਗਾ।';

  @override
  String get walletUseBalance => 'ਵਾਲਿਟ ਬੈਲੰਸ ਵਰਤੋ';

  @override
  String walletAvailable(String amount) {
    return 'ਉਪਲਬਧ: $amount';
  }

  @override
  String get walletPaidFromWallet => 'ਵਾਲਿਟ ਤੋਂ ਭੁਗਤਾਨ';

  @override
  String get walletPayOnDelivery => 'ਡਿਲੀਵਰੀ ਵੇਲੇ ਨਕਦ';

  @override
  String get walletCoversOrder => 'ਪੂਰਾ ਭੁਗਤਾਨ ਤੁਹਾਡੇ ਵਾਲਿਟ ਤੋਂ';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet ਵਾਲਿਟ ਤੋਂ, $rest ਡਿਲੀਵਰੀ ਵੇਲੇ';
  }

  @override
  String get walletTopUpUnavailable =>
      'ਹੁਣ ਪੈਸੇ ਨਹੀਂ ਪਾਏ ਜਾ ਸਕਦੇ। ਕਿਰਪਾ ਕਰਕੇ ਥੋੜ੍ਹੀ ਦੇਰ ਬਾਅਦ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String walletFull(String limit) {
    return 'ਤੁਹਾਡਾ ਵਾਲਿਟ ਆਪਣੀ $limit ਦੀ ਹੱਦ \'ਤੇ ਹੈ।';
  }

  @override
  String get searchAddressHint => 'ਇਲਾਕਾ, ਗਲੀ ਜਾਂ ਨਿਸ਼ਾਨੀ ਖੋਜੋ';

  @override
  String get selectLocationTitle => 'ਟਿਕਾਣਾ ਚੁਣੋ';

  @override
  String get useCurrentLocation => 'ਮੌਜੂਦਾ ਟਿਕਾਣਾ ਵਰਤੋ';

  @override
  String get locatingYou => 'ਤੁਹਾਡਾ ਟਿਕਾਣਾ ਲੱਭ ਰਹੇ ਹਾਂ…';

  @override
  String get locationOffHint => 'ਇਸਨੂੰ ਵਰਤਣ ਲਈ ਟਿਕਾਣੇ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get savedAddressesHeading => 'ਸੰਭਾਲੇ ਪਤੇ';

  @override
  String get recentLocationsHeading => 'ਹਾਲੀਆ ਟਿਕਾਣੇ';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ਡਿਲੀਵਰੀ ਟਿਕਾਣਾ ਚੁਣੋ';

  @override
  String get movePinTooltip => 'ਪਿੰਨ ਨੂੰ ਆਪਣੇ ਸਹੀ ਡਿਲੀਵਰੀ ਟਿਕਾਣੇ \'ਤੇ ਲਿਜਾਓ';

  @override
  String get locatingPin => 'ਪਤਾ ਲੱਭ ਰਹੇ ਹਾਂ…';

  @override
  String get deliveryDetailsHeading => 'ਡਿਲੀਵਰੀ ਵੇਰਵੇ';

  @override
  String get addressDetailsLabel => 'ਪਤੇ ਦੇ ਵੇਰਵੇ*';

  @override
  String get addressDetailsHint => 'ਜਿਵੇਂ ਮੰਜ਼ਿਲ, ਘਰ ਨੰ.';

  @override
  String get missingAreaHint =>
      'ਅਸੀਂ ਇਸ ਪਿੰਨ ਦਾ ਪੂਰਾ ਪਤਾ ਨਹੀਂ ਪੜ੍ਹ ਸਕੇ। ਕਿਰਪਾ ਕਰਕੇ ਬਾਕੀ ਆਪ ਭਰੋ।';

  @override
  String get whoToContact => 'ਇਸ ਡਿਲੀਵਰੀ ਲਈ ਅਸੀਂ ਕਿਸ ਨਾਲ ਸੰਪਰਕ ਕਰੀਏ?';

  @override
  String get contactMyself => 'ਮੈਂ ਖ਼ੁਦ';

  @override
  String get contactSomeoneElse => 'ਕੋਈ ਹੋਰ';

  @override
  String get receiverDetailsHeading => 'ਇਸ ਪਤੇ ਲਈ ਲੈਣ ਵਾਲੇ ਦੇ ਵੇਰਵੇ';

  @override
  String get receiverAddPrompt => 'ਲੈਣ ਵਾਲੇ ਦਾ ਨਾਮ ਅਤੇ ਨੰਬਰ ਜੋੜੋ';

  @override
  String get receiverSheetTitle => 'ਲੈਣ ਵਾਲੇ ਦੇ ਵੇਰਵੇ';

  @override
  String get doorPhotoHeading => 'ਦਰਵਾਜ਼ੇ/ਇਮਾਰਤ ਦੀ ਫ਼ੋਟੋ (ਵਿਕਲਪਿਕ)';

  @override
  String get doorPhotoAdd => 'ਫ਼ੋਟੋ ਜੋੜੋ';

  @override
  String get doorPhotoBody =>
      'ਇਸ ਨਾਲ ਸਾਡੇ ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ ਤੁਹਾਡਾ ਸਹੀ ਟਿਕਾਣਾ ਜਲਦੀ ਲੱਭ ਲੈਂਦੇ ਹਨ';

  @override
  String get doorPhotoChange => 'ਬਦਲੋ';

  @override
  String get doorPhotoRemove => 'ਹਟਾਓ';

  @override
  String get photoFromCamera => 'ਫ਼ੋਟੋ ਖਿੱਚੋ';

  @override
  String get photoFromGallery => 'ਗੈਲਰੀ ਵਿੱਚੋਂ ਚੁਣੋ';

  @override
  String get photoUploaded => 'ਫ਼ੋਟੋ ਜੁੜ ਗਈ';

  @override
  String get photoUploadFailed =>
      'ਫ਼ੋਟੋ ਅੱਪਲੋਡ ਨਹੀਂ ਹੋ ਸਕੀ। ਕਿਰਪਾ ਕਰਕੇ ਥੋੜ੍ਹੀ ਦੇਰ ਬਾਅਦ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get addressSavedPhotoFailed =>
      'ਪਤਾ ਸੰਭਾਲ ਲਿਆ। ਫ਼ੋਟੋ ਅੱਪਲੋਡ ਨਹੀਂ ਹੋ ਸਕੀ।';

  @override
  String get removePhotoLabel => 'ਫ਼ੋਟੋ ਹਟਾਓ';

  @override
  String get photoRemoved => 'ਫ਼ੋਟੋ ਹਟਾ ਦਿੱਤੀ';

  @override
  String get shareLabel => 'ਸਾਂਝਾ ਕਰੋ';

  @override
  String get addDoorPhotoLabel => 'ਦਰਵਾਜ਼ੇ ਦੀ ਫ਼ੋਟੋ ਜੋੜੋ';

  @override
  String get searchAddressNoResults =>
      'ਕੋਈ ਥਾਂ ਨਹੀਂ ਮਿਲੀ। ਨੇੜਲੀ ਨਿਸ਼ਾਨੀ, ਇਲਾਕੇ ਦਾ ਨਾਮ ਜਾਂ ਪਿੰਨ ਕੋਡ ਅਜ਼ਮਾਓ।';

  @override
  String get clearLabel => 'ਸਾਫ਼ ਕਰੋ';

  @override
  String get trackingArrivingNow => 'ਹੁਣੇ ਪਹੁੰਚ ਰਿਹਾ';

  @override
  String get trackingLive => 'ਲਾਈਵ';

  @override
  String get trackingStepConfirmed => 'ਪੱਕਾ ਹੋਇਆ';

  @override
  String get trackingStepPreparing => 'ਤਿਆਰ ਹੋ ਰਿਹਾ';

  @override
  String get trackingStepOnTheWay => 'ਰਸਤੇ ਵਿੱਚ';

  @override
  String get trackingStepDelivered => 'ਡਿਲੀਵਰ ਹੋ ਗਿਆ';

  @override
  String get trackingFindingRider => 'ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ ਲਗਾਇਆ ਜਾ ਰਿਹਾ ਹੈ…';

  @override
  String get trackingPinYou => 'ਤੁਸੀਂ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance ਦੂਰ ਹੈ';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name ਨੂੰ ਮੈਸੇਜ ਕਰੋ';
  }

  @override
  String get trackingDeliveringTo => 'ਡਿਲੀਵਰੀ ਪਤਾ';

  @override
  String get trackingOrderDetails => 'ਆਰਡਰ ਦੇ ਵੇਰਵੇ';

  @override
  String get dispatchSearching =>
      'ਰੈਸਟੋਰੈਂਟ ਦੇ ਨੇੜੇ ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ ਲੱਭ ਰਹੇ ਹਾਂ…';

  @override
  String get dispatchNoRider =>
      'ਅਜੇ ਤੱਕ ਕਿਸੇ ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ ਨੇ ਇਹ ਨਹੀਂ ਲਿਆ। ਸਾਡੀ ਟੀਮ ਹੁਣ ਕੋਈ ਲਗਾ ਰਹੀ ਹੈ।';

  @override
  String get vehicleBike => 'ਬਾਈਕ';

  @override
  String get vehicleScooter => 'ਸਕੂਟਰ';

  @override
  String get vehicleBicycle => 'ਸਾਈਕਲ';

  @override
  String get vehicleElectric => 'ਇਲੈਕਟ੍ਰਿਕ ਸਕੂਟਰ';

  @override
  String get exitTitle => 'Nexmile ਤੋਂ ਬਾਹਰ ਜਾਣਾ ਹੈ?';

  @override
  String get exitBody => 'ਕੀ ਤੁਸੀਂ ਸੱਚਮੁੱਚ ਐਪ ਤੋਂ ਬਾਹਰ ਜਾਣਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get exitConfirm => 'ਬਾਹਰ ਜਾਓ';

  @override
  String cartSavedBanner(String amount) {
    return 'ਤੁਸੀਂ ਇਸ ਆਰਡਰ \'ਤੇ $amount ਬਚਾਏ';
  }

  @override
  String get cartAddMoreItems => 'ਹੋਰ ਚੀਜ਼ਾਂ ਜੋੜੋ';

  @override
  String get cartAddNote => 'ਰੈਸਟੋਰੈਂਟ ਲਈ ਨੋਟ ਜੋੜੋ';

  @override
  String get cartOrderNoteHint =>
      'ਜਿਵੇਂ: ਕਿਸੇ ਵੀ ਚੀਜ਼ ਵਿੱਚ ਪਿਆਜ਼ ਜਾਂ ਲਸਣ ਨਾ ਪਾਓ';

  @override
  String get cartNoteSave => 'ਸੰਭਾਲੋ';

  @override
  String get cartNoCutlery => 'ਚਮਚੇ-ਕਾਂਟੇ ਨਾ ਭੇਜੋ';

  @override
  String get cartNoCutleryThanks => 'ਪਲਾਸਟਿਕ ਦਾ ਕੂੜਾ ਘਟਾਉਣ ਵਿੱਚ ਮਦਦ ਲਈ ਧੰਨਵਾਦ';

  @override
  String get cartSavingsCorner => 'ਬਚਤ ਕੋਨਾ';

  @override
  String get cartDeliveryInstructions => 'ਡਿਲੀਵਰੀ ਹਦਾਇਤਾਂ';

  @override
  String get cartInstructionsRider =>
      'ਇਹ ਸਿਰਫ਼ ਤੁਹਾਡੇ ਡਿਲੀਵਰੀ ਪਾਰਟਨਰ ਨੂੰ ਹੀ ਦਿਸਦੀਆਂ ਹਨ';

  @override
  String get instructionLeaveAtDoor => 'ਦਰਵਾਜ਼ੇ \'ਤੇ ਰੱਖ ਦਿਓ';

  @override
  String get instructionNoBell => 'ਘੰਟੀ ਨਾ ਵਜਾਓ';

  @override
  String get instructionNoCall => 'ਕਾਲ ਨਾ ਕਰੋ';

  @override
  String get instructionSecurity => 'ਸਿਕਿਓਰਿਟੀ ਗਾਰਡ ਨੂੰ ਦਿਓ';

  @override
  String get instructionPet => 'ਘਰ ਵਿੱਚ ਪਾਲਤੂ ਜਾਨਵਰ';

  @override
  String get cartInclTaxes => 'ਟੈਕਸ ਅਤੇ ਖਰਚੇ ਸ਼ਾਮਲ';

  @override
  String cartSavedTag(String amount) {
    return '$amount ਦੀ ਬਚਤ';
  }

  @override
  String get cartPayUsing => 'ਭੁਗਤਾਨ ਦਾ ਤਰੀਕਾ';

  @override
  String get cartWalletAndCash => 'ਵਾਲਿਟ + ਨਕਦ';

  @override
  String cartCashRest(String amount) {
    return 'ਪਹੁੰਚਣ \'ਤੇ $amount ਦਿਓ';
  }

  @override
  String get cartCashFull => 'ਆਰਡਰ ਪਹੁੰਚਣ \'ਤੇ ਭੁਗਤਾਨ ਕਰੋ';

  @override
  String get cartCashNothing => 'ਡਿਲੀਵਰੀ ਵੇਲੇ ਕੁਝ ਨਹੀਂ ਦੇਣਾ';

  @override
  String get cartTotal => 'ਕੁੱਲ';

  @override
  String get cartPlaceOrder => 'ਆਰਡਰ ਕਰੋ';

  @override
  String cartDeliverTo(String place) {
    return '$place \'ਤੇ ਡਿਲੀਵਰੀ';
  }

  @override
  String get cartChange => 'ਬਦਲੋ';

  @override
  String get cartNoAddress => 'ਡਿਲੀਵਰੀ ਕਿੱਥੇ ਕਰਨੀ ਹੈ?';

  @override
  String get cartNoAddressHint => 'ਆਰਡਰ ਕਰਨ ਲਈ ਪਤਾ ਜੋੜੋ';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant ਤੋਂ ਆਪ ਲਓ';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'ਲਗਭਗ $minutes ਮਿੰਟਾਂ ਵਿੱਚ ਤਿਆਰ';
  }

  @override
  String get cartChooseAddress => 'ਡਿਲੀਵਰੀ ਪਤਾ ਚੁਣੋ';

  @override
  String get cartDone => 'ਹੋ ਗਿਆ';

  @override
  String get supportTitle => 'Nexmile ਸਹਾਇਤਾ';

  @override
  String get supportBubble => 'ਮਦਦ';

  @override
  String get supportAiLabel => 'AI ਸਹਾਇਕ';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ਟੀਮ';
  }

  @override
  String get supportDemoBanner =>
      'ਡੈਮੋ: ਇਹ ਜਵਾਬ ਨਮੂਨੇ ਹਨ। ਅਸਲੀ ਸਹਾਇਕ ਅਜੇ ਜੁੜਿਆ ਨਹੀਂ ਹੈ।';

  @override
  String get supportEmptyTitle => 'ਅਸੀਂ ਤੁਹਾਡੀ ਕਿਵੇਂ ਮਦਦ ਕਰ ਸਕਦੇ ਹਾਂ?';

  @override
  String get supportEmptyBody =>
      'ਕਿਸੇ ਆਰਡਰ, ਭੁਗਤਾਨ ਜਾਂ ਕਿਸੇ ਵੀ ਹੋਰ ਚੀਜ਼ ਬਾਰੇ ਪੁੱਛੋ। ਪਹਿਲਾਂ ਸਾਡਾ AI ਸਹਾਇਕ ਜਵਾਬ ਦਿੰਦਾ ਹੈ, ਅਤੇ ਜਦੋਂ ਉਹ ਮਦਦ ਨਹੀਂ ਕਰ ਸਕਦਾ ਤਾਂ ਸਾਡੀ ਟੀਮ ਦਾ ਕੋਈ ਵਿਅਕਤੀ ਗੱਲ ਸੰਭਾਲ ਲੈਂਦਾ ਹੈ।';

  @override
  String get supportSuggestWhere => 'ਮੇਰਾ ਆਰਡਰ ਕਿੱਥੇ ਹੈ?';

  @override
  String get supportSuggestMissing => 'ਕੋਈ ਚੀਜ਼ ਗਾਇਬ ਹੈ';

  @override
  String get supportSuggestRefund => 'ਮੇਰਾ ਰਿਫੰਡ ਬਾਰੇ ਇੱਕ ਸਵਾਲ ਹੈ';

  @override
  String get supportComposerHint => 'ਮੈਸੇਜ ਟਾਈਪ ਕਰੋ';

  @override
  String get supportSend => 'ਭੇਜੋ';

  @override
  String get supportTyping => 'AI ਸਹਾਇਕ ਟਾਈਪ ਕਰ ਰਿਹਾ ਹੈ…';

  @override
  String get supportNotSent => 'ਨਹੀਂ ਭੇਜਿਆ ਗਿਆ';

  @override
  String get supportTookTooLong => 'ਬਹੁਤ ਜ਼ਿਆਦਾ ਸਮਾਂ ਲੱਗ ਗਿਆ।';

  @override
  String get supportSlowDown => 'ਹੋਰ ਭੇਜਣ ਤੋਂ ਪਹਿਲਾਂ ਥੋੜ੍ਹਾ ਰੁਕੋ।';

  @override
  String get supportUnreachable =>
      'ਹੁਣ ਚੈਟ ਨਾਲ ਸੰਪਰਕ ਨਹੀਂ ਹੋ ਸਕਦਾ। ਸਾਨੂੰ ਕਾਲ ਕਰੋ, ਜਾਂ ਕੁਝ ਮਿੰਟਾਂ ਬਾਅਦ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get supportOffline =>
      'ਤੁਸੀਂ ਔਫਲਾਈਨ ਹੋ। ਇਹ ਤੁਹਾਡੀ ਆਖਰੀ ਸੰਭਾਲੀ ਹੋਈ ਚੈਟ ਹੈ।';

  @override
  String get supportClosed => 'ਇਹ ਚੈਟ ਬੰਦ ਹੋ ਗਈ ਹੈ।';

  @override
  String get supportStartNew => 'ਨਵੀਂ ਚੈਟ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get supportTalkToPerson => 'ਕਿਸੇ ਵਿਅਕਤੀ ਨਾਲ ਗੱਲ ਕਰੋ';

  @override
  String get supportMarkSolved => 'ਹੱਲ ਹੋ ਗਿਆ';

  @override
  String get supportHelpful => 'ਮਦਦਗਾਰ';

  @override
  String get supportNotHelpful => 'ਮਦਦਗਾਰ ਨਹੀਂ';

  @override
  String get supportNeedHelp => 'ਮਦਦ ਚਾਹੀਦੀ ਹੈ?';

  @override
  String get supportChatWithUs => 'ਸਾਡੇ ਨਾਲ ਚੈਟ ਕਰੋ';

  @override
  String get supportChatWithUsBody =>
      'ਸਾਡਾ AI ਸਹਾਇਕ ਕੁਝ ਸਕਿੰਟਾਂ ਵਿੱਚ ਜਵਾਬ ਦਿੰਦਾ ਹੈ, ਅਤੇ ਲੋੜ ਪੈਣ \'ਤੇ ਕੋਈ ਵਿਅਕਤੀ ਗੱਲ ਸੰਭਾਲ ਲੈਂਦਾ ਹੈ।';

  @override
  String get supportActionFailed => 'ਇਹ ਨਹੀਂ ਹੋ ਸਕਿਆ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get supportOrderNotFound => 'ਇਹ ਆਰਡਰ ਤੁਹਾਡੇ ਖਾਤੇ ਵਿੱਚ ਨਹੀਂ ਮਿਲਿਆ।';

  @override
  String get supportOrderLookupDown =>
      'ਹੁਣੇ ਇਹ ਆਰਡਰ ਦੇਖਿਆ ਨਹੀਂ ਜਾ ਸਕਿਆ। ਤੁਸੀਂ ਆਪਣਾ ਸਵਾਲ ਲਿਖ ਸਕਦੇ ਹੋ।';

  @override
  String get restaurantNew => 'ਨਵਾਂ';

  @override
  String get walletHideBalance => 'ਬੈਲੰਸ ਲੁਕਾਓ';

  @override
  String get walletShowBalance => 'ਬੈਲੰਸ ਦਿਖਾਓ';

  @override
  String get walletBalanceHiddenLabel => 'ਬੈਲੰਸ ਲੁਕਿਆ ਹੋਇਆ ਹੈ';

  @override
  String walletUpdatedAt(String time) {
    return '$time ਨੂੰ ਅੱਪਡੇਟ ਹੋਇਆ';
  }

  @override
  String walletBelowMin(String amount) {
    return 'ਘੱਟੋ-ਘੱਟ $amount ਪਾਓ';
  }

  @override
  String walletAboveMax(String amount) {
    return 'ਤੁਸੀਂ ਵੱਧ ਤੋਂ ਵੱਧ $amount ਪਾ ਸਕਦੇ ਹੋ';
  }

  @override
  String get walletOpeningPayment => 'ਭੁਗਤਾਨ ਖੁੱਲ੍ਹ ਰਿਹਾ ਹੈ…';

  @override
  String get walletConfirmingPayment => 'ਭੁਗਤਾਨ ਪੱਕਾ ਹੋ ਰਿਹਾ ਹੈ…';

  @override
  String get walletTransactions => 'ਲੈਣ-ਦੇਣ';

  @override
  String get walletFilterAll => 'ਸਾਰੇ';

  @override
  String get walletFilterAdded => 'ਪਾਏ ਪੈਸੇ';

  @override
  String get walletFilterSpent => 'ਖ਼ਰਚੇ ਪੈਸੇ';

  @override
  String get walletSearch => 'ਖੋਜੋ';

  @override
  String get walletSearchHint => 'ਆਰਡਰ ਨੰਬਰ ਜਾਂ ID ਖੋਜੋ';

  @override
  String get walletDateFilter => 'ਤਾਰੀਖ਼ ਮੁਤਾਬਕ ਫਿਲਟਰ ਕਰੋ';

  @override
  String get walletClearFilters => 'ਫਿਲਟਰ ਹਟਾਓ';

  @override
  String get walletNoMatches => 'ਤੁਹਾਡੇ ਫਿਲਟਰਾਂ ਨਾਲ ਕੋਈ ਲੈਣ-ਦੇਣ ਮੇਲ ਨਹੀਂ ਖਾਂਦਾ';

  @override
  String get walletEmptyTitle => 'ਅਜੇ ਕੋਈ ਲੈਣ-ਦੇਣ ਨਹੀਂ';

  @override
  String get walletEmptyBody =>
      'ਤੁਸੀਂ ਜੋ ਪੈਸੇ ਪਾਓਗੇ, ਆਰਡਰਾਂ \'ਤੇ ਖ਼ਰਚੋਗੇ ਜਾਂ ਰਿਫੰਡ ਵਜੋਂ ਵਾਪਸ ਲਓਗੇ, ਉਹ ਇੱਥੇ ਦਿਖਣਗੇ।';

  @override
  String get walletToday => 'ਅੱਜ';

  @override
  String get walletYesterday => 'ਕੱਲ੍ਹ';

  @override
  String walletLatestOnly(int count) {
    return 'ਤੁਹਾਡੇ ਤਾਜ਼ਾ $count ਲੈਣ-ਦੇਣ ਦਿਖਾਏ ਜਾ ਰਹੇ ਹਨ';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ਆਰਡਰ $number ਲਈ ਰਿਫੰਡ';
  }

  @override
  String get walletDetailsTitle => 'ਲੈਣ-ਦੇਣ ਦੇ ਵੇਰਵੇ';

  @override
  String get walletDetailDate => 'ਤਾਰੀਖ਼ ਅਤੇ ਸਮਾਂ';

  @override
  String get walletDetailId => 'ਲੈਣ-ਦੇਣ ID';

  @override
  String get walletDetailType => 'ਕਿਸਮ';

  @override
  String get walletDetailMethod => 'ਭੁਗਤਾਨ ਦਾ ਤਰੀਕਾ';

  @override
  String get walletDetailStatus => 'ਸਥਿਤੀ';

  @override
  String get walletDetailOrder => 'ਆਰਡਰ';

  @override
  String get walletDetailReference => 'ਭੁਗਤਾਨ ਰੈਫਰੈਂਸ';

  @override
  String get walletDetailBalanceAfter => 'ਲੈਣ-ਦੇਣ ਤੋਂ ਬਾਅਦ ਬੈਲੰਸ';

  @override
  String get walletCredit => 'ਕ੍ਰੈਡਿਟ';

  @override
  String get walletDebit => 'ਡੈਬਿਟ';

  @override
  String get walletStatusSuccess => 'ਸਫਲ';

  @override
  String get walletStatusPending => 'ਪੈਂਡਿੰਗ';

  @override
  String get walletStatusFailed => 'ਅਸਫਲ';

  @override
  String get walletMethodOnline => 'ਆਨਲਾਈਨ ਭੁਗਤਾਨ';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'ਕਾਰਡ';

  @override
  String get walletMethodNetbanking => 'ਨੈੱਟ ਬੈਂਕਿੰਗ';

  @override
  String get walletMethodRefund => 'ਵਾਲਿਟ ਵਿੱਚ ਰਿਫੰਡ';

  @override
  String get walletCopyId => 'ID ਕਾਪੀ ਕਰੋ';

  @override
  String get walletIdCopied => 'ਲੈਣ-ਦੇਣ ID ਕਾਪੀ ਹੋ ਗਈ';

  @override
  String get walletShareDetails => 'ਵੇਰਵੇ ਸਾਂਝੇ ਕਰੋ';
}
