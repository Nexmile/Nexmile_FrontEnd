// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maithili (`mai`).
class AppLocalizationsMai extends AppLocalizations {
  AppLocalizationsMai([String locale = 'mai']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'ई खाना जरूरी अछि';

  @override
  String get tagline => 'तेज डिलीवरी। ताजा मुस्कान।';

  @override
  String get chooseLanguageTitle => 'अपन भाषा चुनू';

  @override
  String get chooseLanguageSubtitle =>
      'जाहि भाषा मे अहाँ सहज छी, ओ चुनू। अहाँ एकरा कहियो सेटिंग्स मे बदलि सकैत छी।';

  @override
  String get searchLanguageHint => 'भाषा ताकू';

  @override
  String get noLanguageFound => 'कोनो भाषा नहि भेटल';

  @override
  String languagesAvailable(int count) {
    return '$count भाषा उपलब्ध अछि';
  }

  @override
  String get continueLabel => 'आगू बढ़ू';

  @override
  String get selectedLabel => 'चुनल गेल';

  @override
  String get defaultLabel => 'डिफ़ॉल्ट';

  @override
  String get homeTitle => 'Nexmile मे अहाँक स्वागत अछि';

  @override
  String get homeSubtitle =>
      'ताजा किराना, गरम भोजन आ रोजक जरूरतक सामान अहाँक लगक दोकान सँ।';

  @override
  String get changeLanguage => 'भाषा बदलू';

  @override
  String get languageUpdated => 'भाषा बदलि गेल';

  @override
  String get appLanguageLabel => 'एप्पक भाषा';

  @override
  String greetingNamed(String name) {
    return 'प्रणाम, $name';
  }

  @override
  String get loginTitle => 'Nexmile मे साइन इन करू';

  @override
  String get loginSubtitle =>
      'अपन ईमेल वा मोबाइल नंबर लिखू, हम सत्यापन कोड पठाएब।';

  @override
  String get emailOrPhoneLabel => 'ईमेल वा मोबाइल नंबर';

  @override
  String get emailOrPhoneHint => 'name@example.com वा 9876543210';

  @override
  String get invalidEmailOrPhone => 'सही ईमेल पता वा 10 अंकक मोबाइल नंबर लिखू';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'कोड पठाबू';

  @override
  String get agreeToTermsOnContinue =>
      'आगू बढ़ला पर अहाँ हमर सेवाक शर्त आ गोपनीयता नीति सँ सहमत होइत छी।';

  @override
  String get otpTitle => 'पुष्टि करू जे ई अहाँ छी';

  @override
  String otpSubtitle(String target) {
    return '$target पर पठाओल 6 अंकक कोड लिखू';
  }

  @override
  String get verifyCode => 'सत्यापित करू';

  @override
  String get resendCode => 'कोड फेर पठाबू';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंड मे फेर पठाबू';
  }

  @override
  String get codeResent => 'नव कोड पठाओल गेल अछि';

  @override
  String get incorrectCode =>
      'ई कोड गलत अछि वा एकर समय बीति गेल। नव कोड मंगाबू।';

  @override
  String get enterFullCode => 'पूरा 6 अंक लिखू';

  @override
  String get accountSuspended =>
      'ई खाता निलंबित कऽ देल गेल अछि। कृपया सहायता सँ संपर्क करू।';

  @override
  String get tooManyAttempts =>
      'बहुत बेर कोशिश भऽ गेल। कृपया किछु समय बाद फेर कोशिश करू।';

  @override
  String get sessionExpired =>
      'अहाँक सत्र समाप्त भऽ गेल। कृपया फेर साइन इन करू।';

  @override
  String get networkError =>
      'इंटरनेट कनेक्शन नहि अछि। कनेक्शन देखू आ फेर कोशिश करू।';

  @override
  String get developmentCode => 'डेवलपमेंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'अहाँ साइन आउट भऽ गेलहुँ';

  @override
  String get somethingWentWrong => 'किछु गलत भऽ गेल। कृपया फेर कोशिश करू।';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get viewProfile => 'प्रोफाइल देखू';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल नंबर';

