// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dogri (`doi`).
class AppLocalizationsDoi extends AppLocalizations {
  AppLocalizationsDoi([String locale = 'doi']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'एह् खाना ज़रूरी ऐ';

  @override
  String get tagline => 'तेज़ डिलीवरी। ताज़ी मुस्कान।';

  @override
  String get chooseLanguageTitle => 'अपनी बोली चुनो';

  @override
  String get chooseLanguageSubtitle =>
      'जिस बोली च तुसें सौखा लगदा ओह् चुनो। तुस इसनूं कदी बी सेटिंग्स च बदली सकदे ओ।';

  @override
  String get searchLanguageHint => 'बोली तोपो';

  @override
  String get noLanguageFound => 'कोई बी बोली नेईं लब्भी';

  @override
  String languagesAvailable(int count) {
    return '$count बोलियां उपलब्ध न';
  }

  @override
  String get continueLabel => 'अग्गें बधो';

  @override
  String get selectedLabel => 'चुनी गेई';

  @override
  String get defaultLabel => 'डिफ़ॉल्ट';

  @override
  String get homeTitle => 'Nexmile च तुंदा स्वागत ऐ';

  @override
  String get homeSubtitle =>
      'ताज़ा किराना, गरम खाना ते रोज़ दियां लोड़ां तुंदे नेड़लियां दुकानां थमां।';

  @override
  String get changeLanguage => 'बोली बदलो';

  @override
  String get languageUpdated => 'बोली बदली गेई';

  @override
  String get appLanguageLabel => 'ऐप दी बोली';

  @override
  String greetingNamed(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String get loginTitle => 'Nexmile च साइन इन करो';

  @override
  String get loginSubtitle =>
      'अपना ईमेल जां मोबाइल नंबर पाओ, अस तस्दीक कोड भेजगे।';

  @override
  String get emailOrPhoneLabel => 'ईमेल जां मोबाइल नंबर';

  @override
  String get emailOrPhoneHint => 'name@example.com जां 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सही ईमेल पता जां 10 अंकें दा मोबाइल नंबर पाओ';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'कोड भेजो';

  @override
  String get agreeToTermsOnContinue =>
      'अग्गें बधने कन्नै तुस साढ़ियां सेवा शर्तां ते गोपनीयता नीति नाल सैह्मत ओ।';

  @override
  String get otpTitle => 'तस्दीक करो जे एह् तुस ओ';

  @override
  String otpSubtitle(String target) {
    return '$target पर भेजे दा 6 अंकें दा कोड पाओ';
  }

  @override
  String get verifyCode => 'तस्दीक करो';

  @override
  String get resendCode => 'कोड फ्ही भेजो';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सैकिंड च फ्ही भेजो';
  }

  @override
  String get codeResent => 'नमां कोड भेजी दित्ता गेदा ऐ';

  @override
  String get incorrectCode =>
      'एह् कोड गलत ऐ जां इसदी मियाद खत्म होई गेई। नमां कोड मंगाओ।';

  @override
  String get enterFullCode => 'पूरे 6 अंक पाओ';

  @override
  String get accountSuspended =>
      'एह् खाता मुअत्तल करी दित्ता गेदा ऐ। किरपा करियै सहायता कन्नै संपर्क करो।';

  @override
  String get tooManyAttempts =>
      'मते बारी कोशिश होई गेई। किरपा करियै थोह्ड़ी देर बाद फ्ही कोशिश करो।';

  @override
  String get sessionExpired =>
      'तुंदा सैशन खत्म होई गेदा ऐ। किरपा करियै फ्ही साइन इन करो।';

  @override
  String get networkError =>
      'इंटरनैट कनैक्शन नेईं ऐ। अपना कनैक्शन जांचो ते फ्ही कोशिश करो।';

  @override
  String get developmentCode => 'डिवैल्पमैंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'तुस साइन आउट होई गे ओ';

  @override
  String get somethingWentWrong =>
      'किश गलत होई गेदा। किरपा करियै फ्ही कोशिश करो।';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get viewProfile => 'प्रोफाइल दिक्खो';

  @override
  String get nameLabel => 'नां';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल नंबर';

  @override
  String get accountStatusLabel => 'खाते दी हालत';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'बकाया';

  @override
  String get statusSuspended => 'मुअत्तल';

  @override
  String get verifiedLabel => 'तस्दीकशुदा';

  @override
  String get notProvided => 'जोड़े दा नेईं';

  @override
  String get retry => 'फ्ही कोशिश करो';

  @override
  String get navHome => 'होम';

  @override
  String get navSearch => 'तोपो';

  @override
  String get navOrders => 'ऑर्डर';

  @override
  String get cancelLabel => 'रद्द करो';

  @override
  String get deliverTo => 'डिलीवरी दा पता';

  @override
  String get searchDishesHint => 'खाना जां रेस्टोरेंट तोपो';

  @override
  String get searchTitle => 'तोपो';

  @override
  String get searchNoResultsTitle => 'किश नेईं लब्भा';

  @override
  String get searchNoResultsSubtitle =>
      'कोई होर खाना, खाने दी शैली जां रेस्टोरेंट दा नां अजमाओ।';

  @override
  String get cravingTitle => 'अज्ज कीह् खाने दा मन ऐ?';

  @override
  String get offersTitle => 'तुंदे आस्तै ऑफर';

  @override
  String get restaurantsNearby => 'तुंदे नेड़ले रेस्टोरेंट';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेस्टोरेंट',
      one: '1 रेस्टोरेंट',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'इत्थै हाल्ली किश नेईं ऐ';

  @override
  String get noRestaurantsSubtitle => 'कोई होर श्रेणी दिक्खो जां फिल्टर हटाओ।';

  @override
  String minutesAway(int minutes) {
    return '$minutes मिनट';
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
      other: '$count रेटिंग',
      one: '1 रेटिंग',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'दो जनें आस्तै ₹$amount';
  }

  @override
  String get freeDelivery => 'मुफ्त डिलीवरी';

  @override
  String percentOff(int percent) {
    return '$percent% छूट';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'तुंदे ऑर्डर उप्पर $percent% छूट';
  }

  @override
  String get vegOnly => 'सिर्फ शाकाहारी';

  @override
  String get bestseller => 'सारें शा बद्ध बिकदा';

  @override
  String get addLabel => 'जोड़ो';

  @override
  String get noVegDishesTitle => 'इत्थै शाकाहारी खाना नेईं ऐ';

  @override
  String get noVegDishesSubtitle =>
      'पूरा मेन्यू दिक्खने आस्तै शाकाहारी फिल्टर बंद करो।';

  @override
  String get replaceCartTitle => 'नमीं कार्ट शुरू करचै?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'तुंदी कार्ट च $restaurant दियां चीजां न। एह् जोड़ने पर ओह् हटी जाङन।';
  }

