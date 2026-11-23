// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'यह फ़ील्ड आवश्यक है';

  @override
  String get tagline => 'तेज़ डिलीवरी. ताज़ी मुस्कान.';

  @override
  String get chooseLanguageTitle => 'अपनी भाषा चुनें';

  @override
  String get chooseLanguageSubtitle =>
      'वह भाषा चुनें जिसमें आप सहज हों. आप इसे कभी भी सेटिंग्स में बदल सकते हैं.';

  @override
  String get searchLanguageHint => 'भाषा खोजें';

  @override
  String get noLanguageFound => 'कोई भाषा नहीं मिली';

  @override
  String languagesAvailable(int count) {
    return '$count भाषाएँ उपलब्ध हैं';
  }

  @override
  String get continueLabel => 'आगे बढ़ें';

  @override
  String get selectedLabel => 'चयनित';

  @override
  String get defaultLabel => 'डिफ़ॉल्ट';

  @override
  String get homeTitle => 'Nexmile में आपका स्वागत है';

  @override
  String get homeSubtitle =>
      'ताज़ा किराना, गरम खाना और रोज़मर्रा की ज़रूरतें आपके पास की दुकानों से.';

  @override
  String get changeLanguage => 'भाषा बदलें';

  @override
  String get languageUpdated => 'भाषा बदल दी गई';

  @override
  String get appLanguageLabel => 'ऐप की भाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्ते, $name';
  }

  @override
  String get loginTitle => 'Nexmile में साइन इन करें';

  @override
  String get loginSubtitle =>
      'अपना ईमेल या मोबाइल नंबर दर्ज करें, हम आपको सत्यापन कोड भेजेंगे.';

  @override
  String get emailOrPhoneLabel => 'ईमेल या मोबाइल नंबर';

  @override
  String get emailOrPhoneHint => 'name@example.com या 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सही ईमेल पता या 10 अंकों का मोबाइल नंबर दर्ज करें';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'कोड भेजें';

  @override
  String get agreeToTermsOnContinue =>
      'आगे बढ़ने पर आप हमारी सेवा की शर्तों और गोपनीयता नीति से सहमत होते हैं.';

  @override
  String get otpTitle => 'पुष्टि करें कि यह आप हैं';

  @override
  String otpSubtitle(String target) {
    return '$target पर भेजा गया 6 अंकों का कोड दर्ज करें';
  }

  @override
  String get verifyCode => 'सत्यापित करें';

  @override
  String get resendCode => 'कोड दोबारा भेजें';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंड में दोबारा भेजें';
  }

  @override
  String get codeResent => 'नया कोड भेज दिया गया है';

  @override
  String get incorrectCode =>
      'यह कोड ग़लत है या समाप्त हो चुका है. नया कोड मँगाएँ.';

  @override
  String get enterFullCode => 'पूरे 6 अंक दर्ज करें';

  @override
  String get accountSuspended =>
      'यह खाता निलंबित कर दिया गया है. कृपया सहायता से संपर्क करें.';

  @override
  String get tooManyAttempts =>
      'बहुत अधिक प्रयास हो गए. कृपया कुछ देर बाद फिर कोशिश करें.';

  @override
  String get sessionExpired =>
      'आपका सत्र समाप्त हो गया है. कृपया फिर से साइन इन करें.';

  @override
  String get networkError =>
      'इंटरनेट कनेक्शन नहीं है. अपना कनेक्शन जाँचें और फिर कोशिश करें.';

  @override
  String get developmentCode => 'डेवलपमेंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'आप साइन आउट हो गए हैं';

  @override
  String get somethingWentWrong => 'कुछ ग़लत हो गया. कृपया फिर कोशिश करें.';

  @override
  String get profileTitle => 'प्रोफ़ाइल';

  @override
  String get viewProfile => 'प्रोफ़ाइल देखें';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल नंबर';

  @override
  String get accountStatusLabel => 'खाते की स्थिति';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'लंबित';

  @override
  String get statusSuspended => 'निलंबित';

  @override
  String get verifiedLabel => 'सत्यापित';

  @override
  String get notProvided => 'जोड़ा नहीं गया';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get navHome => 'होम';

  @override
  String get navSearch => 'खोजें';

  @override
  String get navOrders => 'ऑर्डर';

  @override
  String get cancelLabel => 'रद्द करें';

  @override
  String get deliverTo => 'डिलीवरी पता';

  @override
  String get searchDishesHint => 'व्यंजन या रेस्टोरेंट खोजें';

  @override
  String get searchTitle => 'खोजें';

  @override
  String get searchNoResultsTitle => 'कुछ नहीं मिला';

  @override
  String get searchNoResultsSubtitle =>
      'कोई दूसरा व्यंजन, व्यंजन-शैली या रेस्टोरेंट नाम आज़माएँ.';

  @override
  String get cravingTitle => 'आज क्या खाने का मन है?';

  @override
  String get offersTitle => 'आपके लिए ऑफ़र';

  @override
  String get restaurantsNearby => 'आपके पास के रेस्टोरेंट';

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
  String get noRestaurantsTitle => 'यहाँ अभी कुछ नहीं है';

  @override
  String get noRestaurantsSubtitle =>
      'कोई दूसरी श्रेणी आज़माएँ या फ़िल्टर हटाएँ.';

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
    return 'दो लोगों के लिए ₹$amount';
  }

  @override
  String get freeDelivery => 'मुफ़्त डिलीवरी';

  @override
  String percentOff(int percent) {
    return '$percent% छूट';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'आपके ऑर्डर पर $percent% छूट';
  }

  @override
  String get vegOnly => 'सिर्फ़ शाकाहारी';

  @override
  String get bestseller => 'सबसे लोकप्रिय';

  @override
  String get addLabel => 'जोड़ें';

  @override
  String get noVegDishesTitle => 'यहाँ शाकाहारी व्यंजन नहीं हैं';

  @override
  String get noVegDishesSubtitle =>
      'पूरा मेन्यू देखने के लिए शाकाहारी फ़िल्टर बंद करें.';

  @override
  String get replaceCartTitle => 'नई कार्ट शुरू करें?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'आपकी कार्ट में $restaurant की चीज़ें हैं. यह जोड़ने पर वे हट जाएँगी.';
  }

  @override
  String get replaceCartConfirm => 'हटाकर जोड़ें';

  @override
  String get cartTitle => 'आपकी कार्ट';

  @override
  String get cartEmptyTitle => 'आपकी कार्ट ख़ाली है';

  @override
  String get cartEmptySubtitle =>
      'शुरू करने के लिए किसी रेस्टोरेंट से व्यंजन जोड़ें.';

  @override
  String get browseRestaurants => 'रेस्टोरेंट देखें';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चीज़ें',
      one: '1 चीज़',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'कार्ट देखें';

  @override
  String get itemTotal => 'चीज़ों का कुल';

  @override
  String get deliveryFeeLabel => 'डिलीवरी शुल्क';

  @override
  String get taxesAndCharges => 'कर और शुल्क';

  @override
  String get freeLabel => 'मुफ़्त';

  @override
  String get toPay => 'देय राशि';

  @override
  String placeOrderFor(String amount) {
    return 'ऑर्डर करें · $amount';
  }

  @override
  String get ordersTitle => 'आपके ऑर्डर';

  @override
  String get ordersEmptyTitle => 'अभी कोई ऑर्डर नहीं';

  @override
  String get ordersEmptySubtitle => 'आपके पिछले ऑर्डर यहाँ दिखेंगे.';

  @override
  String get reorder => 'दोबारा ऑर्डर';

  @override
  String orderTitle(String id) {
    return 'ऑर्डर $id';
  }

  @override
  String get orderPlacedTitle => 'ऑर्डर हो गया';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'लगभग $minutes मिनट में पहुँचेगा.';
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
  String get orderDeliveredTitle => 'डिलीवर हो गया';

  @override
  String get orderDeliveredSubtitle => 'खाने का आनंद लें.';

  @override
  String get statusOrderPlaced => 'ऑर्डर हो गया';

  @override
  String get statusPreparing => 'खाना तैयार हो रहा है';

  @override
  String get statusOnTheWay => 'रास्ते में है';

  @override
  String get statusDelivered => 'डिलीवर हो गया';

  @override
  String get keepBrowsing => 'देखते रहें';

  @override
  String get backToHome => 'होम पर लौटें';

  @override
  String get prototypeNotice =>
      'नमूना स्टोरफ़्रंट — असली दुकानें कैटलॉग API के साथ आएँगी.';

  @override
  String get prototypeCheckoutNotice =>
      'यह एक प्रोटोटाइप है. कोई भुगतान नहीं लिया जाता और कोई असली ऑर्डर नहीं होता.';

  @override
  String get prototypeTrackingNotice => 'प्रोटोटाइप के लिए ट्रैकिंग नकली है.';

  @override
  String get locationTitle => 'डिलीवरी कहाँ करनी है?';

  @override
  String get locationSubtitle =>
      'Nexmile सिर्फ़ 1 किमी के भीतर की दुकानों से डिलीवरी करता है, इसलिए हमें आपकी सही जगह चाहिए.';

  @override
  String get locationReasonRadiusTitle => '1 किमी के भीतर की दुकानें';

  @override
  String get locationReasonRadiusBody =>
      'हम सिर्फ़ वही रसोइयाँ दिखाते हैं जहाँ से खाना गरम पहुँचे.';

  @override
  String get locationReasonAccuracyTitle => 'सही दरवाज़े तक';

  @override
  String get locationReasonAccuracyBody =>
      'सटीक पिन से डिलीवरी पार्टनर बिना फ़ोन किए आप तक पहुँच जाता है.';

  @override
  String get locationReasonPrivacyTitle => 'सिर्फ़ ऐप इस्तेमाल करते समय';

  @override
  String get locationReasonPrivacyBody =>
      'हम बैकग्राउंड में आपको ट्रैक नहीं करते, और आप पता खुद भी लिख सकते हैं.';

  @override
  String get allowLocation => 'लोकेशन की अनुमति दें';

  @override
  String get enterAddressManually => 'मैं पता खुद लिखूँगा';

  @override
  String get locationDenied =>
      'लोकेशन की अनुमति नहीं मिली. आप पिन खुद भी लगा सकते हैं.';

  @override
  String get locationDeniedForever =>
      'Nexmile के लिए लोकेशन बंद है. सेटिंग्स में चालू करें या पिन खुद लगाएँ.';

  @override
  String get locationServiceOff => 'इस डिवाइस पर लोकेशन बंद है.';

  @override
  String get locationUnavailable => 'लोकेशन नहीं मिल सकी. कृपया पिन खुद लगाएँ.';

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
  String get pinLocationTitle => 'अपना डिलीवरी पिन लगाएँ';

  @override
  String get deliveryRadiusHint =>
      'यह घेरा वह 1 किमी दिखाता है जिसमें Nexmile डिलीवरी करता है.';

  @override
  String get useMyLocation => 'मेरी लोकेशन इस्तेमाल करें';

  @override
  String get deliveringHere => 'यहाँ डिलीवरी';

  @override
  String get dragToAdjust => 'पिन बदलने के लिए मैप खिसकाएँ';

  @override
  String get confirmLocation => 'लोकेशन पक्की करें';

  @override
  String get addressDetailsTitle => 'पते का विवरण';

  @override
  String get addressDetailsSubtitle =>
      'सही दरवाज़े तक पहुँचने के लिए मकान नंबर और लैंडमार्क जोड़ें.';

  @override
  String get pinnedLocation => 'चुनी गई जगह';

  @override
  String get changePin => 'बदलें';

  @override
  String get saveAddressAs => 'इस पते को ऐसे सहेजें';

  @override
  String get labelHome => 'घर';

  @override
  String get labelWork => 'ऑफ़िस';

  @override
  String get labelOther => 'अन्य';

  @override
  String get addressLine1Label => 'मकान, फ़्लैट या इमारत';

  @override
  String get addressLine1Hint => '12A, ग्रीन रेजिडेंसी';

  @override
  String get addressLine2Label => 'गली या इलाक़ा';

  @override
  String get addressLine2Hint => 'दूसरी एवेन्यू, अन्ना नगर';

  @override
  String get landmarkLabel => 'लैंडमार्क';

  @override
  String get landmarkHint => 'बस स्टॉप के सामने';

  @override
  String get cityLabel => 'शहर';

  @override
  String get stateLabel => 'राज्य';

  @override
  String get pincodeLabel => 'पिन कोड';

  @override
  String get invalidPincode => 'सही 6 अंकों का पिन कोड दर्ज करें';

  @override
  String get contactNameLabel => 'संपर्क नाम';

  @override
  String get contactPhoneLabel => 'संपर्क नंबर';

  @override
  String get invalidMobileNumber => 'सही 10 अंकों का मोबाइल नंबर दर्ज करें';

  @override
  String get makeDefaultAddress => 'डिफ़ॉल्ट रूप से यहीं डिलीवरी';

  @override
  String get saveAddress => 'पता सहेजें';

  @override
  String get addressSaved => 'पता सहेज लिया गया';

  @override
  String get addressBookTitle => 'डिलीवरी पते';

  @override
  String get manageAddresses => 'सहेजे गए पते प्रबंधित करें';

  @override
  String get noAddressesTitle => 'अभी कोई पता नहीं';

  @override
  String get noAddressesSubtitle =>
      'एक पता जोड़ें ताकि हम आप तक डिलीवरी करने वाली दुकानें दिखा सकें.';

  @override
  String get addAddress => 'पता जोड़ें';

  @override
  String get setAsDefault => 'डिफ़ॉल्ट बनाएँ';

  @override
  String get editLabel => 'बदलें';

  @override
  String get addressUpdated => 'पता अपडेट हो गया';

  @override
  String get deleteLabel => 'मिटाएँ';

  @override
  String get deleteAddressTitle => 'यह पता मिटाएँ?';

  @override
  String get deleteAddressMessage => 'आप इसे बाद में फिर जोड़ सकते हैं.';

  @override
  String get rescueDealsTitle => 'फ़ूड रेस्क्यू';

  @override
  String get notTakingOrders => 'ऑर्डर नहीं ले रहे';

  @override
  String get closedRightNow => 'अभी बंद है';

  @override
  String minimumOrder(String amount) {
    return 'कम से कम $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count बचे';
  }

  @override
  String get soldOut => 'खत्म हो गया';

  @override
  String get menuEmptyTitle => 'अभी कोई व्यंजन नहीं';

  @override
  String get menuEmptySubtitle => 'इस रेस्टोरेंट ने अपना मेन्यू नहीं जोड़ा है।';

  @override
  String get moreDishesTitle => 'और व्यंजन';

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
  String get customisable => 'पसंद के अनुसार';

  @override
  String get requiredLabel => 'ज़रूरी';

  @override
  String get optionalLabel => 'वैकल्पिक';

  @override
  String get chooseOne => 'एक चुनें';

  @override
  String chooseUpTo(int count) {
    return 'ज़्यादा से ज़्यादा $count चुनें';
  }

  @override
  String chooseAtLeast(int count) {
    return 'कम से कम $count चुनें';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min से $max तक चुनें';
  }

  @override
  String get specialInstructions => 'खास निर्देश';

  @override
  String get specialInstructionsHint => 'कम तीखा, प्याज़ नहीं…';

  @override
  String addForAmount(String amount) {
    return 'जोड़ें · $amount';
  }

  @override
  String get deliveryLabel => 'डिलीवरी';

  @override
  String get pickupLabel => 'खुद ले जाएँ';

  @override
  String get packagingLabel => 'पैकिंग';

  @override
  String get discountLabel => 'छूट';

  @override
  String get billDetailsTitle => 'बिल का ब्योरा';

  @override
  String get clearCart => 'कार्ट खाली करें';

  @override
  String get clearCartTitle => 'यह कार्ट खाली करें?';

  @override
  String get clearCartMessage => 'इसमें रखी हर चीज़ हट जाएगी।';

  @override
  String unavailableItemsNotice(String items) {
    return 'अब उपलब्ध नहीं: $items';
  }

  @override
  String get removeUnavailable => 'इन्हें हटाएँ';

  @override
  String minimumNotMet(String amount) {
    return 'कम से कम ऑर्डर $amount है';
  }

  @override
  String get checkoutTitle => 'चेकआउट';

  @override
  String get deliveryAddressLabel => 'डिलीवरी का पता';

  @override
  String get noAddressSelected => 'कोई पता नहीं चुना';

  @override
  String get paymentMethodLabel => 'भुगतान';

  @override
  String get payOnDelivery => 'डिलीवरी पर नकद';

  @override
  String get noteToRestaurant => 'रेस्टोरेंट के लिए नोट';

  @override
  String get noteToRestaurantHint => 'घंटी दो बार बजाएँ…';

  @override
  String get activeOrdersTitle => 'चल रहे ऑर्डर';

  @override
  String get pastOrdersTitle => 'पुराने ऑर्डर';

  @override
  String get orderItemsTitle => 'व्यंजन';

  @override
  String get orderProgressTitle => 'प्रगति';

  @override
  String get arrivingIn => 'पहुँचने में';

  @override
  String get pickupCodeLabel => 'पिकअप कोड';

  @override
  String get cancellationReasonLabel => 'रद्द होने की वजह';

  @override
  String get riderLabel => 'डिलीवरी पार्टनर';

  @override
  String get callRider => 'कॉल करें';

  @override
  String get trackRider => 'राइडर ट्रैक करें';

  @override
  String get riderLocationSoon =>
      'ऑर्डर उठाते ही आपके राइडर की लोकेशन यहाँ दिखेगी।';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'राइडर पर केंद्रित करें';

  @override
  String get viewInvoice => 'टैक्स इनवॉइस';

  @override
  String get cancelOrder => 'ऑर्डर रद्द करें';

  @override
  String get cancelOrderTitle => 'यह ऑर्डर रद्द करें?';

  @override
  String get cancelOrderMessage =>
      'रेस्टोरेंट के स्वीकार करने से पहले ही रद्द किया जा सकता है।';

  @override
  String get cancelReasonLabel => 'वजह';

  @override
  String get cancelReasonFallback => 'ग्राहक ने रद्द किया';

  @override
  String get orderCancelled => 'ऑर्डर रद्द हो गया';

  @override
  String get currentLocationLabel => 'वर्तमान स्थान';

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
  String get editProfileTitle => 'प्रोफ़ाइल बदलें';

  @override
  String get editProfileSubtitle =>
      'आपका नाम रेस्टोरेंट और डिलीवरी पार्टनर को दिखता है।';

  @override
  String get saveChanges => 'बदलाव सहेजें';

  @override
  String get profileUpdated => 'प्रोफ़ाइल अपडेट हो गई';

  @override
  String get deleteAccount => 'खाता हटाएँ';

  @override
  String get deleteAccountTitle => 'अपना खाता हटाएँ?';

  @override
  String get deleteAccountMessage =>
      'आप हर डिवाइस से साइन आउट हो जाएँगे। पुराने ऑर्डर और बिल कर रिकॉर्ड के लिए रखे जाते हैं।';

  @override
  String get accountDeleted => 'आपका खाता हटा दिया गया';

  @override
  String get devicesTitle => 'साइन-इन डिवाइस';

  @override
  String get devicesSubtitle => 'आप कहाँ साइन इन हैं';

  @override
  String get devicesEmptyTitle => 'कोई दूसरा डिवाइस नहीं';

  @override
  String get devicesEmptySubtitle => 'आप सिर्फ़ इसी डिवाइस पर साइन इन हैं।';

  @override
  String get signOutDevice => 'साइन आउट';

  @override
  String get signOutDeviceTitle => 'इस डिवाइस से साइन आउट करें?';

  @override
  String get signOutDeviceMessage =>
      'अगर यही डिवाइस आप इस्तेमाल कर रहे हैं तो दोबारा साइन इन करना होगा।';

  @override
  String get deviceSignedOut => 'डिवाइस साइन आउट हो गया';

  @override
  String get signOutEverywhere => 'हर जगह से साइन आउट';

  @override
  String get signOutEverywhereTitle => 'हर जगह से साइन आउट करें?';

  @override
  String get signOutEverywhereMessage =>
      'इस डिवाइस समेत हर डिवाइस साइन आउट हो जाएगा।';

  @override
  String get unknownDevice => 'अज्ञात डिवाइस';

  @override
  String get activeNow => 'अभी सक्रिय';

  @override
  String minutesAgo(int count) {
    return '$count मिनट पहले';
  }

  @override
  String hoursAgo(int count) {
    return '$count घंटे पहले';
  }

  @override
  String daysAgo(int count) {
    return '$count दिन पहले';
  }

  @override
  String get filtersAndSorting => 'फ़िल्टर और क्रम';

  @override
  String get clearAll => 'सब हटाएँ';

  @override
  String get showResults => 'नतीजे देखें';

  @override
  String get closeLabel => 'बंद करें';

  @override
  String get sortByTitle => 'क्रम';

  @override
  String get sortRelevance => 'प्रासंगिकता';

  @override
  String get sortRating => 'रेटिंग';

  @override
  String get sortDeliveryTime => 'डिलीवरी समय';

  @override
  String get sortCostLowHigh => 'कीमत: कम से ज़्यादा';

  @override
  String get sortCostHighLow => 'कीमत: ज़्यादा से कम';

  @override
  String get timeSection => 'समय';

  @override
  String get nearAndFast => 'पास और तेज़';

  @override
  String get openNow => 'अभी खुला';

  @override
  String get ratingSection => 'रेस्टोरेंट रेटिंग';

  @override
  String ratedAbove(String rating) {
    return '$rating+ रेटिंग';
  }

  @override
  String get offersSection => 'ऑफ़र';

  @override
  String get hasOffersLabel => 'ऑफ़र वाले';

  @override
  String get dishPriceSection => 'व्यंजन की कीमत';

  @override
  String costUnder(String amount) {
    return '$amount से कम';
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
  String get moreSection => 'और';

  @override
  String get noPackagingCharges => 'पैकिंग शुल्क नहीं';

  @override
  String get allRestaurantsTitle => 'सभी रेस्टोरेंट';

  @override
  String get whatsOnYourMind => 'क्या खाने का मन है?';

  @override
  String get listeningNow => 'सुन रहे हैं…';

  @override
  String get speakNowHint => 'कोई व्यंजन या रेस्टोरेंट बोलिए';

  @override
  String get voiceUnavailable => 'वॉइस सर्च उपलब्ध नहीं';

  @override
  String get voiceUnavailableBody => 'आप टाइप करके खोज सकते हैं।';

  @override
  String get microphoneDenied => 'माइक्रोफ़ोन की अनुमति बंद है';

  @override
  String get voiceSearchLabel => 'बोलकर खोजें';

  @override
  String get ratingsAndReviews => 'रेटिंग और समीक्षाएँ';

  @override
  String get reviewsWithTextOnly => 'समीक्षा वाले';

  @override
  String get noReviewsTitle => 'अभी कोई रेटिंग नहीं';

  @override
  String get noReviewsSubtitle => 'ऑर्डर के बाद सबसे पहले रेटिंग आप दें।';

  @override
  String get rateOrderTitle => 'अपने ऑर्डर को रेट करें';

  @override
  String get rateDishesTitle => 'व्यंजनों को रेट करें';

  @override
  String get reviewHint => 'कुछ और कहना चाहेंगे? (वैकल्पिक)';

  @override
  String get submitRating => 'रेटिंग भेजें';

  @override
  String get reviewThanks => 'धन्यवाद — आपकी रेटिंग मिल गई।';

  @override
  String get rateThisOrder => 'इस ऑर्डर को रेट करें';

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