  @override
  String get accountStatusLabel => 'खाताक स्थिति';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'विचाराधीन';

  @override
  String get statusSuspended => 'निलंबित';

  @override
  String get verifiedLabel => 'सत्यापित';

  @override
  String get notProvided => 'जोड़ल नहि गेल';

  @override
  String get retry => 'फेर कोशिश करू';

  @override
  String get navHome => 'होम';

  @override
  String get navSearch => 'ताकू';

  @override
  String get navOrders => 'ऑर्डर';

  @override
  String get cancelLabel => 'रद्द करू';

  @override
  String get deliverTo => 'डिलीवरी पता';

  @override
  String get searchDishesHint => 'व्यंजन वा रेस्टोरेंट ताकू';

  @override
  String get searchTitle => 'ताकू';

  @override
  String get searchNoResultsTitle => 'किछु नहि भेटल';

  @override
  String get searchNoResultsSubtitle =>
      'दोसर व्यंजन, पाक-शैली वा रेस्टोरेंटक नाम आजमाउ।';

  @override
  String get cravingTitle => 'आइ की खाय मोन अछि?';

  @override
  String get offersTitle => 'अहाँक लेल ऑफर';

  @override
  String get restaurantsNearby => 'अहाँक लगक रेस्टोरेंट';

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
  String get noRestaurantsTitle => 'एतय अखन किछु नहि अछि';