  @override
  String get replaceCartConfirm => 'हटाइयै जोड़ो';

  @override
  String get cartTitle => 'तुंदी कार्ट';

  @override
  String get cartEmptyTitle => 'तुंदी कार्ट खाली ऐ';

  @override
  String get cartEmptySubtitle =>
      'शुरू करने आस्तै कुसै रेस्टोरेंट थमां खाना जोड़ो।';

  @override
  String get browseRestaurants => 'रेस्टोरेंट दिक्खो';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चीज़ां',
      one: '1 चीज़',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'कार्ट दिक्खो';

  @override
  String get itemTotal => 'चीजें दा कुल';

  @override
  String get deliveryFeeLabel => 'डिलीवरी फीस';

  @override
  String get taxesAndCharges => 'कर ते खर्चे';

  @override
  String get freeLabel => 'मुफ्त';

  @override
  String get toPay => 'देने आह्ला';

  @override
  String placeOrderFor(String amount) {
    return 'ऑर्डर करो · $amount';
  }

  @override
  String get ordersTitle => 'तुंदे ऑर्डर';

  @override
  String get ordersEmptyTitle => 'हाल्ली कोई ऑर्डर नेईं';

  @override
  String get ordersEmptySubtitle =>
      'तुंदे पैह्ले ऑर्डर इत्थै दिक्खने गी मिलङन।';

  @override
  String get reorder => 'फ्ही ऑर्डर';

  @override
  String orderTitle(String id) {
    return 'ऑर्डर $id';
  }

