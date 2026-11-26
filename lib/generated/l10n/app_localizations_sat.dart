// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Santali (`sat`).
class AppLocalizationsSat extends AppLocalizations {
  AppLocalizationsSat([String locale = 'sat']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'ᱱᱚᱶᱟ ᱠᱷᱟᱱᱟ ᱫᱟᱨᱠᱟᱨᱟ';

  @override
  String get tagline => 'ᱞᱚᱜᱚᱱ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ᱾ ᱱᱟᱶᱟ ᱞᱟᱸᱰᱟ᱾';

  @override
  String get chooseLanguageTitle => 'ᱟᱢᱟᱜ ᱯᱟᱹᱨᱥᱤ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';

  @override
  String get chooseLanguageSubtitle =>
      'ᱟᱢ ᱡᱟᱦᱟᱸ ᱯᱟᱹᱨᱥᱤ ᱨᱮ ᱥᱩᱦᱩᱞ ᱟᱢ ᱚᱱᱟ ᱵᱟᱪᱷᱟᱣ ᱢᱮ᱾ ᱟᱢ ᱱᱚᱶᱟ ᱡᱟᱦᱟᱸ ᱚᱠᱛᱚ ᱥᱮᱴᱤᱝᱥ ᱨᱮ ᱵᱚᱫᱚᱞ ᱫᱟᱲᱮᱭᱟᱜ-ᱟᱢ᱾';

  @override
  String get searchLanguageHint => 'ᱯᱟᱹᱨᱥᱤ ᱯᱟᱱᱛᱮ ᱢᱮ';

  @override
  String get noLanguageFound => 'ᱡᱟᱦᱟᱸ ᱯᱟᱹᱨᱥᱤ ᱵᱟᱝ ᱧᱟᱢ ᱞᱮᱱᱟ';

  @override
  String languagesAvailable(int count) {
    return '$count ᱯᱟᱹᱨᱥᱤ ᱢᱮᱱᱟᱜ-ᱟ';
  }

  @override
  String get continueLabel => 'ᱞᱟᱦᱟ ᱪᱟᱞᱟᱣ ᱢᱮ';

  @override
  String get selectedLabel => 'ᱵᱟᱪᱷᱟᱣᱟᱠᱟᱱ';

  @override
  String get defaultLabel => 'ᱰᱤᱯᱷᱚᱞᱴ';

  @override
  String get homeTitle => 'Nexmile ᱨᱮ ᱡᱚᱦᱟᱨ';

  @override
  String get homeSubtitle =>
      'ᱱᱟᱶᱟ ᱠᱤᱨᱟᱱᱟ, ᱨᱟᱹᱲᱟᱹ ᱡᱚᱢᱟᱜ ᱟᱨ ᱫᱤᱱ ᱫᱤᱱᱟᱜ ᱡᱤᱱᱤᱥ ᱟᱢᱟᱜ ᱡᱟᱹᱛᱤᱭᱟᱹᱨ ᱫᱳᱠᱟᱱ ᱠᱷᱚᱱ᱾';

  @override
  String get changeLanguage => 'ᱯᱟᱹᱨᱥᱤ ᱵᱚᱫᱚᱞ ᱢᱮ';

  @override
  String get languageUpdated => 'ᱯᱟᱹᱨᱥᱤ ᱵᱚᱫᱚᱞ ᱮᱱᱟ';

  @override
  String get appLanguageLabel => 'ᱮᱯ ᱯᱟᱹᱨᱥᱤ';

  @override
  String greetingNamed(String name) {
    return 'ᱡᱚᱦᱟᱨ, $name';
  }

  @override
  String get loginTitle => 'Nexmile ᱨᱮ ᱥᱟᱭᱤᱱ ᱤᱱ ᱢᱮ';

  @override
  String get loginSubtitle =>
      'ᱟᱢᱟᱜ ᱤᱢᱮᱞ ᱵᱟᱝᱠᱷᱟᱱ ᱢᱚᱵᱟᱭᱤᱞ ᱱᱟᱢᱵᱟᱨ ᱚᱞ ᱢᱮ, ᱟᱞᱮ ᱡᱟᱸᱪ ᱠᱳᱰ ᱠᱩᱞ ᱟᱞᱮᱭᱟ᱾';

  @override
  String get emailOrPhoneLabel => 'ᱤᱢᱮᱞ ᱵᱟᱝᱠᱷᱟᱱ ᱢᱚᱵᱟᱭᱤᱞ ᱱᱟᱢᱵᱟᱨ';

  @override
  String get emailOrPhoneHint => 'name@example.com ᱵᱟᱝᱠᱷᱟᱱ 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'ᱴᱷᱤᱠ ᱤᱢᱮᱞ ᱴᱷᱤᱠᱱᱟ ᱵᱟᱝᱠᱷᱟᱱ 10 ᱮᱞ ᱢᱚᱵᱟᱭᱤᱞ ᱱᱟᱢᱵᱟᱨ ᱚᱞ ᱢᱮ';

  @override
  String get loginHeadline =>
      'ᱟᱢᱟᱜ ᱡᱟᱹᱛᱤᱭᱟᱹᱨ ᱫᱳᱠᱟᱱ ᱠᱷᱚᱱ ᱨᱟᱹᱲᱟᱹ ᱡᱚᱢᱟᱜ, ᱞᱚᱜᱚᱱ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';

  @override
  String get loginOrSignUp => 'ᱞᱚᱜ ᱤᱱ ᱵᱟᱝᱠᱷᱟᱱ ᱥᱟᱭᱤᱱ ᱟᱯ ᱢᱮ';

  @override
  String get loginEmailHint => 'ᱟᱢᱟᱜ ᱤᱢᱮᱞ ᱴᱷᱤᱠᱱᱟ ᱚᱞ ᱢᱮ';

  @override
  String get invalidEmail => 'ᱴᱷᱤᱠ ᱤᱢᱮᱞ ᱴᱷᱤᱠᱱᱟ ᱚᱞ ᱢᱮ';

  @override
  String get sendCode => 'ᱠᱳᱰ ᱠᱩᱞ ᱢᱮ';

  @override
  String get agreeToTermsOnContinue =>
      'ᱞᱟᱦᱟ ᱪᱟᱞᱟᱣ ᱠᱟᱛᱮ ᱟᱢ ᱟᱞᱮᱭᱟᱜ ᱥᱮᱵᱟ ᱱᱮᱢ ᱟᱨ ᱩᱠᱩ ᱱᱤᱛᱤ ᱨᱮ ᱨᱟᱡᱤ ᱠᱟᱱᱟᱢ᱾';

  @override
  String get otpTitle => 'ᱱᱚᱶᱟ ᱟᱢᱜᱮ ᱠᱟᱱᱟ ᱡᱟᱸᱪ ᱢᱮ';

  @override
  String otpSubtitle(String target) {
    return '$target ᱛᱮ ᱠᱩᱞ ᱟᱠᱟᱱ 6 ᱮᱞ ᱠᱳᱰ ᱚᱞ ᱢᱮ';
  }

  @override
  String get verifyCode => 'ᱡᱟᱸᱪ ᱢᱮ';

  @override
  String get resendCode => 'ᱠᱳᱰ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱞ ᱢᱮ';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ᱥᱮᱠᱮᱱᱰ ᱨᱮ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱞ ᱢᱮ';
  }

  @override
  String get codeResent => 'ᱱᱟᱶᱟ ᱠᱳᱰ ᱠᱩᱞ ᱮᱱᱟ';

  @override
  String get incorrectCode =>
      'ᱱᱚᱶᱟ ᱠᱳᱰ ᱵᱟᱝ ᱴᱷᱤᱠᱟ ᱵᱟᱝᱠᱷᱟᱱ ᱚᱠᱛᱚ ᱪᱟᱵᱟ ᱮᱱᱟ᱾ ᱱᱟᱶᱟ ᱠᱳᱰ ᱢᱟᱹᱜ ᱢᱮ᱾';

  @override
  String get enterFullCode => 'ᱯᱩᱨᱟᱹ 6 ᱮᱞ ᱚᱞ ᱢᱮ';

  @override
  String get accountSuspended =>
      'ᱱᱚᱶᱟ ᱠᱷᱟᱛᱟ ᱵᱚᱸᱫ ᱠᱟᱱᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱜᱚᱲᱚ ᱥᱟᱶ ᱡᱚᱲᱟᱣ ᱢᱮ᱾';

  @override
  String get tooManyAttempts =>
      'ᱟᱫᱚᱢ ᱛᱟᱞᱟᱛᱮ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱮᱱᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱛᱤᱸᱜᱩ ᱚᱠᱛᱚ ᱛᱟᱭᱚᱢ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get sessionExpired =>
      'ᱟᱢᱟᱜ ᱥᱮᱥᱚᱱ ᱪᱟᱵᱟ ᱮᱱᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱫᱩᱦᱲᱟᱹ ᱥᱟᱭᱤᱱ ᱤᱱ ᱢᱮ᱾';

  @override
  String get networkError =>
      'ᱤᱱᱴᱟᱨᱱᱮᱴ ᱡᱚᱲᱟᱣ ᱵᱟᱹᱱᱩᱜ-ᱟ᱾ ᱡᱚᱲᱟᱣ ᱧᱮᱞ ᱠᱟᱛᱮ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get developmentCode => 'ᱰᱮᱵᱷᱞᱚᱯᱢᱮᱱᱴ ᱠᱳᱰ';

  @override
  String get signOut => 'ᱥᱟᱭᱤᱱ ᱟᱣᱴ';

  @override
  String get signedOut => 'ᱟᱢ ᱥᱟᱭᱤᱱ ᱟᱣᱴ ᱮᱱᱟᱢ';

  @override
  String get somethingWentWrong =>
      'ᱚᱠᱟ ᱦᱚᱸ ᱵᱷᱩᱞ ᱮᱱᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get profileTitle => 'ᱯᱨᱚᱯᱷᱟᱭᱤᱞ';

  @override
  String get viewProfile => 'ᱯᱨᱚᱯᱷᱟᱭᱤᱞ ᱧᱮᱞ ᱢᱮ';

  @override
  String get nameLabel => 'ᱧᱩᱛᱩᱢ';

  @override
  String get emailLabel => 'ᱤᱢᱮᱞ';

  @override
  String get mobileLabel => 'ᱢᱚᱵᱟᱭᱤᱞ ᱱᱟᱢᱵᱟᱨ';

  @override
  String get accountStatusLabel => 'ᱠᱷᱟᱛᱟ ᱫᱚᱥᱟ';

  @override
  String get statusActive => 'ᱪᱟᱹᱞᱩ';

  @override
  String get statusPending => 'ᱛᱟᱸᱜᱤ ᱟᱠᱟᱱ';

  @override
  String get statusSuspended => 'ᱵᱚᱸᱫ ᱟᱠᱟᱱ';

  @override
  String get verifiedLabel => 'ᱡᱟᱸᱪ ᱟᱠᱟᱱ';

  @override
  String get notProvided => 'ᱵᱟᱝ ᱥᱮᱞᱮᱫ ᱟᱠᱟᱱᱟ';

  @override
  String get retry => 'ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ';

  @override
  String get navHome => 'ᱚᱲᱟᱜ';

  @override
  String get navSearch => 'ᱯᱟᱱᱛᱮ';

  @override
  String get navOrders => 'ᱚᱰᱟᱨ';

  @override
  String get cancelLabel => 'ᱵᱟᱰᱟᱺᱭ ᱢᱮ';

  @override
  String get deliverTo => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱴᱷᱤᱠᱱᱟ';

  @override
  String get searchDishesHint => 'ᱡᱚᱢᱟᱜ ᱵᱟᱝᱠᱷᱟᱱ ᱦᱚᱴᱮᱞ ᱯᱟᱱᱛᱮ ᱢᱮ';

  @override
  String get searchTitle => 'ᱯᱟᱱᱛᱮ';

  @override
  String get searchNoResultsTitle => 'ᱡᱟᱦᱟᱸ ᱵᱟᱝ ᱧᱟᱢ ᱞᱮᱱᱟ';

  @override
  String get searchNoResultsSubtitle =>
      'ᱮᱴᱟᱜ ᱡᱚᱢᱟᱜ, ᱡᱚᱢᱟᱜ ᱛᱮᱭᱟᱨ ᱨᱮᱭᱟᱜ ᱞᱮᱠᱟᱱ ᱵᱟᱝᱠᱷᱟᱱ ᱦᱚᱴᱮᱞ ᱧᱩᱛᱩᱢ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get cravingTitle => 'ᱛᱮᱦᱮᱧ ᱪᱮᱫ ᱡᱚᱢ ᱥᱟᱱᱟᱢ?';

  @override
  String get offersTitle => 'ᱟᱢᱟᱜ ᱞᱟᱹᱜᱤᱫ ᱚᱯᱷᱟᱨ';

  @override
  String get restaurantsNearby => 'ᱟᱢᱟᱜ ᱡᱟᱹᱛᱤᱭᱟᱹᱨ ᱦᱚᱴᱮᱞ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ᱨᱮᱥᱴᱚᱨᱮᱱᱴ',
      one: '1 ᱨᱮᱥᱴᱚᱨᱮᱱᱴ',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'ᱱᱚᱰᱮ ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱵᱟᱝᱟ';

  @override
  String get noRestaurantsSubtitle =>
      'ᱮᱴᱟᱜ ᱦᱟᱹᱴᱤᱧ ᱧᱮᱞ ᱢᱮ ᱵᱟᱝᱠᱷᱟᱱ ᱯᱷᱤᱞᱴᱟᱨ ᱚᱪᱚᱜ ᱢᱮ᱾';

  @override
  String minutesAway(int minutes) {
    return '$minutes ᱢᱤᱱᱤᱴ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance ᱠᱤᱢᱤ';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ᱨᱮᱴᱤᱝ',
      one: '1 ᱨᱮᱴᱤᱝ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'ᱵᱟᱨᱭᱟ ᱦᱚᱲ ᱞᱟᱹᱜᱤᱫ ₹$amount';
  }

  @override
  String get freeDelivery => 'ᱯᱷᱨᱤ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';

  @override
  String percentOff(int percent) {
    return '$percent% ᱠᱚᱢ';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'ᱟᱢᱟᱜ ᱚᱰᱟᱨ ᱨᱮ $percent% ᱠᱚᱢ';
  }

  @override
  String get vegOnly => 'ᱥᱟᱠᱟᱢ ᱡᱚᱢᱟᱜ ᱮᱰᱮ';

  @override
  String get bestseller => 'ᱡᱟᱹᱥᱛᱤ ᱟᱠᱷᱨᱤᱧ';

  @override
  String get addLabel => 'ᱥᱮᱞᱮᱫ';

  @override
  String get noVegDishesTitle => 'ᱱᱚᱰᱮ ᱥᱟᱠᱟᱢ ᱡᱚᱢᱟᱜ ᱵᱟᱝᱟ';

  @override
  String get noVegDishesSubtitle =>
      'ᱯᱩᱨᱟᱹ ᱢᱮᱱᱩ ᱧᱮᱞ ᱞᱟᱹᱜᱤᱫ ᱥᱟᱠᱟᱢ ᱯᱷᱤᱞᱴᱟᱨ ᱵᱚᱸᱫ ᱢᱮ᱾';

