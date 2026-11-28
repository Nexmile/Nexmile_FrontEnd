// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'এই ঘরটি পূরণ করা আবশ্যক';

  @override
  String get tagline => 'দ্রুত ডেলিভারি। সতেজ হাসি।';

  @override
  String get chooseLanguageTitle => 'আপনার ভাষা বেছে নিন';

  @override
  String get chooseLanguageSubtitle =>
      'যে ভাষায় আপনি স্বচ্ছন্দ সেটি বেছে নিন। আপনি যেকোনো সময় সেটিংস থেকে এটি পরিবর্তন করতে পারেন।';

  @override
  String get searchLanguageHint => 'ভাষা খুঁজুন';

  @override
  String get noLanguageFound => 'কোনো ভাষা পাওয়া যায়নি';

  @override
  String languagesAvailable(int count) {
    return '$countটি ভাষা রয়েছে';
  }

  @override
  String get continueLabel => 'চালিয়ে যান';

  @override
  String get selectedLabel => 'নির্বাচিত';

  @override
  String get defaultLabel => 'ডিফল্ট';

  @override
  String get homeTitle => 'Nexmile-এ স্বাগতম';

  @override
  String get homeSubtitle =>
      'তাজা মুদিখানার জিনিস, গরম খাবার এবং প্রতিদিনের প্রয়োজনীয় সামগ্রী আপনার কাছের দোকান থেকে।';

  @override
  String get changeLanguage => 'ভাষা পরিবর্তন করুন';

  @override
  String get languageUpdated => 'ভাষা পরিবর্তন করা হয়েছে';

  @override
  String get appLanguageLabel => 'অ্যাপের ভাষা';

  @override
  String greetingNamed(String name) {
    return 'নমস্কার, $name';
  }

  @override
  String get loginTitle => 'Nexmile-এ সাইন ইন করুন';

  @override
  String get loginSubtitle =>
      'আপনার ইমেল বা মোবাইল নম্বর দিন, আমরা যাচাই কোড পাঠাব।';

  @override
  String get emailOrPhoneLabel => 'ইমেল বা মোবাইল নম্বর';

  @override
  String get emailOrPhoneHint => 'name@example.com অথবা 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'সঠিক ইমেল ঠিকানা বা ১০ সংখ্যার মোবাইল নম্বর লিখুন';

  @override
  String get loginHeadline => 'কাছের দোকানের গরম খাবার, দ্রুত ডেলিভারি';

  @override
  String get loginOrSignUp => 'লগ ইন বা সাইন আপ করুন';

  @override
  String get loginEmailHint => 'আপনার ইমেল ঠিকানা লিখুন';

  @override
  String get invalidEmail => 'সঠিক ইমেল ঠিকানা লিখুন';

  @override
  String get sendCode => 'কোড পাঠান';

  @override
  String get agreeToTermsOnContinue =>
      'চালিয়ে গেলে আপনি আমাদের পরিষেবার শর্তাবলী ও গোপনীয়তা নীতিতে সম্মত হচ্ছেন।';

  @override
  String get otpTitle => 'যাচাই করুন এটি আপনিই';

  @override
  String otpSubtitle(String target) {
    return '$target-এ পাঠানো ৬ সংখ্যার কোড লিখুন';
  }

  @override
  String get verifyCode => 'যাচাই করুন';

  @override
  String get resendCode => 'কোড আবার পাঠান';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds সেকেন্ড পরে আবার পাঠান';
  }

  @override
  String get codeResent => 'নতুন কোড পাঠানো হয়েছে';

  @override
  String get incorrectCode =>
      'এই কোডটি ভুল বা মেয়াদ শেষ হয়ে গেছে। নতুন কোড চান।';

  @override
  String get enterFullCode => 'পুরো ৬টি সংখ্যা লিখুন';

  @override
  String get accountSuspended =>
      'এই অ্যাকাউন্টটি স্থগিত করা হয়েছে। সহায়তার সঙ্গে যোগাযোগ করুন।';

  @override
  String get tooManyAttempts =>
      'অনেকবার চেষ্টা করা হয়েছে। কিছুক্ষণ পরে আবার চেষ্টা করুন।';

  @override
  String get sessionExpired =>
      'আপনার সেশনের মেয়াদ শেষ হয়েছে। আবার সাইন ইন করুন।';

  @override
  String get networkError =>
      'ইন্টারনেট সংযোগ নেই। সংযোগ পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get developmentCode => 'ডেভেলপমেন্ট কোড';

  @override
  String get signOut => 'সাইন আউট';

  @override
  String get signedOut => 'আপনি সাইন আউট হয়েছেন';

  @override
  String get somethingWentWrong => 'কিছু ভুল হয়েছে। আবার চেষ্টা করুন।';

  @override
  String get profileTitle => 'প্রোফাইল';

  @override
  String get viewProfile => 'প্রোফাইল দেখুন';

  @override
  String get nameLabel => 'নাম';

  @override
  String get emailLabel => 'ইমেল';

  @override
  String get mobileLabel => 'মোবাইল নম্বর';

  @override
  String get accountStatusLabel => 'অ্যাকাউন্টের অবস্থা';

  @override
  String get statusActive => 'সক্রিয়';

  @override
  String get statusPending => 'অপেক্ষমাণ';

  @override
  String get statusSuspended => 'স্থগিত';

  @override
  String get verifiedLabel => 'যাচাই করা';

  @override
  String get notProvided => 'যোগ করা হয়নি';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get navHome => 'হোম';

  @override
  String get navSearch => 'খুঁজুন';

  @override
  String get navOrders => 'অর্ডার';

  @override
  String get cancelLabel => 'বাতিল';

  @override
  String get deliverTo => 'ডেলিভারির ঠিকানা';

  @override
  String get searchDishesHint => 'খাবার বা রেস্তোরাঁ খুঁজুন';

  @override
  String get searchTitle => 'খুঁজুন';

  @override
  String get searchNoResultsTitle => 'কিছু মেলেনি';

  @override
  String get searchNoResultsSubtitle =>
      'অন্য কোনো খাবার, রান্নার ধরন বা রেস্তোরাঁর নাম চেষ্টা করুন।';

  @override
  String get cravingTitle => 'আজ কী খেতে ইচ্ছে করছে?';

  @override
  String get offersTitle => 'আপনার জন্য অফার';

  @override
  String get restaurantsNearby => 'আপনার কাছের রেস্তোরাঁ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি রেস্তোরাঁ',
      one: '1টি রেস্তোরাঁ',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'এখানে এখনো কিছু নেই';

  @override
  String get noRestaurantsSubtitle => 'অন্য বিভাগ দেখুন বা ফিল্টার সরান।';

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
      other: '$count রেটিং',
      one: '1 রেটিং',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'দুজনের জন্য ₹$amount';
  }

  @override
  String get freeDelivery => 'ফ্রি ডেলিভারি';

  @override
  String percentOff(int percent) {
    return '$percent% ছাড়';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'আপনার অর্ডারে $percent% ছাড়';
  }

  @override
  String get vegOnly => 'শুধু নিরামিষ';

  @override
  String get bestseller => 'সবচেয়ে জনপ্রিয়';

  @override
  String get addLabel => 'যোগ';

  @override
  String get noVegDishesTitle => 'এখানে নিরামিষ খাবার নেই';

  @override
  String get noVegDishesSubtitle =>
      'পুরো মেনু দেখতে নিরামিষ ফিল্টার বন্ধ করুন।';

  @override
  String get replaceCartTitle => 'নতুন কার্ট শুরু করবেন?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'আপনার কার্টে $restaurant-এর জিনিস আছে। এটি যোগ করলে সেগুলি মুছে যাবে।';
  }

  @override
  String get replaceCartConfirm => 'মুছে যোগ করুন';

  @override
  String get cartTitle => 'আপনার কার্ট';

  @override
  String get cartEmptyTitle => 'আপনার কার্ট খালি';

  @override
  String get cartEmptySubtitle =>
      'শুরু করতে কোনো রেস্তোরাঁ থেকে খাবার যোগ করুন।';

  @override
  String get browseRestaurants => 'রেস্তোরাঁ দেখুন';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি জিনিস',
      one: '1টি জিনিস',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'কার্ট দেখুন';

  @override
  String get itemTotal => 'জিনিসের মোট';

  @override
  String get deliveryFeeLabel => 'ডেলিভারি ফি';

  @override
  String get taxesAndCharges => 'কর ও চার্জ';

  @override
  String get freeLabel => 'ফ্রি';

  @override
  String get toPay => 'দিতে হবে';

  @override
  String placeOrderFor(String amount) {
    return 'অর্ডার করুন · $amount';
  }

  @override
  String get ordersTitle => 'আপনার অর্ডার';

  @override
  String get ordersEmptyTitle => 'এখনো কোনো অর্ডার নেই';

  @override
  String get ordersEmptySubtitle => 'আপনার আগের অর্ডার এখানে দেখা যাবে।';

  @override
  String get reorder => 'আবার অর্ডার';

  @override
  String orderTitle(String id) {
    return 'অর্ডার $id';
  }

  @override
  String get orderPlacedTitle => 'অর্ডার হয়ে গেছে';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'প্রায় $minutes মিনিটে পৌঁছাবে।';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant আপনার অর্ডার পেয়ে গেছে।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'প্রায় $minutes মিনিটে তৈরি হবে।';
  }

  @override
  String get trackYourOrder => 'অর্ডার ট্র্যাক করুন';

  @override
  String get couponApplyTitle => 'কুপন লাগান';

  @override
  String get couponCodeLabel => 'কুপন কোড';

  @override
  String get couponApply => 'লাগান';

  @override
  String couponAppliedTitle(String code) {
    return '$code লাগানো হয়েছে';
  }

  @override
  String couponSaving(String amount) {
    return 'আপনার $amount সাশ্রয়';
  }

  @override
  String get couponRemove => 'সরান';

  @override
  String searchFor(String term) {
    return '\"$term\" খুঁজুন';
  }

  @override
  String get vegModeBadge => 'খাঁটি নিরামিষ';

  @override
  String trackingExpectedBy(String time) {
    return '$time-এর মধ্যে পৌঁছাবে';
  }

  @override
  String get orderAgainTitle => 'আবার অর্ডার করুন';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + আরও $countটি',
      one: '$first + আরও 1টি',
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
    return '৫-এর মধ্যে $rating রেটিং';
  }

  @override
  String get reorderReplaceTitle => 'আপনার কার্ট বদলাবেন?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant-এর কার্টটি এই অর্ডারের পদগুলি দিয়ে বদলে দেওয়া হবে।';
  }

  @override
  String get reorderReplace => 'বদলে দিন';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes এখন পাওয়া যাচ্ছে না, তাই সেগুলি বাদ দেওয়া হয়েছে।',
      one: '$dishes এখন পাওয়া যাচ্ছে না, তাই সেটি বাদ দেওয়া হয়েছে।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'এই পদগুলির কোনোটিই এখন পাওয়া যাচ্ছে না।';

  @override
  String get searchShort => 'খুঁজুন';

  @override
  String get favouriteSave => 'প্রিয় তালিকায় রাখুন';

  @override
  String get restaurantAbout => 'এই রেস্তোরাঁ সম্পর্কে';

  @override
  String ratingByCount(String count) {
    return '$count জনের রেটিং';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অফার',
      one: '1টি অফার',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile-এ $restaurant থেকে অর্ডার করুন';
  }

  @override
  String get ordersSearchHint => 'রেস্তোরাঁ বা পদের নাম দিয়ে খুঁজুন…';

  @override
  String get ordersNoMatch => 'এই নামে কোনো রেস্তোরাঁ বা পদের অর্ডার নেই।';

  @override
  String orderPlacedOn(String date) {
    return 'অর্ডারের তারিখ: $date';
  }

  @override
  String get viewMenu => 'মেনু দেখুন';

  @override
  String get navHistory => 'ইতিহাস';

  @override
  String get exploreMore => 'আরও দেখুন';

  @override
  String get exploreTopRated => 'সেরা রেটিং';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি রেস্তোরাঁ আপনার কাছে ডেলিভারি করছে',
      one: '1টি রেস্তোরাঁ আপনার কাছে ডেলিভারি করছে',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ডেলিভারি কেমন ছিল?';

  @override
  String get rateHowWasFood => 'খাবার কেমন ছিল?';

  @override
  String get rateWordTerrible => 'খুব খারাপ';

  @override
  String get rateWordBad => 'খারাপ';

  @override
  String get rateWordOkay => 'মোটামুটি';

  @override
  String get rateWordGood => 'ভালো';

  @override
  String get rateWordLoved => 'দারুণ লেগেছে!';

  @override
  String get rateWhatWentWrong => 'কী সমস্যা হয়েছিল?';

  @override
  String get rateWhatYouLiked => 'কী ভালো লেগেছে?';

  @override
  String get rateRiderNoteHint => 'ডেলিভারি নিয়ে কিছু লিখুন (ঐচ্ছিক)';

  @override
  String get rateReviewHeading => 'পর্যালোচনা লিখুন';

  @override
  String get rateFoodFirst => 'জমা দিতে খাবার রেট করুন';

  @override
  String get rateYouRated => 'আপনি এই অর্ডার রেট করেছেন';

  @override
  String get ratePromptLater => 'এখন নয়';

  @override
  String get tagTasty => 'সুস্বাদু';

  @override
  String get tagFreshHot => 'গরম ও তাজা';

  @override
  String get tagGoodPortion => 'ভালো পরিমাণ';

  @override
  String get tagGoodPackaging => 'ভালো প্যাকেজিং';

  @override
  String get tagValueForMoney => 'দামের তুলনায় ভালো';

  @override
  String get tagHygienic => 'পরিষ্কার-পরিচ্ছন্ন';

  @override
  String get tagColdFood => 'ঠান্ডা খাবার';

  @override
  String get tagPoorTaste => 'স্বাদ ভালো ছিল না';

  @override
  String get tagSmallPortion => 'পরিমাণে কম';

  @override
  String get tagWrongItems => 'ভুল পদ এসেছে';

  @override
  String get tagMissingItems => 'কিছু পদ আসেনি';

  @override
  String get tagPoorPackaging => 'খারাপ প্যাকেজিং';

  @override
  String get tagTooOily => 'বেশি তেল বা ঝাল';

  @override
  String get tagOnTime => 'সময়মতো';

  @override
  String get tagPolite => 'ভদ্র ব্যবহার';

  @override
  String get tagFollowedInstructions => 'নির্দেশ মেনেছেন';

  @override
  String get tagCarefulHandling => 'যত্ন করে খাবার এনেছেন';

  @override
  String get tagGoodCommunication => 'আপডেট দিয়েছেন';

  @override
  String get tagLate => 'দেরিতে ডেলিভারি';

  @override
  String get tagRude => 'খারাপ ব্যবহার';

  @override
  String get tagIgnoredInstructions => 'নির্দেশ মানেননি';

  @override
  String get tagFoodSpilled => 'খাবার ছড়িয়ে গেছে';

  @override
  String get tagAskedExtraMoney => 'বাড়তি টাকা চেয়েছেন';

  @override
  String get tagUnprofessional => 'অপেশাদার আচরণ';

  @override
  String rateDeliveredBy(String name) {
    return 'ডেলিভারি করেছেন $name';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant থেকে';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant থেকে আপনার অর্ডার কেমন ছিল?';
  }

  @override
  String get orderDeliveredTitle => 'ডেলিভার হয়েছে';

  @override
  String get orderDeliveredSubtitle => 'খাবার উপভোগ করুন।';

  @override
  String get statusOrderPlaced => 'অর্ডার হয়েছে';

  @override
  String get statusPreparing => 'খাবার তৈরি হচ্ছে';

  @override
  String get statusOnTheWay => 'পথে আছে';

  @override
  String get statusDelivered => 'ডেলিভার হয়েছে';

  @override
  String get keepBrowsing => 'দেখতে থাকুন';

  @override
  String get backToHome => 'হোমে ফিরুন';

  @override
  String get prototypeNotice =>
      'নমুনা স্টোরফ্রন্ট — আসল দোকান ক্যাটালগ API-এর সঙ্গে আসবে।';

  @override
  String get prototypeCheckoutNotice =>
      'এটি একটি প্রোটোটাইপ। কোনো টাকা নেওয়া হয় না এবং সত্যিকারের অর্ডারও হয় না।';

  @override
  String get prototypeTrackingNotice => 'প্রোটোটাইপের জন্য ট্র্যাকিং কৃত্রিম।';

  @override
  String get locationTitle => 'কোথায় ডেলিভারি করব?';

  @override
  String get locationSubtitle =>
      'Nexmile কেবল ১ কিমির মধ্যেকার দোকান থেকে ডেলিভারি করে, তাই আপনার সঠিক অবস্থান দরকার।';

  @override
  String get locationReasonRadiusTitle => '১ কিমির মধ্যে দোকান';

  @override
  String get locationReasonRadiusBody =>
      'যেখান থেকে খাবার গরম পৌঁছাবে, কেবল সেই রান্নাঘরগুলিই দেখাই।';

  @override
  String get locationReasonAccuracyTitle => 'সঠিক দরজায়';

  @override
  String get locationReasonAccuracyBody =>
      'নিখুঁত পিন থাকলে ডেলিভারি পার্টনার ফোন না করেই আপনাকে খুঁজে পান।';

  @override
  String get locationReasonPrivacyTitle => 'শুধু অ্যাপ ব্যবহারের সময়';

  @override
  String get locationReasonPrivacyBody =>
      'আমরা পটভূমিতে আপনাকে ট্র্যাক করি না, আর ঠিকানা আপনি নিজেও লিখতে পারেন।';

  @override
  String get allowLocation => 'লোকেশন অনুমতি দিন';

  @override
  String get enterAddressManually => 'আমি নিজেই ঠিকানা লিখব';

  @override
  String get locationDenied =>
      'লোকেশন অনুমতি দেওয়া হয়নি। আপনি নিজেই পিন বসাতে পারেন।';

  @override
  String get locationDeniedForever =>
      'Nexmile-এর জন্য লোকেশন বন্ধ আছে। সেটিংসে চালু করুন বা পিন নিজে বসান।';

  @override
  String get locationServiceOff => 'এই ডিভাইসে লোকেশন বন্ধ আছে।';

  @override
  String get locationUnavailable =>
      'লোকেশন পাওয়া যায়নি। অনুগ্রহ করে পিন নিজে বসান।';

  @override
  String permStepCount(int step, int total) {
    return '$total-এর মধ্যে $step';
  }

  @override
  String get permNotNow => 'এখন নয়';

  @override
  String get permLocationTitle => 'আপনার কাছের খাবার খুঁজুন';

  @override
  String get permNotifyTitle => 'অর্ডারের কোনো আপডেট মিস করবেন না';

  @override
  String get permNotifyBody =>
      'অর্ডার কখন গ্রহণ হল, কখন তুলে নেওয়া হল আর কখন আপনার দরজায় পৌঁছাল, জানতে নোটিফিকেশন চালু করুন।';

  @override
  String get permNotifyLiveTitle => 'লাইভ অর্ডার আপডেট';

  @override
  String get permNotifyLiveBody =>
      'গ্রহণ হয়েছে, রান্না হচ্ছে, তুলে নেওয়া হয়েছে, ডেলিভার হয়েছে।';

  @override
  String get permNotifyRiderTitle => 'রাইডার আপনার দরজায়';

  @override
  String get permNotifyRiderBody =>
      'অ্যাপের দিকে না তাকিয়েই জানুন কখন বেরোতে হবে।';

  @override
  String get permNotifyControlTitle => 'নিয়ন্ত্রণ আপনার হাতে';

  @override
  String get permNotifyControlBody =>
      'ফোনের সেটিংস থেকে যেকোনো সময় নোটিফিকেশন বন্ধ করতে পারেন।';

  @override
  String get permNotifyAllow => 'নোটিফিকেশন চালু করুন';

  @override
  String get openSettings => 'সেটিংস';

  @override
  String get pinLocationTitle => 'আপনার ডেলিভারি পিন বসান';

  @override
  String get deliveryRadiusHint =>
      'বৃত্তটি সেই ১ কিমি দেখাচ্ছে যার মধ্যে Nexmile ডেলিভারি করে।';

  @override
  String get useMyLocation => 'আমার লোকেশন ব্যবহার করুন';

  @override
  String get deliveringHere => 'এখানে ডেলিভারি';

  @override
  String get dragToAdjust => 'পিন সরাতে ম্যাপ টানুন';

  @override
  String get confirmLocation => 'লোকেশন নিশ্চিত করুন';

  @override
  String get addressDetailsTitle => 'ঠিকানার বিবরণ';

  @override
  String get addressDetailsSubtitle =>
      'সঠিক দরজায় পৌঁছাতে ফ্ল্যাট নম্বর ও ল্যান্ডমার্ক দিন।';

  @override
  String get pinnedLocation => 'চিহ্নিত অবস্থান';

  @override
  String get changePin => 'বদলান';

  @override
  String get saveAddressAs => 'এই ঠিকানা সংরক্ষণ করুন';

  @override
  String get labelHome => 'বাড়ি';

  @override
  String get labelWork => 'অফিস';

  @override
  String get labelOther => 'অন্যান্য';

  @override
  String get addressLine1Label => 'ফ্ল্যাট, বাড়ি বা ভবন';

  @override
  String get addressLine1Hint => '12A, গ্রিন রেসিডেন্সি';

  @override
  String get addressLine2Label => 'রাস্তা বা এলাকা';

  @override
  String get addressLine2Hint => '২য় অ্যাভিনিউ, আন্না নগর';

  @override
  String get landmarkLabel => 'ল্যান্ডমার্ক';

  @override
  String get landmarkHint => 'বাস স্টপের উল্টোদিকে';

  @override
  String get cityLabel => 'শহর';

  @override
  String get stateLabel => 'রাজ্য';

  @override
  String get pincodeLabel => 'পিন কোড';

  @override
  String get invalidPincode => 'সঠিক ৬ সংখ্যার পিন কোড লিখুন';

  @override
  String get contactNameLabel => 'যোগাযোগের নাম';

  @override
  String get contactPhoneLabel => 'যোগাযোগের নম্বর';

  @override
  String get invalidMobileNumber => 'সঠিক ১০ সংখ্যার মোবাইল নম্বর লিখুন';

  @override
  String get makeDefaultAddress => 'ডিফল্টভাবে এখানেই ডেলিভারি';

  @override
  String get saveAddress => 'ঠিকানা সংরক্ষণ করুন';

  @override
  String get addressSaved => 'ঠিকানা সংরক্ষিত হয়েছে';

  @override
  String get addressBookTitle => 'ডেলিভারির ঠিকানা';

  @override
  String get manageAddresses => 'সংরক্ষিত ঠিকানা পরিচালনা করুন';

  @override
  String get noAddressesTitle => 'এখনো কোনো ঠিকানা নেই';

  @override
  String get noAddressesSubtitle =>
      'একটি ঠিকানা যোগ করুন, যাতে আপনার কাছে ডেলিভারি করা দোকান দেখাতে পারি।';

  @override
  String get addAddress => 'ঠিকানা যোগ করুন';

  @override
  String get setAsDefault => 'ডিফল্ট করুন';

  @override
  String get editLabel => 'সম্পাদনা';

  @override
  String get addressUpdated => 'ঠিকানা আপডেট হয়েছে';

  @override
  String get deleteLabel => 'মুছুন';

  @override
  String get deleteAddressTitle => 'এই ঠিকানা মুছবেন?';

  @override
  String get deleteAddressMessage => 'আপনি পরে আবার যোগ করতে পারবেন।';

  @override
  String get rescueDealsTitle => 'ফুড রেসকিউ';

  @override
  String get notTakingOrders => 'অর্ডার নেওয়া হচ্ছে না';

  @override
  String get closedRightNow => 'এখন বন্ধ';

  @override
  String minimumOrder(String amount) {
    return 'সর্বনিম্ন $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count বাকি';
  }

  @override
  String get soldOut => 'শেষ হয়ে গেছে';

  @override
  String get menuEmptyTitle => 'এখনো কোনো পদ নেই';

  @override
  String get menuEmptySubtitle => 'এই রেস্তোরাঁ তার মেনু যোগ করেনি।';

  @override
  String get moreDishesTitle => 'আরও পদ';

  @override
  String get menuSearchHint => 'পদ খুঁজুন';

  @override
  String get filtersShort => 'ফিল্টার';

  @override
  String get dietVeg => 'নিরামিষ';

  @override
  String get dietEgg => 'ডিম';

  @override
  String get dietNonVeg => 'আমিষ';

  @override
  String get menuBestsellerChip => 'সবচেয়ে জনপ্রিয়';

  @override
  String get menuFoodType => 'খাবারের ধরন';

  @override
  String get menuShowOnly => 'শুধু দেখান';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি পদ',
      one: '1টি পদ',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি পদ দেখুন',
      one: '1টি পদ দেখুন',
      zero: 'কোনো পদ নেই',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'অন্য কোনো পদের নাম চেষ্টা করুন, বা একটি ফিল্টার সরান।';

  @override
  String get menuBrowse => 'মেনু';

  @override
  String get customisable => 'পছন্দমতো';

  @override
  String get requiredLabel => 'আবশ্যক';

  @override
  String get optionalLabel => 'ঐচ্ছিক';

  @override
  String get chooseOne => 'একটি বাছুন';

  @override
  String chooseUpTo(int count) {
    return 'সর্বোচ্চ $countটি বাছুন';
  }

  @override
  String chooseAtLeast(int count) {
    return 'অন্তত $countটি বাছুন';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min থেকে $maxটি বাছুন';
  }

  @override
  String get specialInstructions => 'বিশেষ নির্দেশ';

  @override
  String get specialInstructionsHint => 'কম ঝাল, পেঁয়াজ নয়…';

  @override
  String addForAmount(String amount) {
    return 'যোগ করুন · $amount';
  }

  @override
  String get deliveryLabel => 'ডেলিভারি';

  @override
  String get pickupLabel => 'নিজে নেওয়া';

  @override
  String get packagingLabel => 'প্যাকেজিং';

  @override
  String get discountLabel => 'ছাড়';

  @override
  String get billDetailsTitle => 'বিলের বিবরণ';

  @override
  String get clearCart => 'কার্ট খালি করুন';

  @override
  String get clearCartTitle => 'এই কার্ট খালি করবেন?';

  @override
  String get clearCartMessage => 'এর সবকিছু সরিয়ে ফেলা হবে।';

  @override
  String unavailableItemsNotice(String items) {
    return 'আর পাওয়া যাচ্ছে না: $items';
  }

  @override
  String get removeUnavailable => 'সরিয়ে ফেলুন';

  @override
  String minimumNotMet(String amount) {
    return 'সর্বনিম্ন অর্ডার $amount';
  }

  @override
  String get checkoutTitle => 'চেকআউট';

  @override
  String get deliveryAddressLabel => 'ডেলিভারির ঠিকানা';

  @override
  String get noAddressSelected => 'কোনো ঠিকানা বাছা হয়নি';

  @override
  String get paymentMethodLabel => 'পেমেন্ট';

  @override
  String get payOnDelivery => 'ডেলিভারিতে নগদ';

  @override
  String get noteToRestaurant => 'রেস্তোরাঁর জন্য নোট';

  @override
  String get noteToRestaurantHint => 'দুবার বেল বাজান…';

  @override
  String get activeOrdersTitle => 'চলমান অর্ডার';

  @override
  String get pastOrdersTitle => 'আগের অর্ডার';

  @override
  String get orderItemsTitle => 'পদ';

  @override
  String get orderProgressTitle => 'অগ্রগতি';

  @override
  String get arrivingIn => 'পৌঁছাবে';

  @override
  String get pickupCodeLabel => 'পিকআপ কোড';

  @override
  String get cancellationReasonLabel => 'বাতিলের কারণ';

  @override
  String get riderLabel => 'ডেলিভারি পার্টনার';

  @override
  String get callRider => 'কল করুন';

  @override
  String get trackRider => 'রাইডার ট্র্যাক করুন';

  @override
  String get riderLocationSoon =>
      'অর্ডার তুলে নেওয়ার পরে রাইডারের অবস্থান এখানে দেখা যাবে।';

  @override
  String get riderLocationStale => 'রাইডারের অবস্থান আপডেট হচ্ছে…';

  @override
  String get recentreOnRider => 'রাইডারে কেন্দ্র করুন';

  @override
  String get viewInvoice => 'ট্যাক্স ইনভয়েস';

  @override
  String get cancelOrder => 'অর্ডার বাতিল করুন';

  @override
  String get cancelOrderTitle => 'এই অর্ডার বাতিল করবেন?';

  @override
  String get cancelOrderMessage =>
      'রেস্তোরাঁ গ্রহণ করার আগেই কেবল বাতিল করা যায়।';

  @override
  String get cancelReasonLabel => 'কারণ';

  @override
  String get cancelReasonFallback => 'ক্রেতা বাতিল করেছেন';

  @override
  String get orderCancelled => 'অর্ডার বাতিল হয়েছে';

  @override
  String get currentLocationLabel => 'বর্তমান অবস্থান';

  @override
  String get onLabel => 'চালু';

  @override
  String get offLabel => 'বন্ধ';

  @override
  String get profileCoupons => 'আপনার কুপন';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ব্যবহার করা যাবে',
      one: '1টি ব্যবহার করা যাবে',
      zero: 'এখনো নেই',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'আপনার পছন্দ';

  @override
  String get profileVegMode => 'নিরামিষ মোড';

  @override
  String get profileVegModeHint => 'শুধু নিরামিষ রেস্তোরাঁ ও পদ';

  @override
  String get profileAppearance => 'থিম';

  @override
  String get appearanceSystem => 'ফোনের মতোই';

  @override
  String get appearanceLight => 'হালকা';

  @override
  String get appearanceDark => 'গাঢ়';

  @override
  String get profileNotifications => 'নোটিফিকেশন';

  @override
  String get profileFoodDelivery => 'খাবার ডেলিভারি';

  @override
  String get profileFavourites => 'আপনার প্রিয় রেস্তোরাঁ';

  @override
  String get profileHelp => 'সাহায্য ও সহায়তা';

  @override
  String get profileMore => 'আরও';

  @override
  String get profileFeedback => 'মতামত জানান';

  @override
  String get profileSafety => 'জরুরি নিরাপত্তা সমস্যা জানান';

  @override
  String get profileAbout => 'Nexmile সম্পর্কে';

  @override
  String get couponsEmptyTitle => 'এখন কোনো কুপন নেই';

  @override
  String get couponsEmptyBody => 'ব্যবহার করার মতো কুপন এলে এখানে দেখা যাবে।';

  @override
  String couponFlatOff(String amount) {
    return '$amount ছাড়';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% ছাড়';
  }

  @override
  String couponUpTo(String amount) {
    return 'সর্বোচ্চ $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount-এর বেশি অর্ডারে';
  }

  @override
  String couponValidTill(String date) {
    return '$date পর্যন্ত বৈধ';
  }

  @override
  String get couponAllRestaurants => 'সব রেস্তোরাঁয়';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant-এ';
  }

  @override
  String couponCopied(String code) {
    return 'কোড $code কপি হয়েছে';
  }

  @override
  String get favouritesEmptyTitle => 'এখনো কোনো প্রিয় রেস্তোরাঁ নেই';

  @override
  String get favouritesEmptyBody =>
      'কোনো রেস্তোরাঁর হার্টে ট্যাপ করলে সেটি এখানে সংরক্ষিত থাকবে।';

  @override
  String get helpCall => 'আমাদের কল করুন';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'আমাদের ইমেল করুন';

  @override
  String helpHours(String hours) {
    return 'আমাদের পাবেন: $hours';
  }

  @override
  String get helpFaqs => 'সাধারণ প্রশ্ন';

  @override
  String get helpNothing =>
      'সাহায্যের তথ্য এখন পাওয়া যাচ্ছে না। পরে আবার চেষ্টা করুন।';

  @override
  String get feedbackPrompt => 'Nexmile আপনার কেমন লাগছে?';

  @override
  String get feedbackHint => 'কী ভালো লেগেছে, বা কী আরও ভালো করতে পারি, জানান';

  @override
  String get feedbackNeedRating => 'আগে একটি রেটিং দিন';

  @override
  String get feedbackThanks =>
      'ধন্যবাদ! আপনার মতামত আমাদের টিমের কাছে পৌঁছে গেছে।';

  @override
  String get safetyIntro =>
      'আপনি বা অন্য কেউ বিপদে থাকলে আগে জরুরি পরিষেবায় ফোন করুন।';

  @override
  String get safetyCallEmergency => '112-এ কল করুন';

  @override
  String get safetyCallEmergencyBody => 'পুলিশ, দমকল ও অ্যাম্বুলেন্স';

  @override
  String get safetyCallNexmile => 'Nexmile নিরাপত্তা লাইনে কল করুন';

  @override
  String get safetyCallNexmileBody => '২৪ ঘণ্টাই চালু';

  @override
  String aboutVersion(String version) {
    return 'ভার্সন $version';
  }

  @override
  String get aboutTerms => 'পরিষেবার শর্তাবলী';

  @override
  String get aboutPrivacy => 'গোপনীয়তা নীতি';

  @override
  String get aboutLicences => 'ওপেন-সোর্স লাইসেন্স';

  @override
  String get notifyOrderUpdates => 'অর্ডার আপডেট';

  @override
  String get notifyOrderUpdatesBody =>
      'সবসময় চালু থাকে, যাতে জানতে পারেন আপনার খাবার কোথায়।';

  @override
  String get notifyPromotions => 'অফার ও প্রোমোশন';

  @override
  String get notifyPromotionsBody => 'আপনার কাছের ডিল, কুপন আর নতুন রেস্তোরাঁ।';

  @override
  String get notifyPhoneOff => 'এই ফোনে Nexmile-এর নোটিফিকেশন বন্ধ আছে।';

  @override
  String get notifyTurnOn => 'চালু করুন';

  @override
  String get linkOpenFailed => 'এই ফোনে এটি খোলা গেল না।';

  @override
  String get editProfileTitle => 'প্রোফাইল সম্পাদনা';

  @override
  String get editProfileSubtitle =>
      'রেস্তোরাঁ ও ডেলিভারি পার্টনার আপনার নামই দেখেন।';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ';

  @override
  String get profileUpdated => 'প্রোফাইল হালনাগাদ হয়েছে';

  @override
  String get deleteAccount => 'অ্যাকাউন্ট মুছুন';

  @override
  String get deleteAccountTitle => 'আপনার অ্যাকাউন্ট মুছবেন?';

  @override
  String get deleteAccountMessage =>
      'সব ডিভাইস থেকে সাইন আউট হয়ে যাবেন। পুরনো অর্ডার ও চালান কর নথির জন্য রাখা হয়।';

  @override
  String get accountDeleted => 'আপনার অ্যাকাউন্ট মুছে ফেলা হয়েছে';

  @override
  String get devicesTitle => 'সাইন-ইন করা ডিভাইস';

  @override
  String get devicesSubtitle => 'আপনি কোথায় সাইন ইন আছেন';

  @override
  String get devicesEmptyTitle => 'অন্য কোনো ডিভাইস নেই';

  @override
  String get devicesEmptySubtitle => 'আপনি শুধু এই ডিভাইসেই সাইন ইন আছেন।';

  @override
  String get signOutDevice => 'সাইন আউট';

  @override
  String get signOutDeviceTitle => 'এই ডিভাইস সাইন আউট করবেন?';

  @override
  String get signOutDeviceMessage =>
      'আপনি যদি এই ডিভাইসটিই ব্যবহার করেন তবে আবার সাইন ইন করতে হবে।';

  @override
  String get deviceSignedOut => 'ডিভাইস সাইন আউট হয়েছে';

  @override
  String get signOutEverywhere => 'সব জায়গা থেকে সাইন আউট';

  @override
  String get signOutEverywhereTitle => 'সব জায়গা থেকে সাইন আউট করবেন?';

  @override
  String get signOutEverywhereMessage =>
      'এই ডিভাইস সহ সব ডিভাইস সাইন আউট হয়ে যাবে।';

  @override
  String get unknownDevice => 'অজানা ডিভাইস';

  @override
  String get activeNow => 'এখন সক্রিয়';

  @override
  String minutesAgo(int count) {
    return '$count মিনিট আগে';
  }

  @override
  String hoursAgo(int count) {
    return '$count ঘণ্টা আগে';
  }

  @override
  String daysAgo(int count) {
    return '$count দিন আগে';
  }

  @override
  String get filtersAndSorting => 'ফিল্টার ও সাজানো';

  @override
  String get clearAll => 'সব মুছুন';

  @override
  String get showResults => 'ফলাফল দেখুন';

  @override
  String get closeLabel => 'বন্ধ করুন';

  @override
  String get sortByTitle => 'সাজান';

  @override
  String get sortRelevance => 'প্রাসঙ্গিকতা';

  @override
  String get sortRating => 'রেটিং';

  @override
  String get sortDeliveryTime => 'ডেলিভারি সময়';

  @override
  String get sortCostLowHigh => 'দাম: কম থেকে বেশি';

  @override
  String get sortCostHighLow => 'দাম: বেশি থেকে কম';

  @override
  String get timeSection => 'সময়';

  @override
  String get nearAndFast => 'কাছে ও দ্রুত';

  @override
  String get openNow => 'এখন খোলা';

  @override
  String get ratingSection => 'রেস্তোরাঁর রেটিং';

  @override
  String ratedAbove(String rating) {
    return '$rating+ রেটিং';
  }

  @override
  String get offersSection => 'অফার';

  @override
  String get hasOffersLabel => 'অফার আছে';

  @override
  String get dishPriceSection => 'পদের দাম';

  @override
  String costUnder(String amount) {
    return '$amount এর কম';
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
  String get moreSection => 'আরও';

  @override
  String get noPackagingCharges => 'প্যাকেজিং চার্জ নেই';

  @override
  String get allRestaurantsTitle => 'সব রেস্তোরাঁ';

  @override
  String get whatsOnYourMind => 'কী খেতে ইচ্ছে করছে?';

  @override
  String get listeningNow => 'শুনছি…';

  @override
  String get speakNowHint => 'একটি পদ বা রেস্তোরাঁর নাম বলুন';

  @override
  String get voiceUnavailable => 'ভয়েস সার্চ পাওয়া যাচ্ছে না';

  @override
  String get voiceUnavailableBody => 'আপনি টাইপ করেও খুঁজতে পারেন।';

  @override
  String get microphoneDenied => 'মাইক্রোফোনের অনুমতি বন্ধ';

  @override
  String get voiceSearchLabel => 'কণ্ঠে খুঁজুন';

  @override
  String get ratingsAndReviews => 'রেটিং ও পর্যালোচনা';

  @override
  String get reviewsWithTextOnly => 'পর্যালোচনা সহ';

  @override
  String get noReviewsTitle => 'এখনও কোনো রেটিং নেই';

  @override
  String get noReviewsSubtitle => 'অর্ডারের পরে প্রথম রেটিংটি আপনিই দিন।';

  @override
  String get rateOrderTitle => 'আপনার অর্ডার রেট করুন';

  @override
  String get rateDishesTitle => 'খাবারগুলি রেট করুন';

  @override
  String get reviewHint => 'আর কিছু বলতে চান? (ঐচ্ছিক)';

  @override
  String get submitRating => 'রেটিং পাঠান';

  @override
  String get reviewThanks => 'ধন্যবাদ — আপনার রেটিং জমা হয়েছে।';

  @override
  String get rateThisOrder => 'এই অর্ডার রেট করুন';

  @override
  String get walletTitle => 'Nexmile ওয়ালেট';

  @override
  String get walletBalance => 'ওয়ালেট ব্যালান্স';

  @override
  String get walletBalanceHint => 'যেকোনো অর্ডারের পেমেন্টে ব্যবহার করুন।';

  @override
  String get walletAddMoney => 'টাকা যোগ করুন';

  @override
  String get walletEnterAmount => 'টাকার পরিমাণ লিখুন';

  @override
  String walletAmountRange(String min, String max) {
    return '$min থেকে $max-এর মধ্যে';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount যোগ করুন';
  }

  @override
  String get walletSecuredBy => 'Razorpay-এর মাধ্যমে পেমেন্ট সুরক্ষিত';

  @override
  String get walletHistory => 'লেনদেনের ইতিহাস';

  @override
  String get walletNoHistory =>
      'এখনো কোনো লেনদেন নেই। যোগ করা বা খরচ করা টাকা এখানে দেখা যাবে।';

  @override
  String get walletEntryTopUp => 'টাকা যোগ হয়েছে';

  @override
  String get walletEntryOrder => 'অর্ডারের পেমেন্ট';

  @override
  String walletEntryOrderNumber(String number) {
    return 'অর্ডার $number-এর পেমেন্ট';
  }

  @override
  String get walletEntryRefund => 'রিফান্ড';

  @override
  String walletMoneyAdded(String amount) {
    return 'আপনার ওয়ালেটে $amount যোগ হয়েছে';
  }

  @override
  String get walletPaymentFailed =>
      'পেমেন্ট হয়নি। আপনার অ্যাকাউন্ট থেকে কোনো টাকা কাটা হয়নি।';

  @override
  String get walletPaymentConfirming =>
      'পেমেন্ট পাওয়া গেছে। কয়েক মিনিটের মধ্যে আপনার ব্যালান্স আপডেট হবে।';

  @override
  String get walletUseBalance => 'ওয়ালেট ব্যালান্স ব্যবহার করুন';

  @override
  String walletAvailable(String amount) {
    return 'উপলব্ধ: $amount';
  }

  @override
  String get walletPaidFromWallet => 'ওয়ালেট থেকে দেওয়া';

  @override
  String get walletPayOnDelivery => 'ডেলিভারিতে দিতে হবে';

  @override
  String get walletCoversOrder => 'পুরো টাকা আপনার ওয়ালেট থেকে';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return 'ওয়ালেট থেকে $wallet, ডেলিভারিতে $rest';
  }

  @override
  String get walletTopUpUnavailable =>
      'এখন টাকা যোগ করা যাচ্ছে না। পরে আবার চেষ্টা করুন।';

  @override
  String walletFull(String limit) {
    return 'আপনার ওয়ালেট $limit-এর সীমায় পৌঁছে গেছে।';
  }

  @override
  String get searchAddressHint => 'এলাকা, রাস্তা বা ল্যান্ডমার্ক খুঁজুন';

  @override
  String get selectLocationTitle => 'লোকেশন বাছুন';

  @override
  String get useCurrentLocation => 'বর্তমান লোকেশন ব্যবহার করুন';

  @override
  String get locatingYou => 'আপনি কোথায় আছেন খোঁজা হচ্ছে…';

  @override
  String get locationOffHint => 'এটি ব্যবহার করতে লোকেশন অনুমতি দিন';

  @override
  String get savedAddressesHeading => 'সংরক্ষিত ঠিকানা';

  @override
  String get recentLocationsHeading => 'সাম্প্রতিক লোকেশন';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ডেলিভারির লোকেশন বাছুন';

  @override
  String get movePinTooltip => 'পিনটি সরিয়ে আপনার সঠিক ডেলিভারি লোকেশনে রাখুন';

  @override
  String get locatingPin => 'ঠিকানা খোঁজা হচ্ছে…';

  @override
  String get deliveryDetailsHeading => 'ডেলিভারির বিবরণ';

  @override
  String get addressDetailsLabel => 'ঠিকানার বিবরণ*';

  @override
  String get addressDetailsHint => 'যেমন: তলা, বাড়ির নম্বর';

  @override
  String get missingAreaHint =>
      'এই পিনের পুরো ঠিকানা পাওয়া যায়নি। বাকিটা লিখে দিন।';

  @override
  String get whoToContact => 'এই ডেলিভারির জন্য কার সঙ্গে যোগাযোগ করব?';

  @override
  String get contactMyself => 'আমি নিজে';

  @override
  String get contactSomeoneElse => 'অন্য কেউ';

  @override
  String get receiverDetailsHeading => 'এই ঠিকানায় প্রাপকের বিবরণ';

  @override
  String get receiverAddPrompt => 'প্রাপকের নাম ও নম্বর যোগ করুন';

  @override
  String get receiverSheetTitle => 'প্রাপকের বিবরণ';

  @override
  String get doorPhotoHeading => 'দরজা/বাড়ির ছবি (ঐচ্ছিক)';

  @override
  String get doorPhotoAdd => 'ছবি যোগ করুন';

  @override
  String get doorPhotoBody =>
      'এতে আমাদের ডেলিভারি পার্টনাররা আপনার সঠিক লোকেশন আরও তাড়াতাড়ি খুঁজে পাবেন';

  @override
  String get doorPhotoChange => 'বদলান';

  @override
  String get doorPhotoRemove => 'সরান';

  @override
  String get photoFromCamera => 'ছবি তুলুন';

  @override
  String get photoFromGallery => 'গ্যালারি থেকে বাছুন';

  @override
  String get photoUploaded => 'ছবি যোগ হয়েছে';

  @override
  String get photoUploadFailed =>
      'ছবিটি আপলোড করা যায়নি। পরে আবার চেষ্টা করুন।';

  @override
  String get addressSavedPhotoFailed =>
      'ঠিকানা সংরক্ষিত হয়েছে। ছবিটি আপলোড করা যায়নি।';

  @override
  String get removePhotoLabel => 'ছবি সরান';

  @override
  String get photoRemoved => 'ছবি সরানো হয়েছে';

  @override
  String get shareLabel => 'শেয়ার করুন';

  @override
  String get addDoorPhotoLabel => 'দরজার ছবি যোগ করুন';

  @override
  String get searchAddressNoResults =>
      'কোনো জায়গা পাওয়া যায়নি। কাছের কোনো ল্যান্ডমার্ক, এলাকার নাম বা পিন কোড দিয়ে চেষ্টা করুন।';

  @override
  String get clearLabel => 'মুছুন';

  @override
  String get trackingArrivingNow => 'এখনই পৌঁছাচ্ছে';

  @override
  String get trackingLive => 'লাইভ';

  @override
  String get trackingStepConfirmed => 'নিশ্চিত হয়েছে';

  @override
  String get trackingStepPreparing => 'তৈরি হচ্ছে';

  @override
  String get trackingStepOnTheWay => 'পথে আছে';

  @override
  String get trackingStepDelivered => 'ডেলিভার হয়েছে';

  @override
  String get trackingFindingRider => 'ডেলিভারি পার্টনার ঠিক করা হচ্ছে…';

  @override
  String get trackingPinYou => 'আপনি';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance দূরে আছেন';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name-কে মেসেজ করুন';
  }

  @override
  String get trackingDeliveringTo => 'ডেলিভারির ঠিকানা';

  @override
  String get trackingOrderDetails => 'অর্ডারের বিবরণ';

  @override
  String get dispatchSearching =>
      'রেস্তোরাঁর কাছে ডেলিভারি পার্টনার খোঁজা হচ্ছে…';

  @override
  String get dispatchNoRider =>
      'এখনো কোনো ডেলিভারি পার্টনার অর্ডারটি নেননি। আমাদের টিম এখনই একজনকে ঠিক করে দিচ্ছে।';

  @override
  String get vehicleBike => 'বাইক';

  @override
  String get vehicleScooter => 'স্কুটার';

  @override
  String get vehicleBicycle => 'সাইকেল';

  @override
  String get vehicleElectric => 'ইলেকট্রিক স্কুটার';

  @override
  String get exitTitle => 'Nexmile থেকে বেরোবেন?';

  @override
  String get exitBody => 'আপনি কি সত্যিই অ্যাপ থেকে বেরোতে চান?';

  @override
  String get exitConfirm => 'বেরিয়ে যান';

  @override
  String cartSavedBanner(String amount) {
    return 'এই অর্ডারে আপনার $amount সাশ্রয় হয়েছে';
  }

  @override
  String get cartAddMoreItems => 'আরও জিনিস যোগ করুন';

  @override
  String get cartAddNote => 'রেস্তোরাঁর জন্য নোট যোগ করুন';

  @override
  String get cartOrderNoteHint => 'যেমন: কোনো কিছুতেই পেঁয়াজ বা রসুন দেবেন না';

  @override
  String get cartNoteSave => 'সংরক্ষণ করুন';

  @override
  String get cartNoCutlery => 'চামচ-কাঁটা পাঠাবেন না';

  @override
  String get cartNoCutleryThanks =>
      'প্লাস্টিক বর্জ্য কমাতে সাহায্য করার জন্য ধন্যবাদ';

  @override
  String get cartSavingsCorner => 'সাশ্রয়ের সুযোগ';

  @override
  String get cartDeliveryInstructions => 'ডেলিভারির নির্দেশ';

  @override
  String get cartInstructionsRider =>
      'এগুলো শুধু আপনার ডেলিভারি পার্টনার দেখতে পাবেন';

  @override
  String get instructionLeaveAtDoor => 'দরজায় রেখে যান';

  @override
  String get instructionNoBell => 'বেল বাজাবেন না';

  @override
  String get instructionNoCall => 'ফোন করবেন না';

  @override
  String get instructionSecurity => 'সিকিউরিটির কাছে দিন';

  @override
  String get instructionPet => 'বাড়িতে পোষ্য আছে';

  @override
  String get cartInclTaxes => 'কর ও চার্জ সহ';

  @override
  String cartSavedTag(String amount) {
    return '$amount সাশ্রয়';
  }

  @override
  String get cartPayUsing => 'পেমেন্টের মাধ্যম';

  @override
  String get cartWalletAndCash => 'ওয়ালেট + নগদ';

  @override
  String cartCashRest(String amount) {
    return 'অর্ডার পৌঁছালে $amount দিন';
  }

  @override
  String get cartCashFull => 'অর্ডার পৌঁছালে টাকা দিন';

  @override
  String get cartCashNothing => 'ডেলিভারিতে কিছু দিতে হবে না';

  @override
  String get cartTotal => 'মোট';

  @override
  String get cartPlaceOrder => 'অর্ডার করুন';

  @override
  String cartDeliverTo(String place) {
    return 'ডেলিভারি হবে: $place';
  }

  @override
  String get cartChange => 'বদলান';

  @override
  String get cartNoAddress => 'কোথায় ডেলিভারি করব?';

  @override
  String get cartNoAddressHint => 'অর্ডার করতে একটি ঠিকানা যোগ করুন';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant থেকে পিকআপ';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'প্রায় $minutes মিনিটে তৈরি হবে';
  }

  @override
  String get cartChooseAddress => 'ডেলিভারির ঠিকানা বাছুন';

  @override
  String get cartDone => 'হয়ে গেছে';

  @override
  String get supportTitle => 'Nexmile সহায়তা';

  @override
  String get supportBubble => 'সাহায্য';

  @override
  String get supportAiLabel => 'AI সহকারী';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile টিম';
  }

  @override
  String get supportDemoBanner =>
      'ডেমো: এগুলো শুধু নমুনা উত্তর। আসল AI সহকারী এখনো যুক্ত হয়নি।';

  @override
  String get supportEmptyTitle => 'আমরা কীভাবে সাহায্য করতে পারি?';

  @override
  String get supportEmptyBody =>
      'অর্ডার, পেমেন্ট বা অন্য যেকোনো বিষয়ে জিজ্ঞেস করুন। প্রথমে আমাদের AI সহকারী উত্তর দেয়, আর এটি সাহায্য করতে না পারলে আমাদের টিমের একজন দায়িত্ব নেন।';

  @override
  String get supportSuggestWhere => 'আমার অর্ডার কোথায়?';

  @override
  String get supportSuggestMissing => 'অর্ডারে কিছু একটা আসেনি';

  @override
  String get supportSuggestRefund => 'রিফান্ড নিয়ে একটা প্রশ্ন আছে';

  @override
  String get supportComposerHint => 'মেসেজ লিখুন';

  @override
  String get supportSend => 'পাঠান';

  @override
  String get supportTyping => 'AI সহকারী লিখছে…';

  @override
  String get supportNotSent => 'পাঠানো যায়নি';

  @override
  String get supportTookTooLong => 'উত্তর আসতে অনেক দেরি হয়ে গেল।';

  @override
  String get supportSlowDown => 'আরও মেসেজ পাঠানোর আগে একটু অপেক্ষা করুন।';

  @override
  String get supportUnreachable =>
      'এখন চ্যাটে সংযোগ করা যাচ্ছে না। আমাদের কল করুন, অথবা কয়েক মিনিট পরে আবার চেষ্টা করুন।';

  @override
  String get supportOffline =>
      'আপনি অফলাইনে আছেন। এটি আপনার শেষ সংরক্ষিত চ্যাট।';

  @override
  String get supportClosed => 'এই চ্যাটটি বন্ধ হয়ে গেছে।';

  @override
  String get supportStartNew => 'নতুন চ্যাট শুরু করুন';

  @override
  String get supportTalkToPerson => 'একজন মানুষের সঙ্গে কথা বলুন';

  @override
  String get supportMarkSolved => 'সমাধান হয়ে গেছে';

  @override
  String get supportHelpful => 'কাজে লেগেছে';

  @override
  String get supportNotHelpful => 'কাজে লাগেনি';

  @override
  String get supportNeedHelp => 'সাহায্য লাগবে?';

  @override
  String get supportChatWithUs => 'আমাদের সঙ্গে চ্যাট করুন';

  @override
  String get supportChatWithUsBody =>
      'আমাদের AI সহকারী কয়েক সেকেন্ডেই উত্তর দেয়, আর দরকার হলে একজন মানুষ দায়িত্ব নেন।';

  @override
  String get supportActionFailed => 'কাজটি হয়নি। আবার চেষ্টা করুন।';

  @override
  String get supportOrderNotFound =>
      'এই অর্ডারটি আপনার অ্যাকাউন্টে পাওয়া যায়নি।';

  @override
  String get supportOrderLookupDown =>
      'এখন অর্ডারটি দেখা গেল না। আপনি প্রশ্নটি লিখে পাঠাতে পারেন।';

  @override
  String get supportHandedOverNote => 'টিমের একজন সদস্য উত্তর দেবেন';

  @override
  String get supportVoiceSpeak => 'বলুন';

  @override
  String get supportVoiceListening => 'শুনছি…';

  @override
  String get supportVoiceHint =>
      'আপনার প্রশ্ন জিজ্ঞেস করুন। কথা বলা থামালেই এটি পাঠানো হবে।';

  @override
  String get supportVoiceNotHeard =>
      'ঠিকমতো শোনা গেল না। আবার চেষ্টা করুন, অথবা মেসেজ লিখুন।';

  @override
  String get supportVoiceMicDenied =>
      'আমাদের সঙ্গে কথা বলতে মাইক্রোফোনের অনুমতি দিন। আপনি এখনও টাইপ করতে পারেন।';

  @override
  String get supportVoiceReadAloud => 'পড়ে শোনান';

  @override
  String get supportVoiceStop => 'থামান';

  @override
  String get restaurantNew => 'নতুন';

  @override
  String get walletHideBalance => 'ব্যালান্স লুকান';

  @override
  String get walletShowBalance => 'ব্যালান্স দেখান';

  @override
  String get walletBalanceHiddenLabel => 'ব্যালান্স লুকানো আছে';

  @override
  String walletUpdatedAt(String time) {
    return 'আপডেট: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'অন্তত $amount যোগ করুন';
  }

  @override
  String walletAboveMax(String amount) {
    return 'সর্বোচ্চ $amount যোগ করতে পারবেন';
  }

  @override
  String get walletOpeningPayment => 'পেমেন্ট খোলা হচ্ছে…';

  @override
  String get walletConfirmingPayment => 'পেমেন্ট নিশ্চিত করা হচ্ছে…';

  @override
  String get walletTransactions => 'লেনদেন';

  @override
  String get walletFilterAll => 'সব';

  @override
  String get walletFilterAdded => 'যোগ করা টাকা';

  @override
  String get walletFilterSpent => 'খরচ করা টাকা';

  @override
  String get walletSearch => 'খুঁজুন';

  @override
  String get walletSearchHint => 'অর্ডার নম্বর বা ID খুঁজুন';

  @override
  String get walletDateFilter => 'তারিখ দিয়ে ফিল্টার করুন';

  @override
  String get walletClearFilters => 'ফিল্টার সরান';

  @override
  String get walletNoMatches =>
      'আপনার ফিল্টারের সঙ্গে মেলে এমন কোনো লেনদেন নেই';

  @override
  String get walletEmptyTitle => 'এখনো কোনো লেনদেন নেই';

  @override
  String get walletEmptyBody =>
      'যোগ করা, অর্ডারে খরচ করা বা রিফান্ড হিসেবে ফেরত পাওয়া টাকা এখানে দেখা যাবে।';

  @override
  String get walletToday => 'আজ';

  @override
  String get walletYesterday => 'গতকাল';

  @override
  String walletLatestOnly(int count) {
    return 'আপনার সাম্প্রতিক $countটি লেনদেন দেখানো হচ্ছে';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'অর্ডার $number-এর রিফান্ড';
  }

  @override
  String get walletDetailsTitle => 'লেনদেনের বিবরণ';

  @override
  String get walletDetailDate => 'তারিখ ও সময়';

  @override
  String get walletDetailId => 'লেনদেন ID';

  @override
  String get walletDetailType => 'ধরন';

  @override
  String get walletDetailMethod => 'পেমেন্টের মাধ্যম';

  @override
  String get walletDetailStatus => 'অবস্থা';

  @override
  String get walletDetailOrder => 'অর্ডার';

  @override
  String get walletDetailReference => 'পেমেন্ট রেফারেন্স';

  @override
  String get walletDetailBalanceAfter => 'লেনদেনের পর ব্যালান্স';

  @override
  String get walletCredit => 'ক্রেডিট';

  @override
  String get walletDebit => 'ডেবিট';

  @override
  String get walletStatusSuccess => 'সফল';

  @override
  String get walletStatusPending => 'অপেক্ষমাণ';

  @override
  String get walletStatusFailed => 'ব্যর্থ';

  @override
  String get walletMethodOnline => 'অনলাইন পেমেন্ট';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'কার্ড';

  @override
  String get walletMethodNetbanking => 'নেট ব্যাংকিং';

  @override
  String get walletMethodRefund => 'ওয়ালেটে রিফান্ড';

  @override
  String get walletCopyId => 'ID কপি করুন';

  @override
  String get walletIdCopied => 'লেনদেন ID কপি হয়েছে';

  @override
  String get walletShareDetails => 'বিবরণ শেয়ার করুন';
}