  @override
  String get orderPlacedTitle => 'ऑर्डर होई गेदा';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'लगभग $minutes मिनटें च पुज्जग।';
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
  String get orderDeliveredTitle => 'डिलीवर होई गेदा';

  @override
  String get orderDeliveredSubtitle => 'खाने दा मजा लैओ।';

  @override
  String get statusOrderPlaced => 'ऑर्डर होई गेदा';

  @override
  String get statusPreparing => 'खाना त्यार होआ करदा ऐ';

  @override
  String get statusOnTheWay => 'रस्ते च ऐ';

  @override
  String get statusDelivered => 'डिलीवर होई गेदा';

  @override
  String get keepBrowsing => 'दिक्खदे रौह्ओ';

  @override
  String get backToHome => 'होम पर वापस';

  @override
  String get prototypeNotice =>
      'नमूना स्टोरफ्रंट — असली दुकानां कैटलॉग API कन्नै औङन।';

  @override
  String get prototypeCheckoutNotice =>
      'एह् इक प्रोटोटाइप ऐ। कोई भुगतान नेईं लैता जंदा ते कोई असली ऑर्डर बी नेईं होंदा।';

  @override
  String get prototypeTrackingNotice => 'प्रोटोटाइप आस्तै ट्रैकिंग नकली ऐ।';

  @override
  String get locationTitle => 'डिलीवरी कुत्थें करनी ऐ?';

  @override
  String get locationSubtitle =>
      'Nexmile सिर्फ 1 किमी दे अंदरलियां दुकानां थमां डिलीवरी करदा ऐ, इस आस्तै साढ़ी तुंदी ठीक जगह लोड़ ऐ।';

  @override
  String get locationReasonRadiusTitle => '1 किमी दे अंदर दियां दुकानां';

  @override
  String get locationReasonRadiusBody =>
      'अस सिर्फ ओह् रसोइयां दस्सने आं जित्थुं खाना गरम पुज्जै।';

  @override
  String get locationReasonAccuracyTitle => 'ठीक दरवाजे तगर';

  @override
  String get locationReasonAccuracyBody =>
      'सही पिन होवै तां डिलीवरी पार्टनर फोन कीते बगैर तुंदे तगर पुज्जी जंदा ऐ।';

  @override
  String get locationReasonPrivacyTitle => 'सिर्फ ऐप बरतदे बेल्लै';

  @override
  String get locationReasonPrivacyBody =>
      'अस पिच्छें तुंदा खोज-खबर नेईं रखदे, ते पता तुस अपने आप बी लिखी सकदे ओ।';

  @override
  String get allowLocation => 'थाह्र दी इजाजत देओ';

  @override
  String get enterAddressManually => 'मैं पता अपने आप लिखगा';

  @override
  String get locationDenied =>
      'थाह्र दी इजाजत नेईं मिली। तुस पिन अपने आप लाई सकदे ओ।';

  @override
  String get locationDeniedForever =>
      'Nexmile आस्तै थाह्र बंद ऐ। सेटिंग्स च चालू करो जां पिन अपने आप लाओ।';

  @override
  String get locationServiceOff => 'इस डिवाइस उप्पर थाह्र बंद ऐ।';

  @override
  String get locationUnavailable =>
      'थाह्र नेईं लब्भी। किरपा करियै पिन अपने आप लाओ।';

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
  String get openSettings => 'सेटिंग्स';

  @override
  String get pinLocationTitle => 'अपना डिलीवरी पिन लाओ';

  @override
  String get deliveryRadiusHint =>
      'घेरा ओह् 1 किमी दस्सदा ऐ जिस च Nexmile डिलीवरी करदा ऐ।';

  @override
  String get useMyLocation => 'मेरी थाह्र बरतो';

  @override
  String get deliveringHere => 'इत्थै डिलीवरी';

  @override
  String get dragToAdjust => 'पिन बदलने आस्तै नक्शा खिच्चो';

  @override
  String get confirmLocation => 'थाह्र पक्की करो';

  @override
  String get addressDetailsTitle => 'पते दा ब्यौरा';

  @override
  String get addressDetailsSubtitle =>
      'ठीक दरवाजे तगर पुज्जने आस्तै घर नंबर ते निशानी जोड़ो।';

  @override
  String get pinnedLocation => 'चुनी दी थाह्र';

  @override
  String get changePin => 'बदलो';

