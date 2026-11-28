// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'এই ঘৰটো পূৰণ কৰা আৱশ্যক';

  @override
  String get tagline => 'দ্ৰুত ডেলিভাৰী। সতেজ হাঁহি।';

  @override
  String get chooseLanguageTitle => 'আপোনাৰ ভাষা বাছনি কৰক';

  @override
  String get chooseLanguageSubtitle =>
      'আপুনি সহজ অনুভৱ কৰা ভাষা বাছনি কৰক। আপুনি ইয়াক যিকোনো সময়তে ছেটিংছত সলনি কৰিব পাৰে।';

  @override
  String get searchLanguageHint => 'ভাষা বিচাৰক';

  @override
  String get noLanguageFound => 'কোনো ভাষা পোৱা নগ\'ল';

  @override
  String languagesAvailable(int count) {
    return '$countটা ভাষা উপলব্ধ';
  }

  @override
  String get continueLabel => 'আগবাঢ়ক';

  @override
  String get selectedLabel => 'বাছনি কৰা হৈছে';

  @override
  String get defaultLabel => 'ডিফল্ট';

  @override
  String get homeTitle => 'Nexmile লৈ স্বাগতম';

  @override
  String get homeSubtitle =>
      'সতেজ মুদিসামগ্ৰী, গৰম খাদ্য আৰু দৈনন্দিন প্ৰয়োজনীয় সামগ্ৰী আপোনাৰ ওচৰৰ দোকানৰ পৰা।';

  @override
  String get changeLanguage => 'ভাষা সলনি কৰক';

  @override
  String get languageUpdated => 'ভাষা সলনি কৰা হ\'ল';

  @override
  String get appLanguageLabel => 'এপৰ ভাষা';

  @override
  String greetingNamed(String name) {
    return 'নমস্কাৰ, $name';
  }

  @override
  String get loginTitle => 'Nexmile ত ছাইন ইন কৰক';

  @override
  String get loginSubtitle =>
      'আপোনাৰ ইমেইল বা মোবাইল নম্বৰ দিয়ক, আমি সত্যাপন ক\'ড পঠিয়াম।';

  @override
  String get emailOrPhoneLabel => 'ইমেইল বা মোবাইল নম্বৰ';

  @override
  String get emailOrPhoneHint => 'name@example.com বা 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'শুদ্ধ ইমেইল ঠিকনা বা 10 সংখ্যাৰ মোবাইল নম্বৰ দিয়ক';

  @override
  String get loginHeadline => 'আপোনাৰ ওচৰৰ দোকানৰ গৰম খাদ্য, দ্ৰুত ডেলিভাৰী';

  @override
  String get loginOrSignUp => 'লগ ইন বা ছাইন আপ কৰক';

  @override
  String get loginEmailHint => 'আপোনাৰ ইমেইল ঠিকনা দিয়ক';

  @override
  String get invalidEmail => 'শুদ্ধ ইমেইল ঠিকনা দিয়ক';

  @override
  String get sendCode => 'ক\'ড পঠিয়াওক';

  @override
  String get agreeToTermsOnContinue =>
      'আগবাঢ়িলে আপুনি আমাৰ সেৱাৰ চৰ্তাৱলী আৰু গোপনীয়তা নীতিত সন্মত হয়।';

  @override
  String get otpTitle => 'এইজন আপুনিয়েই বুলি সত্যাপন কৰক';

  @override
  String otpSubtitle(String target) {
    return '$target লৈ পঠোৱা 6 সংখ্যাৰ ক\'ড দিয়ক';
  }

  @override
  String get verifyCode => 'সত্যাপন কৰক';

  @override
  String get resendCode => 'ক\'ড পুনৰ পঠিয়াওক';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ছেকেণ্ডত পুনৰ পঠিয়াওক';
  }

  @override
  String get codeResent => 'নতুন ক\'ড পঠোৱা হৈছে';

  @override
  String get incorrectCode =>
      'এই ক\'ডটো ভুল বা ইয়াৰ ম্যাদ উকলিছে। নতুন ক\'ড বিচাৰক।';

  @override
  String get enterFullCode => 'সম্পূৰ্ণ 6টা সংখ্যা দিয়ক';

  @override
  String get accountSuspended =>
      'এই একাউণ্টটো নিলম্বিত কৰা হৈছে। অনুগ্ৰহ কৰি সহায়ৰ সৈতে যোগাযোগ কৰক।';

  @override
  String get tooManyAttempts =>
      'বহুতবাৰ চেষ্টা কৰা হ\'ল। অনুগ্ৰহ কৰি কিছু সময়ৰ পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get sessionExpired =>
      'আপোনাৰ ছেছনৰ ম্যাদ উকলিছে। অনুগ্ৰহ কৰি পুনৰ ছাইন ইন কৰক।';

  @override
  String get networkError =>
      'ইণ্টাৰনেট সংযোগ নাই। সংযোগ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get developmentCode => 'ডেভেলপমেণ্ট ক\'ড';

  @override
  String get signOut => 'ছাইন আউট';

  @override
  String get signedOut => 'আপুনি ছাইন আউট হৈছে';

  @override
  String get somethingWentWrong =>
      'কিবা ভুল হ\'ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get profileTitle => 'প্ৰফাইল';

  @override
  String get viewProfile => 'প্ৰফাইল চাওক';

  @override
  String get nameLabel => 'নাম';

  @override
  String get emailLabel => 'ইমেইল';

  @override
  String get mobileLabel => 'মোবাইল নম্বৰ';

  @override
  String get accountStatusLabel => 'একাউণ্টৰ অৱস্থা';

  @override
  String get statusActive => 'সক্ৰিয়';

  @override
  String get statusPending => 'বিচাৰাধীন';

  @override
  String get statusSuspended => 'নিলম্বিত';

  @override
  String get verifiedLabel => 'সত্যাপিত';

  @override
  String get notProvided => 'যোগ কৰা হোৱা নাই';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get navHome => 'হ\'ম';

  @override
  String get navSearch => 'বিচাৰক';

  @override
  String get navOrders => 'অৰ্ডাৰ';

  @override
  String get cancelLabel => 'বাতিল কৰক';

  @override
  String get deliverTo => 'ডেলিভাৰীৰ ঠিকনা';

  @override
  String get searchDishesHint => 'খাদ্য বা ৰেষ্টুৰেণ্ট বিচাৰক';

  @override
  String get searchTitle => 'বিচাৰক';

  @override
  String get searchNoResultsTitle => 'একো পোৱা নগ\'ল';

  @override
  String get searchNoResultsSubtitle =>
      'আন কোনো খাদ্য, ৰন্ধন শৈলী বা ৰেষ্টুৰেণ্টৰ নাম চেষ্টা কৰক।';

  @override
  String get cravingTitle => 'আজি কি খাবলৈ মন গৈছে?';

  @override
  String get offersTitle => 'আপোনাৰ বাবে অফাৰ';

  @override
  String get restaurantsNearby => 'আপোনাৰ ওচৰৰ ৰেষ্টুৰেণ্ট';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ৰেষ্টুৰেণ্ট',
      one: '1টা ৰেষ্টুৰেণ্ট',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'ইয়াত এতিয়াও একো নাই';

  @override
  String get noRestaurantsSubtitle => 'আন এটা শ্ৰেণী চাওক বা ফিল্টাৰ আঁতৰাওক।';

  @override
  String minutesAway(int minutes) {
    return '$minutes মিনিট';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance কিমি';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ৰেটিং',
      one: '1 ৰেটিং',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'দুজনৰ বাবে ₹$amount';
  }

  @override
  String get freeDelivery => 'বিনামূলীয়া ডেলিভাৰী';

  @override
  String percentOff(int percent) {
    return '$percent% ৰেহাই';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'আপোনাৰ অৰ্ডাৰত $percent% ৰেহাই';
  }

  @override
  String get vegOnly => 'কেৱল নিৰামিষ';

  @override
  String get bestseller => 'সৰ্বাধিক বিক্ৰীত';

  @override
  String get addLabel => 'যোগ';

  @override
  String get noVegDishesTitle => 'ইয়াত নিৰামিষ খাদ্য নাই';

  @override
  String get noVegDishesSubtitle =>
      'সম্পূৰ্ণ মেনু চাবলৈ নিৰামিষ ফিল্টাৰ বন্ধ কৰক।';

  @override
  String get replaceCartTitle => 'নতুন কাৰ্ট আৰম্ভ কৰিবনে?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'আপোনাৰ কাৰ্টত $restaurantৰ সামগ্ৰী আছে। ইয়াক যোগ কৰিলে সেয়া আঁতৰি যাব।';
  }

  @override
  String get replaceCartConfirm => 'আঁতৰাই যোগ কৰক';

  @override
  String get cartTitle => 'আপোনাৰ কাৰ্ট';

  @override
  String get cartEmptyTitle => 'আপোনাৰ কাৰ্ট খালী';

  @override
  String get cartEmptySubtitle =>
      'আৰম্ভ কৰিবলৈ কোনো ৰেষ্টুৰেণ্টৰ পৰা খাদ্য যোগ কৰক।';

  @override
  String get browseRestaurants => 'ৰেষ্টুৰেণ্ট চাওক';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা বস্তু',
      one: '1টা বস্তু',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'কাৰ্ট চাওক';

  @override
  String get itemTotal => 'সামগ্ৰীৰ মুঠ';

  @override
  String get deliveryFeeLabel => 'ডেলিভাৰী মাচুল';

  @override
  String get taxesAndCharges => 'কৰ আৰু মাচুল';

  @override
  String get freeLabel => 'বিনামূলীয়া';

  @override
  String get toPay => 'দিব লগীয়া';

  @override
  String placeOrderFor(String amount) {
    return 'অৰ্ডাৰ কৰক · $amount';
  }

  @override
  String get ordersTitle => 'আপোনাৰ অৰ্ডাৰ';

  @override
  String get ordersEmptyTitle => 'এতিয়াও কোনো অৰ্ডাৰ নাই';

  @override
  String get ordersEmptySubtitle => 'আপোনাৰ আগৰ অৰ্ডাৰবোৰ ইয়াত দেখা যাব।';

  @override
  String get reorder => 'পুনৰ অৰ্ডাৰ';

  @override
  String orderTitle(String id) {
    return 'অৰ্ডাৰ $id';
  }

  @override
  String get orderPlacedTitle => 'অৰ্ডাৰ হ\'ল';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'প্ৰায় $minutes মিনিটত পাব।';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return 'আপোনাৰ অৰ্ডাৰ $restaurant লৈ পঠোৱা হ\'ল।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'প্ৰায় $minutes মিনিটত সাজু হ\'ব।';
  }

  @override
  String get trackYourOrder => 'অৰ্ডাৰ ট্ৰেক কৰক';

  @override
  String get couponApplyTitle => 'কুপন প্ৰয়োগ কৰক';

  @override
  String get couponCodeLabel => 'কুপন ক\'ড';

  @override
  String get couponApply => 'প্ৰয়োগ কৰক';

  @override
  String couponAppliedTitle(String code) {
    return '$code প্ৰয়োগ কৰা হ\'ল';
  }

  @override
  String couponSaving(String amount) {
    return 'আপোনাৰ $amount বচিব';
  }

  @override
  String get couponRemove => 'আঁতৰাওক';

  @override
  String searchFor(String term) {
    return '\"$term\" বিচাৰক';
  }

  @override
  String get vegModeBadge => 'বিশুদ্ধ নিৰামিষ';

  @override
  String trackingExpectedBy(String time) {
    return '$time ৰ ভিতৰত পাব';
  }

  @override
  String get orderAgainTitle => 'পুনৰ অৰ্ডাৰ কৰক';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + আৰু $countটা',
      one: '$first + আৰু 1টা',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max মিনিট';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 ৰ ভিতৰত $rating ৰেটিং';
  }

  @override
  String get reorderReplaceTitle => 'আপোনাৰ কাৰ্ট সলনি কৰিব নেকি?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurantৰ আপোনাৰ কাৰ্টখন এই অৰ্ডাৰৰ ব্যঞ্জনেৰে সলনি কৰা হ\'ব।';
  }

  @override
  String get reorderReplace => 'সলনি কৰক';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes এতিয়া পোৱা নাযায়, সেয়েহে সেইবোৰ বাদ দিয়া হ\'ল।',
      one: '$dishes এতিয়া পোৱা নাযায়, সেয়েহে ইয়াক বাদ দিয়া হ\'ল।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'এই ব্যঞ্জনবোৰৰ এটাও এতিয়া পোৱা নাযায়।';

  @override
  String get searchShort => 'বিচাৰক';

  @override
  String get favouriteSave => 'প্ৰিয় তালিকাত সাঁচি থওক';

  @override
  String get restaurantAbout => 'এই ৰেষ্টুৰেণ্টৰ বিষয়ে';

  @override
  String ratingByCount(String count) {
    return '$count জনৰ ৰেটিং';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা অফাৰ',
      one: '1টা অফাৰ',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile ত $restaurantৰ পৰা অৰ্ডাৰ কৰক';
  }

  @override
  String get ordersSearchHint => 'ৰেষ্টুৰেণ্ট বা ব্যঞ্জনৰ নামেৰে বিচাৰক…';

  @override
  String get ordersNoMatch =>
      'সেই নামৰ কোনো ৰেষ্টুৰেণ্ট বা ব্যঞ্জনৰ অৰ্ডাৰ নাই।';

  @override
  String orderPlacedOn(String date) {
    return '$date ত অৰ্ডাৰ কৰা হৈছিল';
  }

  @override
  String get viewMenu => 'মেনু চাওক';

  @override
  String get navHistory => 'ইতিহাস';

  @override
  String get exploreMore => 'আৰু চাওক';

  @override
  String get exploreTopRated => 'শীৰ্ষ ৰেটিং';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'আপোনালৈ ডেলিভাৰী কৰা $countটা ৰেষ্টুৰেণ্ট',
      one: 'আপোনালৈ ডেলিভাৰী কৰা 1টা ৰেষ্টুৰেণ্ট',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ডেলিভাৰী কেনে আছিল?';

  @override
  String get rateHowWasFood => 'খাদ্য কেনে আছিল?';

  @override
  String get rateWordTerrible => 'অতি বেয়া';

  @override
  String get rateWordBad => 'বেয়া';

  @override
  String get rateWordOkay => 'চলিব';

  @override
  String get rateWordGood => 'ভাল';

  @override
  String get rateWordLoved => 'বৰ ভাল লাগিল!';

  @override
  String get rateWhatWentWrong => 'কি ভুল হ\'ল?';

  @override
  String get rateWhatYouLiked => 'আপোনাৰ কি ভাল লাগিল?';

  @override
  String get rateRiderNoteHint => 'ডেলিভাৰীৰ বিষয়ে টোকা (ঐচ্ছিক)';

  @override
  String get rateReviewHeading => 'পৰ্যালোচনা লিখক';

  @override
  String get rateFoodFirst => 'পঠিয়াবলৈ খাদ্যৰ ৰেটিং দিয়ক';

  @override
  String get rateYouRated => 'আপুনি এই অৰ্ডাৰ ৰেট কৰিছে';

  @override
  String get ratePromptLater => 'এতিয়া নহয়';

  @override
  String get tagTasty => 'সুস্বাদু';

  @override
  String get tagFreshHot => 'গৰম আৰু সতেজ';

  @override
  String get tagGoodPortion => 'পৰিমাণ ভাল';

  @override
  String get tagGoodPackaging => 'ভাল পেকিং';

  @override
  String get tagValueForMoney => 'দামৰ উপযুক্ত';

  @override
  String get tagHygienic => 'পৰিষ্কাৰ-পৰিচ্ছন্ন';

  @override
  String get tagColdFood => 'চেঁচা খাদ্য';

  @override
  String get tagPoorTaste => 'সোৱাদ ভাল নাছিল';

  @override
  String get tagSmallPortion => 'পৰিমাণ কম';

  @override
  String get tagWrongItems => 'ভুল বস্তু';

  @override
  String get tagMissingItems => 'কিছু বস্তু নাছিল';

  @override
  String get tagPoorPackaging => 'বেয়া পেকিং';

  @override
  String get tagTooOily => 'বেছি তেল বা জলকীয়া';

  @override
  String get tagOnTime => 'সময়মতে';

  @override
  String get tagPolite => 'ভদ্ৰ';

  @override
  String get tagFollowedInstructions => 'নিৰ্দেশনা মানিলে';

  @override
  String get tagCarefulHandling => 'খাদ্য যত্নেৰে আনিলে';

  @override
  String get tagGoodCommunication => 'মোক খবৰ দি থাকিল';

  @override
  String get tagLate => 'পলমকৈ ডেলিভাৰী';

  @override
  String get tagRude => 'অভদ্ৰ ব্যৱহাৰ';

  @override
  String get tagIgnoredInstructions => 'নিৰ্দেশনা নামানিলে';

  @override
  String get tagFoodSpilled => 'খাদ্য বাগৰি পৰিছিল';

  @override
  String get tagAskedExtraMoney => 'অতিৰিক্ত টকা বিচাৰিলে';

  @override
  String get tagUnprofessional => 'অপেছাদাৰী আচৰণ';

  @override
  String rateDeliveredBy(String name) {
    return '$name এ ডেলিভাৰী কৰিলে';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurantৰ পৰা';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurantৰ পৰা কৰা আপোনাৰ অৰ্ডাৰ কেনে আছিল?';
  }

  @override
  String get orderDeliveredTitle => 'ডেলিভাৰ হ\'ল';

  @override
  String get orderDeliveredSubtitle => 'খাদ্য উপভোগ কৰক।';

  @override
  String get statusOrderPlaced => 'অৰ্ডাৰ হ\'ল';

  @override
  String get statusPreparing => 'খাদ্য প্ৰস্তুত হৈ আছে';

  @override
  String get statusOnTheWay => 'বাটত আছে';

  @override
  String get statusDelivered => 'ডেলিভাৰ হ\'ল';

  @override
  String get keepBrowsing => 'চাই থাকক';

  @override
  String get backToHome => 'হ\'মলৈ উভতি যাওক';

  @override
  String get prototypeNotice =>
      'নমুনা ষ্ট\'ৰফ্ৰণ্ট — প্ৰকৃত দোকান কেটেলগ APIৰ সৈতে আহিব।';

  @override
  String get prototypeCheckoutNotice =>
      'এইটো এটা প্ৰট\'টাইপ। কোনো ধন লোৱা নহয় আৰু প্ৰকৃত অৰ্ডাৰো নহয়।';

  @override
  String get prototypeTrackingNotice => 'প্ৰট\'টাইপৰ বাবে ট্ৰেকিং কৃত্ৰিম।';

  @override
  String get locationTitle => 'ক\'ত ডেলিভাৰী কৰিব লাগে?';

  @override
  String get locationSubtitle =>
      'Nexmile কেৱল 1 কিমিৰ ভিতৰৰ দোকানৰ পৰা ডেলিভাৰী কৰে, সেয়েহে আপোনাৰ সঠিক ঠাই লাগে।';

  @override
  String get locationReasonRadiusTitle => '1 কিমিৰ ভিতৰৰ দোকান';

  @override
  String get locationReasonRadiusBody =>
      'য\'ৰ পৰা খাদ্য গৰম হৈ পাব, কেৱল সেই ৰন্ধনশালাবোৰেই দেখুৱাওঁ।';

  @override
  String get locationReasonAccuracyTitle => 'শুদ্ধ দুৱাৰলৈ';

  @override
  String get locationReasonAccuracyBody =>
      'সঠিক পিন থাকিলে ডেলিভাৰী পাৰ্টনাৰে ফোন নকৰাকৈয়ে আপোনাক বিচাৰি পায়।';

  @override
  String get locationReasonPrivacyTitle => 'কেৱল এপ ব্যৱহাৰৰ সময়ত';

  @override
  String get locationReasonPrivacyBody =>
      'আমি পটভূমিত আপোনাক ট্ৰেক নকৰোঁ, আৰু ঠিকনা আপুনি নিজেও লিখিব পাৰে।';

  @override
  String get allowLocation => 'অৱস্থানৰ অনুমতি দিয়ক';

  @override
  String get enterAddressManually => 'মই নিজেই ঠিকনা লিখিম';

  @override
  String get locationDenied =>
      'অৱস্থানৰ অনুমতি পোৱা নগ\'ল। আপুনি নিজেই পিন বহুৱাব পাৰে।';

  @override
  String get locationDeniedForever =>
      'Nexmile ৰ বাবে অৱস্থান বন্ধ আছে। ছেটিংছত চালু কৰক বা পিন নিজে বহুৱাওক।';

  @override
  String get locationServiceOff => 'এই ডিভাইচত অৱস্থান বন্ধ আছে।';

  @override
  String get locationUnavailable =>
      'অৱস্থান পোৱা নগ\'ল। অনুগ্ৰহ কৰি পিন নিজে বহুৱাওক।';

  @override
  String permStepCount(int step, int total) {
    return '$total ৰ $step';
  }

  @override
  String get permNotNow => 'এতিয়া নহয়';

  @override
  String get permLocationTitle => 'আপোনাৰ ওচৰৰ খাদ্য বিচাৰক';

  @override
  String get permNotifyTitle => 'অৰ্ডাৰৰ কোনো আপডেট নেহেৰুৱাব';

  @override
  String get permNotifyBody =>
      'আপোনাৰ অৰ্ডাৰ কেতিয়া গ্ৰহণ কৰা হয়, পিকআপ কৰা হয় আৰু আপোনাৰ দুৱাৰত আহি পায়, সেয়া জানিবলৈ নোটিফিকেচন চালু কৰক।';

  @override
  String get permNotifyLiveTitle => 'লাইভ অৰ্ডাৰ আপডেট';

  @override
  String get permNotifyLiveBody =>
      'গ্ৰহণ কৰা হ\'ল, ৰন্ধা হৈছে, পিকআপ হ\'ল, ডেলিভাৰ হ\'ল।';

  @override
  String get permNotifyRiderTitle => 'ৰাইডাৰ আপোনাৰ দুৱাৰত';

  @override
  String get permNotifyRiderBody =>
      'এপ চাই নাথাকিও কেতিয়া ওলাই আহিব লাগে জানিব।';

  @override
  String get permNotifyControlTitle => 'নিয়ন্ত্ৰণ আপোনাৰ হাতত';

  @override
  String get permNotifyControlBody =>
      'যিকোনো সময়তে ফোনৰ ছেটিংছত নোটিফিকেচন বন্ধ কৰিব পাৰে।';

  @override
  String get permNotifyAllow => 'নোটিফিকেচন চালু কৰক';

  @override
  String get openSettings => 'ছেটিংছ';

  @override
  String get pinLocationTitle => 'আপোনাৰ ডেলিভাৰী পিন বহুৱাওক';

  @override
  String get deliveryRadiusHint =>
      'বৃত্তটোৱে Nexmile এ ডেলিভাৰী কৰা 1 কিমি দেখুৱাইছে।';

  @override
  String get useMyLocation => 'মোৰ অৱস্থান ব্যৱহাৰ কৰক';

  @override
  String get deliveringHere => 'ইয়াত ডেলিভাৰী';

  @override
  String get dragToAdjust => 'পিন সলনি কৰিবলৈ মানচিত্ৰ টানক';

  @override
  String get confirmLocation => 'অৱস্থান নিশ্চিত কৰক';

  @override
  String get addressDetailsTitle => 'ঠিকনাৰ বিৱৰণ';

  @override
  String get addressDetailsSubtitle =>
      'শুদ্ধ দুৱাৰত উপনীত হ\'বলৈ ঘৰৰ নম্বৰ আৰু চিন যোগ কৰক।';

  @override
  String get pinnedLocation => 'চিহ্নিত অৱস্থান';

  @override
  String get changePin => 'সলনি কৰক';

  @override
  String get saveAddressAs => 'এই ঠিকনা এনেদৰে সাঁচি থওক';

  @override
  String get labelHome => 'ঘৰ';

  @override
  String get labelWork => 'কাৰ্যালয়';

  @override
  String get labelOther => 'অন্যান্য';

  @override
  String get addressLine1Label => 'ঘৰ, ফ্লেট বা অট্টালিকা';

  @override
  String get addressLine1Hint => '12A, গ্ৰীন ৰেছিডেন্সি';

  @override
  String get addressLine2Label => 'পথ বা অঞ্চল';

  @override
  String get addressLine2Hint => '২য় এভিনিউ, আন্না নগৰ';

  @override
  String get landmarkLabel => 'চিন';

  @override
  String get landmarkHint => 'বাছ ষ্টপৰ বিপৰীতে';

  @override
  String get cityLabel => 'চহৰ';

  @override
  String get stateLabel => 'ৰাজ্য';

  @override
  String get pincodeLabel => 'পিন ক\'ড';

  @override
  String get invalidPincode => 'শুদ্ধ 6 সংখ্যাৰ পিন ক\'ড দিয়ক';

  @override
  String get contactNameLabel => 'যোগাযোগৰ নাম';

  @override
  String get contactPhoneLabel => 'যোগাযোগৰ নম্বৰ';

  @override
  String get invalidMobileNumber => 'শুদ্ধ 10 সংখ্যাৰ মোবাইল নম্বৰ দিয়ক';

  @override
  String get makeDefaultAddress => 'ডিফল্টভাৱে ইয়াতেই ডেলিভাৰী';

  @override
  String get saveAddress => 'ঠিকনা সাঁচি থওক';

  @override
  String get addressSaved => 'ঠিকনা সাঁচি থোৱা হ\'ল';

  @override
  String get addressBookTitle => 'ডেলিভাৰীৰ ঠিকনা';

  @override
  String get manageAddresses => 'সাঁচি থোৱা ঠিকনা পৰিচালনা কৰক';

  @override
  String get noAddressesTitle => 'এতিয়াও কোনো ঠিকনা নাই';

  @override
  String get noAddressesSubtitle =>
      'আপোনালৈ ডেলিভাৰী কৰা দোকান দেখুৱাবলৈ এটা ঠিকনা যোগ কৰক।';

  @override
  String get addAddress => 'ঠিকনা যোগ কৰক';

  @override
  String get setAsDefault => 'ডিফল্ট কৰক';

  @override
  String get editLabel => 'সম্পাদনা কৰক';

  @override
  String get addressUpdated => 'ঠিকনা আপডেট হ\'ল';

  @override
  String get deleteLabel => 'মচক';

  @override
  String get deleteAddressTitle => 'এই ঠিকনা মচিব?';

  @override
  String get deleteAddressMessage => 'আপুনি পিছত পুনৰ যোগ কৰিব পাৰিব।';

  @override
  String get rescueDealsTitle => 'ফুড ৰেছকিউ';

  @override
  String get notTakingOrders => 'অৰ্ডাৰ লোৱা হোৱা নাই';

  @override
  String get closedRightNow => 'এতিয়া বন্ধ';

  @override
  String minimumOrder(String amount) {
    return 'নূন্যতম $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count বাকী';
  }

  @override
  String get soldOut => 'শেষ হৈ গ’ল';

  @override
  String get menuEmptyTitle => 'এতিয়াও কোনো ব্যঞ্জন নাই';

  @override
  String get menuEmptySubtitle => 'এই ৰেষ্টুৰেণ্টে নিজৰ মেনু যোগ কৰা নাই।';

  @override
  String get moreDishesTitle => 'আৰু ব্যঞ্জন';

  @override
  String get menuSearchHint => 'ব্যঞ্জন বিচাৰক';

  @override
  String get filtersShort => 'ফিল্টাৰ';

  @override
  String get dietVeg => 'নিৰামিষ';

  @override
  String get dietEgg => 'কণী';

  @override
  String get dietNonVeg => 'আমিষ';

  @override
  String get menuBestsellerChip => 'সৰ্বাধিক বিক্ৰীত';

  @override
  String get menuFoodType => 'খাদ্যৰ প্ৰকাৰ';

  @override
  String get menuShowOnly => 'কেৱল দেখুৱাওক';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ব্যঞ্জন',
      one: '1টা ব্যঞ্জন',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ব্যঞ্জন দেখুৱাওক',
      one: '1টা ব্যঞ্জন দেখুৱাওক',
      zero: 'কোনো ব্যঞ্জন নাই',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'আন এটা ব্যঞ্জনৰ নাম চেষ্টা কৰক, বা এটা ফিল্টাৰ আঁতৰাওক।';

  @override
  String get menuBrowse => 'মেনু';

  @override
  String get customisable => 'নিজৰ পছন্দমতে';

  @override
  String get requiredLabel => 'আৱশ্যক';

  @override
  String get optionalLabel => 'ঐচ্ছিক';

  @override
  String get chooseOne => 'এটা বাছনি কৰক';

  @override
  String chooseUpTo(int count) {
    return 'সৰ্বাধিক $count বাছনি কৰক';
  }

  @override
  String chooseAtLeast(int count) {
    return 'কমেও $count বাছনি কৰক';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min ৰ পৰা $max বাছনি কৰক';
  }

  @override
  String get specialInstructions => 'বিশেষ নিৰ্দেশনা';

  @override
  String get specialInstructionsHint => 'কম জলকীয়া, পিয়াজ নালাগে…';

  @override
  String addForAmount(String amount) {
    return 'যোগ কৰক · $amount';
  }

  @override
  String get deliveryLabel => 'ডেলিভাৰী';

  @override
  String get pickupLabel => 'নিজে লোৱা';

  @override
  String get packagingLabel => 'পেকিং';

  @override
  String get discountLabel => 'ৰেহাই';

  @override
  String get billDetailsTitle => 'বিলৰ বিৱৰণ';

  @override
  String get clearCart => 'কাৰ্ট খালী কৰক';

  @override
  String get clearCartTitle => 'এই কাৰ্ট খালী কৰিব নেকি?';

  @override
  String get clearCartMessage => 'ইয়াত থকা সকলো আঁতৰোৱা হ’ব।';

  @override
  String unavailableItemsNotice(String items) {
    return 'আৰু পোৱা নাযায়: $items';
  }

  @override
  String get removeUnavailable => 'সেইবোৰ আঁতৰাওক';

  @override
  String minimumNotMet(String amount) {
    return 'নূন্যতম অৰ্ডাৰ $amount';
  }

  @override
  String get checkoutTitle => 'চেকআউট';

  @override
  String get deliveryAddressLabel => 'ডেলিভাৰীৰ ঠিকনা';

  @override
  String get noAddressSelected => 'কোনো ঠিকনা বছা হোৱা নাই';

  @override
  String get paymentMethodLabel => 'পৰিশোধ';

  @override
  String get payOnDelivery => 'ডেলিভাৰীৰ সময়ত নগদ';

  @override
  String get noteToRestaurant => 'ৰেষ্টুৰেণ্টৰ বাবে টোকা';

  @override
  String get noteToRestaurantHint => 'ঘণ্টা দুবাৰ বজাব…';

  @override
  String get activeOrdersTitle => 'চলি থকা অৰ্ডাৰ';

  @override
  String get pastOrdersTitle => 'পুৰণি অৰ্ডাৰ';

  @override
  String get orderItemsTitle => 'ব্যঞ্জন';

  @override
  String get orderProgressTitle => 'অগ্ৰগতি';

  @override
  String get arrivingIn => 'পাবলৈ';

  @override
  String get pickupCodeLabel => 'পিকআপ ক’ড';

  @override
  String get cancellationReasonLabel => 'বাতিল হোৱাৰ কাৰণ';

  @override
  String get riderLabel => 'ডেলিভাৰী পাৰ্টনাৰ';

  @override
  String get callRider => 'কল কৰক';

  @override
  String get trackRider => 'ৰাইডাৰ ট্ৰেক কৰক';

  @override
  String get riderLocationSoon =>
      'অৰ্ডাৰ লোৱাৰ পিছত ৰাইডাৰৰ অৱস্থান ইয়াত দেখা যাব।';

  @override
  String get riderLocationStale => 'ৰাইডাৰৰ অৱস্থান আপডেট হৈ আছে…';

  @override
  String get recentreOnRider => 'ৰাইডাৰত কেন্দ্ৰিত কৰক';

  @override
  String get viewInvoice => 'কৰ ইনভইচ';

  @override
  String get cancelOrder => 'অৰ্ডাৰ বাতিল কৰক';

  @override
  String get cancelOrderTitle => 'এই অৰ্ডাৰ বাতিল কৰিব নেকি?';

  @override
  String get cancelOrderMessage =>
      'ৰেষ্টুৰেণ্টে গ্ৰহণ কৰাৰ আগতেহে বাতিল কৰিব পাৰি।';

  @override
  String get cancelReasonLabel => 'কাৰণ';

  @override
  String get cancelReasonFallback => 'গ্ৰাহকে বাতিল কৰিছে';

  @override
  String get orderCancelled => 'অৰ্ডাৰ বাতিল হ’ল';

  @override
  String get currentLocationLabel => 'বৰ্তমান স্থান';

  @override
  String get onLabel => 'চালু';

  @override
  String get offLabel => 'বন্ধ';

  @override
  String get profileCoupons => 'আপোনাৰ কুপন';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ব্যৱহাৰ কৰিব পাৰি',
      one: '1টা ব্যৱহাৰ কৰিব পাৰি',
      zero: 'এতিয়াও নাই',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'আপোনাৰ পছন্দ';

  @override
  String get profileVegMode => 'নিৰামিষ মোড';

  @override
  String get profileVegModeHint => 'কেৱল নিৰামিষ ৰেষ্টুৰেণ্ট আৰু ব্যঞ্জন';

  @override
  String get profileAppearance => 'থিম';

  @override
  String get appearanceSystem => 'ফোনৰ দৰেই';

  @override
  String get appearanceLight => 'পোহৰ';

  @override
  String get appearanceDark => 'আন্ধাৰ';

  @override
  String get profileNotifications => 'নোটিফিকেচন';

  @override
  String get profileFoodDelivery => 'খাদ্য ডেলিভাৰী';

  @override
  String get profileFavourites => 'আপোনাৰ প্ৰিয় তালিকা';

  @override
  String get profileHelp => 'সহায় আৰু সমৰ্থন';

  @override
  String get profileMore => 'অধিক';

  @override
  String get profileFeedback => 'মতামত পঠিয়াওক';

  @override
  String get profileSafety => 'সুৰক্ষাজনিত জৰুৰী অৱস্থা জনাওক';

  @override
  String get profileAbout => 'Nexmile ৰ বিষয়ে';

  @override
  String get couponsEmptyTitle => 'এতিয়া কোনো কুপন নাই';

  @override
  String get couponsEmptyBody =>
      'আপুনি ব্যৱহাৰ কৰিব পৰা কুপন থাকিলে ইয়াত দেখা যাব।';

  @override
  String couponFlatOff(String amount) {
    return '$amount ৰেহাই';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% ৰেহাই';
  }

  @override
  String couponUpTo(String amount) {
    return 'সৰ্বাধিক $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount তকৈ বেছিৰ অৰ্ডাৰত';
  }

  @override
  String couponValidTill(String date) {
    return '$date লৈকে বৈধ';
  }

  @override
  String get couponAllRestaurants => 'সকলো ৰেষ্টুৰেণ্টত';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant ত';
  }

  @override
  String couponCopied(String code) {
    return 'ক\'ড $code কপি কৰা হ\'ল';
  }

  @override
  String get favouritesEmptyTitle => 'প্ৰিয় তালিকাত এতিয়াও একো নাই';

  @override
  String get favouritesEmptyBody =>
      'ইয়াত সাঁচি থ\'বলৈ ৰেষ্টুৰেণ্টৰ হাৰ্ট চিহ্নত টিপক।';

  @override
  String get helpCall => 'আমাক কল কৰক';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'আমাক ইমেইল কৰক';

  @override
  String helpHours(String hours) {
    return 'আমি $hours উপলব্ধ থাকোঁ';
  }

  @override
  String get helpFaqs => 'সাধাৰণ প্ৰশ্ন';

  @override
  String get helpNothing =>
      'সহায়ৰ তথ্য এতিয়া উপলব্ধ নহয়। অনুগ্ৰহ কৰি পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get feedbackPrompt => 'Nexmile ব্যৱহাৰ কৰি আপোনাৰ কেনে লাগিছে?';

  @override
  String get feedbackHint =>
      'আপোনাৰ কি ভাল লাগিল, বা আমি কি উন্নত কৰিব পাৰোঁ, কওক';

  @override
  String get feedbackNeedRating => 'প্ৰথমে এটা ৰেটিং বাছনি কৰক';

  @override
  String get feedbackThanks => 'ধন্যবাদ! আপোনাৰ মতামত আমাৰ দলৰ ওচৰ পাইছে।';

  @override
  String get safetyIntro =>
      'আপুনি বা আন কোনোবা বিপদত থাকিলে, প্ৰথমে জৰুৰীকালীন সেৱালৈ কল কৰক।';

  @override
  String get safetyCallEmergency => '112 লৈ কল কৰক';

  @override
  String get safetyCallEmergencyBody => 'আৰক্ষী, অগ্নিনিৰ্বাপক আৰু এম্বুলেন্স';

  @override
  String get safetyCallNexmile => 'Nexmile সুৰক্ষা লাইনলৈ কল কৰক';

  @override
  String get safetyCallNexmileBody => 'যিকোনো সময়তে উত্তৰ দিয়া হয়';

  @override
  String aboutVersion(String version) {
    return 'সংস্কৰণ $version';
  }

  @override
  String get aboutTerms => 'সেৱাৰ চৰ্তাৱলী';

  @override
  String get aboutPrivacy => 'গোপনীয়তা নীতি';

  @override
  String get aboutLicences => 'ওপেন ছ\'ৰ্চ লাইচেন্স';

  @override
  String get notifyOrderUpdates => 'অৰ্ডাৰ আপডেট';

  @override
  String get notifyOrderUpdatesBody =>
      'সদায় চালু থাকে, যাতে আপোনাৰ খাদ্য ক\'ত আছে জানিব পাৰে।';

  @override
  String get notifyPromotions => 'অফাৰ আৰু প্ৰচাৰ';

  @override
  String get notifyPromotionsBody =>
      'আপোনাৰ ওচৰৰ অফাৰ, কুপন আৰু নতুন ৰেষ্টুৰেণ্ট।';

  @override
  String get notifyPhoneOff => 'এই ফোনত Nexmile ৰ বাবে নোটিফিকেচন বন্ধ আছে।';

  @override
  String get notifyTurnOn => 'চালু কৰক';

  @override
  String get linkOpenFailed => 'এই ফোনত সেইটো খুলিব পৰা নগ\'ল।';

  @override
  String get editProfileTitle => 'প্ৰ’ফাইল সম্পাদনা কৰক';

  @override
  String get editProfileSubtitle =>
      'ৰেষ্টুৰেণ্ট আৰু ডেলিভাৰী পাৰ্টনাৰে আপোনাৰ নামেই দেখে।';

  @override
  String get saveChanges => 'সালসলনি ৰক্ষা কৰক';

  @override
  String get profileUpdated => 'প্ৰ’ফাইল নবীকৰণ হ’ল';

  @override
  String get deleteAccount => 'একাউণ্ট মচক';

  @override
  String get deleteAccountTitle => 'আপোনাৰ একাউণ্ট মচিব নেকি?';

  @override
  String get deleteAccountMessage =>
      'সকলো ডিভাইচৰ পৰা ছাইন আউট হ’ব। পুৰণি অৰ্ডাৰ আৰু বিল কৰ নথিৰ বাবে ৰখা হয়।';

  @override
  String get accountDeleted => 'আপোনাৰ একাউণ্ট মচা হ’ল';

  @override
  String get devicesTitle => 'ছাইন-ইন ডিভাইচ';

  @override
  String get devicesSubtitle => 'আপুনি ক’ত ছাইন ইন হৈ আছে';

  @override
  String get devicesEmptyTitle => 'আন কোনো ডিভাইচ নাই';

  @override
  String get devicesEmptySubtitle => 'আপুনি কেৱল এই ডিভাইচতে ছাইন ইন হৈ আছে।';

  @override
  String get signOutDevice => 'ছাইন আউট';

  @override
  String get signOutDeviceTitle => 'এই ডিভাইচ ছাইন আউট কৰিব নেকি?';

  @override
  String get signOutDeviceMessage =>
      'আপুনি এইটোৱেই ব্যৱহাৰ কৰি থাকিলে পুনৰ ছাইন ইন কৰিব লাগিব।';

  @override
  String get deviceSignedOut => 'ডিভাইচ ছাইন আউট হ’ল';

  @override
  String get signOutEverywhere => 'সকলো ঠাইৰ পৰা ছাইন আউট';

  @override
  String get signOutEverywhereTitle => 'সকলো ঠাইৰ পৰা ছাইন আউট কৰিব নেকি?';

  @override
  String get signOutEverywhereMessage =>
      'এই ডিভাইচসহ প্ৰতিটো ডিভাইচ ছাইন আউট হ’ব।';

  @override
  String get unknownDevice => 'অজ্ঞাত ডিভাইচ';

  @override
  String get activeNow => 'এতিয়া সক্ৰিয়';

  @override
  String minutesAgo(int count) {
    return '$count মিনিট আগেয়ে';
  }

  @override
  String hoursAgo(int count) {
    return '$count ঘণ্টা আগেয়ে';
  }

  @override
  String daysAgo(int count) {
    return '$count দিন আগেয়ে';
  }

  @override
  String get filtersAndSorting => 'ফিল্টাৰ আৰু ক্ৰম';

  @override
  String get clearAll => 'সকলো আঁতৰাওক';

  @override
  String get showResults => 'ফলাফল দেখুৱাওক';

  @override
  String get closeLabel => 'বন্ধ কৰক';

  @override
  String get sortByTitle => 'ক্ৰম';

  @override
  String get sortRelevance => 'প্ৰাসংগিকতা';

  @override
  String get sortRating => 'ৰেটিং';

  @override
  String get sortDeliveryTime => 'ডেলিভাৰী সময়';

  @override
  String get sortCostLowHigh => 'দাম: কমৰ পৰা বেছি';

  @override
  String get sortCostHighLow => 'দাম: বেছিৰ পৰা কম';

  @override
  String get timeSection => 'সময়';

  @override
  String get nearAndFast => 'ওচৰত আৰু দ্ৰুত';

  @override
  String get openNow => 'এতিয়া খোলা';

  @override
  String get ratingSection => 'ৰেষ্টুৰেণ্ট ৰেটিং';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ৰেটিং';
  }

  @override
  String get offersSection => 'অফাৰ';

  @override
  String get hasOffersLabel => 'অফাৰ থকা';

  @override
  String get dishPriceSection => 'ব্যঞ্জনৰ দাম';

  @override
  String costUnder(String amount) {
    return '$amount তকৈ কম';
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
  String get moreSection => 'অধিক';

  @override
  String get noPackagingCharges => 'পেকিং মাচুল নাই';

  @override
  String get allRestaurantsTitle => 'সকলো ৰেষ্টুৰেণ্ট';

  @override
  String get whatsOnYourMind => 'কি খাব মন গৈছে?';

  @override
  String get listeningNow => 'শুনি আছোঁ…';

  @override
  String get speakNowHint => 'এটা ব্যঞ্জন বা ৰেষ্টুৰেণ্ট কওক';

  @override
  String get voiceUnavailable => 'ভইচ চাৰ্চ উপলব্ধ নহয়';

  @override
  String get voiceUnavailableBody => 'আপুনি টাইপ কৰিও বিচাৰিব পাৰে।';

  @override
  String get microphoneDenied => 'মাইক্ৰʼফোন অনুমতি বন্ধ';

  @override
  String get voiceSearchLabel => 'মাতেৰে বিচাৰক';

  @override
  String get ratingsAndReviews => 'ৰেটিং আৰু পৰ্যালোচনা';

  @override
  String get reviewsWithTextOnly => 'পৰ্যালোচনা থকা';

  @override
  String get noReviewsTitle => 'এতিয়ালৈকে কোনো ৰেটিং নাই';

  @override
  String get noReviewsSubtitle => 'অৰ্ডাৰৰ পিছত প্ৰথম ৰেটিং আপুনিয়েই দিয়ক।';

  @override
  String get rateOrderTitle => 'আপোনাৰ অৰ্ডাৰ ৰেট কৰক';

  @override
  String get rateDishesTitle => 'খাদ্যবোৰ ৰেট কৰক';

  @override
  String get reviewHint => 'আৰু কিবা ক\'ব বিচাৰেনে? (ঐচ্ছিক)';

  @override
  String get submitRating => 'ৰেটিং পঠিয়াওক';

  @override
  String get reviewThanks => 'ধন্যবাদ — আপোনাৰ ৰেটিং জমা হ\'ল।';

  @override
  String get rateThisOrder => 'এই অৰ্ডাৰ ৰেট কৰক';

  @override
  String get walletTitle => 'Nexmile ৱালেট';

  @override
  String get walletBalance => 'ৱালেট বেলেন্স';

  @override
  String get walletBalanceHint => 'যিকোনো অৰ্ডাৰৰ পৰিশোধত ব্যৱহাৰ কৰক।';

  @override
  String get walletAddMoney => 'টকা যোগ কৰক';

  @override
  String get walletEnterAmount => 'পৰিমাণ লিখক';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ৰ পৰা $max লৈ';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount যোগ কৰক';
  }

  @override
  String get walletSecuredBy => 'পৰিশোধ Razorpay দ্বাৰা সুৰক্ষিত';

  @override
  String get walletHistory => 'ইতিহাস';

  @override
  String get walletNoHistory =>
      'এতিয়াও কোনো লেনদেন নাই। আপুনি যোগ কৰা বা খৰচ কৰা টকা ইয়াত দেখা যাব।';

  @override
  String get walletEntryTopUp => 'টকা যোগ কৰা হ\'ল';

  @override
  String get walletEntryOrder => 'অৰ্ডাৰৰ বাবে পৰিশোধ';

  @override
  String walletEntryOrderNumber(String number) {
    return 'অৰ্ডাৰ $number ৰ বাবে পৰিশোধ';
  }

  @override
  String get walletEntryRefund => 'ৰিফাণ্ড';

  @override
  String walletMoneyAdded(String amount) {
    return 'আপোনাৰ ৱালেটত $amount যোগ কৰা হ\'ল';
  }

  @override
  String get walletPaymentFailed =>
      'পৰিশোধ বিফল হ\'ল। আপোনাৰ একাউণ্টৰ পৰা কোনো টকা কটা হোৱা নাই।';

  @override
  String get walletPaymentConfirming =>
      'পৰিশোধ পোৱা গ\'ল। কেইমিনিটমানৰ ভিতৰত আপোনাৰ বেলেন্স আপডেট হ\'ব।';

  @override
  String get walletUseBalance => 'ৱালেট বেলেন্স ব্যৱহাৰ কৰক';

  @override
  String walletAvailable(String amount) {
    return 'উপলব্ধ: $amount';
  }

  @override
  String get walletPaidFromWallet => 'ৱালেটৰ পৰা পৰিশোধ';

  @override
  String get walletPayOnDelivery => 'ডেলিভাৰীৰ সময়ত পৰিশোধ';

  @override
  String get walletCoversOrder => 'আপোনাৰ ৱালেটৰ পৰা সম্পূৰ্ণ পৰিশোধ';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return 'ৱালেটৰ পৰা $wallet, ডেলিভাৰীৰ সময়ত $rest';
  }

  @override
  String get walletTopUpUnavailable =>
      'এতিয়া টকা যোগ কৰিব পৰা নাযায়। অনুগ্ৰহ কৰি পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String walletFull(String limit) {
    return 'আপোনাৰ ৱালেট $limit ৰ সীমাত উপনীত হৈছে।';
  }

  @override
  String get searchAddressHint => 'অঞ্চল, পথ বা চিন বিচাৰক';

  @override
  String get selectLocationTitle => 'অৱস্থান বাছনি কৰক';

  @override
  String get useCurrentLocation => 'বৰ্তমান অৱস্থান ব্যৱহাৰ কৰক';

  @override
  String get locatingYou => 'আপুনি ক\'ত আছে বিচাৰি আছোঁ…';

  @override
  String get locationOffHint => 'ইয়াক ব্যৱহাৰ কৰিবলৈ অৱস্থানৰ অনুমতি দিয়ক';

  @override
  String get savedAddressesHeading => 'সাঁচি থোৱা ঠিকনা';

  @override
  String get recentLocationsHeading => 'শেহতীয়া অৱস্থান';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ডেলিভাৰীৰ অৱস্থান বাছনি কৰক';

  @override
  String get movePinTooltip => 'পিনটো আপোনাৰ সঠিক ডেলিভাৰী অৱস্থানলৈ নিয়ক';

  @override
  String get locatingPin => 'ঠিকনা বিচাৰি আছোঁ…';

  @override
  String get deliveryDetailsHeading => 'ডেলিভাৰীৰ বিৱৰণ';

  @override
  String get addressDetailsLabel => 'ঠিকনাৰ বিৱৰণ*';

  @override
  String get addressDetailsHint => 'যেনে: মহলা, ঘৰ নং';

  @override
  String get missingAreaHint =>
      'এই পিনৰ সম্পূৰ্ণ ঠিকনা পোৱা নগ\'ল। অনুগ্ৰহ কৰি বাকীখিনি পূৰণ কৰক।';

  @override
  String get whoToContact => 'এই ডেলিভাৰীৰ বাবে কাৰ সৈতে যোগাযোগ কৰিম?';

  @override
  String get contactMyself => 'মই নিজে';

  @override
  String get contactSomeoneElse => 'আন কোনোবা';

  @override
  String get receiverDetailsHeading => 'এই ঠিকনাৰ গ্ৰহণকাৰীৰ বিৱৰণ';

  @override
  String get receiverAddPrompt => 'গ্ৰহণকাৰীৰ নাম আৰু নম্বৰ যোগ কৰক';

  @override
  String get receiverSheetTitle => 'গ্ৰহণকাৰীৰ বিৱৰণ';

  @override
  String get doorPhotoHeading => 'দুৱাৰ/অট্টালিকাৰ ফটো (ঐচ্ছিক)';

  @override
  String get doorPhotoAdd => 'ফটো যোগ কৰক';

  @override
  String get doorPhotoBody =>
      'ইয়াৰ দ্বাৰা আমাৰ ডেলিভাৰী পাৰ্টনাৰে আপোনাৰ সঠিক অৱস্থান সোনকালে বিচাৰি পায়';

  @override
  String get doorPhotoChange => 'সলনি কৰক';

  @override
  String get doorPhotoRemove => 'আঁতৰাওক';

  @override
  String get photoFromCamera => 'ফটো তোলক';

  @override
  String get photoFromGallery => 'গেলাৰীৰ পৰা বাছনি কৰক';

  @override
  String get photoUploaded => 'ফটো যোগ কৰা হ\'ল';

  @override
  String get photoUploadFailed =>
      'ফটো আপল\'ড কৰিব পৰা নগ\'ল। অনুগ্ৰহ কৰি পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get addressSavedPhotoFailed =>
      'ঠিকনা সাঁচি থোৱা হ\'ল। ফটো আপল\'ড কৰিব পৰা নগ\'ল।';

  @override
  String get removePhotoLabel => 'ফটো আঁতৰাওক';

  @override
  String get photoRemoved => 'ফটো আঁতৰোৱা হ\'ল';

  @override
  String get shareLabel => 'শ্বেয়াৰ কৰক';

  @override
  String get addDoorPhotoLabel => 'দুৱাৰৰ ফটো যোগ কৰক';

  @override
  String get searchAddressNoResults =>
      'কোনো ঠাই পোৱা নগ\'ল। ওচৰৰ কোনো চিন, অঞ্চলৰ নাম বা পিন ক\'ড চেষ্টা কৰক।';

  @override
  String get clearLabel => 'আঁতৰাওক';

  @override
  String get trackingArrivingNow => 'এতিয়াই পাব';

  @override
  String get trackingLive => 'লাইভ';

  @override
  String get trackingStepConfirmed => 'নিশ্চিত';

  @override
  String get trackingStepPreparing => 'প্ৰস্তুত হৈ আছে';

  @override
  String get trackingStepOnTheWay => 'বাটত আছে';

  @override
  String get trackingStepDelivered => 'ডেলিভাৰ হ\'ল';

  @override
  String get trackingFindingRider => 'ডেলিভাৰী পাৰ্টনাৰ নিযুক্ত কৰি থকা হৈছে…';

  @override
  String get trackingPinYou => 'আপুনি';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance দূৰত আছে';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name লৈ মেছেজ পঠিয়াওক';
  }

  @override
  String get trackingDeliveringTo => 'ডেলিভাৰীৰ ঠিকনা';

  @override
  String get trackingOrderDetails => 'অৰ্ডাৰৰ বিৱৰণ';

  @override
  String get dispatchSearching =>
      'ৰেষ্টুৰেণ্টৰ ওচৰত ডেলিভাৰী পাৰ্টনাৰ বিচাৰি থকা হৈছে…';

  @override
  String get dispatchNoRider =>
      'এতিয়াও কোনো ডেলিভাৰী পাৰ্টনাৰে লোৱা নাই। আমাৰ দলে এতিয়া এজন নিযুক্ত কৰি আছে।';

  @override
  String get vehicleBike => 'বাইক';

  @override
  String get vehicleScooter => 'স্কুটাৰ';

  @override
  String get vehicleBicycle => 'চাইকেল';

  @override
  String get vehicleElectric => 'ইলেক্ট্ৰিক স্কুটাৰ';

  @override
  String get exitTitle => 'Nexmile ৰ পৰা ওলাব নেকি?';

  @override
  String get exitBody => 'আপুনি সঁচাকৈয়ে এপৰ পৰা ওলাই যাব বিচাৰে নেকি?';

  @override
  String get exitConfirm => 'ওলাই যাওক';

  @override
  String cartSavedBanner(String amount) {
    return 'এই অৰ্ডাৰত আপোনাৰ $amount বচিল';
  }

  @override
  String get cartAddMoreItems => 'আৰু বস্তু যোগ কৰক';

  @override
  String get cartAddNote => 'ৰেষ্টুৰেণ্টৰ বাবে টোকা যোগ কৰক';

  @override
  String get cartOrderNoteHint => 'যেনে: কোনো বস্তুতে পিয়াজ বা নহৰু নিদিব';

  @override
  String get cartNoteSave => 'সাঁচি থওক';

  @override
  String get cartNoCutlery => 'চামুচ-কাঁটাচামুচ নালাগে';

  @override
  String get cartNoCutleryThanks =>
      'প্লাষ্টিকৰ আৱৰ্জনা কমোৱাত সহায় কৰাৰ বাবে ধন্যবাদ';

  @override
  String get cartSavingsCorner => 'সঞ্চয়ৰ চুক';

  @override
  String get cartDeliveryInstructions => 'ডেলিভাৰীৰ নিৰ্দেশনা';

  @override
  String get cartInstructionsRider =>
      'কেৱল আপোনাৰ ডেলিভাৰী পাৰ্টনাৰেহে এইবোৰ দেখিব';

  @override
  String get instructionLeaveAtDoor => 'দুৱাৰমুখত থৈ যাওক';

  @override
  String get instructionNoBell => 'ঘণ্টা নবজাব';

  @override
  String get instructionNoCall => 'কল নকৰিব';

  @override
  String get instructionSecurity => 'চিকিউৰিটীৰ হাতত দিয়ক';

  @override
  String get instructionPet => 'ঘৰত পোহনীয়া জন্তু আছে';

  @override
  String get cartInclTaxes => 'কৰ আৰু মাচুলসহ';

  @override
  String cartSavedTag(String amount) {
    return '$amount বচিল';
  }

  @override
  String get cartPayUsing => 'পৰিশোধৰ মাধ্যম';

  @override
  String get cartWalletAndCash => 'ৱালেট + নগদ';

  @override
  String cartCashRest(String amount) {
    return 'পোৱাৰ সময়ত $amount দিয়ক';
  }

  @override
  String get cartCashFull => 'অৰ্ডাৰ পোৱাৰ সময়ত পৰিশোধ কৰক';

  @override
  String get cartCashNothing => 'ডেলিভাৰীৰ সময়ত একো দিব নালাগে';

  @override
  String get cartTotal => 'মুঠ';

  @override
  String get cartPlaceOrder => 'অৰ্ডাৰ কৰক';

  @override
  String cartDeliverTo(String place) {
    return '$place লৈ ডেলিভাৰী';
  }

  @override
  String get cartChange => 'সলনি কৰক';

  @override
  String get cartNoAddress => 'ক\'ত ডেলিভাৰী কৰিব লাগে?';

  @override
  String get cartNoAddressHint => 'অৰ্ডাৰ কৰিবলৈ এটা ঠিকনা যোগ কৰক';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurantৰ পৰা নিজে লওক';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'প্ৰায় $minutes মিনিটত সাজু হ\'ব';
  }

  @override
  String get cartChooseAddress => 'ডেলিভাৰীৰ ঠিকনা বাছনি কৰক';

  @override
  String get cartDone => 'সম্পন্ন';

  @override
  String get supportTitle => 'Nexmile সহায়';

  @override
  String get supportBubble => 'সহায়';

  @override
  String get supportAiLabel => 'AI সহায়ক';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile দল';
  }

  @override
  String get supportDemoBanner =>
      'ডেমো: এই উত্তৰবোৰ নমুনা। প্ৰকৃত AI সহায়ক এতিয়াও সংযোগ কৰা হোৱা নাই।';

  @override
  String get supportEmptyTitle => 'আমি কেনেকৈ সহায় কৰিব পাৰোঁ?';

  @override
  String get supportEmptyBody =>
      'অৰ্ডাৰ, পৰিশোধ বা আন যিকোনো বিষয়ে সোধক। প্ৰথমে আমাৰ AI সহায়কে উত্তৰ দিয়ে, আৰু ই সহায় কৰিব নোৱাৰিলে আমাৰ দলৰ এজন সদস্যই দায়িত্ব লয়।';

  @override
  String get supportSuggestWhere => 'মোৰ অৰ্ডাৰ ক\'ত আছে?';

  @override
  String get supportSuggestMissing => 'কিবা এটা পোৱা নাই';

  @override
  String get supportSuggestRefund => 'ৰিফাণ্ডৰ বিষয়ে মোৰ এটা প্ৰশ্ন আছে';

  @override
  String get supportComposerHint => 'মেছেজ লিখক';

  @override
  String get supportSend => 'পঠিয়াওক';

  @override
  String get supportTyping => 'AI সহায়কে লিখি আছে…';

  @override
  String get supportNotSent => 'পঠোৱা নহ\'ল';

  @override
  String get supportTookTooLong => 'বহুত সময় লাগিল।';

  @override
  String get supportSlowDown => 'আৰু পঠিওৱাৰ আগতে অলপ ৰওক।';

  @override
  String get supportUnreachable =>
      'এতিয়া চেটৰ সৈতে সংযোগ কৰিব পৰা নাই। আমাক কল কৰক, বা কেইমিনিটমান পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get supportOffline =>
      'আপুনি অফলাইন আছে। এইটো আপোনাৰ শেষবাৰ সাঁচি থোৱা চেট।';

  @override
  String get supportClosed => 'এই চেট বন্ধ কৰা হৈছে।';

  @override
  String get supportStartNew => 'নতুন চেট আৰম্ভ কৰক';

  @override
  String get supportTalkToPerson => 'এজন মানুহৰ সৈতে কথা পাতক';

  @override
  String get supportMarkSolved => 'সমাধান হ\'ল বুলি চিহ্নিত কৰক';

  @override
  String get supportHelpful => 'উপকাৰী';

  @override
  String get supportNotHelpful => 'উপকাৰী নহয়';

  @override
  String get supportNeedHelp => 'সহায় লাগে নেকি?';

  @override
  String get supportChatWithUs => 'আমাৰ সৈতে চেট কৰক';

  @override
  String get supportChatWithUsBody =>
      'আমাৰ AI সহায়কে কেইছেকেণ্ডমানতে উত্তৰ দিয়ে, আৰু আপোনাক প্ৰয়োজন হ\'লে এজন মানুহে দায়িত্ব লয়।';

  @override
  String get supportActionFailed => 'কামটো নহ\'ল। পুনৰ চেষ্টা কৰক।';

  @override
  String get supportOrderNotFound => 'এই অৰ্ডাৰটো আপোনাৰ একাউণ্টত পোৱা নগ\'ল।';

  @override
  String get supportOrderLookupDown =>
      'এতিয়া অৰ্ডাৰটো চাব পৰা নগ\'ল। আপুনি প্ৰশ্নটো লিখি পঠিয়াব পাৰে।';

  @override
  String get supportHandedOverNote => 'দলৰ এজন সদস্যই উত্তৰ দিব';

  @override
  String get restaurantNew => 'নতুন';

  @override
  String get walletHideBalance => 'বেলেন্স লুকুৱাওক';

  @override
  String get walletShowBalance => 'বেলেন্স দেখুৱাওক';

  @override
  String get walletBalanceHiddenLabel => 'বেলেন্স লুকুৱাই ৰখা হৈছে';

  @override
  String walletUpdatedAt(String time) {
    return '$time ত আপডেট হৈছে';
  }

  @override
  String walletBelowMin(String amount) {
    return 'কমেও $amount যোগ কৰক';
  }

  @override
  String walletAboveMax(String amount) {
    return 'আপুনি সৰ্বাধিক $amount যোগ কৰিব পাৰে';
  }

  @override
  String get walletOpeningPayment => 'পৰিশোধ খোলা হৈ আছে…';

  @override
  String get walletConfirmingPayment => 'পৰিশোধ নিশ্চিত কৰা হৈ আছে…';

  @override
  String get walletTransactions => 'লেনদেন';

  @override
  String get walletFilterAll => 'সকলো';

  @override
  String get walletFilterAdded => 'যোগ কৰা টকা';

  @override
  String get walletFilterSpent => 'খৰচ কৰা টকা';

  @override
  String get walletSearch => 'বিচাৰক';

  @override
  String get walletSearchHint => 'অৰ্ডাৰ নম্বৰ বা ID বিচাৰক';

  @override
  String get walletDateFilter => 'তাৰিখ অনুসৰি ফিল্টাৰ কৰক';

  @override
  String get walletClearFilters => 'ফিল্টাৰ আঁতৰাওক';

  @override
  String get walletNoMatches => 'আপোনাৰ ফিল্টাৰৰ সৈতে কোনো লেনদেন মিলা নাই';

  @override
  String get walletEmptyTitle => 'এতিয়াও কোনো লেনদেন নাই';

  @override
  String get walletEmptyBody =>
      'আপুনি যোগ কৰা, অৰ্ডাৰত খৰচ কৰা বা ৰিফাণ্ড হিচাপে ঘূৰাই পোৱা টকা ইয়াত দেখা যাব।';

  @override
  String get walletToday => 'আজি';

  @override
  String get walletYesterday => 'কালি';

  @override
  String walletLatestOnly(int count) {
    return 'আপোনাৰ শেহতীয়া $countটা লেনদেন দেখুওৱা হৈছে';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'অৰ্ডাৰ $number ৰ বাবে ৰিফাণ্ড';
  }

  @override
  String get walletDetailsTitle => 'লেনদেনৰ বিৱৰণ';

  @override
  String get walletDetailDate => 'তাৰিখ আৰু সময়';

  @override
  String get walletDetailId => 'লেনদেন ID';

  @override
  String get walletDetailType => 'প্ৰকাৰ';

  @override
  String get walletDetailMethod => 'পৰিশোধৰ পদ্ধতি';

  @override
  String get walletDetailStatus => 'অৱস্থা';

  @override
  String get walletDetailOrder => 'অৰ্ডাৰ';

  @override
  String get walletDetailReference => 'পৰিশোধৰ ৰেফাৰেন্স';

  @override
  String get walletDetailBalanceAfter => 'পিছৰ বেলেন্স';

  @override
  String get walletCredit => 'ক্ৰেডিট';

  @override
  String get walletDebit => 'ডেবিট';

  @override
  String get walletStatusSuccess => 'সফল';

  @override
  String get walletStatusPending => 'বিচাৰাধীন';

  @override
  String get walletStatusFailed => 'বিফল';

  @override
  String get walletMethodOnline => 'অনলাইন পৰিশোধ';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'কাৰ্ড';

  @override
  String get walletMethodNetbanking => 'নেট বেংকিং';

  @override
  String get walletMethodRefund => 'ৱালেটলৈ ৰিফাণ্ড';

  @override
  String get walletCopyId => 'ID কপি কৰক';

  @override
  String get walletIdCopied => 'লেনদেন ID কপি কৰা হ\'ল';

  @override
  String get walletShareDetails => 'বিৱৰণ শ্বেয়াৰ কৰক';
}