  @override
  String get noRestaurantsSubtitle => 'दोसर श्रेणी देखू वा फिल्टर हटाउ।';

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
    return 'दू गोटेक लेल ₹$amount';
  }

  @override
  String get freeDelivery => 'मुफ्त डिलीवरी';

  @override
  String percentOff(int percent) {
    return '$percent% छूट';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'अहाँक ऑर्डर पर $percent% छूट';
  }

  @override
  String get vegOnly => 'मात्र शाकाहारी';

  @override
  String get bestseller => 'सभसँ बेसी बिकाइत';

  @override
  String get addLabel => 'जोड़ू';

  @override
  String get noVegDishesTitle => 'एतय शाकाहारी व्यंजन नहि अछि';

  @override
  String get noVegDishesSubtitle =>
      'पूरा मेनू देखबाक लेल शाकाहारी फिल्टर बंद करू।';

  @override
  String get replaceCartTitle => 'नव कार्ट शुरू करू?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'अहाँक कार्ट मे $restaurant क सामान अछि। ई जोड़ला सँ ओ हटि जाएत।';
  }

  @override
  String get replaceCartConfirm => 'हटा क\' जोड़ू';

  @override
  String get cartTitle => 'अहाँक कार्ट';

  @override
  String get cartEmptyTitle => 'अहाँक कार्ट खाली अछि';

  @override
  String get cartEmptySubtitle =>
      'शुरू करबाक लेल कोनो रेस्टोरेंट सँ व्यंजन जोड़ू।';

  @override
  String get browseRestaurants => 'रेस्टोरेंट देखू';

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
  String get viewCart => 'कार्ट देखू';

  @override
  String get itemTotal => 'सामानक कुल';

  @override
  String get deliveryFeeLabel => 'डिलीवरी शुल्क';

  @override
  String get taxesAndCharges => 'कर आ शुल्क';

  @override
  String get freeLabel => 'मुफ्त';

  @override
  String get toPay => 'देय राशि';

  @override
  String placeOrderFor(String amount) {
    return 'ऑर्डर करू · $amount';
  }

  @override
  String get ordersTitle => 'अहाँक ऑर्डर';

  @override
  String get ordersEmptyTitle => 'अखन धरि कोनो ऑर्डर नहि';

  @override
  String get ordersEmptySubtitle => 'अहाँक पहिलुका ऑर्डर एतय देखाएत।';

  @override
  String get reorder => 'फेर ऑर्डर';

  @override
  String orderTitle(String id) {
    return 'ऑर्डर $id';
  }

  @override
  String get orderPlacedTitle => 'ऑर्डर भ\' गेल';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'लगभग $minutes मिनट मे पहुँचत।';
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
  String get orderDeliveredTitle => 'डिलीवर भ\' गेल';

  @override
  String get orderDeliveredSubtitle => 'भोजनक आनंद लिअ।';

  @override
  String get statusOrderPlaced => 'ऑर्डर भ\' गेल';

  @override
  String get statusPreparing => 'भोजन तैयार भ\' रहल अछि';

  @override
  String get statusOnTheWay => 'रास्ता मे अछि';

  @override
  String get statusDelivered => 'डिलीवर भ\' गेल';

  @override
  String get keepBrowsing => 'देखैत रहू';

  @override
  String get backToHome => 'होम पर घूरू';

  @override
  String get prototypeNotice =>
      'नमूना स्टोरफ्रंट — असली दोकान कैटलॉग API सँग आओत।';

  @override
  String get prototypeCheckoutNotice =>
      'ई एकटा प्रोटोटाइप अछि। कोनो भुगतान नहि लेल जाइत अछि आ असली ऑर्डर सेहो नहि होइत अछि।';

  @override
  String get prototypeTrackingNotice => 'प्रोटोटाइपक लेल ट्रैकिंग नकली अछि।';

  @override
  String get locationTitle => 'कतय डिलीवरी करी?';

  @override
  String get locationSubtitle =>
      'Nexmile मात्र 1 किमी भीतरक दोकान सँ डिलीवरी करैत अछि, तेँ अहाँक सही ठाम चाही।';

  @override
  String get locationReasonRadiusTitle => '1 किमी भीतरक दोकान';

  @override
  String get locationReasonRadiusBody =>
      'जतय सँ भोजन गरम पहुँचत, ओहि रसोइयेँ देखबैत छी।';

  @override
  String get locationReasonAccuracyTitle => 'सही दरवाजा धरि';

  @override
  String get locationReasonAccuracyBody =>
      'सही पिन रहला सँ डिलीवरी पार्टनर फोन कएने बिना अहाँ धरि पहुँचि जाइत छथि।';

  @override
  String get locationReasonPrivacyTitle => 'मात्र एप्प चलबैत काल';

  @override
  String get locationReasonPrivacyBody =>
      'हम पृष्ठभूमि मे अहाँक माग नहि करैत छी, आ पता अहाँ स्वयं सेहो लिखि सकैत छी।';

  @override
  String get allowLocation => 'स्थानक अनुमति दिअ';

  @override
  String get enterAddressManually => 'हम स्वयं पता लिखब';

  @override
  String get locationDenied =>
      'स्थानक अनुमति नहि भेटल। अहाँ पिन स्वयं राखि सकैत छी।';

  @override
  String get locationDeniedForever =>
      'Nexmile लेल स्थान बन्द अछि। सेटिंग्स मे चालू करू वा पिन स्वयं राखू।';

  @override
  String get locationServiceOff => 'एहि डिवाइस पर स्थान बन्द अछि।';

  @override
  String get locationUnavailable => 'स्थान नहि भेटल। कृपया पिन स्वयं राखू।';

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
  String get pinLocationTitle => 'अपन डिलीवरी पिन राखू';

  @override
  String get deliveryRadiusHint =>
      'घेरा ओ 1 किमी देखबैत अछि जाहि मे Nexmile डिलीवरी करैत अछि।';

  @override
  String get useMyLocation => 'हमर स्थान प्रयोग करू';

  @override
  String get deliveringHere => 'एतय डिलीवरी';

  @override
  String get dragToAdjust => 'पिन बदलबाक लेल नक्शा घीचू';

  @override
  String get confirmLocation => 'स्थान पक्का करू';

  @override
  String get addressDetailsTitle => 'पताक विवरण';

  @override
  String get addressDetailsSubtitle =>
      'सही दरवाजा धरि पहुँचबाक लेल घर नंबर आ चिन्ह जोड़ू।';

  @override
  String get pinnedLocation => 'चुनल ठाम';

  @override
  String get changePin => 'बदलू';

  @override
  String get saveAddressAs => 'ई पता एहि तरहेँ सहेजू';

  @override
  String get labelHome => 'घर';

  @override
  String get labelWork => 'कार्यालय';

  @override
  String get labelOther => 'आन';

  @override
  String get addressLine1Label => 'घर, फ्लैट वा भवन';

  @override
  String get addressLine1Hint => '12A, ग्रीन रेजिडेंसी';

  @override
  String get addressLine2Label => 'गली वा इलाका';

  @override
  String get addressLine2Hint => 'दोसर एवेन्यू, अन्ना नगर';

  @override
  String get landmarkLabel => 'चिन्ह';

  @override
  String get landmarkHint => 'बस स्टॉपक सामने';

  @override
  String get cityLabel => 'शहर';

  @override
  String get stateLabel => 'राज्य';

  @override
  String get pincodeLabel => 'पिन कोड';

  @override
  String get invalidPincode => 'सही 6 अंकक पिन कोड लिखू';

  @override
  String get contactNameLabel => 'संपर्क नाम';

  @override
  String get contactPhoneLabel => 'संपर्क नंबर';

  @override
  String get invalidMobileNumber => 'सही 10 अंकक मोबाइल नंबर लिखू';

  @override
  String get makeDefaultAddress => 'डिफ़ॉल्ट रूप सँ एतहि डिलीवरी';

  @override
  String get saveAddress => 'पता सहेजू';

  @override
  String get addressSaved => 'पता सहेजल गेल';

  @override
  String get addressBookTitle => 'डिलीवरी पता';

  @override
  String get manageAddresses => 'सहेजल पता प्रबंधित करू';

  @override
  String get noAddressesTitle => 'अखन धरि कोनो पता नहि';

  @override
  String get noAddressesSubtitle =>
      'एकटा पता जोड़ू जाहि सँ अहाँ धरि डिलीवरी करय बला दोकान देखा सकी।';

  @override
  String get addAddress => 'पता जोड़ू';

  @override
  String get setAsDefault => 'डिफ़ॉल्ट बनाबू';

  @override
  String get editLabel => 'संपादित करू';

  @override
  String get addressUpdated => 'पता अपडेट भ\' गेल';

  @override
  String get deleteLabel => 'मेटाबू';

  @override
  String get deleteAddressTitle => 'ई पता मेटाएब?';

  @override
  String get deleteAddressMessage => 'अहाँ एकरा बाद मे फेर जोड़ि सकैत छी।';

  @override
  String get rescueDealsTitle => 'फूड रेस्क्यू';

  @override
  String get notTakingOrders => 'ऑर्डर नहि लेल जा रहल';

  @override
  String get closedRightNow => 'अखन बन्न अछि';

  @override
  String minimumOrder(String amount) {
    return 'कम सँ कम $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count बाँकी';
  }

  @override
  String get soldOut => 'खतम भऽ गेल';

  @override
  String get menuEmptyTitle => 'अखन धरि कोनो व्यंजन नहि';

  @override
  String get menuEmptySubtitle => 'ई रेस्टोरेंट अपन मेनू नहि जोड़ने अछि।';

  @override
  String get moreDishesTitle => 'आओर व्यंजन';

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
  String get customisable => 'पसन्न अनुसार';

  @override
  String get requiredLabel => 'अनिवार्य';

  @override
  String get optionalLabel => 'वैकल्पिक';

  @override
  String get chooseOne => 'एकटा चुनू';

  @override
  String chooseUpTo(int count) {
    return 'बेसी सँ बेसी $count चुनू';
  }

  @override
  String chooseAtLeast(int count) {
    return 'कम सँ कम $count चुनू';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min सँ $max धरि चुनू';
  }

  @override
  String get specialInstructions => 'खास निर्देश';

  @override
  String get specialInstructionsHint => 'कम तीत, प्याज नहि…';

  @override
  String addForAmount(String amount) {
    return 'जोड़ू · $amount';
  }

  @override
  String get deliveryLabel => 'डिलीवरी';

  @override
  String get pickupLabel => 'अपने लऽ जाउ';

  @override
  String get packagingLabel => 'पैकिंग';

  @override
  String get discountLabel => 'छूट';

  @override
  String get billDetailsTitle => 'बिलक विवरण';

  @override
  String get clearCart => 'कार्ट खाली करू';

  @override
  String get clearCartTitle => 'ई कार्ट खाली करी?';

  @override
  String get clearCartMessage => 'एहि मे राखल सब किछु हटा देल जाएत।';

  @override
  String unavailableItemsNotice(String items) {
    return 'आब उपलब्ध नहि: $items';
  }

  @override
  String get removeUnavailable => 'हिनका हटाउ';

  @override
  String minimumNotMet(String amount) {
    return 'कम सँ कम ऑर्डर $amount अछि';
  }

  @override
  String get checkoutTitle => 'चेकआउट';

  @override
  String get deliveryAddressLabel => 'डिलीवरीक पता';

  @override
  String get noAddressSelected => 'कोनो पता नहि चुनल';

  @override
  String get paymentMethodLabel => 'भुगतान';

  @override
  String get payOnDelivery => 'डिलीवरी पर नगद';

  @override
  String get noteToRestaurant => 'रेस्टोरेंट लेल नोट';

  @override
  String get noteToRestaurantHint => 'घंटी दू बेर बजाउ…';

  @override
  String get activeOrdersTitle => 'चलि रहल ऑर्डर';

  @override
  String get pastOrdersTitle => 'पुरान ऑर्डर';

  @override
  String get orderItemsTitle => 'व्यंजन';

  @override
  String get orderProgressTitle => 'प्रगति';

  @override
  String get arrivingIn => 'पहुँचय मे';

  @override
  String get pickupCodeLabel => 'पिकअप कोड';

  @override
  String get cancellationReasonLabel => 'रद्द होएबाक कारण';

  @override
  String get riderLabel => 'डिलीवरी पार्टनर';

  @override
  String get callRider => 'कॉल करू';

  @override
  String get trackRider => 'राइडर ट्रैक करू';

  @override
  String get riderLocationSoon => 'ऑर्डर उठौलाक बाद राइडरक लोकेशन एतय देखाएत।';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'राइडर पर केंद्रित करू';

  @override
  String get viewInvoice => 'कर रसीद';

  @override
  String get cancelOrder => 'ऑर्डर रद्द करू';

  @override
  String get cancelOrderTitle => 'ई ऑर्डर रद्द करी?';

  @override
  String get cancelOrderMessage =>
      'रेस्टोरेंटक स्वीकार करबा सँ पहिनहि रद्द कएल जा सकैत अछि।';

  @override
  String get cancelReasonLabel => 'कारण';

  @override
  String get cancelReasonFallback => 'ग्राहक रद्द कयलनि';

  @override
  String get orderCancelled => 'ऑर्डर रद्द भऽ गेल';

  @override
  String get currentLocationLabel => 'वर्तमान ठाम';

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
  String get editProfileTitle => 'प्रोफाइल बदलू';

  @override
  String get editProfileSubtitle =>
      'रेस्टोरेंट आ डिलीवरी पार्टनर अहाँक नामे देखैत छथि।';

  @override
  String get saveChanges => 'बदलाव सहेजू';

  @override
  String get profileUpdated => 'प्रोफाइल अपडेट भऽ गेल';

  @override
  String get deleteAccount => 'खाता मेटाउ';

  @override
  String get deleteAccountTitle => 'अपन खाता मेटाबी?';

  @override
  String get deleteAccountMessage =>
      'सब डिवाइस सँ साइन आउट भऽ जाएब। पुरान ऑर्डर आ बिल कर रिकॉर्ड लेल राखल जाइत अछि।';

  @override
  String get accountDeleted => 'अहाँक खाता मेटा देल गेल';

  @override
  String get devicesTitle => 'साइन-इन डिवाइस';

  @override
  String get devicesSubtitle => 'अहाँ कतय साइन इन छी';

  @override
  String get devicesEmptyTitle => 'आन कोनो डिवाइस नहि';

  @override
  String get devicesEmptySubtitle => 'अहाँ खाली एहि डिवाइस पर साइन इन छी।';

  @override
  String get signOutDevice => 'साइन आउट';

  @override
  String get signOutDeviceTitle => 'ई डिवाइस साइन आउट करी?';

  @override
  String get signOutDeviceMessage =>
      'जँ अहाँ एहि डिवाइसक प्रयोग कऽ रहल छी तँ फेर साइन इन करय पड़त।';

  @override
  String get deviceSignedOut => 'डिवाइस साइन आउट भऽ गेल';

  @override
  String get signOutEverywhere => 'सब ठाम सँ साइन आउट';

  @override
  String get signOutEverywhereTitle => 'सब ठाम सँ साइन आउट करी?';

  @override
  String get signOutEverywhereMessage =>
      'एहि डिवाइस सहित सब डिवाइस साइन आउट भऽ जाएत।';

  @override
  String get unknownDevice => 'अज्ञात डिवाइस';

  @override
  String get activeNow => 'एखन सक्रिय';

  @override
  String minutesAgo(int count) {
    return '$count मिनट पहिने';
  }

  @override
  String hoursAgo(int count) {
    return '$count घंटा पहिने';
  }

  @override
  String daysAgo(int count) {
    return '$count दिन पहिने';
  }

  @override
  String get filtersAndSorting => 'फिल्टर आ क्रम';

  @override
  String get clearAll => 'सब हटाउ';

  @override
  String get showResults => 'नतीजा देखू';

  @override
  String get closeLabel => 'बन्न करू';

  @override
  String get sortByTitle => 'क्रम';

  @override
  String get sortRelevance => 'प्रासंगिकता';

  @override
  String get sortRating => 'रेटिंग';

  @override
  String get sortDeliveryTime => 'डिलीवरी समय';

  @override
  String get sortCostLowHigh => 'दाम: कम सँ बेसी';

  @override
  String get sortCostHighLow => 'दाम: बेसी सँ कम';

  @override
  String get timeSection => 'समय';

  @override
  String get nearAndFast => 'लगीच आ तेज';

  @override
  String get openNow => 'अखन खुजल';

  @override
  String get ratingSection => 'रेस्टोरेंट रेटिंग';

  @override
  String ratedAbove(String rating) {
    return '$rating+ रेटिंग';
  }

  @override
  String get offersSection => 'ऑफर';

  @override
  String get hasOffersLabel => 'ऑफर वला';

  @override
  String get dishPriceSection => 'व्यंजनक दाम';

  @override
  String costUnder(String amount) {
    return '$amount सँ कम';
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
  String get moreSection => 'आओर';

  @override
  String get noPackagingCharges => 'पैकिंग शुल्क नहि';

  @override
  String get allRestaurantsTitle => 'सब रेस्टोरेंट';

  @override
  String get whatsOnYourMind => 'की खाय के मोन अछि?';

  @override
  String get listeningNow => 'सुनि रहल छी…';

  @override
  String get speakNowHint => 'कोनो व्यंजन वा रेस्टोरेंट बाजू';

  @override
  String get voiceUnavailable => 'वॉइस सर्च उपलब्ध नहि';

  @override
  String get voiceUnavailableBody => 'अहाँ टाइप कऽ कऽ सेहो ताकि सकैत छी।';

  @override
  String get microphoneDenied => 'माइक्रोफोन अनुमति बन्न';

  @override
  String get voiceSearchLabel => 'बाजि कऽ ताकू';

  @override
  String get ratingsAndReviews => 'रेटिंग आ समीक्षा';

  @override
  String get reviewsWithTextOnly => 'समीक्षा वला';

  @override
  String get noReviewsTitle => 'अखन धरि कोनो रेटिंग नै';

  @override
  String get noReviewsSubtitle => 'ऑर्डरक बाद पहिल रेटिंग अहीं दिअ।';

  @override
  String get rateOrderTitle => 'अपन ऑर्डरकेँ रेट करू';

  @override
  String get rateDishesTitle => 'व्यंजन सभकेँ रेट करू';

  @override
  String get reviewHint => 'आर किछु कहय चाहब? (वैकल्पिक)';

  @override
  String get submitRating => 'रेटिंग पठाउ';

  @override
  String get reviewThanks => 'धन्यवाद — अहाँक रेटिंग भेट गेल।';

  @override
  String get rateThisOrder => 'ई ऑर्डरकेँ रेट करू';

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