  @override
  String get saveAddressAs => 'एह् पता इंञ संभालो';

  @override
  String get labelHome => 'घर';

  @override
  String get labelWork => 'दफ्तर';

  @override
  String get labelOther => 'होर';

  @override
  String get addressLine1Label => 'घर, फ्लैट जां इमारत';

  @override
  String get addressLine1Hint => '12A, ग्रीन रेजिडेंसी';

  @override
  String get addressLine2Label => 'गली जां इलाका';

  @override
  String get addressLine2Hint => 'दूई एवेन्यू, अन्ना नगर';

  @override
  String get landmarkLabel => 'निशानी';

  @override
  String get landmarkHint => 'बस स्टॉप दे सामनै';

  @override
  String get cityLabel => 'शैह्र';

  @override
  String get stateLabel => 'राज';

  @override
  String get pincodeLabel => 'पिन कोड';

  @override
  String get invalidPincode => 'सही 6 अंकें दा पिन कोड पाओ';

  @override
  String get contactNameLabel => 'संपर्क नां';

  @override
  String get contactPhoneLabel => 'संपर्क नंबर';

  @override
  String get invalidMobileNumber => 'सही 10 अंकें दा मोबाइल नंबर पाओ';

  @override
  String get makeDefaultAddress => 'डिफ़ॉल्ट रूप च इत्थै गै डिलीवरी';

  @override
  String get saveAddress => 'पता संभालो';

  @override
  String get addressSaved => 'पता संभाली लेदा';

  @override
  String get addressBookTitle => 'डिलीवरी पते';

  @override
  String get manageAddresses => 'संभाले दे पते प्रबंधत करो';

  @override
  String get noAddressesTitle => 'हाल्ली कोई पता नेईं';

  @override
  String get noAddressesSubtitle =>
      'इक पता जोड़ो तां जे अस तुंदे तगर डिलीवरी करने आह्लियां दुकानां दस्सी सकचै।';

  @override
  String get addAddress => 'पता जोड़ो';

  @override
  String get setAsDefault => 'डिफ़ॉल्ट बनाओ';

  @override
  String get editLabel => 'सोध्दो';

  @override
  String get addressUpdated => 'पता अपडेट होई गेदा';

  @override
  String get deleteLabel => 'मटाओ';

  @override
  String get deleteAddressTitle => 'एह् पता मटाना ऐ?';

  @override
  String get deleteAddressMessage => 'तुस इसनूं बाद च फ्ही जोड़ी सकदे ओ।';

  @override
  String get rescueDealsTitle => 'फूड रेस्क्यू';

  @override
  String get notTakingOrders => 'ऑर्डर नेईं लै करदे';

  @override
  String get closedRightNow => 'हुन बंद ऐ';

  @override
  String minimumOrder(String amount) {
    return 'घट्टोघट्ट $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count बचे दे';
  }

  @override
  String get soldOut => 'मुक्की गेआ';

  @override
  String get menuEmptyTitle => 'हल्ले कोई पकवान नेईं';

  @override
  String get menuEmptySubtitle => 'इस रेस्टोरेंट अपना मेनू नेईं जोड़ेआ।';

  @override
  String get moreDishesTitle => 'होर पकवान';

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
  String get customisable => 'अपनी पसंद मताबक';

  @override
  String get requiredLabel => 'लोड़ींदा';

  @override
  String get optionalLabel => 'मरजी दा';

  @override
  String get chooseOne => 'इक चुनो';

  @override
  String chooseUpTo(int count) {
    return 'मते तों मते $count चुनो';
  }

  @override
  String chooseAtLeast(int count) {
    return 'घट्टोघट्ट $count चुनो';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min थमां $max तकर चुनो';
  }

  @override
  String get specialInstructions => 'खास हदायतां';

  @override
  String get specialInstructionsHint => 'घट्ट तिक्खा, गंडा नेईं…';

  @override
  String addForAmount(String amount) {
    return 'जोड़ो · $amount';
  }

  @override
  String get deliveryLabel => 'डिलीवरी';

  @override
  String get pickupLabel => 'अपूं लैना';

  @override
  String get packagingLabel => 'पैकिंग';

  @override
  String get discountLabel => 'छूट';

  @override
  String get billDetailsTitle => 'बिल दा ब्यौरा';

