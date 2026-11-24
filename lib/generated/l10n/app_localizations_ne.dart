// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'यो फिल्ड आवश्यक छ';

  @override
  String get tagline => 'छिटो डेलिभरी। ताजा मुस्कान।';

  @override
  String get chooseLanguageTitle => 'आफ्नो भाषा छान्नुहोस्';

  @override
  String get chooseLanguageSubtitle =>
      'तपाईंलाई सहज लाग्ने भाषा छान्नुहोस्। तपाईं यसलाई जुनसुकै बेला सेटिङमा परिवर्तन गर्न सक्नुहुन्छ।';

  @override
  String get searchLanguageHint => 'भाषा खोज्नुहोस्';

  @override
  String get noLanguageFound => 'कुनै भाषा फेला परेन';

  @override
  String languagesAvailable(int count) {
    return '$count भाषा उपलब्ध छन्';
  }

  @override
  String get continueLabel => 'जारी राख्नुहोस्';

  @override
  String get selectedLabel => 'छानिएको';

  @override
  String get defaultLabel => 'पूर्वनिर्धारित';

  @override
  String get homeTitle => 'Nexmile मा स्वागत छ';

  @override
  String get homeSubtitle =>
      'ताजा किराना, तातो खाना र दैनिक आवश्यकताहरू तपाईंको नजिकैका पसलहरूबाट।';

  @override
  String get changeLanguage => 'भाषा परिवर्तन गर्नुहोस्';

  @override
  String get languageUpdated => 'भाषा परिवर्तन गरियो';

  @override
  String get appLanguageLabel => 'एपको भाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्ते, $name';
  }

  @override
  String get loginTitle => 'Nexmile मा साइन इन गर्नुहोस्';

  @override
  String get loginSubtitle =>
      'आफ्नो इमेल वा मोबाइल नम्बर लेख्नुहोस्, हामी प्रमाणीकरण कोड पठाउनेछौं।';

  @override
  String get emailOrPhoneLabel => 'इमेल वा मोबाइल नम्बर';

  @override
  String get emailOrPhoneHint => 'name@example.com वा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सही इमेल ठेगाना वा 10 अंकको मोबाइल नम्बर लेख्नुहोस्';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'कोड पठाउनुहोस्';

  @override
  String get agreeToTermsOnContinue =>
      'अगाडि बढेर तपाईं हाम्रा सेवाका सर्तहरू र गोपनीयता नीतिमा सहमत हुनुहुन्छ।';

  @override
  String get otpTitle => 'यो तपाईं नै हो भनी प्रमाणित गर्नुहोस्';

  @override
  String otpSubtitle(String target) {
    return '$target मा पठाइएको 6 अंकको कोड लेख्नुहोस्';
  }

  @override
  String get verifyCode => 'प्रमाणित गर्नुहोस्';

  @override
  String get resendCode => 'कोड पुनः पठाउनुहोस्';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकेन्डमा पुनः पठाउनुहोस्';
  }

  @override
  String get codeResent => 'नयाँ कोड पठाइएको छ';

  @override
  String get incorrectCode =>
      'यो कोड गलत छ वा म्याद सकिएको छ। नयाँ कोड मगाउनुहोस्।';

  @override
  String get enterFullCode => 'पूरै 6 अंक लेख्नुहोस्';

  @override
  String get accountSuspended =>
      'यो खाता निलम्बन गरिएको छ। कृपया सहयोग टोलीलाई सम्पर्क गर्नुहोस्।';

  @override
  String get tooManyAttempts =>
      'धेरै पटक प्रयास भयो। कृपया केही बेरपछि पुनः प्रयास गर्नुहोस्।';

  @override
  String get sessionExpired =>
      'तपाईंको सत्र समाप्त भयो। कृपया पुनः साइन इन गर्नुहोस्।';

  @override
  String get networkError =>
      'इन्टरनेट जडान छैन। जडान जाँच गरेर पुनः प्रयास गर्नुहोस्।';

  @override
  String get developmentCode => 'डेभलपमेन्ट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'तपाईं साइन आउट हुनुभयो';

  @override
  String get somethingWentWrong =>
      'केही गडबड भयो। कृपया पुनः प्रयास गर्नुहोस्।';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get viewProfile => 'प्रोफाइल हेर्नुहोस्';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'इमेल';

  @override
  String get mobileLabel => 'मोबाइल नम्बर';

  @override
  String get accountStatusLabel => 'खाताको अवस्था';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'विचाराधीन';

  @override
  String get statusSuspended => 'निलम्बित';

  @override
  String get verifiedLabel => 'प्रमाणित';

  @override
  String get notProvided => 'थपिएको छैन';

  @override
  String get retry => 'पुनः प्रयास गर्नुहोस्';

  @override
  String get navHome => 'होम';

  @override
  String get navSearch => 'खोज्नुहोस्';

  @override
  String get navOrders => 'अर्डर';

  @override
  String get cancelLabel => 'रद्द गर्नुहोस्';

  @override
  String get deliverTo => 'डेलिभरी ठेगाना';

  @override
  String get searchDishesHint => 'परिकार वा रेस्टुरेन्ट खोज्नुहोस्';

  @override
  String get searchTitle => 'खोज्नुहोस्';

  @override
  String get searchNoResultsTitle => 'केही भेटिएन';

  @override
  String get searchNoResultsSubtitle =>
      'अर्को परिकार, पाकशैली वा रेस्टुरेन्टको नाम प्रयास गर्नुहोस्।';

  @override
  String get cravingTitle => 'आज के खान मन छ?';

  @override
  String get offersTitle => 'तपाईंका लागि अफर';

  @override
  String get restaurantsNearby => 'तपाईंको नजिकैका रेस्टुरेन्ट';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेस्टुरेन्ट',
      one: '1 रेस्टुरेन्ट',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'यहाँ अझै केही छैन';

  @override
  String get noRestaurantsSubtitle =>
      'अर्को वर्ग हेर्नुहोस् वा फिल्टर हटाउनुहोस्।';

  @override
  String minutesAway(int minutes) {
    return '$minutes मिनेट';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance किमी';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेटिङ',
      one: '1 रेटिङ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'दुई जनाका लागि ₹$amount';
  }

  @override
  String get freeDelivery => 'निःशुल्क डेलिभरी';

  @override
  String percentOff(int percent) {
    return '$percent% छुट';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'तपाईंको अर्डरमा $percent% छुट';
  }

  @override
  String get vegOnly => 'शाकाहारी मात्र';

  @override
  String get bestseller => 'सबैभन्दा बिक्री हुने';

  @override
  String get addLabel => 'थप्नुहोस्';

  @override
  String get noVegDishesTitle => 'यहाँ शाकाहारी परिकार छैनन्';

  @override
  String get noVegDishesSubtitle =>
      'पूरा मेनु हेर्न शाकाहारी फिल्टर बन्द गर्नुहोस्।';

  @override
  String get replaceCartTitle => 'नयाँ कार्ट सुरु गर्ने?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'तपाईंको कार्टमा $restaurant का सामान छन्। यो थप्दा तिनीहरू हट्नेछन्।';
  }

  @override
  String get replaceCartConfirm => 'हटाएर थप्नुहोस्';

  @override
  String get cartTitle => 'तपाईंको कार्ट';

  @override
  String get cartEmptyTitle => 'तपाईंको कार्ट खाली छ';

  @override
  String get cartEmptySubtitle =>
      'सुरु गर्न कुनै रेस्टुरेन्टबाट परिकार थप्नुहोस्।';

  @override
  String get browseRestaurants => 'रेस्टुरेन्ट हेर्नुहोस्';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वस्तु',
      one: '1 वस्तु',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'कार्ट हेर्नुहोस्';

  @override
  String get itemTotal => 'वस्तुहरूको जम्मा';

  @override
  String get deliveryFeeLabel => 'डेलिभरी शुल्क';

  @override
  String get taxesAndCharges => 'कर र शुल्क';

  @override
  String get freeLabel => 'निःशुल्क';

  @override
  String get toPay => 'तिर्नुपर्ने';

  @override
  String placeOrderFor(String amount) {
    return 'अर्डर गर्नुहोस् · $amount';
  }

  @override
  String get ordersTitle => 'तपाईंका अर्डर';

  @override
  String get ordersEmptyTitle => 'अझै कुनै अर्डर छैन';

  @override
  String get ordersEmptySubtitle => 'तपाईंका विगतका अर्डर यहाँ देखिनेछन्।';

  @override
  String get reorder => 'पुनः अर्डर';

  @override
  String orderTitle(String id) {
    return 'अर्डर $id';
  }

  @override
  String get orderPlacedTitle => 'अर्डर भयो';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'लगभग $minutes मिनेटमा आइपुग्नेछ।';
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
  String get orderDeliveredTitle => 'डेलिभर भयो';

  @override
  String get orderDeliveredSubtitle => 'खानाको आनन्द लिनुहोस्।';

  @override
  String get statusOrderPlaced => 'अर्डर भयो';

  @override
  String get statusPreparing => 'खाना तयार हुँदैछ';

  @override
  String get statusOnTheWay => 'बाटोमा छ';

  @override
  String get statusDelivered => 'डेलिभर भयो';

  @override
  String get keepBrowsing => 'हेर्दै रहनुहोस्';

  @override
  String get backToHome => 'होममा फर्कनुहोस्';

  @override
  String get prototypeNotice =>
      'नमुना स्टोरफ्रन्ट — वास्तविक पसलहरू क्याटलग APIसँगै आउनेछन्।';

  @override
  String get prototypeCheckoutNotice =>
      'यो एउटा प्रोटोटाइप हो। कुनै भुक्तानी लिइँदैन र वास्तविक अर्डर पनि हुँदैन।';

  @override
  String get prototypeTrackingNotice =>
      'प्रोटोटाइपका लागि ट्र्याकिङ कृत्रिम हो।';

  @override
  String get locationTitle => 'कहाँ डेलिभरी गर्ने?';

  @override
  String get locationSubtitle =>
      'Nexmile ले 1 किमी भित्रका पसलहरूबाट मात्र डेलिभरी गर्छ, त्यसैले तपाईंको ठ्याक्कै स्थान चाहिन्छ।';

  @override
  String get locationReasonRadiusTitle => '1 किमी भित्रका पसल';

  @override
  String get locationReasonRadiusBody =>
      'जहाँबाट खाना तातो पुग्छ, त्यही भान्साहरू मात्र देखाउँछौं।';

  @override
  String get locationReasonAccuracyTitle => 'ठीक ढोकासम्म';

  @override
  String get locationReasonAccuracyBody =>
      'सही पिन भए डेलिभरी पार्टनरले फोन नगरी तपाईंलाई भेट्टाउँछन्।';

  @override
  String get locationReasonPrivacyTitle => 'एप चलाउँदा मात्र';

  @override
  String get locationReasonPrivacyBody =>
      'हामी पृष्ठभूमिमा तपाईंलाई ट्र्याक गर्दैनौं, र ठेगाना तपाईं आफैँ लेख्न सक्नुहुन्छ।';

  @override
  String get allowLocation => 'स्थानको अनुमति दिनुहोस्';

  @override
  String get enterAddressManually => 'म आफैँ ठेगाना लेख्छु';

  @override
  String get locationDenied =>
      'स्थानको अनुमति अस्वीकार भयो। तपाईं पिन आफैँ राख्न सक्नुहुन्छ।';

  @override
  String get locationDeniedForever =>
      'Nexmile का लागि स्थान बन्द छ। सेटिङमा खोल्नुहोस् वा पिन आफैँ राख्नुहोस्।';

  @override
  String get locationServiceOff => 'यो यन्त्रमा स्थान बन्द छ।';

  @override
  String get locationUnavailable =>
      'स्थान पाउन सकिएन। कृपया पिन आफैँ राख्नुहोस्।';

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
  String get openSettings => 'सेटिङ';

  @override
  String get pinLocationTitle => 'आफ्नो डेलिभरी पिन राख्नुहोस्';

  @override
  String get deliveryRadiusHint =>
      'वृत्तले Nexmile ले डेलिभरी गर्ने 1 किमी देखाउँछ।';

  @override
  String get useMyLocation => 'मेरो स्थान प्रयोग गर्नुहोस्';

  @override
  String get deliveringHere => 'यहाँ डेलिभरी';

  @override
  String get dragToAdjust => 'पिन मिलाउन नक्सा तान्नुहोस्';

  @override
  String get confirmLocation => 'स्थान पुष्टि गर्नुहोस्';

  @override
  String get addressDetailsTitle => 'ठेगानाको विवरण';

  @override
  String get addressDetailsSubtitle =>
      'ठीक ढोकामा पुग्न घर नम्बर र चिनारी थप्नुहोस्।';

  @override
  String get pinnedLocation => 'छानिएको स्थान';

  @override
  String get changePin => 'बदल्नुहोस्';

  @override
  String get saveAddressAs => 'यो ठेगाना यसरी सुरक्षित गर्नुहोस्';

  @override
  String get labelHome => 'घर';

  @override
  String get labelWork => 'कार्यालय';

  @override
  String get labelOther => 'अन्य';

  @override
  String get addressLine1Label => 'घर, फ्ल्याट वा भवन';

  @override
  String get addressLine1Hint => '12A, ग्रीन रेजिडेन्सी';

  @override
  String get addressLine2Label => 'सडक वा क्षेत्र';

  @override
  String get addressLine2Hint => 'दोस्रो एभेन्यू, अन्ना नगर';

  @override
  String get landmarkLabel => 'चिनारी';

  @override
  String get landmarkHint => 'बस स्टपको सामुन्ने';

  @override
  String get cityLabel => 'सहर';

  @override
  String get stateLabel => 'राज्य';

  @override
  String get pincodeLabel => 'पिन कोड';

  @override
  String get invalidPincode => 'सही 6 अंकको पिन कोड लेख्नुहोस्';

  @override
  String get contactNameLabel => 'सम्पर्क नाम';

  @override
  String get contactPhoneLabel => 'सम्पर्क नम्बर';

  @override
  String get invalidMobileNumber => 'सही 10 अंकको मोबाइल नम्बर लेख्नुहोस्';

  @override
  String get makeDefaultAddress => 'पूर्वनिर्धारित रूपमा यहीँ डेलिभरी';

  @override
  String get saveAddress => 'ठेगाना सुरक्षित गर्नुहोस्';

  @override
  String get addressSaved => 'ठेगाना सुरक्षित भयो';

  @override
  String get addressBookTitle => 'डेलिभरी ठेगाना';

  @override
  String get manageAddresses => 'सुरक्षित ठेगानाहरू व्यवस्थापन गर्नुहोस्';

  @override
  String get noAddressesTitle => 'अझै कुनै ठेगाना छैन';

  @override
  String get noAddressesSubtitle =>
      'तपाईंकहाँ डेलिभरी गर्ने पसलहरू देखाउन एउटा ठेगाना थप्नुहोस्।';

  @override
  String get addAddress => 'ठेगाना थप्नुहोस्';

  @override
  String get setAsDefault => 'पूर्वनिर्धारित बनाउनुहोस्';

  @override
  String get editLabel => 'सम्पादन';

  @override
  String get addressUpdated => 'ठेगाना अद्यावधिक भयो';

  @override
  String get deleteLabel => 'मेटाउनुहोस्';

  @override
  String get deleteAddressTitle => 'यो ठेगाना मेटाउने?';

  @override
  String get deleteAddressMessage => 'तपाईं यसलाई पछि फेरि थप्न सक्नुहुन्छ।';

  @override
  String get rescueDealsTitle => 'फूड रेस्क्यू';

  @override
  String get notTakingOrders => 'अर्डर लिइरहेको छैन';

  @override
  String get closedRightNow => 'अहिले बन्द छ';

  @override
  String minimumOrder(String amount) {
    return 'न्यूनतम $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count बाँकी';
  }

  @override
  String get soldOut => 'सकियो';

  @override
  String get menuEmptyTitle => 'अझै कुनै परिकार छैन';

  @override
  String get menuEmptySubtitle => 'यो रेस्टुरेन्टले आफ्नो मेनु थपेको छैन।';

  @override
  String get moreDishesTitle => 'थप परिकार';

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
  String get customisable => 'रुचिअनुसार';

  @override
  String get requiredLabel => 'अनिवार्य';

  @override
  String get optionalLabel => 'वैकल्पिक';

  @override
  String get chooseOne => 'एउटा छान्नुहोस्';

  @override
  String chooseUpTo(int count) {
    return 'बढीमा $count छान्नुहोस्';
  }

  @override
  String chooseAtLeast(int count) {
    return 'कम्तीमा $count छान्नुहोस्';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min देखि $max सम्म छान्नुहोस्';
  }

  @override
  String get specialInstructions => 'विशेष निर्देशन';

  @override
  String get specialInstructionsHint => 'कम पिरो, प्याज नराख्नू…';

  @override
  String addForAmount(String amount) {
    return 'थप्नुहोस् · $amount';
  }

  @override
  String get deliveryLabel => 'डेलिभरी';

  @override
  String get pickupLabel => 'आफैँ लैजाने';

  @override
  String get packagingLabel => 'प्याकिङ';

  @override
  String get discountLabel => 'छुट';

  @override
  String get billDetailsTitle => 'बिल विवरण';

  @override
  String get clearCart => 'कार्ट खाली गर्नुहोस्';

  @override
  String get clearCartTitle => 'यो कार्ट खाली गर्ने?';

  @override
  String get clearCartMessage => 'यसभित्रका सबै कुरा हटाइनेछ।';

  @override
  String unavailableItemsNotice(String items) {
    return 'अब उपलब्ध छैन: $items';
  }

  @override
  String get removeUnavailable => 'ती हटाउनुहोस्';

  @override
  String minimumNotMet(String amount) {
    return 'न्यूनतम अर्डर $amount हो';
  }

  @override
  String get checkoutTitle => 'चेकआउट';

  @override
  String get deliveryAddressLabel => 'डेलिभरी ठेगाना';

  @override
  String get noAddressSelected => 'कुनै ठेगाना छानिएको छैन';

  @override
  String get paymentMethodLabel => 'भुक्तानी';

  @override
  String get payOnDelivery => 'डेलिभरीमा नगद';

  @override
  String get noteToRestaurant => 'रेस्टुरेन्टका लागि नोट';

  @override
  String get noteToRestaurantHint => 'घण्टी दुई पटक बजाउनुहोस्…';

  @override
  String get activeOrdersTitle => 'चलिरहेका अर्डर';

  @override
  String get pastOrdersTitle => 'पुराना अर्डर';

  @override
  String get orderItemsTitle => 'परिकार';

  @override
  String get orderProgressTitle => 'प्रगति';

  @override
  String get arrivingIn => 'पुग्न';

  @override
  String get pickupCodeLabel => 'पिकअप कोड';

  @override
  String get cancellationReasonLabel => 'रद्द भएको कारण';

  @override
  String get riderLabel => 'डेलिभरी पार्टनर';

  @override
  String get callRider => 'कल गर्नुहोस्';

  @override
  String get trackRider => 'राइडर ट्र्याक गर्नुहोस्';

  @override
  String get riderLocationSoon => 'अर्डर उठाएपछि राइडरको स्थान यहाँ देखिनेछ।';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'राइडरमा केन्द्रित गर्नुहोस्';

  @override
  String get viewInvoice => 'कर बिजक';

  @override
  String get cancelOrder => 'अर्डर रद्द गर्नुहोस्';

  @override
  String get cancelOrderTitle => 'यो अर्डर रद्द गर्ने?';

  @override
  String get cancelOrderMessage =>
      'रेस्टुरेन्टले स्वीकार गर्नुअघि मात्र रद्द गर्न सकिन्छ।';

  @override
  String get cancelReasonLabel => 'कारण';

  @override
  String get cancelReasonFallback => 'ग्राहकले रद्द गरे';

  @override
  String get orderCancelled => 'अर्डर रद्द भयो';

  @override
  String get currentLocationLabel => 'हालको स्थान';

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
  String get editProfileTitle => 'प्रोफाइल सम्पादन';

  @override
  String get editProfileSubtitle =>
      'रेस्टुरेन्ट र डेलिभरी पार्टनरले तपाईंको नाम नै देख्छन्।';

  @override
  String get saveChanges => 'परिवर्तन सुरक्षित गर्नुहोस्';

  @override
  String get profileUpdated => 'प्रोफाइल अद्यावधिक भयो';

  @override
  String get deleteAccount => 'खाता मेट्नुहोस्';

  @override
  String get deleteAccountTitle => 'तपाईंको खाता मेट्ने?';

  @override
  String get deleteAccountMessage =>
      'सबै उपकरणबाट साइन आउट हुनुहुनेछ। पुराना अर्डर र बिल कर अभिलेखका लागि राखिन्छन्।';

  @override
  String get accountDeleted => 'तपाईंको खाता मेटियो';

  @override
  String get devicesTitle => 'साइन-इन उपकरणहरू';

  @override
  String get devicesSubtitle => 'तपाईं कहाँ साइन इन हुनुहुन्छ';

  @override
  String get devicesEmptyTitle => 'अरू कुनै उपकरण छैन';

  @override
  String get devicesEmptySubtitle =>
      'तपाईं यही उपकरणमा मात्र साइन इन हुनुहुन्छ।';

  @override
  String get signOutDevice => 'साइन आउट';

  @override
  String get signOutDeviceTitle => 'यो उपकरण साइन आउट गर्ने?';

  @override
  String get signOutDeviceMessage =>
      'तपाईंले यही उपकरण प्रयोग गरिरहनुभएको छ भने फेरि साइन इन गर्नुपर्नेछ।';

  @override
  String get deviceSignedOut => 'उपकरण साइन आउट भयो';

  @override
  String get signOutEverywhere => 'सबै ठाउँबाट साइन आउट';

  @override
  String get signOutEverywhereTitle => 'सबै ठाउँबाट साइन आउट गर्ने?';

  @override
  String get signOutEverywhereMessage =>
      'यो उपकरणसहित हरेक उपकरण साइन आउट हुनेछ।';

  @override
  String get unknownDevice => 'अज्ञात उपकरण';

  @override
  String get activeNow => 'अहिले सक्रिय';

  @override
  String minutesAgo(int count) {
    return '$count मिनेट अघि';
  }

  @override
  String hoursAgo(int count) {
    return '$count घण्टा अघि';
  }

  @override
  String daysAgo(int count) {
    return '$count दिन अघि';
  }

  @override
  String get filtersAndSorting => 'फिल्टर र क्रम';

  @override
  String get clearAll => 'सबै हटाउनुहोस्';

  @override
  String get showResults => 'नतिजा हेर्नुहोस्';

  @override
  String get closeLabel => 'बन्द गर्नुहोस्';

  @override
  String get sortByTitle => 'क्रम';

  @override
  String get sortRelevance => 'सान्दर्भिकता';

  @override
  String get sortRating => 'रेटिङ';

  @override
  String get sortDeliveryTime => 'डेलिभरी समय';

  @override
  String get sortCostLowHigh => 'मूल्य: कमबाट बढी';

  @override
  String get sortCostHighLow => 'मूल्य: बढीबाट कम';

  @override
  String get timeSection => 'समय';

  @override
  String get nearAndFast => 'नजिक र छिटो';

  @override
  String get openNow => 'अहिले खुला';

  @override
  String get ratingSection => 'रेस्टुरेन्ट रेटिङ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ रेटिङ';
  }

  @override
  String get offersSection => 'अफर';

  @override
  String get hasOffersLabel => 'अफर भएका';

  @override
  String get dishPriceSection => 'परिकारको मूल्य';

  @override
  String costUnder(String amount) {
    return '$amount भन्दा कम';
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
  String get moreSection => 'थप';

  @override
  String get noPackagingCharges => 'प्याकिङ शुल्क छैन';

  @override
  String get allRestaurantsTitle => 'सबै रेस्टुरेन्ट';

  @override
  String get whatsOnYourMind => 'के खान मन छ?';

  @override
  String get listeningNow => 'सुन्दै छौं…';

  @override
  String get speakNowHint => 'कुनै परिकार वा रेस्टुरेन्ट भन्नुहोस्';

  @override
  String get voiceUnavailable => 'भ्वाइस खोज उपलब्ध छैन';

  @override
  String get voiceUnavailableBody => 'तपाईं टाइप गरेर पनि खोज्न सक्नुहुन्छ।';

  @override
  String get microphoneDenied => 'माइक्रोफोन अनुमति बन्द';

  @override
  String get voiceSearchLabel => 'बोलेर खोज्नुहोस्';

  @override
  String get ratingsAndReviews => 'रेटिङ र समीक्षाहरू';

  @override
  String get reviewsWithTextOnly => 'समीक्षा भएका';

  @override
  String get noReviewsTitle => 'अहिलेसम्म कुनै रेटिङ छैन';

  @override
  String get noReviewsSubtitle => 'अर्डरपछि पहिलो रेटिङ तपाईंले नै दिनुहोस्।';

  @override
  String get rateOrderTitle => 'आफ्नो अर्डरलाई रेट गर्नुहोस्';

  @override
  String get rateDishesTitle => 'परिकारहरूलाई रेट गर्नुहोस्';

  @override
  String get reviewHint => 'अरू केही भन्नु छ? (वैकल्पिक)';

  @override
  String get submitRating => 'रेटिङ पठाउनुहोस्';

  @override
  String get reviewThanks => 'धन्यवाद — तपाईंको रेटिङ प्राप्त भयो।';

  @override
  String get rateThisOrder => 'यो अर्डरलाई रेट गर्नुहोस्';

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
