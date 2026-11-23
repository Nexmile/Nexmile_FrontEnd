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
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

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
  String get riderLocationStale => 'Updating rider\'s location…';

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
}