  @override
  String get clearCart => 'कार्ट खाली करो';

  @override
  String get clearCartTitle => 'ऐ कार्ट खाली करनी ऐ?';

  @override
  String get clearCartMessage => 'इस च रक्खी दा सब कुछ हटाई दित्ता जाग।';

  @override
  String unavailableItemsNotice(String items) {
    return 'हुन नेईं मिलदा: $items';
  }

  @override
  String get removeUnavailable => 'इन्हां गी हटाओ';

  @override
  String minimumNotMet(String amount) {
    return 'घट्टोघट्ट ऑर्डर $amount ऐ';
  }

  @override
  String get checkoutTitle => 'चेकआउट';

  @override
  String get deliveryAddressLabel => 'डिलीवरी दा पता';

  @override
  String get noAddressSelected => 'कोई पता नेईं चुनेआ';

  @override
  String get paymentMethodLabel => 'भुगतान';

  @override
  String get payOnDelivery => 'डिलीवरी पर नकद';

  @override
  String get noteToRestaurant => 'रेस्टोरेंट आस्तै नोट';

  @override
  String get noteToRestaurantHint => 'घंटी दो बारी बजाओ…';

  @override
  String get activeOrdersTitle => 'चली रौंदे ऑर्डर';

  @override
  String get pastOrdersTitle => 'पुराने ऑर्डर';

  @override
  String get orderItemsTitle => 'पकवान';

  @override
  String get orderProgressTitle => 'प्रगति';

  @override
  String get arrivingIn => 'पुज्जने च';

  @override
  String get pickupCodeLabel => 'पिकअप कोड';

  @override
  String get cancellationReasonLabel => 'रद्द होने दा कारण';

  @override
  String get riderLabel => 'डिलीवरी पार्टनर';

  @override
  String get callRider => 'कॉल करो';

  @override
  String get trackRider => 'राइडर ट्रैक करो';

  @override
  String get riderLocationSoon =>
      'ऑर्डर चुक्कने पिच्छें राइडर दी लोकेशन इत्थै दिक्खग।';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'राइडर पर केंद्रित करो';

  @override
  String get viewInvoice => 'टैक्स रसीद';

  @override
  String get cancelOrder => 'ऑर्डर रद्द करो';

  @override
  String get cancelOrderTitle => 'ऐ ऑर्डर रद्द करना ऐ?';

  @override
  String get cancelOrderMessage =>
      'रेस्टोरेंट दे मन्नने थमां पैहलैं गै रद्द कीता जाई सकदा ऐ।';

  @override
  String get cancelReasonLabel => 'कारण';

  @override
  String get cancelReasonFallback => 'ग्राहक रद्द कीता';

  @override
  String get orderCancelled => 'ऑर्डर रद्द होई गेआ';

  @override
  String get currentLocationLabel => 'हुनका थाहर';

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
  String get editProfileTitle => 'प्रोफाइल बदलो';

  @override
  String get editProfileSubtitle =>
      'रेस्टोरेंट ते डिलीवरी पार्टनर गी तुंदा नां गै दिक्खदा ऐ।';

  @override
  String get saveChanges => 'बदलाव सम्भालो';

  @override
  String get profileUpdated => 'प्रोफाइल अपडेट होई गेई';

  @override
  String get deleteAccount => 'खाता मताओ';

  @override
  String get deleteAccountTitle => 'अपना खाता मताना ऐ?';

  @override
  String get deleteAccountMessage =>
      'सब्भै डिवाइसें थमां साइन आउट होई जाओगे। पुराने ऑर्डर ते बिल टैक्स रिकार्ड आस्तै रक्खे जंदे न।';

  @override
  String get accountDeleted => 'तुंदा खाता मताई दित्ता गेआ';

  @override
  String get devicesTitle => 'साइन-इन डिवाइस';

  @override
  String get devicesSubtitle => 'तुस कुत्थै साइन इन ओ';

  @override
  String get devicesEmptyTitle => 'होर कोई डिवाइस नेईं';

  @override
  String get devicesEmptySubtitle => 'तुस सिर्फ इस्सै डिवाइस उप्पर साइन इन ओ।';

  @override
  String get signOutDevice => 'साइन आउट';