  @override
  String get replaceCartTitle => 'ᱱᱟᱶᱟ ᱠᱟᱨᱴ ᱮᱦᱚᱵ?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'ᱟᱢᱟᱜ ᱠᱟᱨᱴ ᱨᱮ $restaurant ᱠᱷᱚᱱ ᱡᱤᱱᱤᱥ ᱢᱮᱱᱟᱜ-ᱟ᱾ ᱱᱚᱶᱟ ᱥᱮᱞᱮᱫ ᱠᱷᱟᱱ ᱚᱱᱟ ᱠᱚ ᱚᱪᱚᱜᱚᱜ-ᱟ᱾';
  }

  @override
  String get replaceCartConfirm => 'ᱚᱪᱚᱜ ᱠᱟᱛᱮ ᱥᱮᱞᱮᱫ';

  @override
  String get cartTitle => 'ᱟᱢᱟᱜ ᱠᱟᱨᱴ';

  @override
  String get cartEmptyTitle => 'ᱟᱢᱟᱜ ᱠᱟᱨᱴ ᱠᱷᱟᱹᱞᱤ ᱢᱮᱱᱟᱜ-ᱟ';

  @override
  String get cartEmptySubtitle =>
      'ᱮᱦᱚᱵ ᱞᱟᱹᱜᱤᱫ ᱡᱟᱦᱟᱸ ᱦᱚᱴᱮᱞ ᱠᱷᱚᱱ ᱡᱚᱢᱟᱜ ᱥᱮᱞᱮᱫ ᱢᱮ᱾';

  @override
  String get browseRestaurants => 'ᱦᱚᱴᱮᱞ ᱧᱮᱞ ᱢᱮ';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ᱡᱤᱱᱤᱥ',
      one: '1 ᱡᱤᱱᱤᱥ',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'ᱠᱟᱨᱴ ᱧᱮᱞ ᱢᱮ';

  @override
  String get itemTotal => 'ᱡᱤᱱᱤᱥ ᱨᱮᱭᱟᱜ ᱡᱚᱛᱚ';

  @override
  String get deliveryFeeLabel => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱠᱷᱚᱨᱚᱡ';

  @override
  String get taxesAndCharges => 'ᱠᱷᱟᱡᱱᱟ ᱟᱨ ᱠᱷᱚᱨᱚᱡ';

  @override
  String get freeLabel => 'ᱯᱷᱨᱤ';

  @override
  String get toPay => 'ᱮᱢ ᱞᱟᱹᱠᱛᱤ';

  @override
  String placeOrderFor(String amount) {
    return 'ᱚᱰᱟᱨ ᱢᱮ · $amount';
  }

  @override
  String get ordersTitle => 'ᱟᱢᱟᱜ ᱚᱰᱟᱨ';

  @override
  String get ordersEmptyTitle => 'ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱚᱰᱟᱨ ᱵᱟᱝᱟ';

  @override
  String get ordersEmptySubtitle => 'ᱟᱢᱟᱜ ᱢᱟᱲᱟᱝ ᱚᱰᱟᱨ ᱠᱚ ᱱᱚᱰᱮ ᱩᱫᱩᱜᱚᱜ-ᱟ᱾';

  @override
  String get reorder => 'ᱫᱩᱦᱲᱟᱹ ᱚᱰᱟᱨ';

  @override
  String orderTitle(String id) {
    return 'ᱚᱰᱟᱨ $id';
  }

  @override
  String get orderPlacedTitle => 'ᱚᱰᱟᱨ ᱮᱱᱟ';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'ᱮᱴᱠᱮᱴᱚᱬᱮ $minutes ᱢᱤᱱᱤᱴ ᱨᱮ ᱥᱮᱴᱮᱨᱚᱜ-ᱟ᱾';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return 'ᱟᱢᱟᱜ ᱚᱰᱟᱨ $restaurant ᱴᱷᱮᱱ ᱥᱮᱴᱮᱨ ᱮᱱᱟ᱾';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return '$minutes ᱜᱟᱱ ᱢᱤᱱᱤᱴ ᱨᱮ ᱛᱮᱭᱟᱨᱚᱜᱼᱟ᱾';
  }

  @override
  String get trackYourOrder => 'ᱟᱢᱟᱜ ᱚᱰᱟᱨ ᱴᱨᱮᱠ ᱢᱮ';

  @override
  String get couponApplyTitle => 'ᱠᱩᱯᱚᱱ ᱞᱟᱜᱟᱣ ᱢᱮ';

  @override
  String get couponCodeLabel => 'ᱠᱩᱯᱚᱱ ᱠᱳᱰ';

  @override
  String get couponApply => 'ᱞᱟᱜᱟᱣ ᱢᱮ';

  @override
  String couponAppliedTitle(String code) {
    return '$code ᱞᱟᱜᱟᱣ ᱮᱱᱟ';
  }

  @override
  String couponSaving(String amount) {
    return 'ᱟᱢᱟᱜ $amount ᱵᱟᱧᱪᱟᱣ ᱮᱱᱟ';
  }

  @override
  String get couponRemove => 'ᱚᱪᱚᱜ ᱢᱮ';

  @override
  String searchFor(String term) {
    return '\"$term\" ᱯᱟᱱᱛᱮ ᱢᱮ';
  }

  @override
  String get vegModeBadge => 'ᱥᱩᱫᱷ ᱥᱟᱠᱟᱢ ᱡᱚᱢᱟᱜ';

  @override
  String trackingExpectedBy(String time) {
    return '$time ᱦᱟᱹᱵᱤᱡ ᱥᱮᱴᱮᱨᱚᱜᱼᱟ';
  }

  @override
  String get orderAgainTitle => 'ᱫᱩᱦᱲᱟᱹ ᱚᱰᱟᱨ ᱢᱮ';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + ᱟᱨᱦᱚᱸ $count',
      one: '$first + ᱟᱨᱦᱚᱸ 1',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max ᱢᱤᱱᱤᱴ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 ᱠᱷᱚᱱ $rating ᱨᱮᱴᱤᱝ';
  }

  @override
  String get reorderReplaceTitle => 'ᱟᱢᱟᱜ ᱠᱟᱨᱴ ᱵᱚᱫᱚᱞᱟ?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant ᱠᱷᱚᱱ ᱟᱢᱟᱜ ᱠᱟᱨᱴ ᱨᱮ ᱢᱮᱱᱟᱜ ᱡᱤᱱᱤᱥ ᱚᱪᱚᱜᱚᱜᱼᱟ ᱟᱨ ᱱᱚᱶᱟ ᱚᱰᱟᱨ ᱨᱮᱭᱟᱜ ᱡᱚᱢᱟᱜ ᱥᱮᱞᱮᱫᱚᱜᱼᱟ᱾';
  }

  @override
  String get reorderReplace => 'ᱵᱚᱫᱚᱞ ᱢᱮ';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes ᱱᱤᱛᱚᱜ ᱵᱟᱝ ᱧᱟᱢᱚᱜᱼᱟ, ᱚᱱᱟᱛᱮ ᱚᱱᱟ ᱠᱚ ᱵᱟᱝ ᱥᱮᱞᱮᱫ ᱮᱱᱟ᱾',
      one: '$dishes ᱱᱤᱛᱚᱜ ᱵᱟᱝ ᱧᱟᱢᱚᱜᱼᱟ, ᱚᱱᱟᱛᱮ ᱚᱱᱟ ᱵᱟᱝ ᱥᱮᱞᱮᱫ ᱮᱱᱟ᱾',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'ᱱᱚᱶᱟ ᱡᱚᱢᱟᱜ ᱠᱚ ᱠᱷᱚᱱ ᱢᱤᱫᱴᱟᱝ ᱦᱚᱸ ᱱᱤᱛᱚᱜ ᱵᱟᱝ ᱧᱟᱢᱚᱜᱼᱟ᱾';

  @override
  String get searchShort => 'ᱯᱟᱱᱛᱮ';

  @override
  String get favouriteSave => 'ᱠᱩᱥᱤᱭᱟᱜ ᱨᱮ ᱥᱟᱺᱪᱟᱣ ᱢᱮ';

  @override
  String get restaurantAbout => 'ᱱᱚᱶᱟ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱵᱟᱵᱚᱛ';

  @override
  String ratingByCount(String count) {
    return '$count ᱨᱮᱴᱤᱝ';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ᱚᱯᱷᱟᱨ',
      one: '1 ᱚᱯᱷᱟᱨ',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile ᱨᱮ $restaurant ᱠᱷᱚᱱ ᱚᱰᱟᱨ ᱢᱮ';
  }

  @override
  String get ordersSearchHint => 'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱵᱟᱝᱠᱷᱟᱱ ᱡᱚᱢᱟᱜ ᱧᱩᱛᱩᱢ ᱛᱮ ᱯᱟᱱᱛᱮ ᱢᱮ…';

  @override
  String get ordersNoMatch =>
      'ᱚᱱᱟ ᱧᱩᱛᱩᱢ ᱨᱮᱭᱟᱜ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱵᱟᱝᱠᱷᱟᱱ ᱡᱚᱢᱟᱜ ᱨᱮᱭᱟᱜ ᱡᱟᱦᱟᱸ ᱚᱰᱟᱨ ᱵᱟᱝᱟ᱾';

  @override
  String orderPlacedOn(String date) {
    return '$date ᱨᱮ ᱚᱰᱟᱨ ᱮᱱᱟ';
  }

  @override
  String get viewMenu => 'ᱢᱮᱱᱩ ᱧᱮᱞ ᱢᱮ';

  @override
  String get navHistory => 'ᱱᱟᱜᱟᱢ';

  @override
  String get exploreMore => 'ᱟᱨᱦᱚᱸ ᱧᱮᱞ ᱢᱮ';

  @override
  String get exploreTopRated => 'ᱡᱟᱹᱥᱛᱤ ᱨᱮᱴᱤᱝ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ᱟᱢ ᱛᱟᱞᱟ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱮᱢᱚᱜ $count ᱨᱮᱥᱴᱚᱨᱮᱱᱴ',
      one: 'ᱟᱢ ᱛᱟᱞᱟ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱮᱢᱚᱜ 1 ᱨᱮᱥᱴᱚᱨᱮᱱᱴ',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱪᱮᱫ ᱞᱮᱠᱟ ᱛᱟᱦᱮᱸᱠᱟᱱᱟ?';

  @override
  String get rateHowWasFood => 'ᱡᱚᱢᱟᱜ ᱪᱮᱫ ᱞᱮᱠᱟ ᱛᱟᱦᱮᱸᱠᱟᱱᱟ?';

  @override
  String get rateWordTerrible => 'ᱟᱹᱰᱤ ᱵᱟᱹᱲᱤᱡ';

  @override
  String get rateWordBad => 'ᱵᱟᱹᱲᱤᱡ';

  @override
  String get rateWordOkay => 'ᱴᱷᱤᱠ ᱜᱮ';

  @override
  String get rateWordGood => 'ᱵᱮᱥ';

  @override
  String get rateWordLoved => 'ᱟᱹᱰᱤ ᱵᱮᱥ!';

  @override
  String get rateWhatWentWrong => 'ᱪᱮᱫ ᱵᱷᱩᱞ ᱮᱱᱟ?';

  @override
  String get rateWhatYouLiked => 'ᱪᱮᱫ ᱵᱮᱥ ᱛᱟᱦᱮᱸᱠᱟᱱᱟ?';

  @override
  String get rateRiderNoteHint => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱵᱟᱵᱚᱛ ᱠᱟᱛᱷᱟ (ᱤᱪᱪᱷᱟ ᱞᱮᱠᱟᱛᱮ)';

  @override
  String get rateReviewHeading => 'ᱥᱟᱢᱤᱠᱥᱟ ᱚᱞ ᱢᱮ';

  @override
  String get rateFoodFirst => 'ᱠᱩᱞ ᱞᱟᱹᱜᱤᱫ ᱡᱚᱢᱟᱜ ᱨᱮᱴ ᱢᱮ';

  @override
  String get rateYouRated => 'ᱟᱢ ᱱᱚᱶᱟ ᱚᱰᱟᱨ ᱨᱮᱴ ᱠᱮᱫᱟᱢ';

  @override
  String get ratePromptLater => 'ᱱᱤᱛᱚᱜ ᱵᱟᱝ';

  @override
  String get tagTasty => 'ᱵᱮᱥ ᱥᱚᱣᱟᱫ';

  @override
  String get tagFreshHot => 'ᱨᱟᱹᱲᱟᱹ ᱟᱨ ᱱᱟᱶᱟ';

  @override
  String get tagGoodPortion => 'ᱵᱮᱥ ᱯᱚᱨᱤᱢᱟᱱ';

  @override
  String get tagGoodPackaging => 'ᱵᱮᱥ ᱯᱮᱠᱤᱝ';

  @override
  String get tagValueForMoney => 'ᱜᱚᱸᱡ ᱞᱮᱠᱟᱛᱮ ᱵᱮᱥ';

  @override
  String get tagHygienic => 'ᱥᱟᱯᱷᱟ ᱥᱩᱛᱷᱨᱟ';

  @override
  String get tagColdFood => 'ᱨᱟᱵᱟᱝ ᱡᱚᱢᱟᱜ';

  @override
  String get tagPoorTaste => 'ᱥᱚᱣᱟᱫ ᱵᱟᱝ ᱵᱮᱥ ᱛᱟᱦᱮᱸᱠᱟᱱᱟ';

  @override
  String get tagSmallPortion => 'ᱠᱚᱢ ᱯᱚᱨᱤᱢᱟᱱ';

  @override
  String get tagWrongItems => 'ᱵᱷᱩᱞ ᱡᱤᱱᱤᱥ';

  @override
  String get tagMissingItems => 'ᱛᱤᱸᱜᱩ ᱡᱤᱱᱤᱥ ᱵᱟᱝ ᱛᱟᱦᱮᱸᱠᱟᱱᱟ';

  @override
  String get tagPoorPackaging => 'ᱵᱟᱹᱲᱤᱡ ᱯᱮᱠᱤᱝ';

  @override
  String get tagTooOily => 'ᱟᱹᱰᱤ ᱥᱩᱱᱩᱢ ᱵᱟᱝᱠᱷᱟᱱ ᱢᱟᱨᱚᱪ';

  @override
  String get tagOnTime => 'ᱚᱠᱛᱚ ᱨᱮ';

  @override
  String get tagPolite => 'ᱵᱮᱥ ᱵᱮᱵᱷᱟᱨ';

  @override
  String get tagFollowedInstructions => 'ᱠᱟᱛᱷᱟ ᱢᱟᱱᱟᱣ ᱠᱮᱫᱟᱭ';

  @override
  String get tagCarefulHandling => 'ᱡᱚᱢᱟᱜ ᱦᱩᱥᱤᱭᱟᱹᱨ ᱛᱮ ᱟᱹᱜᱩ ᱠᱮᱫᱟᱭ';

  @override
  String get tagGoodCommunication => 'ᱠᱷᱚᱵᱚᱨ ᱮᱢ ᱛᱟᱦᱮᱸᱱ ᱠᱮᱫᱟᱭ';

  @override
  String get tagLate => 'ᱵᱤᱞᱚᱢ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';

  @override
  String get tagRude => 'ᱵᱟᱹᱲᱤᱡ ᱵᱮᱵᱷᱟᱨ';

  @override
  String get tagIgnoredInstructions => 'ᱠᱟᱛᱷᱟ ᱵᱟᱝ ᱢᱟᱱᱟᱣ ᱠᱮᱫᱟᱭ';

  @override
  String get tagFoodSpilled => 'ᱡᱚᱢᱟᱜ ᱧᱩᱨ ᱮᱱᱟ';

  @override
  String get tagAskedExtraMoney => 'ᱵᱟᱲᱛᱤ ᱴᱟᱠᱟ ᱢᱟᱹᱜ ᱠᱮᱫᱟᱭ';

  @override
  String get tagUnprofessional => 'ᱠᱟᱹᱢᱤ ᱨᱮ ᱵᱮᱯᱚᱨᱚᱣᱟ';

  @override
  String rateDeliveredBy(String name) {
    return '$name ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱠᱮᱫᱟᱭ';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant ᱠᱷᱚᱱ';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant ᱠᱷᱚᱱ ᱟᱢᱟᱜ ᱚᱰᱟᱨ ᱪᱮᱫ ᱞᱮᱠᱟ ᱛᱟᱦᱮᱸᱠᱟᱱᱟ?';
  }

  @override
  String get orderDeliveredTitle => 'ᱰᱮᱞᱤᱵᱷᱟᱨ ᱮᱱᱟ';

  @override
  String get orderDeliveredSubtitle => 'ᱡᱚᱢᱟᱜ ᱨᱩᱦᱮᱫ ᱢᱮ᱾';

  @override
  String get statusOrderPlaced => 'ᱚᱰᱟᱨ ᱮᱱᱟ';

  @override
  String get statusPreparing => 'ᱡᱚᱢᱟᱜ ᱛᱮᱭᱟᱨ ᱦᱩᱭᱩᱜ ᱠᱟᱱᱟ';

  @override
  String get statusOnTheWay => 'ᱦᱚᱨ ᱨᱮ ᱢᱮᱱᱟᱜ-ᱟ';

  @override
  String get statusDelivered => 'ᱰᱮᱞᱤᱵᱷᱟᱨ ᱮᱱᱟ';

  @override
  String get keepBrowsing => 'ᱧᱮᱞ ᱛᱟᱦᱮᱸᱱ ᱢᱮ';

  @override
  String get backToHome => 'ᱚᱲᱟᱜ ᱛᱮ ᱨᱩᱣᱟᱲ';

  @override
  String get prototypeNotice =>
      'ᱱᱟᱡᱩᱱᱟ ᱦᱚᱴᱮᱞ ᱞᱤᱥᱴᱤ — ᱴᱷᱤᱠ ᱫᱳᱠᱟᱱ ᱠᱚ ᱠᱮᱴᱟᱞᱚᱜ API ᱥᱟᱶ ᱦᱮᱡᱚᱜ-ᱟ᱾';

  @override
  String get prototypeCheckoutNotice =>
      'ᱱᱚᱶᱟ ᱢᱤᱫ ᱯᱨᱚᱴᱚᱴᱟᱭᱤᱯ ᱠᱟᱱᱟ᱾ ᱡᱟᱦᱟᱸ ᱴᱟᱠᱟ ᱵᱟᱝ ᱦᱟᱛᱟᱣᱚᱜ-ᱟ ᱟᱨ ᱴᱷᱤᱠ ᱚᱰᱟᱨ ᱦᱚᱸ ᱵᱟᱝ ᱦᱩᱭᱩᱜ-ᱟ᱾';

  @override
  String get prototypeTrackingNotice => 'ᱯᱨᱚᱴᱚᱴᱟᱭᱤᱯ ᱞᱟᱹᱜᱤᱫ ᱴᱨᱮᱠᱤᱝ ᱵᱟᱱᱟᱣ ᱟᱠᱟᱱᱟ᱾';

  @override
  String get locationTitle => 'ᱚᱠᱟᱨᱮ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱦᱩᱭᱩᱜ-ᱟ?';

  @override
  String get locationSubtitle =>
      'Nexmile ᱫᱚ 1 ᱠᱤᱢᱤ ᱵᱷᱤᱛᱨᱤ ᱨᱮᱭᱟᱜ ᱫᱳᱠᱟᱱ ᱠᱷᱚᱱ ᱮᱰᱮ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱮᱢᱚᱜ-ᱟ, ᱚᱱᱟᱛᱮ ᱟᱢᱟᱜ ᱴᱷᱤᱠ ᱡᱟᱭᱜᱟ ᱞᱟᱹᱠᱛᱤᱭᱟ᱾';

  @override
  String get locationReasonRadiusTitle => '1 ᱠᱤᱢᱤ ᱵᱷᱤᱛᱨᱤ ᱫᱳᱠᱟᱱ';

  @override
  String get locationReasonRadiusBody =>
      'ᱚᱠᱟ ᱠᱷᱚᱱ ᱡᱚᱢᱟᱜ ᱨᱟᱹᱲᱟᱹ ᱛᱮ ᱥᱮᱴᱮᱨᱚᱜ-ᱟ, ᱚᱱᱟ ᱨᱚᱥᱚᱭᱜᱷᱚᱨ ᱮᱰᱮ ᱩᱫᱩᱜᱟᱜ-ᱟ᱾';

  @override
  String get locationReasonAccuracyTitle => 'ᱴᱷᱤᱠ ᱫᱩᱣᱟᱹᱨ ᱦᱟᱹᱵᱤᱡ';

  @override
  String get locationReasonAccuracyBody =>
      'ᱴᱷᱤᱠ ᱯᱤᱱ ᱛᱟᱦᱮᱸᱱ ᱠᱷᱟᱱ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱦᱚᱲ ᱯᱷᱳᱱ ᱵᱟᱝ ᱠᱟᱛᱮ ᱦᱚᱸ ᱟᱢ ᱛᱟᱞᱟ ᱥᱮᱴᱮᱨᱚᱜ-ᱟᱭ᱾';

  @override
  String get locationReasonPrivacyTitle => 'ᱮᱯ ᱵᱮᱵᱷᱟᱨ ᱡᱚᱠᱷᱚᱱ ᱮᱰᱮ';

  @override
  String get locationReasonPrivacyBody =>
      'ᱟᱞᱮ ᱫᱚ ᱛᱟᱭᱚᱢ ᱛᱮ ᱟᱢᱟᱜ ᱴᱨᱮᱠ ᱵᱟᱝ ᱮᱫᱟᱞᱮᱭᱟ, ᱟᱨ ᱴᱷᱤᱠᱱᱟ ᱟᱢ ᱟᱡ ᱛᱮ ᱦᱚᱸ ᱚᱞ ᱫᱟᱲᱮᱭᱟᱜ-ᱟᱢ᱾';

  @override
  String get allowLocation => 'ᱡᱟᱭᱜᱟ ᱨᱮᱭᱟᱜ ᱦᱩᱠᱩᱢ ᱮᱢ ᱢᱮ';

  @override
  String get enterAddressManually => 'ᱤᱧ ᱴᱷᱤᱠᱱᱟ ᱟᱡ ᱛᱮ ᱚᱞᱟᱹ';

  @override
  String get locationDenied =>
      'ᱡᱟᱭᱜᱟ ᱨᱮᱭᱟᱜ ᱦᱩᱠᱩᱢ ᱵᱟᱝ ᱮᱢ ᱞᱮᱱᱟ᱾ ᱟᱢ ᱯᱤᱱ ᱟᱡ ᱛᱮ ᱫᱚᱦᱚ ᱫᱟᱲᱮᱭᱟᱜ-ᱟᱢ᱾';

  @override
  String get locationDeniedForever =>
      'Nexmile ᱞᱟᱹᱜᱤᱫ ᱡᱟᱭᱜᱟ ᱵᱚᱸᱫ ᱟᱠᱟᱱᱟ᱾ ᱥᱮᱴᱤᱝᱥ ᱨᱮ ᱡᱟᱹᱨᱩᱭ ᱢᱮ ᱵᱟᱝᱠᱷᱟᱱ ᱯᱤᱱ ᱟᱡ ᱛᱮ ᱫᱚᱦᱚ ᱢᱮ᱾';

  @override
  String get locationServiceOff => 'ᱱᱚᱶᱟ ᱰᱤᱵᱷᱟᱭᱤᱥ ᱨᱮ ᱡᱟᱭᱜᱟ ᱵᱚᱸᱫ ᱢᱮᱱᱟᱜ-ᱟ᱾';

  @override
  String get locationUnavailable =>
      'ᱡᱟᱭᱜᱟ ᱵᱟᱝ ᱧᱟᱢ ᱞᱮᱱᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱯᱤᱱ ᱟᱡ ᱛᱮ ᱫᱚᱦᱚ ᱢᱮ᱾';

  @override
  String permStepCount(int step, int total) {
    return '$total ᱠᱷᱚᱱ $step';
  }

  @override
  String get permNotNow => 'ᱱᱤᱛᱚᱜ ᱵᱟᱝ';

  @override
  String get permLocationTitle => 'ᱟᱢᱟᱜ ᱡᱟᱹᱛᱤᱭᱟᱹᱨ ᱡᱚᱢᱟᱜ ᱯᱟᱱᱛᱮ ᱢᱮ';

  @override
  String get permNotifyTitle => 'ᱚᱰᱟᱨ ᱨᱮᱭᱟᱜ ᱡᱚᱛᱚ ᱟᱯᱰᱮᱴ ᱧᱟᱢ ᱢᱮ';

  @override
  String get permNotifyBody =>
      'ᱟᱢᱟᱜ ᱚᱰᱟᱨ ᱡᱚᱠᱷᱚᱱ ᱦᱟᱛᱟᱣᱚᱜᱼᱟ, ᱡᱚᱠᱷᱚᱱ ᱤᱫᱤᱚᱜᱼᱟ ᱟᱨ ᱡᱚᱠᱷᱚᱱ ᱟᱢᱟᱜ ᱫᱩᱣᱟᱹᱨ ᱨᱮ ᱥᱮᱴᱮᱨᱚᱜᱼᱟ, ᱚᱱᱟ ᱵᱟᱰᱟᱭ ᱞᱟᱹᱜᱤᱫ ᱱᱳᱴᱤᱯᱷᱤᱠᱮᱥᱚᱱ ᱪᱟᱹᱞᱩ ᱢᱮ᱾';

  @override
  String get permNotifyLiveTitle => 'ᱞᱟᱭᱤᱵᱷ ᱚᱰᱟᱨ ᱟᱯᱰᱮᱴ';

  @override
  String get permNotifyLiveBody =>
      'ᱦᱟᱛᱟᱣ ᱮᱱᱟ, ᱛᱮᱭᱟᱨ ᱦᱩᱭᱩᱜ ᱠᱟᱱᱟ, ᱤᱫᱤ ᱮᱱᱟ, ᱰᱮᱞᱤᱵᱷᱟᱨ ᱮᱱᱟ᱾';

  @override
  String get permNotifyRiderTitle => 'ᱨᱟᱭᱰᱟᱨ ᱟᱢᱟᱜ ᱫᱩᱣᱟᱹᱨ ᱨᱮ';

  @override
  String get permNotifyRiderBody =>
      'ᱮᱯ ᱵᱟᱝ ᱧᱮᱞ ᱠᱟᱛᱮ ᱦᱚᱸ ᱵᱟᱰᱟᱭ ᱢᱮ ᱡᱚᱠᱷᱚᱱ ᱵᱟᱦᱨᱮ ᱚᱰᱚᱠ ᱞᱟᱹᱠᱛᱤᱭᱟ᱾';

  @override
  String get permNotifyControlTitle => 'ᱡᱚᱛᱚ ᱟᱢᱟᱜ ᱛᱤ ᱨᱮ';

  @override
  String get permNotifyControlBody =>
      'ᱟᱢᱟᱜ ᱯᱷᱳᱱ ᱨᱮᱭᱟᱜ ᱥᱮᱴᱤᱝᱥ ᱨᱮ ᱡᱟᱦᱟᱸ ᱚᱠᱛᱚ ᱱᱳᱴᱤᱯᱷᱤᱠᱮᱥᱚᱱ ᱵᱚᱸᱫ ᱫᱟᱲᱮᱭᱟᱜᱼᱟᱢ᱾';

  @override
  String get permNotifyAllow => 'ᱱᱳᱴᱤᱯᱷᱤᱠᱮᱥᱚᱱ ᱪᱟᱹᱞᱩ ᱢᱮ';

  @override
  String get openSettings => 'ᱥᱮᱴᱤᱝᱥ';

  @override
  String get pinLocationTitle => 'ᱟᱢᱟᱜ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱯᱤᱱ ᱫᱚᱦᱚ ᱢᱮ';

  @override
  String get deliveryRadiusHint =>
      'ᱜᱟᱸᱴ ᱫᱚ Nexmile ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱮᱢᱚᱜ 1 ᱠᱤᱢᱤ ᱩᱫᱩᱜ ᱠᱟᱱᱟ᱾';

  @override
  String get useMyLocation => 'ᱤᱧᱟᱜ ᱡᱟᱭᱜᱟ ᱵᱮᱵᱷᱟᱨ ᱢᱮ';

  @override
  String get deliveringHere => 'ᱱᱚᱰᱮ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';

  @override
  String get dragToAdjust => 'ᱯᱤᱱ ᱵᱚᱫᱚᱞ ᱞᱟᱹᱜᱤᱫ ᱢᱮᱯ ᱚᱲ ᱢᱮ';

  @override
  String get confirmLocation => 'ᱡᱟᱭᱜᱟ ᱡᱟᱸᱪ ᱢᱮ';

  @override
  String get addressDetailsTitle => 'ᱴᱷᱤᱠᱱᱟ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ';

  @override
  String get addressDetailsSubtitle =>
      'ᱴᱷᱤᱠ ᱫᱩᱣᱟᱹᱨ ᱦᱟᱹᱵᱤᱡ ᱥᱮᱴᱮᱨ ᱞᱟᱹᱜᱤᱫ ᱚᱲᱟᱜ ᱱᱟᱢᱵᱟᱨ ᱟᱨ ᱪᱤᱱᱦᱟᱹ ᱥᱮᱞᱮᱫ ᱢᱮ᱾';

  @override
  String get pinnedLocation => 'ᱵᱟᱪᱷᱟᱣ ᱟᱠᱟᱱ ᱡᱟᱭᱜᱟ';

  @override
  String get changePin => 'ᱵᱚᱫᱚᱞ ᱢᱮ';

  @override
  String get saveAddressAs => 'ᱱᱚᱶᱟ ᱴᱷᱤᱠᱱᱟ ᱱᱚᱸᱠᱟ ᱥᱟᱺᱪᱟᱣ ᱢᱮ';

  @override
  String get labelHome => 'ᱚᱲᱟᱜ';

  @override
  String get labelWork => 'ᱫᱚᱯᱛᱚᱨ';

  @override
  String get labelOther => 'ᱮᱴᱟᱜ';

  @override
  String get addressLine1Label => 'ᱚᱲᱟᱜ, ᱯᱷᱞᱮᱴ ᱵᱟᱝᱠᱷᱟᱱ ᱤᱢᱟᱨᱚᱛ';

  @override
  String get addressLine1Hint => '12A, ᱜᱨᱤᱱ ᱨᱮᱡᱤᱰᱮᱱᱥᱤ';

  @override
  String get addressLine2Label => 'ᱦᱚᱨ ᱵᱟᱝᱠᱷᱟᱱ ᱡᱟᱭᱜᱟ';

  @override
  String get addressLine2Hint => '2 ᱮᱵᱷᱮᱱᱭᱩ, ᱟᱱᱱᱟ ᱱᱚᱜᱚᱨ';

  @override
  String get landmarkLabel => 'ᱪᱤᱱᱦᱟᱹ';

  @override
  String get landmarkHint => 'ᱵᱟᱥ ᱥᱴᱟᱯ ᱥᱟᱢᱟᱝ ᱨᱮ';

  @override
  String get cityLabel => 'ᱥᱚᱦᱚᱨ';

  @override
  String get stateLabel => 'ᱨᱟᱡᱽ';

  @override
  String get pincodeLabel => 'ᱯᱤᱱ ᱠᱳᱰ';

  @override
  String get invalidPincode => 'ᱴᱷᱤᱠ 6 ᱮᱞ ᱯᱤᱱ ᱠᱳᱰ ᱚᱞ ᱢᱮ';

  @override
  String get contactNameLabel => 'ᱡᱚᱲᱟᱣ ᱧᱩᱛᱩᱢ';

  @override
  String get contactPhoneLabel => 'ᱡᱚᱲᱟᱣ ᱱᱟᱢᱵᱟᱨ';

  @override
  String get invalidMobileNumber => 'ᱴᱷᱤᱠ 10 ᱮᱞ ᱢᱚᱵᱟᱭᱤᱞ ᱱᱟᱢᱵᱟᱨ ᱚᱞ ᱢᱮ';

  @override
  String get makeDefaultAddress => 'ᱰᱤᱯᱷᱚᱞᱴ ᱞᱮᱠᱟᱛᱮ ᱱᱚᱰᱮᱜᱮ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';

  @override
  String get saveAddress => 'ᱴᱷᱤᱠᱱᱟ ᱥᱟᱺᱪᱟᱣ ᱢᱮ';

  @override
  String get addressSaved => 'ᱴᱷᱤᱠᱱᱟ ᱥᱟᱺᱪᱟᱣ ᱮᱱᱟ';

  @override
  String get addressBookTitle => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱴᱷᱤᱠᱱᱟ';

  @override
  String get manageAddresses => 'ᱥᱟᱺᱪᱟᱣ ᱟᱠᱟᱱ ᱴᱷᱤᱠᱱᱟ ᱠᱚ ᱥᱟᱢᱵᱷᱟᱞ ᱢᱮ';

  @override
  String get noAddressesTitle => 'ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱴᱷᱤᱠᱱᱟ ᱵᱟᱝᱟ';

  @override
  String get noAddressesSubtitle =>
      'ᱟᱢ ᱛᱟᱞᱟ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱮᱢᱚᱜ ᱫᱳᱠᱟᱱ ᱩᱫᱩᱜ ᱞᱟᱹᱜᱤᱫ ᱢᱤᱫ ᱴᱷᱤᱠᱱᱟ ᱥᱮᱞᱮᱫ ᱢᱮ᱾';

  @override
  String get addAddress => 'ᱴᱷᱤᱠᱱᱟ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String get setAsDefault => 'ᱰᱤᱯᱷᱚᱞᱴ ᱵᱮᱱᱟᱣ ᱢᱮ';

  @override
  String get editLabel => 'ᱥᱚᱯᱷᱟ ᱢᱮ';

  @override
  String get addressUpdated => 'ᱴᱷᱤᱠᱱᱟ ᱟᱯᱰᱮᱴ ᱮᱱᱟ';

  @override
  String get deleteLabel => 'ᱢᱮᱴᱟᱣ ᱢᱮ';

  @override
  String get deleteAddressTitle => 'ᱱᱚᱶᱟ ᱴᱷᱤᱠᱱᱟ ᱢᱮᱴᱟᱣᱟ?';

  @override
  String get deleteAddressMessage =>
      'ᱟᱢ ᱱᱚᱶᱟ ᱛᱟᱭᱚᱢ ᱛᱮ ᱫᱩᱦᱲᱟᱹ ᱥᱮᱞᱮᱫ ᱫᱟᱲᱮᱭᱟᱜ-ᱟᱢ᱾';

  @override
  String get rescueDealsTitle => 'ᱡᱚᱢ ᱨᱮᱥᱠᱭᱩ';

  @override
  String get notTakingOrders => 'ᱚᱰᱟᱨ ᱵᱟᱝ ᱦᱟᱛᱟᱣ ᱠᱟᱱᱟ';

  @override
  String get closedRightNow => 'ᱱᱤᱛᱚᱜ ᱵᱚᱸᱫᱚ ᱢᱮᱱᱟᱜᱼᱟ';

  @override
  String minimumOrder(String amount) {
    return 'ᱠᱚᱢ ᱛᱮ ᱠᱚᱢ $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count ᱵᱟᱝᱠᱤ';
  }

  @override
  String get soldOut => 'ᱪᱟᱵᱟ ᱮᱱᱟ';

  @override
  String get menuEmptyTitle => 'ᱛᱮᱦᱮᱧ ᱫᱷᱟᱹᱵᱤᱡ ᱡᱚᱢᱟᱜ ᱵᱟᱹᱱᱩᱜᱼᱟ';

  @override
  String get menuEmptySubtitle =>
      'ᱱᱚᱶᱟ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱟᱡ ᱨᱮᱭᱟᱜ ᱢᱮᱱᱩ ᱵᱟᱝ ᱥᱮᱞᱮᱫ ᱟᱠᱟᱫᱟ ᱾';

  @override
  String get moreDishesTitle => 'ᱟᱨᱦᱚᱸ ᱡᱚᱢᱟᱜ';

  @override
  String get menuSearchHint => 'ᱡᱚᱢᱟᱜ ᱯᱟᱱᱛᱮ ᱢᱮ';

  @override
  String get filtersShort => 'ᱯᱷᱤᱞᱴᱟᱨ';

  @override
  String get dietVeg => 'ᱥᱟᱠᱟᱢ';

  @override
  String get dietEgg => 'ᱵᱤᱞᱤ';

  @override
  String get dietNonVeg => 'ᱡᱤᱞ';

  @override
  String get menuBestsellerChip => 'ᱡᱟᱹᱥᱛᱤ ᱟᱠᱷᱨᱤᱧ';

  @override
  String get menuFoodType => 'ᱡᱚᱢᱟᱜ ᱞᱮᱠᱟᱱ';

  @override
  String get menuShowOnly => 'ᱮᱥᱠᱟᱨ ᱩᱫᱩᱜ ᱢᱮ';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ᱡᱚᱢᱟᱜ',
      one: '1 ᱡᱚᱢᱟᱜ',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ᱡᱚᱢᱟᱜ ᱩᱫᱩᱜ ᱢᱮ',
      one: '1 ᱡᱚᱢᱟᱜ ᱩᱫᱩᱜ ᱢᱮ',
      zero: 'ᱡᱟᱦᱟᱸ ᱡᱚᱢᱟᱜ ᱵᱟᱝᱟ',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'ᱮᱴᱟᱜ ᱡᱚᱢᱟᱜ ᱧᱩᱛᱩᱢ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ, ᱵᱟᱝᱠᱷᱟᱱ ᱢᱤᱫᱴᱟᱝ ᱯᱷᱤᱞᱴᱟᱨ ᱚᱪᱚᱜ ᱢᱮ᱾';

  @override
  String get menuBrowse => 'ᱢᱮᱱᱩ';

  @override
  String get customisable => 'ᱠᱩᱥᱤ ᱞᱮᱠᱟᱛᱮ';

  @override
  String get requiredLabel => 'ᱞᱟᱹᱠᱛᱤ';

  @override
  String get optionalLabel => 'ᱤᱪᱪᱷᱟ ᱞᱮᱠᱟᱛᱮ';

  @override
  String get chooseOne => 'ᱢᱤᱫᱴᱟᱝ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';

  @override
  String chooseUpTo(int count) {
    return 'ᱵᱟᱲᱛᱤ ᱛᱮ ᱵᱟᱲᱛᱤ $count ᱵᱟᱪᱷᱟᱣ ᱢᱮ';
  }

  @override
  String chooseAtLeast(int count) {
    return 'ᱠᱚᱢ ᱛᱮ ᱠᱚᱢ $count ᱵᱟᱪᱷᱟᱣ ᱢᱮ';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min ᱠᱷᱚᱱ $max ᱫᱷᱟᱹᱵᱤᱡ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';
  }

  @override
  String get specialInstructions => 'ᱵᱤᱥᱮᱥ ᱠᱟᱛᱷᱟ';

  @override
  String get specialInstructionsHint => 'ᱠᱚᱢ ᱢᱟᱨᱚᱪ, ᱯᱮᱭᱟᱡ ᱵᱟᱝ…';

  @override
  String addForAmount(String amount) {
    return 'ᱥᱮᱞᱮᱫ ᱢᱮ · $amount';
  }

  @override
  String get deliveryLabel => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';

  @override
  String get pickupLabel => 'ᱟᱡ ᱛᱮ ᱤᱫᱤ';

  @override
  String get packagingLabel => 'ᱯᱮᱠᱤᱝ';

  @override
  String get discountLabel => 'ᱪᱷᱩᱴ';

  @override
  String get billDetailsTitle => 'ᱵᱤᱞ ᱨᱮᱭᱟᱜ ᱵᱤᱵᱨᱚᱬ';

  @override
  String get clearCart => 'ᱠᱟᱨᱴ ᱠᱷᱟᱹᱞᱤ ᱢᱮ';

  @override
  String get clearCartTitle => 'ᱱᱚᱶᱟ ᱠᱟᱨᱴ ᱠᱷᱟᱹᱞᱤᱭᱟ?';

  @override
  String get clearCartMessage => 'ᱱᱚᱶᱟ ᱨᱮ ᱢᱮᱱᱟᱜ ᱡᱚᱛᱚ ᱠᱟᱛᱷᱟ ᱚᱪᱚᱜ ᱦᱩᱭᱩᱜᱼᱟ ᱾';

  @override
  String unavailableItemsNotice(String items) {
    return 'ᱱᱤᱛᱚᱜ ᱵᱟᱝ ᱧᱟᱢᱚᱜᱼᱟ: $items';
  }

  @override
  String get removeUnavailable => 'ᱚᱱᱟ ᱠᱚ ᱚᱪᱚᱜ ᱢᱮ';

  @override
  String minimumNotMet(String amount) {
    return 'ᱠᱚᱢ ᱛᱮ ᱠᱚᱢ ᱚᱰᱟᱨ $amount';
  }

  @override
  String get checkoutTitle => 'ᱪᱮᱠᱟᱣᱴ';

  @override
  String get deliveryAddressLabel => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱴᱷᱤᱠᱟᱬᱟ';

  @override
  String get noAddressSelected => 'ᱡᱟᱦᱟᱸ ᱴᱷᱤᱠᱟᱬᱟ ᱵᱟᱝ ᱵᱟᱪᱷᱟᱣ ᱟᱠᱟᱱᱟ';

  @override
  String get paymentMethodLabel => 'ᱠᱚᱲᱟ';

  @override
  String get payOnDelivery => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱨᱮ ᱴᱟᱠᱟ';

  @override
  String get noteToRestaurant => 'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱞᱟᱹᱜᱤᱫ ᱠᱟᱛᱷᱟ';

  @override
  String get noteToRestaurantHint => 'ᱜᱷᱟᱱᱴᱤ ᱵᱟᱨ ᱫᱷᱟᱣ ᱨᱩᱭ ᱢᱮ…';

  @override
  String get activeOrdersTitle => 'ᱪᱟᱹᱞᱩ ᱚᱰᱟᱨ';

  @override
  String get pastOrdersTitle => 'ᱢᱟᱲᱟᱝ ᱚᱰᱟᱨ';

  @override
  String get orderItemsTitle => 'ᱡᱚᱢᱟᱜ';

  @override
  String get orderProgressTitle => 'ᱛᱟᱞᱟ ᱫᱟᱲᱮ';

  @override
  String get arrivingIn => 'ᱥᱮᱴᱮᱨ ᱞᱟᱹᱜᱤᱫ';

  @override
  String get pickupCodeLabel => 'ᱯᱤᱠᱟᱯ ᱠᱳᱰ';

  @override
  String get cancellationReasonLabel => 'ᱵᱟᱹᱰᱨᱟᱹ ᱨᱮᱭᱟᱜ ᱠᱟᱨᱚᱱ';

  @override
  String get riderLabel => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱥᱟᱣᱛᱟ';

  @override
  String get callRider => 'ᱠᱚᱞ ᱢᱮ';

  @override
  String get trackRider => 'ᱨᱟᱭᱰᱟᱨ ᱴᱽᱨᱮᱠ ᱢᱮ';

  @override
  String get riderLocationSoon =>
      'ᱚᱨᱰᱟᱨ ᱤᱫᱤ ᱛᱟᱭᱚᱢ ᱨᱟᱭᱰᱟᱨ ᱨᱮᱭᱟᱜ ᱡᱟᱭᱜᱟ ᱱᱚᱰᱮ ᱧᱮᱞᱚᱜᱼᱟ᱾';

  @override
  String get riderLocationStale => 'ᱨᱟᱭᱰᱟᱨ ᱨᱮᱭᱟᱜ ᱡᱟᱭᱜᱟ ᱟᱯᱰᱮᱴ ᱦᱩᱭᱩᱜ ᱠᱟᱱᱟ…';

  @override
  String get recentreOnRider => 'ᱨᱟᱭᱰᱟᱨ ᱨᱮ ᱛᱟᱞᱟ ᱢᱮ';

  @override
  String get viewInvoice => 'ᱴᱮᱠᱥ ᱤᱱᱵᱷᱚᱭᱥ';

  @override
  String get cancelOrder => 'ᱚᱰᱟᱨ ᱵᱟᱹᱰᱨᱟᱹ ᱢᱮ';

  @override
  String get cancelOrderTitle => 'ᱱᱚᱶᱟ ᱚᱰᱟᱨ ᱵᱟᱹᱰᱨᱟᱹᱭᱟ?';

  @override
  String get cancelOrderMessage =>
      'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱦᱟᱛᱟᱣ ᱞᱟᱦᱟ ᱜᱮ ᱵᱟᱹᱰᱨᱟᱹ ᱫᱟᱲᱮᱭᱟᱜᱼᱟ ᱾';

  @override
  String get cancelReasonLabel => 'ᱠᱟᱨᱚᱱ';

  @override
  String get cancelReasonFallback => 'ᱜᱟᱦᱟᱠ ᱵᱟᱹᱰᱨᱟᱹ ᱠᱮᱫᱟ';

  @override
  String get orderCancelled => 'ᱚᱰᱟᱨ ᱵᱟᱹᱰᱨᱟᱹ ᱮᱱᱟ';

  @override
  String get currentLocationLabel => 'ᱱᱤᱛᱚᱜᱟᱜ ᱡᱟᱭᱜᱟ';

  @override
  String get onLabel => 'ᱪᱟᱹᱞᱩ';

  @override
  String get offLabel => 'ᱵᱚᱸᱫ';

  @override
  String get profileCoupons => 'ᱟᱢᱟᱜ ᱠᱩᱯᱚᱱ';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ᱢᱮᱱᱟᱜᱼᱟ',
      one: '1 ᱢᱮᱱᱟᱜᱼᱟ',
      zero: 'ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱵᱟᱝᱟ',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'ᱟᱢᱟᱜ ᱵᱟᱪᱷᱟᱣ';

  @override
  String get profileVegMode => 'ᱥᱟᱠᱟᱢ ᱢᱚᱰ';

  @override
  String get profileVegModeHint => 'ᱥᱟᱠᱟᱢ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱟᱨ ᱡᱚᱢᱟᱜ ᱮᱰᱮ';

  @override
  String get profileAppearance => 'ᱛᱷᱤᱢ';

  @override
  String get appearanceSystem => 'ᱯᱷᱳᱱ ᱞᱮᱠᱟ';

  @override
  String get appearanceLight => 'ᱢᱟᱨᱥᱟᱞ';

  @override
  String get appearanceDark => 'ᱧᱩᱛ';

  @override
  String get profileNotifications => 'ᱱᱳᱴᱤᱯᱷᱤᱠᱮᱥᱚᱱ';

  @override
  String get profileFoodDelivery => 'ᱡᱚᱢᱟᱜ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';

  @override
  String get profileFavourites => 'ᱟᱢᱟᱜ ᱠᱩᱥᱤᱭᱟᱜ';

  @override
  String get profileHelp => 'ᱜᱚᱲᱚ ᱟᱨ ᱥᱟᱯᱚᱨᱴ';

  @override
  String get profileMore => 'ᱟᱨᱦᱚᱸ';

  @override
  String get profileFeedback => 'ᱢᱚᱱᱮ ᱠᱩᱞ ᱢᱮ';

  @override
  String get profileSafety => 'ᱨᱩᱠᱷᱤᱭᱟᱹ ᱵᱤᱯᱚᱫ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ ᱮᱢ ᱢᱮ';

  @override
  String get profileAbout => 'Nexmile ᱵᱟᱵᱚᱛ';

  @override
  String get couponsEmptyTitle => 'ᱱᱤᱛᱚᱜ ᱡᱟᱦᱟᱸ ᱠᱩᱯᱚᱱ ᱵᱟᱝᱟ';

  @override
  String get couponsEmptyBody =>
      'ᱟᱢ ᱵᱮᱵᱷᱟᱨ ᱫᱟᱲᱮᱭᱟᱜ ᱠᱩᱯᱚᱱ ᱦᱮᱡ ᱠᱷᱟᱱ, ᱱᱚᱰᱮ ᱩᱫᱩᱜᱚᱜᱼᱟ᱾';

  @override
  String couponFlatOff(String amount) {
    return '$amount ᱠᱚᱢ';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% ᱠᱚᱢ';
  }

  @override
  String couponUpTo(String amount) {
    return 'ᱵᱟᱲᱛᱤ ᱛᱮ ᱵᱟᱲᱛᱤ $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount ᱠᱷᱚᱱ ᱵᱟᱲᱛᱤ ᱚᱰᱟᱨ ᱨᱮ';
  }

  @override
  String couponValidTill(String date) {
    return '$date ᱦᱟᱹᱵᱤᱡ ᱪᱟᱹᱞᱩ';
  }

  @override
  String get couponAllRestaurants => 'ᱡᱚᱛᱚ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱨᱮ';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant ᱨᱮ';
  }

  @override
  String couponCopied(String code) {
    return 'ᱠᱳᱰ $code ᱠᱚᱯᱤ ᱮᱱᱟ';
  }

  @override
  String get favouritesEmptyTitle => 'ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱠᱩᱥᱤᱭᱟᱜ ᱵᱟᱝᱟ';

  @override
  String get favouritesEmptyBody =>
      'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱨᱮᱭᱟᱜ ᱦᱟᱨᱴ ᱪᱤᱱᱦᱟᱹ ᱴᱤᱯ ᱠᱟᱛᱮ ᱱᱚᱰᱮ ᱥᱟᱺᱪᱟᱣ ᱢᱮ᱾';

  @override
  String get helpCall => 'ᱟᱞᱮ ᱴᱷᱮᱱ ᱠᱚᱞ ᱢᱮ';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'ᱟᱞᱮ ᱴᱷᱮᱱ ᱤᱢᱮᱞ ᱢᱮ';

  @override
  String helpHours(String hours) {
    return 'ᱟᱞᱮ $hours ᱢᱮᱱᱟᱞᱮᱭᱟ';
  }

  @override
  String get helpFaqs => 'ᱥᱟᱫᱷᱟᱨᱚᱱ ᱠᱩᱠᱞᱤ';

  @override
  String get helpNothing =>
      'ᱱᱤᱛᱚᱜ ᱜᱚᱲᱚ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ ᱵᱟᱝ ᱧᱟᱢᱚᱜᱼᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱛᱟᱭᱚᱢ ᱛᱮ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get feedbackPrompt => 'Nexmile ᱟᱢ ᱞᱟᱹᱜᱤᱫ ᱪᱮᱫ ᱞᱮᱠᱟ ᱠᱟᱹᱢᱤ ᱠᱟᱱᱟ?';

  @override
  String get feedbackHint =>
      'ᱪᱮᱫ ᱵᱮᱥ ᱛᱟᱦᱮᱸᱠᱟᱱᱟ, ᱵᱟᱝᱠᱷᱟᱱ ᱟᱞᱮ ᱪᱮᱫ ᱥᱩᱫᱷᱨᱟᱹᱣ ᱫᱟᱲᱮᱭᱟᱜᱼᱟᱞᱮ, ᱞᱟᱹᱭ ᱢᱮ';

  @override
  String get feedbackNeedRating => 'ᱯᱩᱭᱞᱩ ᱨᱮᱴᱤᱝ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';

  @override
  String get feedbackThanks => 'ᱥᱟᱨᱦᱟᱣ! ᱟᱢᱟᱜ ᱢᱚᱱᱮ ᱟᱞᱮᱭᱟᱜ ᱴᱤᱢ ᱴᱷᱮᱱ ᱥᱮᱴᱮᱨ ᱮᱱᱟ᱾';

  @override
  String get safetyIntro =>
      'ᱡᱩᱫᱤ ᱟᱢ ᱵᱟᱝᱠᱷᱟᱱ ᱮᱴᱟᱜ ᱦᱚᱲ ᱵᱤᱯᱚᱫ ᱨᱮ ᱛᱟᱦᱮᱸᱱ ᱠᱷᱟᱱ, ᱯᱩᱭᱞᱩ ᱤᱢᱟᱨᱡᱮᱱᱥᱤ ᱥᱮᱵᱟ ᱴᱷᱮᱱ ᱠᱚᱞ ᱢᱮ᱾';

  @override
  String get safetyCallEmergency => '112 ᱛᱮ ᱠᱚᱞ ᱢᱮ';

  @override
  String get safetyCallEmergencyBody => 'ᱯᱩᱞᱤᱥ, ᱯᱷᱟᱭᱟᱨ ᱵᱨᱤᱜᱮᱰ ᱟᱨ ᱮᱢᱵᱩᱞᱮᱱᱥ';

  @override
  String get safetyCallNexmile => 'Nexmile ᱨᱩᱠᱷᱤᱭᱟᱹ ᱞᱟᱭᱤᱱ ᱛᱮ ᱠᱚᱞ ᱢᱮ';

  @override
  String get safetyCallNexmileBody => 'ᱡᱚᱛᱚ ᱚᱠᱛᱚ ᱛᱮᱞᱟ ᱮᱢᱚᱜᱼᱟ';

  @override
  String aboutVersion(String version) {
    return 'ᱵᱷᱟᱨᱥᱚᱱ $version';
  }

  @override
  String get aboutTerms => 'ᱥᱮᱵᱟ ᱱᱮᱢ';

  @override
  String get aboutPrivacy => 'ᱩᱠᱩ ᱱᱤᱛᱤ';

  @override
  String get aboutLicences => 'ᱚᱯᱮᱱ-ᱥᱚᱨᱥ ᱞᱟᱭᱥᱮᱱᱥ';

  @override
  String get notifyOrderUpdates => 'ᱚᱰᱟᱨ ᱟᱯᱰᱮᱴ';

  @override
  String get notifyOrderUpdatesBody =>
      'ᱡᱚᱛᱚ ᱚᱠᱛᱚ ᱪᱟᱹᱞᱩ ᱛᱟᱦᱮᱸᱱᱟ, ᱡᱮᱢᱚᱱ ᱟᱢᱟᱜ ᱡᱚᱢᱟᱜ ᱚᱠᱟᱨᱮ ᱢᱮᱱᱟᱜᱼᱟ ᱵᱟᱰᱟᱭ ᱫᱟᱲᱮᱭᱟᱜᱼᱟᱢ᱾';

  @override
  String get notifyPromotions => 'ᱚᱯᱷᱟᱨ ᱟᱨ ᱯᱨᱚᱢᱚᱥᱚᱱ';

  @override
  String get notifyPromotionsBody =>
      'ᱰᱤᱞ, ᱠᱩᱯᱚᱱ ᱟᱨ ᱟᱢᱟᱜ ᱡᱟᱹᱛᱤᱭᱟᱹᱨ ᱱᱟᱶᱟ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ᱾';

  @override
  String get notifyPhoneOff =>
      'ᱱᱚᱶᱟ ᱯᱷᱳᱱ ᱨᱮ Nexmile ᱞᱟᱹᱜᱤᱫ ᱱᱳᱴᱤᱯᱷᱤᱠᱮᱥᱚᱱ ᱵᱚᱸᱫ ᱢᱮᱱᱟᱜᱼᱟ᱾';

  @override
  String get notifyTurnOn => 'ᱪᱟᱹᱞᱩ ᱢᱮ';

  @override
  String get linkOpenFailed => 'ᱱᱚᱶᱟ ᱯᱷᱳᱱ ᱨᱮ ᱚᱱᱟ ᱵᱟᱝ ᱡᱷᱤᱡ ᱫᱟᱲᱮ ᱞᱮᱱᱟ᱾';

  @override
  String get editProfileTitle => 'ᱯᱨᱚᱯᱷᱟᱭᱤᱞ ᱵᱚᱫᱚᱞ ᱢᱮ';

  @override
  String get editProfileSubtitle =>
      'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱟᱨ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱥᱟᱣᱛᱟ ᱟᱢᱟᱜ ᱧᱩᱛᱩᱢ ᱜᱮ ᱧᱮᱞᱚᱜᱼᱟ ᱾';

  @override
  String get saveChanges => 'ᱵᱚᱫᱚᱞ ᱠᱚ ᱥᱟᱺᱪᱟᱣ ᱢᱮ';

  @override
  String get profileUpdated => 'ᱯᱨᱚᱯᱷᱟᱭᱤᱞ ᱱᱟᱶᱟ ᱦᱩᱭᱮᱱᱟ';

  @override
  String get deleteAccount => 'ᱠᱷᱟᱛᱟ ᱢᱮᱴᱟᱣ ᱢᱮ';

  @override
  String get deleteAccountTitle => 'ᱟᱢᱟᱜ ᱠᱷᱟᱛᱟ ᱢᱮᱴᱟᱣᱟ?';

  @override
  String get deleteAccountMessage =>
      'ᱡᱚᱛᱚ ᱰᱤᱵᱷᱟᱭᱤᱥ ᱠᱷᱚᱱ ᱥᱟᱭᱤᱱ ᱟᱩᱴ ᱦᱩᱭᱩᱜᱼᱟᱢ ᱾ ᱢᱟᱲᱟᱝ ᱚᱰᱟᱨ ᱟᱨ ᱵᱤᱞ ᱠᱚ ᱴᱮᱠᱥ ᱨᱮᱠᱚᱰ ᱞᱟᱹᱜᱤᱫ ᱫᱚᱦᱚᱭᱟ ᱾';

  @override
  String get accountDeleted => 'ᱟᱢᱟᱜ ᱠᱷᱟᱛᱟ ᱢᱮᱴᱟᱣ ᱮᱱᱟ';

  @override
  String get devicesTitle => 'ᱥᱟᱭᱤᱱ ᱤᱱ ᱰᱤᱵᱷᱟᱭᱤᱥ';

  @override
  String get devicesSubtitle => 'ᱟᱢ ᱚᱠᱟ ᱨᱮ ᱥᱟᱭᱤᱱ ᱤᱱ ᱢᱮᱱᱟᱢᱟ';

  @override
  String get devicesEmptyTitle => 'ᱮᱴᱟᱜ ᱡᱟᱦᱟᱸ ᱰᱤᱵᱷᱟᱭᱤᱥ ᱵᱟᱹᱱᱩᱜᱼᱟ';

  @override
  String get devicesEmptySubtitle =>
      'ᱟᱢ ᱱᱚᱶᱟ ᱰᱤᱵᱷᱟᱭᱤᱥ ᱨᱮ ᱮᱥᱠᱟᱨ ᱥᱟᱭᱤᱱ ᱤᱱ ᱢᱮᱱᱟᱢᱟ ᱾';

  @override
  String get signOutDevice => 'ᱥᱟᱭᱤᱱ ᱟᱩᱴ';

  @override
  String get signOutDeviceTitle => 'ᱱᱚᱶᱟ ᱰᱤᱵᱷᱟᱭᱤᱥ ᱥᱟᱭᱤᱱ ᱟᱩᱴᱟ?';

  @override
  String get signOutDeviceMessage =>
      'ᱟᱢ ᱱᱚᱶᱟ ᱜᱮ ᱵᱮᱵᱷᱟᱨ ᱠᱟᱱᱟᱢ ᱠᱷᱟᱱ ᱫᱚ ᱫᱚᱦᱲᱟ ᱥᱟᱭᱤᱱ ᱤᱱ ᱞᱟᱹᱠᱛᱤᱭᱟ ᱾';

  @override
  String get deviceSignedOut => 'ᱰᱤᱵᱷᱟᱭᱤᱥ ᱥᱟᱭᱤᱱ ᱟᱩᱴ ᱮᱱᱟ';

  @override
  String get signOutEverywhere => 'ᱡᱚᱛᱚ ᱡᱟᱭᱜᱟ ᱠᱷᱚᱱ ᱥᱟᱭᱤᱱ ᱟᱩᱴ';

  @override
  String get signOutEverywhereTitle => 'ᱡᱚᱛᱚ ᱡᱟᱭᱜᱟ ᱠᱷᱚᱱ ᱥᱟᱭᱤᱱ ᱟᱩᱴᱟ?';

  @override
  String get signOutEverywhereMessage =>
      'ᱱᱚᱶᱟ ᱰᱤᱵᱷᱟᱭᱤᱥ ᱥᱟᱶᱛᱮ ᱡᱚᱛᱚ ᱰᱤᱵᱷᱟᱭᱤᱥ ᱥᱟᱭᱤᱱ ᱟᱩᱴ ᱦᱩᱭᱩᱜᱼᱟ ᱾';

  @override
  String get unknownDevice => 'ᱵᱟᱝ ᱩᱲᱩᱜ ᱰᱤᱵᱷᱟᱭᱤᱥ';

  @override
  String get activeNow => 'ᱱᱤᱛᱚᱜ ᱪᱟᱹᱞᱩ';

  @override
  String minutesAgo(int count) {
    return '$count ᱴᱤᱯᱤᱡ ᱞᱟᱦᱟ';
  }

  @override
  String hoursAgo(int count) {
    return '$count ᱴᱟᱲᱟᱝ ᱞᱟᱦᱟ';
  }

  @override
  String daysAgo(int count) {
    return '$count ᱢᱟᱦᱟᱸ ᱞᱟᱦᱟ';
  }

  @override
  String get filtersAndSorting => 'ᱯᱷᱤᱞᱴᱟᱨ ᱟᱨ ᱛᱟᱹᱞᱠᱟᱹ';

  @override
  String get clearAll => 'ᱡᱚᱛᱚ ᱚᱪᱚᱜ ᱢᱮ';

  @override
  String get showResults => 'ᱯᱷᱚᱞ ᱩᱫᱩᱜ ᱢᱮ';

  @override
  String get closeLabel => 'ᱵᱚᱸᱫᱚ ᱢᱮ';

  @override
  String get sortByTitle => 'ᱛᱟᱹᱞᱠᱟᱹ';

  @override
  String get sortRelevance => 'ᱡᱩᱲᱟᱣ';

  @override
  String get sortRating => 'ᱨᱮᱴᱤᱝ';

  @override
  String get sortDeliveryTime => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱚᱠᱛᱚ';

  @override
  String get sortCostLowHigh => 'ᱜᱚᱸᱡ: ᱠᱚᱢ ᱠᱷᱚᱱ ᱵᱟᱲᱛᱤ';

  @override
  String get sortCostHighLow => 'ᱜᱚᱸᱡ: ᱵᱟᱲᱛᱤ ᱠᱷᱚᱱ ᱠᱚᱢ';

  @override
  String get timeSection => 'ᱚᱠᱛᱚ';

  @override
  String get nearAndFast => 'ᱡᱟᱹᱛᱤ ᱟᱨ ᱞᱚᱜᱚᱱ';

  @override
  String get openNow => 'ᱱᱤᱛᱚᱜ ᱡᱷᱤᱡ';

  @override
  String get ratingSection => 'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱨᱮᱴᱤᱝ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ᱨᱮᱴᱤᱝ';
  }

  @override
  String get offersSection => 'ᱚᱯᱷᱟᱨ';

  @override
  String get hasOffersLabel => 'ᱚᱯᱷᱟᱨ ᱢᱮᱱᱟᱜ';

  @override
  String get dishPriceSection => 'ᱡᱚᱢᱟᱜ ᱜᱚᱸᱡ';

  @override
  String costUnder(String amount) {
    return '$amount ᱠᱷᱚᱱ ᱠᱚᱢ';
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
  String get moreSection => 'ᱟᱨᱦᱚᱸ';

  @override
  String get noPackagingCharges => 'ᱯᱮᱠᱤᱝ ᱠᱚᱲᱟ ᱵᱟᱹᱱᱩᱜᱼᱟ';

  @override
  String get allRestaurantsTitle => 'ᱡᱚᱛᱚ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ';

  @override
  String get whatsOnYourMind => 'ᱪᱮᱫ ᱡᱚᱢ ᱢᱚᱱ ᱢᱮᱱᱟᱜᱼᱟ?';

  @override
  String get listeningNow => 'ᱟᱸᱡᱚᱢ ᱠᱟᱱᱟ…';

  @override
  String get speakNowHint => 'ᱢᱤᱫᱴᱟᱝ ᱡᱚᱢᱟᱜ ᱟᱨᱵᱟᱝ ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱞᱟᱹᱭ ᱢᱮ';

  @override
  String get voiceUnavailable => 'ᱟᱲᱟᱝ ᱯᱟᱱᱛᱮ ᱵᱟᱝ ᱧᱟᱢᱚᱜᱼᱟ';

  @override
  String get voiceUnavailableBody => 'ᱟᱢ ᱴᱟᱭᱤᱯ ᱠᱟᱛᱮ ᱦᱚᱸ ᱯᱟᱱᱛᱮ ᱫᱟᱲᱮᱭᱟᱜᱼᱟᱢ ᱾';

  @override
  String get microphoneDenied => 'ᱢᱟᱭᱠᱨᱚᱯᱷᱚᱱ ᱟᱹᱬ ᱵᱟᱹᱱᱩᱜᱼᱟ';

  @override
  String get voiceSearchLabel => 'ᱟᱲᱟᱝ ᱛᱮ ᱯᱟᱱᱛᱮ ᱢᱮ';

  @override
  String get ratingsAndReviews => 'ᱨᱮᱴᱤᱝ ᱟᱨ ᱥᱟᱢᱤᱠᱥᱟ';

  @override
  String get reviewsWithTextOnly => 'ᱥᱟᱢᱤᱠᱥᱟ ᱢᱮᱱᱟᱜ';

  @override
  String get noReviewsTitle => 'ᱱᱤᱛᱚᱜ ᱫᱷᱟᱹᱵᱤᱡ ᱡᱟᱦᱟᱸ ᱨᱮᱴᱤᱝ ᱵᱟᱬᱩᱜ';

  @override
  String get noReviewsSubtitle => 'ᱚᱰᱚᱨ ᱛᱟᱭᱚᱢ ᱯᱩᱭᱞᱩ ᱨᱮᱴᱤᱝ ᱟᱢ ᱮᱢ ᱢᱮ ᱾';

  @override
  String get rateOrderTitle => 'ᱟᱢᱟᱜ ᱚᱰᱚᱨ ᱨᱮᱴ ᱢᱮ';

  @override
  String get rateDishesTitle => 'ᱡᱚᱢᱟᱜ ᱠᱚ ᱨᱮᱴ ᱢᱮ';

  @override
  String get reviewHint => 'ᱟᱨ ᱡᱟᱦᱟᱸ ᱠᱟᱛᱷᱟ ᱢᱮᱱᱟᱜ? (ᱤᱪᱪᱷᱟ)';

  @override
  String get submitRating => 'ᱨᱮᱴᱤᱝ ᱠᱩᱞ ᱢᱮ';

  @override
  String get reviewThanks => 'ᱥᱟᱨᱦᱟᱣ — ᱟᱢᱟᱜ ᱨᱮᱴᱤᱝ ᱧᱟᱢ ᱠᱮᱫᱟ ᱾';

  @override
  String get rateThisOrder => 'ᱱᱚᱶᱟ ᱚᱰᱚᱨ ᱨᱮᱴ ᱢᱮ';

  @override
  String get walletTitle => 'Nexmile ᱣᱟᱞᱮᱴ';

  @override
  String get walletBalance => 'ᱣᱟᱞᱮᱴ ᱵᱮᱞᱮᱱᱥ';

  @override
  String get walletBalanceHint =>
      'ᱡᱟᱦᱟᱸ ᱚᱰᱟᱨ ᱨᱮᱭᱟᱜ ᱴᱟᱠᱟ ᱮᱢ ᱞᱟᱹᱜᱤᱫ ᱱᱚᱶᱟ ᱵᱮᱵᱷᱟᱨ ᱢᱮ᱾';

  @override
  String get walletAddMoney => 'ᱴᱟᱠᱟ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String get walletEnterAmount => 'ᱴᱟᱠᱟ ᱚᱞ ᱢᱮ';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ᱠᱷᱚᱱ $max ᱫᱷᱟᱹᱵᱤᱡ';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount ᱥᱮᱞᱮᱫ ᱢᱮ';
  }

  @override
  String get walletSecuredBy => 'ᱯᱮᱢᱮᱱᱴ ᱫᱚ Razorpay ᱦᱚᱛᱮᱛᱮ ᱨᱩᱠᱷᱤᱭᱟᱹ ᱢᱮᱱᱟᱜᱼᱟ';

  @override
  String get walletHistory => 'ᱱᱟᱜᱟᱢ';

  @override
  String get walletNoHistory =>
      'ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱞᱮᱱᱫᱮᱱ ᱵᱟᱝᱟ᱾ ᱟᱢ ᱥᱮᱞᱮᱫ ᱵᱟᱝᱠᱷᱟᱱ ᱠᱷᱚᱨᱚᱪ ᱠᱟᱱ ᱴᱟᱠᱟ ᱱᱚᱰᱮ ᱩᱫᱩᱜᱚᱜᱼᱟ᱾';

  @override
  String get walletEntryTopUp => 'ᱴᱟᱠᱟ ᱥᱮᱞᱮᱫ ᱮᱱᱟ';

  @override
  String get walletEntryOrder => 'ᱚᱰᱟᱨ ᱞᱟᱹᱜᱤᱫ ᱴᱟᱠᱟ ᱮᱢ ᱮᱱᱟ';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ᱚᱰᱟᱨ $number ᱞᱟᱹᱜᱤᱫ ᱴᱟᱠᱟ ᱮᱢ ᱮᱱᱟ';
  }

  @override
  String get walletEntryRefund => 'ᱨᱩᱣᱟᱲ ᱴᱟᱠᱟ';

  @override
  String walletMoneyAdded(String amount) {
    return 'ᱟᱢᱟᱜ ᱣᱟᱞᱮᱴ ᱨᱮ $amount ᱥᱮᱞᱮᱫ ᱮᱱᱟ';
  }

  @override
  String get walletPaymentFailed =>
      'ᱯᱮᱢᱮᱱᱴ ᱵᱟᱝ ᱦᱩᱭ ᱞᱮᱱᱟ᱾ ᱟᱢᱟᱜ ᱠᱷᱟᱛᱟ ᱠᱷᱚᱱ ᱡᱟᱦᱟᱸ ᱴᱟᱠᱟ ᱵᱟᱝ ᱦᱟᱛᱟᱣ ᱟᱠᱟᱱᱟ᱾';

  @override
  String get walletPaymentConfirming =>
      'ᱯᱮᱢᱮᱱᱴ ᱧᱟᱢ ᱮᱱᱟ᱾ ᱛᱤᱸᱜᱩ ᱢᱤᱱᱤᱴ ᱨᱮ ᱟᱢᱟᱜ ᱵᱮᱞᱮᱱᱥ ᱟᱯᱰᱮᱴᱚᱜᱼᱟ᱾';

  @override
  String get walletUseBalance => 'ᱣᱟᱞᱮᱴ ᱵᱮᱞᱮᱱᱥ ᱵᱮᱵᱷᱟᱨ ᱢᱮ';

  @override
  String walletAvailable(String amount) {
    return 'ᱢᱮᱱᱟᱜᱼᱟ: $amount';
  }

  @override
  String get walletPaidFromWallet => 'ᱣᱟᱞᱮᱴ ᱠᱷᱚᱱ ᱮᱢ ᱮᱱᱟ';

  @override
  String get walletPayOnDelivery => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱨᱮ ᱴᱟᱠᱟ ᱮᱢ';

  @override
  String get walletCoversOrder => 'ᱯᱩᱨᱟᱹ ᱴᱟᱠᱟ ᱟᱢᱟᱜ ᱣᱟᱞᱮᱴ ᱠᱷᱚᱱ ᱮᱢ ᱮᱱᱟ';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return 'ᱣᱟᱞᱮᱴ ᱠᱷᱚᱱ $wallet, ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱨᱮ $rest';
  }

  @override
  String get walletTopUpUnavailable =>
      'ᱱᱤᱛᱚᱜ ᱴᱟᱠᱟ ᱥᱮᱞᱮᱫ ᱵᱟᱝ ᱦᱩᱭ ᱫᱟᱲᱮᱭᱟᱜᱼᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱛᱟᱭᱚᱢ ᱛᱮ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String walletFull(String limit) {
    return 'ᱟᱢᱟᱜ ᱣᱟᱞᱮᱴ ᱫᱚ ᱟᱡᱟᱜ $limit ᱥᱤᱢᱟᱹ ᱨᱮ ᱥᱮᱴᱮᱨ ᱮᱱᱟ᱾';
  }

  @override
  String get searchAddressHint => 'ᱡᱟᱭᱜᱟ, ᱦᱚᱨ ᱵᱟᱝᱠᱷᱟᱱ ᱪᱤᱱᱦᱟᱹ ᱯᱟᱱᱛᱮ ᱢᱮ';

  @override
  String get selectLocationTitle => 'ᱢᱤᱫ ᱡᱟᱭᱜᱟ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';

  @override
  String get useCurrentLocation => 'ᱱᱤᱛᱚᱜᱟᱜ ᱡᱟᱭᱜᱟ ᱵᱮᱵᱷᱟᱨ ᱢᱮ';

  @override
  String get locatingYou => 'ᱟᱢ ᱚᱠᱟᱨᱮ ᱢᱮᱱᱟᱢᱟ ᱯᱟᱱᱛᱮ ᱠᱟᱱᱟ…';

  @override
  String get locationOffHint => 'ᱱᱚᱶᱟ ᱵᱮᱵᱷᱟᱨ ᱞᱟᱹᱜᱤᱫ ᱡᱟᱭᱜᱟ ᱨᱮᱭᱟᱜ ᱦᱩᱠᱩᱢ ᱮᱢ ᱢᱮ';

  @override
  String get savedAddressesHeading => 'ᱥᱟᱺᱪᱟᱣ ᱟᱠᱟᱱ ᱴᱷᱤᱠᱱᱟ';

  @override
  String get recentLocationsHeading => 'ᱱᱟᱦᱟᱜ ᱨᱮᱭᱟᱜ ᱡᱟᱭᱜᱟ';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱡᱟᱭᱜᱟ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';

  @override
  String get movePinTooltip =>
      'ᱯᱤᱱ ᱩᱪᱟᱹᱲ ᱠᱟᱛᱮ ᱟᱢᱟᱜ ᱴᱷᱤᱠ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱡᱟᱭᱜᱟ ᱨᱮ ᱫᱚᱦᱚ ᱢᱮ';

  @override
  String get locatingPin => 'ᱴᱷᱤᱠᱱᱟ ᱯᱟᱱᱛᱮ ᱠᱟᱱᱟ…';

  @override
  String get deliveryDetailsHeading => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ';

  @override
  String get addressDetailsLabel => 'ᱴᱷᱤᱠᱱᱟ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ*';

  @override
  String get addressDetailsHint => 'ᱡᱮᱞᱮᱠᱟ: ᱯᱷᱞᱚᱨ, ᱚᱲᱟᱜ ᱱᱟᱢᱵᱟᱨ';

  @override
  String get missingAreaHint =>
      'ᱱᱚᱶᱟ ᱯᱤᱱ ᱨᱮᱭᱟᱜ ᱯᱩᱨᱟᱹ ᱴᱷᱤᱠᱱᱟ ᱵᱟᱝ ᱧᱟᱢ ᱞᱮᱱᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱵᱟᱝᱠᱤ ᱠᱷᱚᱵᱚᱨ ᱚᱞ ᱢᱮ᱾';

  @override
  String get whoToContact => 'ᱱᱚᱶᱟ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱞᱟᱹᱜᱤᱫ ᱚᱠᱟᱭ ᱥᱟᱶ ᱡᱚᱲᱟᱣ ᱦᱩᱭᱩᱜᱼᱟ?';

  @override
  String get contactMyself => 'ᱤᱧᱜᱮ';

  @override
  String get contactSomeoneElse => 'ᱮᱴᱟᱜ ᱦᱚᱲ';

  @override
  String get receiverDetailsHeading =>
      'ᱱᱚᱶᱟ ᱴᱷᱤᱠᱱᱟ ᱞᱟᱹᱜᱤᱫ ᱦᱟᱛᱟᱣᱤᱭᱟᱹ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ';

  @override
  String get receiverAddPrompt => 'ᱦᱟᱛᱟᱣᱤᱭᱟᱹ ᱨᱮᱭᱟᱜ ᱧᱩᱛᱩᱢ ᱟᱨ ᱱᱟᱢᱵᱟᱨ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String get receiverSheetTitle => 'ᱦᱟᱛᱟᱣᱤᱭᱟᱹ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ';

  @override
  String get doorPhotoHeading => 'ᱫᱩᱣᱟᱹᱨ/ᱤᱢᱟᱨᱚᱛ ᱨᱮᱭᱟᱜ ᱯᱷᱚᱴᱚ (ᱤᱪᱪᱷᱟ ᱞᱮᱠᱟᱛᱮ)';

  @override
  String get doorPhotoAdd => 'ᱯᱷᱚᱴᱚ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String get doorPhotoBody =>
      'ᱱᱚᱶᱟ ᱛᱮ ᱟᱞᱮᱭᱟᱜ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱥᱟᱣᱛᱟ ᱠᱚ ᱟᱢᱟᱜ ᱴᱷᱤᱠ ᱡᱟᱭᱜᱟ ᱞᱚᱜᱚᱱ ᱧᱟᱢ ᱫᱟᱲᱮᱭᱟᱜᱼᱟᱠᱚ';

  @override
  String get doorPhotoChange => 'ᱵᱚᱫᱚᱞ ᱢᱮ';

  @override
  String get doorPhotoRemove => 'ᱚᱪᱚᱜ ᱢᱮ';

  @override
  String get photoFromCamera => 'ᱠᱮᱢᱮᱨᱟ ᱛᱮ ᱯᱷᱚᱴᱚ ᱦᱟᱛᱟᱣ ᱢᱮ';

  @override
  String get photoFromGallery => 'ᱜᱮᱞᱮᱨᱤ ᱠᱷᱚᱱ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';

  @override
  String get photoUploaded => 'ᱯᱷᱚᱴᱚ ᱥᱮᱞᱮᱫ ᱮᱱᱟ';

  @override
  String get photoUploadFailed =>
      'ᱯᱷᱚᱴᱚ ᱟᱯᱞᱳᱰ ᱵᱟᱝ ᱦᱩᱭ ᱫᱟᱲᱮ ᱞᱮᱱᱟ᱾ ᱫᱟᱭᱟ ᱠᱟᱛᱮ ᱛᱟᱭᱚᱢ ᱛᱮ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get addressSavedPhotoFailed =>
      'ᱴᱷᱤᱠᱱᱟ ᱥᱟᱺᱪᱟᱣ ᱮᱱᱟ᱾ ᱯᱷᱚᱴᱚ ᱟᱯᱞᱳᱰ ᱵᱟᱝ ᱦᱩᱭ ᱫᱟᱲᱮ ᱞᱮᱱᱟ᱾';

  @override
  String get removePhotoLabel => 'ᱯᱷᱚᱴᱚ ᱚᱪᱚᱜ ᱢᱮ';

  @override
  String get photoRemoved => 'ᱯᱷᱚᱴᱚ ᱚᱪᱚᱜ ᱮᱱᱟ';

  @override
  String get shareLabel => 'ᱥᱮᱭᱟᱨ ᱢᱮ';

  @override
  String get addDoorPhotoLabel => 'ᱫᱩᱣᱟᱹᱨ ᱨᱮᱭᱟᱜ ᱯᱷᱚᱴᱚ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String get searchAddressNoResults =>
      'ᱡᱟᱦᱟᱸ ᱡᱟᱭᱜᱟ ᱵᱟᱝ ᱧᱟᱢ ᱞᱮᱱᱟ᱾ ᱡᱟᱹᱛᱤᱭᱟᱹᱨ ᱪᱤᱱᱦᱟᱹ, ᱡᱟᱭᱜᱟ ᱨᱮᱭᱟᱜ ᱧᱩᱛᱩᱢ ᱵᱟᱝᱠᱷᱟᱱ ᱯᱤᱱ ᱠᱳᱰ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get clearLabel => 'ᱠᱷᱟᱹᱞᱤ ᱢᱮ';

  @override
  String get trackingArrivingNow => 'ᱱᱤᱛᱚᱜᱜᱮ ᱥᱮᱴᱮᱨᱚᱜᱼᱟ';

  @override
  String get trackingLive => 'ᱞᱟᱭᱤᱵᱷ';

  @override
  String get trackingStepConfirmed => 'ᱦᱟᱛᱟᱣ ᱮᱱᱟ';

  @override
  String get trackingStepPreparing => 'ᱛᱮᱭᱟᱨ ᱦᱩᱭᱩᱜ ᱠᱟᱱᱟ';

  @override
  String get trackingStepOnTheWay => 'ᱦᱚᱨ ᱨᱮ';

  @override
  String get trackingStepDelivered => 'ᱰᱮᱞᱤᱵᱷᱟᱨ ᱮᱱᱟ';

  @override
  String get trackingFindingRider => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱥᱟᱣᱛᱟ ᱴᱷᱤᱠ ᱦᱩᱭᱩᱜ ᱠᱟᱱᱟ…';

  @override
  String get trackingPinYou => 'ᱟᱢ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance ᱥᱟᱹᱝᱜᱤᱧ ᱨᱮ ᱢᱮᱱᱟᱭ';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name ᱴᱷᱮᱱ ᱢᱮᱥᱮᱡ ᱠᱩᱞ ᱢᱮ';
  }

  @override
  String get trackingDeliveringTo => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱴᱷᱤᱠᱱᱟ';

  @override
  String get trackingOrderDetails => 'ᱚᱰᱟᱨ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ';

  @override
  String get dispatchSearching =>
      'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱡᱟᱹᱛᱤᱭᱟᱹᱨ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱥᱟᱣᱛᱟ ᱯᱟᱱᱛᱮ ᱠᱟᱱᱟ…';

  @override
  String get dispatchNoRider =>
      'ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱥᱟᱣᱛᱟ ᱵᱟᱝ ᱦᱟᱛᱟᱣ ᱟᱠᱟᱫᱟ᱾ ᱟᱞᱮᱭᱟᱜ ᱴᱤᱢ ᱱᱤᱛᱚᱜ ᱢᱤᱫᱦᱚᱲ ᱠᱩᱞ ᱠᱟᱱᱟ᱾';

  @override
  String get vehicleBike => 'ᱵᱟᱭᱤᱠ';

  @override
  String get vehicleScooter => 'ᱥᱠᱩᱴᱟᱨ';

  @override
  String get vehicleBicycle => 'ᱥᱟᱭᱠᱮᱞ';

  @override
  String get vehicleElectric => 'ᱤᱞᱮᱠᱴᱨᱤᱠ ᱥᱠᱩᱴᱟᱨ';

  @override
  String get exitTitle => 'Nexmile ᱠᱷᱚᱱ ᱚᱰᱚᱠᱟ?';

  @override
  String get exitBody => 'ᱟᱢ ᱥᱟᱹᱨᱤ ᱜᱮ ᱮᱯ ᱠᱷᱚᱱ ᱚᱰᱚᱠ ᱥᱟᱱᱟᱢ ᱠᱟᱱᱟ?';

  @override
  String get exitConfirm => 'ᱚᱰᱚᱠ';

  @override
  String cartSavedBanner(String amount) {
    return 'ᱱᱚᱶᱟ ᱚᱰᱟᱨ ᱨᱮ ᱟᱢᱟᱜ $amount ᱵᱟᱧᱪᱟᱣ ᱮᱱᱟ';
  }

  @override
  String get cartAddMoreItems => 'ᱟᱨᱦᱚᱸ ᱡᱤᱱᱤᱥ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String get cartAddNote => 'ᱨᱮᱥᱴᱚᱨᱮᱱᱴ ᱞᱟᱹᱜᱤᱫ ᱠᱟᱛᱷᱟ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String get cartOrderNoteHint =>
      'ᱡᱮᱞᱮᱠᱟ: ᱡᱟᱦᱟᱸ ᱨᱮ ᱦᱚᱸ ᱯᱮᱭᱟᱡ ᱵᱟᱝᱠᱷᱟᱱ ᱨᱟᱥᱩᱱ ᱵᱟᱝ';

  @override
  String get cartNoteSave => 'ᱥᱟᱺᱪᱟᱣ ᱢᱮ';

  @override
  String get cartNoCutlery => 'ᱪᱟᱢᱪ-ᱠᱟᱸᱴᱟ ᱟᱞᱚᱢ ᱠᱩᱞᱟ';

  @override
  String get cartNoCutleryThanks =>
      'ᱯᱞᱟᱥᱴᱤᱠ ᱡᱚᱵᱨᱟ ᱠᱚᱢ ᱨᱮ ᱜᱚᱲᱚ ᱮᱢ ᱞᱟᱹᱜᱤᱫ ᱥᱟᱨᱦᱟᱣ';

  @override
  String get cartSavingsCorner => 'ᱵᱟᱧᱪᱟᱣ ᱠᱚᱱᱟ';

  @override
  String get cartDeliveryInstructions => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱞᱟᱹᱜᱤᱫ ᱠᱟᱛᱷᱟ';

  @override
  String get cartInstructionsRider =>
      'ᱱᱚᱶᱟ ᱠᱚ ᱮᱥᱠᱟᱨ ᱟᱢᱟᱜ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱥᱟᱣᱛᱟ ᱜᱮ ᱧᱮᱞᱚᱜᱼᱟ';

  @override
  String get instructionLeaveAtDoor => 'ᱫᱩᱣᱟᱹᱨ ᱨᱮ ᱫᱚᱦᱚ ᱢᱮ';

  @override
  String get instructionNoBell => 'ᱜᱷᱟᱱᱴᱤ ᱟᱞᱚᱢ ᱨᱩᱭᱟ';

  @override
  String get instructionNoCall => 'ᱯᱷᱳᱱ ᱟᱞᱚᱢ ᱠᱚᱞᱟ';

  @override
  String get instructionSecurity => 'ᱥᱤᱠᱭᱩᱨᱤᱴᱤ ᱴᱷᱮᱱ ᱮᱢ ᱢᱮ';

  @override
  String get instructionPet => 'ᱚᱲᱟᱜ ᱨᱮ ᱯᱚᱥᱟ ᱡᱟᱱᱣᱟᱨ ᱢᱮᱱᱟᱭ';

  @override
  String get cartInclTaxes => 'ᱠᱷᱟᱡᱱᱟ ᱟᱨ ᱠᱷᱚᱨᱚᱡ ᱥᱟᱶᱛᱮ';

  @override
  String cartSavedTag(String amount) {
    return '$amount ᱵᱟᱧᱪᱟᱣ';
  }

  @override
  String get cartPayUsing => 'ᱯᱮᱢᱮᱱᱴ ᱞᱮᱠᱟᱱ';

  @override
  String get cartWalletAndCash => 'ᱣᱟᱞᱮᱴ + ᱱᱚᱜᱚᱫ';

  @override
  String cartCashRest(String amount) {
    return 'ᱥᱮᱴᱮᱨ ᱠᱷᱟᱱ $amount ᱮᱢ ᱢᱮ';
  }

  @override
  String get cartCashFull => 'ᱚᱰᱟᱨ ᱥᱮᱴᱮᱨ ᱠᱷᱟᱱ ᱴᱟᱠᱟ ᱮᱢ ᱢᱮ';

  @override
  String get cartCashNothing => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱨᱮ ᱡᱟᱦᱟᱸ ᱦᱚᱸ ᱮᱢ ᱵᱟᱝ ᱞᱟᱹᱠᱛᱤᱭᱟ';

  @override
  String get cartTotal => 'ᱡᱚᱛᱚ';

  @override
  String get cartPlaceOrder => 'ᱚᱰᱟᱨ ᱢᱮ';

  @override
  String cartDeliverTo(String place) {
    return '$place ᱨᱮ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ';
  }

  @override
  String get cartChange => 'ᱵᱚᱫᱚᱞ ᱢᱮ';

  @override
  String get cartNoAddress => 'ᱚᱠᱟᱨᱮ ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱦᱩᱭᱩᱜᱼᱟ?';

  @override
  String get cartNoAddressHint => 'ᱚᱰᱟᱨ ᱞᱟᱹᱜᱤᱫ ᱢᱤᱫ ᱴᱷᱤᱠᱱᱟ ᱥᱮᱞᱮᱫ ᱢᱮ';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant ᱠᱷᱚᱱ ᱟᱡ ᱛᱮ ᱤᱫᱤ ᱢᱮ';
  }

  @override
  String cartReadyIn(int minutes) {
    return '$minutes ᱜᱟᱱ ᱢᱤᱱᱤᱴ ᱨᱮ ᱛᱮᱭᱟᱨᱚᱜᱼᱟ';
  }

  @override
  String get cartChooseAddress => 'ᱰᱮᱞᱤᱵᱷᱟᱨᱤ ᱴᱷᱤᱠᱱᱟ ᱵᱟᱪᱷᱟᱣ ᱢᱮ';

  @override
  String get cartDone => 'ᱦᱩᱭᱮᱱᱟ';

  @override
  String get supportTitle => 'Nexmile ᱜᱚᱲᱚ';

  @override
  String get supportBubble => 'ᱜᱚᱲᱚ';

  @override
  String get supportAiLabel => 'AI ᱜᱚᱲᱚᱭᱤᱡ';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ᱴᱤᱢ';
  }

  @override
  String get supportDemoBanner =>
      'ᱰᱮᱢᱚ: ᱱᱚᱶᱟ ᱛᱮᱞᱟ ᱠᱚ ᱫᱚ ᱱᱟᱡᱩᱱᱟ ᱠᱟᱱᱟ᱾ ᱴᱷᱤᱠ ᱜᱚᱲᱚᱭᱤᱡ ᱫᱚ ᱦᱟᱲᱮ ᱵᱟᱝ ᱡᱚᱲᱟᱣ ᱟᱠᱟᱱᱟ᱾';

  @override
  String get supportEmptyTitle => 'ᱟᱞᱮ ᱪᱮᱫ ᱞᱮᱠᱟ ᱜᱚᱲᱚ ᱫᱟᱲᱮᱭᱟᱜ-ᱟᱞᱮ?';

  @override
  String get supportEmptyBody =>
      'ᱚᱰᱟᱨ, ᱴᱟᱠᱟ ᱮᱢ ᱟᱨ ᱵᱟᱝ ᱮᱴᱟᱜ ᱡᱟᱦᱟᱸ ᱠᱟᱛᱷᱟ ᱵᱟᱵᱚᱛ ᱠᱩᱞᱤ ᱢᱮ᱾ ᱯᱩᱭᱞᱩ ᱫᱚ ᱟᱞᱮᱭᱟᱜ AI ᱜᱚᱲᱚᱭᱤᱡ ᱛᱮᱞᱟ ᱮᱢᱟ, ᱟᱨ ᱡᱩᱫᱤ ᱩᱱᱤ ᱜᱚᱲᱚ ᱵᱟᱝ ᱫᱟᱲᱮᱭᱟᱜ-ᱟ, ᱮᱱᱠᱷᱟᱱ ᱟᱞᱮᱭᱟᱜ ᱴᱤᱢ ᱨᱮᱭᱟᱜ ᱢᱤᱫᱦᱚᱲ ᱦᱚᱲ ᱥᱟᱢᱵᱷᱟᱞᱟᱭ᱾';

  @override
  String get supportSuggestWhere => 'ᱤᱧᱟᱜ ᱚᱰᱟᱨ ᱚᱠᱟᱨᱮ ᱢᱮᱱᱟᱜ-ᱟ?';

  @override
  String get supportSuggestMissing => 'ᱛᱤᱸᱜᱩ ᱡᱤᱱᱤᱥ ᱵᱟᱹᱱᱩᱜ-ᱟ';

  @override
  String get supportSuggestRefund =>
      'ᱨᱩᱣᱟᱲ ᱴᱟᱠᱟ ᱵᱟᱵᱚᱛ ᱤᱧᱟᱜ ᱢᱤᱫᱴᱟᱝ ᱠᱩᱠᱞᱤ ᱢᱮᱱᱟᱜ-ᱟ';

  @override
  String get supportComposerHint => 'ᱢᱮᱥᱮᱡ ᱴᱟᱭᱤᱯ ᱢᱮ';

  @override
  String get supportSend => 'ᱠᱩᱞ ᱢᱮ';

  @override
  String get supportTyping => 'AI ᱜᱚᱲᱚᱭᱤᱡ ᱴᱟᱭᱤᱯ ᱠᱟᱱᱟᱭ…';

  @override
  String get supportNotSent => 'ᱵᱟᱝ ᱠᱩᱞ ᱞᱮᱱᱟ';

  @override
  String get supportTookTooLong => 'ᱟᱹᱰᱤ ᱡᱟᱹᱥᱛᱤ ᱚᱠᱛᱚ ᱞᱟᱹᱜ ᱮᱱᱟ᱾';

  @override
  String get supportSlowDown => 'ᱟᱨᱦᱚᱸ ᱢᱮᱥᱮᱡ ᱠᱩᱞ ᱞᱟᱦᱟ ᱛᱤᱸᱜᱩ ᱛᱟᱸᱜᱤ ᱢᱮ᱾';

  @override
  String get supportUnreachable =>
      'ᱱᱤᱛᱚᱜ ᱪᱮᱴ ᱥᱟᱶ ᱡᱚᱲᱟᱣ ᱵᱟᱝ ᱦᱩᱭ ᱫᱟᱲᱮᱭᱟᱜ ᱠᱟᱱᱟ᱾ ᱟᱞᱮ ᱴᱷᱮᱱ ᱠᱚᱞ ᱢᱮ, ᱵᱟᱝᱠᱷᱟᱱ ᱛᱤᱱᱟᱹᱜ ᱜᱟᱱ ᱢᱤᱱᱤᱴ ᱛᱟᱭᱚᱢ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get supportOffline =>
      'ᱟᱢ ᱚᱯᱷᱞᱟᱭᱤᱱ ᱢᱮᱱᱟᱢᱟ᱾ ᱱᱚᱶᱟ ᱫᱚ ᱟᱢᱟᱜ ᱢᱩᱪᱟᱹᱫ ᱥᱟᱺᱪᱟᱣ ᱟᱠᱟᱱ ᱪᱮᱴ ᱠᱟᱱᱟ᱾';

  @override
  String get supportClosed => 'ᱱᱚᱶᱟ ᱪᱮᱴ ᱵᱚᱸᱫᱚ ᱮᱱᱟ᱾';

  @override
  String get supportStartNew => 'ᱱᱟᱶᱟ ᱪᱮᱴ ᱮᱦᱚᱵ ᱢᱮ';

  @override
  String get supportTalkToPerson => 'ᱢᱤᱫᱦᱚᱲ ᱦᱚᱲ ᱥᱟᱶ ᱜᱟᱞᱚᱪ ᱢᱮ';

  @override
  String get supportMarkSolved => 'ᱥᱚᱢᱟᱫᱷᱟᱱ ᱮᱱᱟ';

  @override
  String get supportHelpful => 'ᱜᱚᱲᱚ ᱮᱱᱟ';

  @override
  String get supportNotHelpful => 'ᱵᱟᱝ ᱜᱚᱲᱚ ᱞᱮᱱᱟ';

  @override
  String get supportNeedHelp => 'ᱜᱚᱲᱚ ᱞᱟᱹᱠᱛᱤ ᱢᱮᱱᱟᱜ-ᱟ?';

  @override
  String get supportChatWithUs => 'ᱟᱞᱮ ᱥᱟᱶ ᱪᱮᱴ ᱢᱮ';

  @override
  String get supportChatWithUsBody =>
      'ᱟᱞᱮᱭᱟᱜ AI ᱜᱚᱲᱚᱭᱤᱡ ᱛᱤᱸᱜᱩ ᱥᱮᱠᱮᱱᱰ ᱨᱮ ᱛᱮᱞᱟ ᱮᱢᱟ, ᱟᱨ ᱞᱟᱹᱠᱛᱤ ᱠᱷᱟᱱ ᱢᱤᱫᱦᱚᱲ ᱦᱚᱲ ᱥᱟᱢᱵᱷᱟᱞᱟᱭ᱾';

  @override
  String get supportActionFailed =>
      'ᱱᱚᱶᱟ ᱵᱟᱝ ᱦᱩᱭ ᱫᱟᱲᱮ ᱞᱮᱱᱟ᱾ ᱫᱩᱦᱲᱟᱹ ᱠᱩᱨᱩᱢᱩᱴᱩ ᱢᱮ᱾';

  @override
  String get supportOrderNotFound => 'ᱱᱚᱶᱟ ᱚᱨᱰᱟᱨ ᱟᱢᱟᱜ ᱮᱠᱟᱣᱩᱱᱴ ᱨᱮ ᱵᱟᱝ ᱧᱟᱢ ᱞᱮᱱᱟ᱾';

  @override
  String get supportOrderLookupDown =>
      'ᱱᱤᱛᱚᱜ ᱱᱚᱶᱟ ᱚᱨᱰᱟᱨ ᱵᱟᱝ ᱧᱮᱞ ᱫᱟᱲᱮᱭᱟᱜ ᱠᱟᱱᱟ᱾ ᱟᱢ ᱟᱢᱟᱜ ᱠᱩᱠᱞᱤ ᱚᱞ ᱫᱟᱲᱮᱭᱟᱜ ᱠᱟᱱᱟ᱾';

  @override
  String get restaurantNew => 'ᱱᱟᱶᱟ';

  @override
  String get walletHideBalance => 'ᱵᱮᱞᱮᱱᱥ ᱩᱠᱩ ᱢᱮ';

  @override
  String get walletShowBalance => 'ᱵᱮᱞᱮᱱᱥ ᱩᱫᱩᱜ ᱢᱮ';

  @override
  String get walletBalanceHiddenLabel => 'ᱵᱮᱞᱮᱱᱥ ᱩᱠᱩ ᱟᱠᱟᱱᱟ';

  @override
  String walletUpdatedAt(String time) {
    return '$time ᱨᱮ ᱟᱯᱰᱮᱴ ᱮᱱᱟ';
  }

  @override
  String walletBelowMin(String amount) {
    return 'ᱠᱚᱢ ᱛᱮ ᱠᱚᱢ $amount ᱥᱮᱞᱮᱫ ᱢᱮ';
  }

  @override
  String walletAboveMax(String amount) {
    return 'ᱵᱟᱲᱛᱤ ᱛᱮ ᱵᱟᱲᱛᱤ $amount ᱥᱮᱞᱮᱫ ᱫᱟᱲᱮᱭᱟᱜᱼᱟ';
  }

  @override
  String get walletOpeningPayment => 'ᱯᱮᱢᱮᱱᱴ ᱡᱷᱤᱡᱽᱚᱜ ᱠᱟᱱᱟ…';

  @override
  String get walletConfirmingPayment => 'ᱯᱮᱢᱮᱱᱴ ᱡᱟᱸᱪ ᱦᱩᱭᱩᱜ ᱠᱟᱱᱟ…';

  @override
  String get walletTransactions => 'ᱞᱮᱱᱫᱮᱱ';

  @override
  String get walletFilterAll => 'ᱡᱚᱛᱚ';

  @override
  String get walletFilterAdded => 'ᱥᱮᱞᱮᱫ ᱴᱟᱠᱟ';

  @override
  String get walletFilterSpent => 'ᱠᱷᱚᱨᱚᱪ ᱴᱟᱠᱟ';

  @override
  String get walletSearch => 'ᱯᱟᱱᱛᱮ';

  @override
  String get walletSearchHint => 'ᱚᱰᱟᱨ ᱱᱟᱢᱵᱟᱨ ᱵᱟᱝᱠᱷᱟᱱ ID ᱯᱟᱱᱛᱮ ᱢᱮ';

  @override
  String get walletDateFilter => 'ᱢᱟᱹᱦᱤᱛ ᱛᱮ ᱯᱷᱤᱞᱴᱟᱨ ᱢᱮ';

  @override
  String get walletClearFilters => 'ᱯᱷᱤᱞᱴᱟᱨ ᱚᱪᱚᱜ ᱢᱮ';

  @override
  String get walletNoMatches => 'ᱟᱢᱟᱜ ᱯᱷᱤᱞᱴᱟᱨ ᱞᱮᱠᱟᱛᱮ ᱡᱟᱦᱟᱸ ᱞᱮᱱᱫᱮᱱ ᱵᱟᱝ ᱧᱟᱢ ᱞᱮᱱᱟ';

  @override
  String get walletEmptyTitle => 'ᱦᱟᱲᱮ ᱡᱟᱦᱟᱸ ᱞᱮᱱᱫᱮᱱ ᱵᱟᱝᱟ';

  @override
  String get walletEmptyBody =>
      'ᱟᱢ ᱥᱮᱞᱮᱫ ᱠᱟᱱ, ᱚᱰᱟᱨ ᱨᱮ ᱠᱷᱚᱨᱚᱪ ᱠᱟᱱ ᱵᱟᱝᱠᱷᱟᱱ ᱨᱩᱣᱟᱲ ᱴᱟᱠᱟ ᱞᱮᱠᱟᱛᱮ ᱧᱟᱢ ᱠᱟᱱ ᱴᱟᱠᱟ ᱱᱚᱰᱮ ᱩᱫᱩᱜᱚᱜᱼᱟ᱾';

  @override
  String get walletToday => 'ᱛᱮᱦᱮᱧ';

  @override
  String get walletYesterday => 'ᱦᱚᱞᱟ';

  @override
  String walletLatestOnly(int count) {
    return 'ᱟᱢᱟᱜ ᱱᱟᱶᱟ $count ᱞᱮᱱᱫᱮᱱ ᱩᱫᱩᱜᱚᱜ ᱠᱟᱱᱟ';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ᱚᱰᱟᱨ $number ᱞᱟᱹᱜᱤᱫ ᱨᱩᱣᱟᱲ ᱴᱟᱠᱟ';
  }

  @override
  String get walletDetailsTitle => 'ᱞᱮᱱᱫᱮᱱ ᱨᱮᱭᱟᱜ ᱠᱷᱚᱵᱚᱨ';

  @override
  String get walletDetailDate => 'ᱢᱟᱹᱦᱤᱛ ᱟᱨ ᱚᱠᱛᱚ';

  @override
  String get walletDetailId => 'ᱞᱮᱱᱫᱮᱱ ID';

  @override
  String get walletDetailType => 'ᱞᱮᱠᱟᱱ';

  @override
  String get walletDetailMethod => 'ᱯᱮᱢᱮᱱᱴ ᱞᱮᱠᱟᱱ';

  @override
  String get walletDetailStatus => 'ᱫᱚᱥᱟ';

  @override
  String get walletDetailOrder => 'ᱚᱰᱟᱨ';

  @override
  String get walletDetailReference => 'ᱯᱮᱢᱮᱱᱴ ᱨᱮᱯᱷᱟᱨᱮᱱᱥ';

  @override
  String get walletDetailBalanceAfter => 'ᱞᱮᱱᱫᱮᱱ ᱛᱟᱭᱚᱢ ᱵᱮᱞᱮᱱᱥ';

  @override
  String get walletCredit => 'ᱠᱨᱮᱰᱤᱴ';

  @override
  String get walletDebit => 'ᱰᱮᱵᱤᱴ';

  @override
  String get walletStatusSuccess => 'ᱦᱩᱭ ᱮᱱᱟ';

  @override
  String get walletStatusPending => 'ᱛᱟᱸᱜᱤ ᱟᱠᱟᱱ';

  @override
  String get walletStatusFailed => 'ᱵᱟᱝ ᱦᱩᱭ ᱞᱮᱱᱟ';

  @override
  String get walletMethodOnline => 'ᱚᱱᱞᱟᱭᱤᱱ ᱯᱮᱢᱮᱱᱴ';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'ᱠᱟᱨᱰ';

  @override
  String get walletMethodNetbanking => 'ᱱᱮᱴ ᱵᱮᱝᱠᱤᱝ';

  @override
  String get walletMethodRefund => 'ᱣᱟᱞᱮᱴ ᱨᱮ ᱨᱩᱣᱟᱲ ᱴᱟᱠᱟ';

  @override
  String get walletCopyId => 'ID ᱠᱚᱯᱤ ᱢᱮ';

  @override
  String get walletIdCopied => 'ᱞᱮᱱᱫᱮᱱ ID ᱠᱚᱯᱤ ᱮᱱᱟ';

  @override
  String get walletShareDetails => 'ᱠᱷᱚᱵᱚᱨ ᱥᱮᱭᱟᱨ ᱢᱮ';
}