  @override
  String get signOutDeviceTitle => 'ऐ डिवाइस साइन आउट करनी ऐ?';

  @override
  String get signOutDeviceMessage =>
      'जेकर तुस इस्सै डिवाइस गी बरत करदे ओ तां फ्ही साइन इन करना पौग।';

  @override
  String get deviceSignedOut => 'डिवाइस साइन आउट होई गेई';

  @override
  String get signOutEverywhere => 'हर थाहर थमां साइन आउट';

  @override
  String get signOutEverywhereTitle => 'हर थाहर थमां साइन आउट करना ऐ?';

  @override
  String get signOutEverywhereMessage =>
      'इस डिवाइस समेत हर डिवाइस साइन आउट होई जाग।';

  @override
  String get unknownDevice => 'अनजान डिवाइस';

  @override
  String get activeNow => 'हुन सक्रिय';

  @override
  String minutesAgo(int count) {
    return '$count मिंट पैहलैं';
  }

  @override
  String hoursAgo(int count) {
    return '$count घैंटे पैहलैं';
  }

  @override
  String daysAgo(int count) {
    return '$count दिन पैहलैं';
  }

  @override
  String get filtersAndSorting => 'फिल्टर ते क्रम';

  @override
  String get clearAll => 'सब हटाओ';

  @override
  String get showResults => 'नतीजे दिक्खो';

  @override
  String get closeLabel => 'बंद करो';

  @override
  String get sortByTitle => 'क्रम';

  @override
  String get sortRelevance => 'सरबंधतता';

  @override
  String get sortRating => 'रेटिंग';

  @override
  String get sortDeliveryTime => 'डिलीवरी समां';

  @override
  String get sortCostLowHigh => 'कीमत: घट्ट थमां मता';

  @override
  String get sortCostHighLow => 'कीमत: मते थमां घट्ट';

  @override
  String get timeSection => 'समां';

  @override
  String get nearAndFast => 'नेड़े ते तेज़';

  @override
  String get openNow => 'हुन खुल्ला';

  @override
  String get ratingSection => 'रेस्टोरेंट रेटिंग';

  @override
  String ratedAbove(String rating) {
    return '$rating+ रेटिंग';
  }

  @override
  String get offersSection => 'ऑफर';

  @override
  String get hasOffersLabel => 'ऑफर आले';

  @override
  String get dishPriceSection => 'पकवान दी कीमत';

  @override
  String costUnder(String amount) {
    return '$amount थमां घट्ट';
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
  String get moreSection => 'होर';

  @override
  String get noPackagingCharges => 'पैकिंग खर्च नेईं';

  @override
  String get allRestaurantsTitle => 'सब्भै रेस्टोरेंट';

  @override
  String get whatsOnYourMind => 'की खाने दा मन ऐ?';

  @override
  String get listeningNow => 'सुनदे आं…';

  @override
  String get speakNowHint => 'कोई पकवान जां रेस्टोरेंट बोलो';

  @override
  String get voiceUnavailable => 'वॉइस खोज नेईं मिलदी';

  @override
  String get voiceUnavailableBody => 'तुस टाइप करियै बी तुप्पी सकदे ओ।';

  @override
  String get microphoneDenied => 'माइक्रोफोन इजाजत बंद';

  @override
  String get voiceSearchLabel => 'बोली गी तुप्पो';

  @override
  String get ratingsAndReviews => 'रेटिंग ते समीक्षा';

  @override
  String get reviewsWithTextOnly => 'समीक्षा आह्ले';

  @override
  String get noReviewsTitle => 'हाल्ली कोई रेटिंग नेईं';

  @override
  String get noReviewsSubtitle => 'ऑर्डर दे बाद पैहली रेटिंग तुस देओ।';

  @override
  String get rateOrderTitle => 'अपने ऑर्डर गी रेट करो';

  @override
  String get rateDishesTitle => 'पकवानें गी रेट करो';

  @override
  String get reviewHint => 'होर कुछ आखना ऐ? (मर्जी)';

  @override
  String get submitRating => 'रेटिंग भेजो';

  @override
  String get reviewThanks => 'धन्यवाद — तुंदी रेटिंग मिली गेई।';

  @override
  String get rateThisOrder => 'इस ऑर्डर गी रेट करो';

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
