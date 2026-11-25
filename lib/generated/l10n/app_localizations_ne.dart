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
  String get loginHeadline =>
      'तपाईंको नजिकैका पसलहरूबाट तातो खाना, छिटो डेलिभरी';

  @override
  String get loginOrSignUp => 'लग इन वा साइन अप गर्नुहोस्';

  @override
  String get loginEmailHint => 'आफ्नो इमेल ठेगाना लेख्नुहोस्';

  @override
  String get invalidEmail => 'सही इमेल ठेगाना लेख्नुहोस्';

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
    return 'तपाईंको अर्डर $restaurant मा पुग्यो।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'लगभग $minutes मिनेटमा तयार हुनेछ।';
  }

  @override
  String get trackYourOrder => 'अर्डर ट्र्याक गर्नुहोस्';

  @override
  String get couponApplyTitle => 'कुपन लगाउनुहोस्';

  @override
  String get couponCodeLabel => 'कुपन कोड';

  @override
  String get couponApply => 'लगाउनुहोस्';

  @override
  String couponAppliedTitle(String code) {
    return '$code लगाइयो';
  }

  @override
  String couponSaving(String amount) {
    return 'तपाईंको $amount बचत';
  }

  @override
  String get couponRemove => 'हटाउनुहोस्';

  @override
  String searchFor(String term) {
    return '\"$term\" खोज्नुहोस्';
  }

  @override
  String get vegModeBadge => 'शुद्ध शाकाहारी';

  @override
  String trackingExpectedBy(String time) {
    return '$time सम्ममा आइपुग्नेछ';
  }

  @override
  String get orderAgainTitle => 'फेरि अर्डर गर्नुहोस्';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count थप',
      one: '$first + 1 थप',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max मिनेट';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 मध्ये $rating रेटिङ';
  }

  @override
  String get reorderReplaceTitle => 'तपाईंको कार्ट बदल्ने?';

  @override
  String reorderReplaceBody(String restaurant) {
    return 'तपाईंको कार्टमा भएका $restaurant का परिकारको सट्टा यो अर्डरका परिकार राखिनेछन्।';
  }

  @override
  String get reorderReplace => 'बदल्नुहोस्';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes अहिले उपलब्ध छैनन्, त्यसैले थपिएनन्।',
      one: '$dishes अहिले उपलब्ध छैन, त्यसैले थपिएन।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'यी परिकारमध्ये कुनै पनि अहिले उपलब्ध छैन।';

  @override
  String get searchShort => 'खोज';

  @override
  String get favouriteSave => 'मनपर्नेमा सुरक्षित गर्नुहोस्';

  @override
  String get restaurantAbout => 'यो रेस्टुरेन्टको बारेमा';

  @override
  String ratingByCount(String count) {
    return '$count जनाबाट';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अफर',
      one: '1 अफर',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile मा $restaurant बाट अर्डर गर्नुहोस्';
  }

  @override
  String get ordersSearchHint => 'रेस्टुरेन्ट वा परिकारको नामले खोज्नुहोस्…';

  @override
  String get ordersNoMatch =>
      'त्यो नामको रेस्टुरेन्ट वा परिकारको कुनै अर्डर छैन।';

  @override
  String orderPlacedOn(String date) {
    return '$date मा अर्डर गरिएको';
  }

  @override
  String get viewMenu => 'मेनु हेर्नुहोस्';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get exploreMore => 'थप हेर्नुहोस्';

  @override
  String get exploreTopRated => 'उच्च रेटिङ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'तपाईंकहाँ डेलिभरी गर्ने $count रेस्टुरेन्ट',
      one: 'तपाईंकहाँ डेलिभरी गर्ने 1 रेस्टुरेन्ट',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'डेलिभरी कस्तो रह्यो?';

  @override
  String get rateHowWasFood => 'खाना कस्तो थियो?';

  @override
  String get rateWordTerrible => 'धेरै नराम्रो';

  @override
  String get rateWordBad => 'नराम्रो';

  @override
  String get rateWordOkay => 'ठिकै';

  @override
  String get rateWordGood => 'राम्रो';

  @override
  String get rateWordLoved => 'एकदमै मन पर्यो!';

  @override
  String get rateWhatWentWrong => 'के गडबड भयो?';

  @override
  String get rateWhatYouLiked => 'तपाईंलाई के राम्रो लाग्यो?';

  @override
  String get rateRiderNoteHint => 'डेलिभरीबारे नोट (वैकल्पिक)';

  @override
  String get rateReviewHeading => 'समीक्षा लेख्नुहोस्';

  @override
  String get rateFoodFirst => 'पठाउन पहिले खानालाई रेट गर्नुहोस्';

  @override
  String get rateYouRated => 'तपाईंले यो अर्डरलाई रेट गर्नुभयो';

  @override
  String get ratePromptLater => 'अहिले होइन';

  @override
  String get tagTasty => 'स्वादिष्ट';

  @override
  String get tagFreshHot => 'तातो र ताजा';

  @override
  String get tagGoodPortion => 'पर्याप्त मात्रा';

  @override
  String get tagGoodPackaging => 'राम्रो प्याकिङ';

  @override
  String get tagValueForMoney => 'पैसा असुल';

  @override
  String get tagHygienic => 'सफा र स्वच्छ';

  @override
  String get tagColdFood => 'चिसो खाना';

  @override
  String get tagPoorTaste => 'स्वाद राम्रो थिएन';

  @override
  String get tagSmallPortion => 'थोरै मात्रा';

  @override
  String get tagWrongItems => 'गलत परिकार';

  @override
  String get tagMissingItems => 'परिकार छुटेको';

  @override
  String get tagPoorPackaging => 'खराब प्याकिङ';

  @override
  String get tagTooOily => 'धेरै चिल्लो वा पिरो';

  @override
  String get tagOnTime => 'समयमै';

  @override
  String get tagPolite => 'नम्र व्यवहार';

  @override
  String get tagFollowedInstructions => 'निर्देशन पालना गरे';

  @override
  String get tagCarefulHandling => 'खाना होसियारीसाथ ल्याए';

  @override
  String get tagGoodCommunication => 'जानकारी दिइरहे';

  @override
  String get tagLate => 'ढिलो डेलिभरी';

  @override
  String get tagRude => 'रुखो व्यवहार';

  @override
  String get tagIgnoredInstructions => 'निर्देशन पालना गरेनन्';

  @override
  String get tagFoodSpilled => 'खाना पोखियो';

  @override
  String get tagAskedExtraMoney => 'थप पैसा मागे';

  @override
  String get tagUnprofessional => 'अव्यावसायिक';

  @override
  String rateDeliveredBy(String name) {
    return '$name ले डेलिभर गर्नुभयो';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant बाट';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant बाटको तपाईंको अर्डर कस्तो रह्यो?';
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
    return '$total मध्ये $step';
  }

  @override
  String get permNotNow => 'अहिले होइन';

  @override
  String get permLocationTitle => 'नजिकैको खाना खोज्नुहोस्';

  @override
  String get permNotifyTitle => 'अर्डरको कुनै अपडेट नछुटाउनुहोस्';

  @override
  String get permNotifyBody =>
      'तपाईंको अर्डर स्वीकार हुँदा, उठाइँदा र ढोकामा आइपुग्दा थाहा पाउन सूचना चालु गर्नुहोस्।';

  @override
  String get permNotifyLiveTitle => 'अर्डरको लाइभ अपडेट';

  @override
  String get permNotifyLiveBody => 'स्वीकार भयो, पाक्दैछ, उठाइयो, डेलिभर भयो।';

  @override
  String get permNotifyRiderTitle => 'राइडर तपाईंको ढोकामा';

  @override
  String get permNotifyRiderBody =>
      'एप हेरिरहनु नपरी बाहिर निस्कने बेला थाहा पाउनुहोस्।';

  @override
  String get permNotifyControlTitle => 'नियन्त्रण तपाईंकै हातमा';

  @override
  String get permNotifyControlBody =>
      'फोनको सेटिङमा गएर जुनसुकै बेला सूचना बन्द गर्न सक्नुहुन्छ।';

  @override
  String get permNotifyAllow => 'सूचना चालु गर्नुहोस्';

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
  String get menuSearchHint => 'परिकार खोज्नुहोस्';

  @override
  String get filtersShort => 'फिल्टर';

  @override
  String get dietVeg => 'शाकाहारी';

  @override
  String get dietEgg => 'अन्डा';

  @override
  String get dietNonVeg => 'मांसाहारी';

  @override
  String get menuBestsellerChip => 'धेरै बिक्री हुने';

  @override
  String get menuFoodType => 'खानाको प्रकार';

  @override
  String get menuShowOnly => 'यी मात्र देखाउनुहोस्';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिकार',
      one: '1 परिकार',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिकार हेर्नुहोस्',
      one: '1 परिकार हेर्नुहोस्',
      zero: 'कुनै परिकार छैन',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'अर्को परिकारको नाम प्रयास गर्नुहोस्, वा फिल्टर हटाउनुहोस्।';

  @override
  String get menuBrowse => 'मेनु';

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
  String get riderLocationStale => 'राइडरको स्थान अपडेट हुँदैछ…';

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
  String get onLabel => 'चालु';

  @override
  String get offLabel => 'बन्द';

  @override
  String get profileCoupons => 'तपाईंका कुपन';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वटा उपलब्ध',
      one: '1 वटा उपलब्ध',
      zero: 'अहिलेसम्म छैन',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'तपाईंका प्राथमिकता';

  @override
  String get profileVegMode => 'शाकाहारी मोड';

  @override
  String get profileVegModeHint => 'शाकाहारी रेस्टुरेन्ट र परिकार मात्र';

  @override
  String get profileAppearance => 'थिम';

  @override
  String get appearanceSystem => 'फोनजस्तै';

  @override
  String get appearanceLight => 'उज्यालो';

  @override
  String get appearanceDark => 'अँध्यारो';

  @override
  String get profileNotifications => 'सूचना';

  @override
  String get profileFoodDelivery => 'खाना डेलिभरी';

  @override
  String get profileFavourites => 'तपाईंका मनपर्ने';

  @override
  String get profileHelp => 'मद्दत र सहयोग';

  @override
  String get profileMore => 'थप';

  @override
  String get profileFeedback => 'प्रतिक्रिया पठाउनुहोस्';

  @override
  String get profileSafety => 'सुरक्षा आपतकालको जानकारी दिनुहोस्';

  @override
  String get profileAbout => 'Nexmile को बारेमा';

  @override
  String get couponsEmptyTitle => 'अहिले कुनै कुपन छैन';

  @override
  String get couponsEmptyBody =>
      'तपाईंले प्रयोग गर्न मिल्ने कुपन आएपछि यहाँ देखिनेछ।';

  @override
  String couponFlatOff(String amount) {
    return '$amount छुट';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% छुट';
  }

  @override
  String couponUpTo(String amount) {
    return 'बढीमा $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount भन्दा बढीको अर्डरमा';
  }

  @override
  String couponValidTill(String date) {
    return '$date सम्म मान्य';
  }

  @override
  String get couponAllRestaurants => 'सबै रेस्टुरेन्टमा';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant मा';
  }

  @override
  String couponCopied(String code) {
    return 'कोड $code कपी भयो';
  }

  @override
  String get favouritesEmptyTitle => 'अहिलेसम्म कुनै मनपर्ने छैन';

  @override
  String get favouritesEmptyBody =>
      'रेस्टुरेन्टमा भएको मुटुको चिह्न थिचेर यहाँ सुरक्षित गर्नुहोस्।';

  @override
  String get helpCall => 'हामीलाई कल गर्नुहोस्';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'हामीलाई इमेल गर्नुहोस्';

  @override
  String helpHours(String hours) {
    return 'हामी $hours उपलब्ध छौं';
  }

  @override
  String get helpFaqs => 'धेरै सोधिने प्रश्न';

  @override
  String get helpNothing =>
      'सहायता विवरण अहिले उपलब्ध छैन। कृपया पछि पुनः प्रयास गर्नुहोस्।';

  @override
  String get feedbackPrompt => 'Nexmile तपाईंलाई कस्तो लागिरहेको छ?';

  @override
  String get feedbackHint =>
      'के राम्रो लाग्यो, वा हामी के सुधार गर्न सक्छौं, भन्नुहोस्';

  @override
  String get feedbackNeedRating => 'पहिले रेटिङ छान्नुहोस्';

  @override
  String get feedbackThanks =>
      'धन्यवाद! तपाईंको प्रतिक्रिया हाम्रो टोलीसम्म पुग्यो।';

  @override
  String get safetyIntro =>
      'तपाईं वा अरू कोही खतरामा हुनुहुन्छ भने, पहिले आपतकालीन सेवामा फोन गर्नुहोस्।';

  @override
  String get safetyCallEmergency => '112 मा कल गर्नुहोस्';

  @override
  String get safetyCallEmergencyBody => 'प्रहरी, दमकल र एम्बुलेन्स';

  @override
  String get safetyCallNexmile => 'Nexmile सुरक्षा लाइनमा कल गर्नुहोस्';

  @override
  String get safetyCallNexmileBody => 'चौबीसै घण्टा फोन उठाइन्छ';

  @override
  String aboutVersion(String version) {
    return 'संस्करण $version';
  }

  @override
  String get aboutTerms => 'सेवाका सर्तहरू';

  @override
  String get aboutPrivacy => 'गोपनीयता नीति';

  @override
  String get aboutLicences => 'ओपन-सोर्स लाइसेन्सहरू';

  @override
  String get notifyOrderUpdates => 'अर्डर अपडेट';

  @override
  String get notifyOrderUpdatesBody =>
      'तपाईंको खाना कहाँ पुग्यो थाहा पाउन सधैं चालु रहन्छ।';

  @override
  String get notifyPromotions => 'अफर र प्रमोसन';

  @override
  String get notifyPromotionsBody =>
      'छुट, कुपन र तपाईंको नजिकैका नयाँ रेस्टुरेन्ट।';

  @override
  String get notifyPhoneOff => 'यो फोनमा Nexmile का लागि सूचना बन्द छ।';

  @override
  String get notifyTurnOn => 'चालु गर्नुहोस्';

  @override
  String get linkOpenFailed => 'यो फोनमा त्यो खोल्न सकिएन।';

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
  String get walletTitle => 'Nexmile वालेट';

  @override
  String get walletBalance => 'वालेट ब्यालेन्स';

  @override
  String get walletBalanceHint =>
      'जुनसुकै अर्डरको भुक्तानी गर्न प्रयोग गर्नुहोस्।';

  @override
  String get walletAddMoney => 'पैसा थप्नुहोस्';

  @override
  String get walletEnterAmount => 'रकम लेख्नुहोस्';

  @override
  String walletAmountRange(String min, String max) {
    return '$min देखि $max सम्म';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount थप्नुहोस्';
  }

  @override
  String get walletSecuredBy => 'भुक्तानी Razorpay द्वारा सुरक्षित छ';

  @override
  String get walletHistory => 'इतिहास';

  @override
  String get walletNoHistory =>
      'अहिलेसम्म कुनै कारोबार छैन। तपाईंले थपेको वा खर्च गरेको पैसा यहाँ देखिनेछ।';

  @override
  String get walletEntryTopUp => 'पैसा थपियो';

  @override
  String get walletEntryOrder => 'अर्डरको भुक्तानी';

  @override
  String walletEntryOrderNumber(String number) {
    return 'अर्डर $number को भुक्तानी';
  }

  @override
  String get walletEntryRefund => 'फिर्ता';

  @override
  String walletMoneyAdded(String amount) {
    return 'तपाईंको वालेटमा $amount थपियो';
  }

  @override
  String get walletPaymentFailed =>
      'भुक्तानी असफल भयो। तपाईंको खाताबाट कुनै पैसा काटिएको छैन।';

  @override
  String get walletPaymentConfirming =>
      'भुक्तानी प्राप्त भयो। तपाईंको ब्यालेन्स केही मिनेटमा अपडेट हुनेछ।';

  @override
  String get walletUseBalance => 'वालेट ब्यालेन्स प्रयोग गर्नुहोस्';

  @override
  String walletAvailable(String amount) {
    return 'उपलब्ध: $amount';
  }

  @override
  String get walletPaidFromWallet => 'वालेटबाट भुक्तानी';

  @override
  String get walletPayOnDelivery => 'डेलिभरीमा तिर्ने';

  @override
  String get walletCoversOrder => 'पूरै रकम तपाईंको वालेटबाट तिरियो';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet वालेटबाट, $rest डेलिभरीमा';
  }

  @override
  String get walletTopUpUnavailable =>
      'अहिले पैसा थप्न मिल्दैन। कृपया पछि पुनः प्रयास गर्नुहोस्।';

  @override
  String walletFull(String limit) {
    return 'तपाईंको वालेट $limit को सीमामा पुगेको छ।';
  }

  @override
  String get searchAddressHint => 'क्षेत्र, सडक वा चिनारी खोज्नुहोस्';

  @override
  String get selectLocationTitle => 'स्थान छान्नुहोस्';

  @override
  String get useCurrentLocation => 'हालको स्थान प्रयोग गर्नुहोस्';

  @override
  String get locatingYou => 'तपाईं कहाँ हुनुहुन्छ खोज्दै…';

  @override
  String get locationOffHint => 'यो प्रयोग गर्न स्थानको अनुमति दिनुहोस्';

  @override
  String get savedAddressesHeading => 'सुरक्षित ठेगानाहरू';

  @override
  String get recentLocationsHeading => 'हालैका स्थानहरू';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'डेलिभरी स्थान छान्नुहोस्';

  @override
  String get movePinTooltip => 'पिनलाई ठ्याक्कै डेलिभरी हुने ठाउँमा सार्नुहोस्';

  @override
  String get locatingPin => 'ठेगाना खोज्दै…';

  @override
  String get deliveryDetailsHeading => 'डेलिभरी विवरण';

  @override
  String get addressDetailsLabel => 'ठेगानाको विवरण*';

  @override
  String get addressDetailsHint => 'जस्तै: तल्ला, घर नं.';

  @override
  String get missingAreaHint =>
      'यो पिनको पूरा ठेगाना पढ्न सकिएन। कृपया बाँकी विवरण भर्नुहोस्।';

  @override
  String get whoToContact => 'यो डेलिभरीका लागि कसलाई सम्पर्क गर्ने?';

  @override
  String get contactMyself => 'म आफैँ';

  @override
  String get contactSomeoneElse => 'अरू कोही';

  @override
  String get receiverDetailsHeading => 'यो ठेगानाका लागि प्राप्तकर्ताको विवरण';

  @override
  String get receiverAddPrompt => 'प्राप्तकर्ताको नाम र नम्बर थप्नुहोस्';

  @override
  String get receiverSheetTitle => 'प्राप्तकर्ताको विवरण';

  @override
  String get doorPhotoHeading => 'ढोका/भवनको फोटो (वैकल्पिक)';

  @override
  String get doorPhotoAdd => 'फोटो थप्नुहोस्';

  @override
  String get doorPhotoBody =>
      'यसले हाम्रा डेलिभरी पार्टनरलाई तपाईंको ठ्याक्कै स्थान छिटो भेट्टाउन मद्दत गर्छ';

  @override
  String get doorPhotoChange => 'बदल्नुहोस्';

  @override
  String get doorPhotoRemove => 'हटाउनुहोस्';

  @override
  String get photoFromCamera => 'फोटो खिच्नुहोस्';

  @override
  String get photoFromGallery => 'ग्यालरीबाट छान्नुहोस्';

  @override
  String get photoUploaded => 'फोटो थपियो';

  @override
  String get photoUploadFailed =>
      'फोटो अपलोड हुन सकेन। कृपया पछि पुनः प्रयास गर्नुहोस्।';

  @override
  String get addressSavedPhotoFailed =>
      'ठेगाना सुरक्षित भयो। फोटो अपलोड हुन सकेन।';

  @override
  String get removePhotoLabel => 'फोटो हटाउनुहोस्';

  @override
  String get photoRemoved => 'फोटो हटाइयो';

  @override
  String get shareLabel => 'सेयर गर्नुहोस्';

  @override
  String get addDoorPhotoLabel => 'ढोकाको फोटो थप्नुहोस्';

  @override
  String get searchAddressNoResults =>
      'कुनै ठाउँ भेटिएन। नजिकैको चिनारी, क्षेत्रको नाम वा पिन कोड प्रयास गर्नुहोस्।';

  @override
  String get clearLabel => 'खाली गर्नुहोस्';

  @override
  String get trackingArrivingNow => 'अब आइपुग्दैछ';

  @override
  String get trackingLive => 'लाइभ';

  @override
  String get trackingStepConfirmed => 'पुष्टि भयो';

  @override
  String get trackingStepPreparing => 'तयार हुँदैछ';

  @override
  String get trackingStepOnTheWay => 'बाटोमा छ';

  @override
  String get trackingStepDelivered => 'डेलिभर भयो';

  @override
  String get trackingFindingRider => 'डेलिभरी पार्टनर तोकिँदैछ…';

  @override
  String get trackingPinYou => 'तपाईं';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance टाढा छन्';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name लाई म्यासेज गर्नुहोस्';
  }

  @override
  String get trackingDeliveringTo => 'डेलिभरी हुने ठेगाना';

  @override
  String get trackingOrderDetails => 'अर्डर विवरण';

  @override
  String get dispatchSearching => 'रेस्टुरेन्ट नजिकै डेलिभरी पार्टनर खोज्दै…';

  @override
  String get dispatchNoRider =>
      'अहिलेसम्म कुनै डेलिभरी पार्टनरले अर्डर लिएका छैनन्। हाम्रो टोलीले अहिले नै एक जना तोक्दैछ।';

  @override
  String get vehicleBike => 'बाइक';

  @override
  String get vehicleScooter => 'स्कुटर';

  @override
  String get vehicleBicycle => 'साइकल';

  @override
  String get vehicleElectric => 'इलेक्ट्रिक स्कुटर';

  @override
  String get exitTitle => 'Nexmile बाट बाहिरिने?';

  @override
  String get exitBody => 'के तपाईं साँच्चै एपबाट बाहिरिन चाहनुहुन्छ?';

  @override
  String get exitConfirm => 'बाहिरिनुहोस्';

  @override
  String cartSavedBanner(String amount) {
    return 'यो अर्डरमा तपाईंले $amount बचाउनुभयो';
  }

  @override
  String get cartAddMoreItems => 'अरू परिकार थप्नुहोस्';

  @override
  String get cartAddNote => 'रेस्टुरेन्टका लागि नोट थप्नुहोस्';

  @override
  String get cartOrderNoteHint =>
      'जस्तै: कुनै पनि परिकारमा प्याज वा लसुन नहाल्नुहोस्';

  @override
  String get cartNoteSave => 'सुरक्षित गर्नुहोस्';

  @override
  String get cartNoCutlery => 'चम्चा-काँटा नपठाउनुहोस्';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिक फोहोर घटाउन सहयोग गर्नुभएकोमा धन्यवाद';

  @override
  String get cartSavingsCorner => 'बचत कुना';

  @override
  String get cartDeliveryInstructions => 'डेलिभरी निर्देशन';

  @override
  String get cartInstructionsRider =>
      'यी निर्देशन तपाईंको डेलिभरी पार्टनरले मात्र देख्छन्';

  @override
  String get instructionLeaveAtDoor => 'ढोकामा छोड्नुहोस्';

  @override
  String get instructionNoBell => 'घण्टी नबजाउनुहोस्';

  @override
  String get instructionNoCall => 'फोन नगर्नुहोस्';

  @override
  String get instructionSecurity => 'गार्डलाई दिनुहोस्';

  @override
  String get instructionPet => 'घरमा पाल्तु जनावर छ';

  @override
  String get cartInclTaxes => 'कर र शुल्क सहित';

  @override
  String cartSavedTag(String amount) {
    return '$amount बचत';
  }

  @override
  String get cartPayUsing => 'भुक्तानी माध्यम';

  @override
  String get cartWalletAndCash => 'वालेट + नगद';

  @override
  String cartCashRest(String amount) {
    return 'आइपुगेपछि $amount तिर्नुहोस्';
  }

  @override
  String get cartCashFull => 'अर्डर आइपुगेपछि तिर्नुहोस्';

  @override
  String get cartCashNothing => 'डेलिभरीमा केही तिर्नुपर्दैन';

  @override
  String get cartTotal => 'जम्मा';

  @override
  String get cartPlaceOrder => 'अर्डर गर्नुहोस्';

  @override
  String cartDeliverTo(String place) {
    return '$place मा डेलिभरी';
  }

  @override
  String get cartChange => 'बदल्नुहोस्';

  @override
  String get cartNoAddress => 'कहाँ डेलिभरी गर्ने?';

  @override
  String get cartNoAddressHint => 'अर्डर गर्न ठेगाना थप्नुहोस्';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant बाट आफैँ लैजानुहोस्';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'लगभग $minutes मिनेटमा तयार';
  }

  @override
  String get cartChooseAddress => 'डेलिभरी ठेगाना छान्नुहोस्';

  @override
  String get cartDone => 'भयो';

  @override
  String get supportTitle => 'Nexmile सहायता';

  @override
  String get supportBubble => 'मद्दत';

  @override
  String get supportAiLabel => 'AI सहायक';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile टोली';
  }

  @override
  String get supportDemoBanner =>
      'डेमो: यी जवाफहरू नमुना हुन्। वास्तविक AI सहायक अझै जोडिएको छैन।';

  @override
  String get supportEmptyTitle => 'हामी कसरी मद्दत गर्न सक्छौं?';

  @override
  String get supportEmptyBody =>
      'अर्डर, भुक्तानी वा अरू जुनसुकै कुरा सोध्नुहोस्। पहिले हाम्रो AI सहायकले जवाफ दिन्छ, र यसले मद्दत गर्न नसकेमा हाम्रो टोलीका एक जना व्यक्तिले सम्हाल्नुहुन्छ।';

  @override
  String get supportSuggestWhere => 'मेरो अर्डर कहाँ छ?';

  @override
  String get supportSuggestMissing => 'केही छुटेको छ';

  @override
  String get supportSuggestRefund => 'रकम फिर्ताबारे मेरो एउटा प्रश्न छ';

  @override
  String get supportComposerHint => 'म्यासेज लेख्नुहोस्';

  @override
  String get supportSend => 'पठाउनुहोस्';

  @override
  String get supportTyping => 'AI सहायक लेख्दैछ…';

  @override
  String get supportNotSent => 'पठाइएन';

  @override
  String get supportTookTooLong => 'धेरै समय लाग्यो।';

  @override
  String get supportSlowDown => 'थप पठाउनुअघि केही बेर पर्खनुहोस्।';

  @override
  String get supportUnreachable =>
      'अहिले च्याटसँग सम्पर्क हुन सकेन। हामीलाई कल गर्नुहोस्, वा केही मिनेटपछि पुनः प्रयास गर्नुहोस्।';

  @override
  String get supportOffline =>
      'तपाईं अफलाइन हुनुहुन्छ। यो तपाईंको अन्तिम सुरक्षित च्याट हो।';

  @override
  String get supportClosed => 'यो च्याट बन्द भएको छ।';

  @override
  String get supportStartNew => 'नयाँ च्याट सुरु गर्नुहोस्';

  @override
  String get supportTalkToPerson => 'एक जना मानिससँग कुरा गर्नुहोस्';

  @override
  String get supportMarkSolved => 'समाधान भयो भनी चिन्ह लगाउनुहोस्';

  @override
  String get supportHelpful => 'उपयोगी';

  @override
  String get supportNotHelpful => 'उपयोगी छैन';

  @override
  String get supportNeedHelp => 'मद्दत चाहियो?';

  @override
  String get supportChatWithUs => 'हामीसँग च्याट गर्नुहोस्';

  @override
  String get supportChatWithUsBody =>
      'हाम्रो AI सहायकले केही सेकेन्डमै जवाफ दिन्छ, र तपाईंलाई चाहिएमा एक जना व्यक्तिले सम्हाल्नुहुन्छ।';

  @override
  String get supportActionFailed => 'त्यो हुन सकेन। पुनः प्रयास गर्नुहोस्।';

  @override
  String get restaurantNew => 'नयाँ';

  @override
  String get walletHideBalance => 'ब्यालेन्स लुकाउनुहोस्';

  @override
  String get walletShowBalance => 'ब्यालेन्स देखाउनुहोस्';

  @override
  String get walletBalanceHiddenLabel => 'ब्यालेन्स लुकाइएको छ';

  @override
  String walletUpdatedAt(String time) {
    return '$time मा अपडेट भयो';
  }

  @override
  String walletBelowMin(String amount) {
    return 'कम्तीमा $amount थप्नुहोस्';
  }

  @override
  String walletAboveMax(String amount) {
    return 'तपाईं बढीमा $amount थप्न सक्नुहुन्छ';
  }

  @override
  String get walletOpeningPayment => 'भुक्तानी खुल्दैछ…';

  @override
  String get walletConfirmingPayment => 'भुक्तानी पुष्टि हुँदैछ…';

  @override
  String get walletTransactions => 'कारोबार';

  @override
  String get walletFilterAll => 'सबै';

  @override
  String get walletFilterAdded => 'थपिएको पैसा';

  @override
  String get walletFilterSpent => 'खर्च भएको पैसा';

  @override
  String get walletSearch => 'खोज्नुहोस्';

  @override
  String get walletSearchHint => 'अर्डर नम्बर वा ID खोज्नुहोस्';

  @override
  String get walletDateFilter => 'मितिअनुसार फिल्टर गर्नुहोस्';

  @override
  String get walletClearFilters => 'फिल्टर हटाउनुहोस्';

  @override
  String get walletNoMatches => 'तपाईंको फिल्टरसँग मिल्ने कुनै कारोबार छैन';

  @override
  String get walletEmptyTitle => 'अहिलेसम्म कुनै कारोबार छैन';

  @override
  String get walletEmptyBody =>
      'तपाईंले थपेको, अर्डरमा खर्च गरेको वा फिर्ताका रूपमा पाएको पैसा यहाँ देखिनेछ।';

  @override
  String get walletToday => 'आज';

  @override
  String get walletYesterday => 'हिजो';

  @override
  String walletLatestOnly(int count) {
    return 'तपाईंका पछिल्ला $count कारोबार देखाइँदैछ';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'अर्डर $number को फिर्ता';
  }

  @override
  String get walletDetailsTitle => 'कारोबार विवरण';

  @override
  String get walletDetailDate => 'मिति र समय';

  @override
  String get walletDetailId => 'कारोबार ID';

  @override
  String get walletDetailType => 'प्रकार';

  @override
  String get walletDetailMethod => 'भुक्तानी विधि';

  @override
  String get walletDetailStatus => 'स्थिति';

  @override
  String get walletDetailOrder => 'अर्डर';

  @override
  String get walletDetailReference => 'भुक्तानी सन्दर्भ';

  @override
  String get walletDetailBalanceAfter => 'पछिको ब्यालेन्स';

  @override
  String get walletCredit => 'क्रेडिट';

  @override
  String get walletDebit => 'डेबिट';

  @override
  String get walletStatusSuccess => 'सफल';

  @override
  String get walletStatusPending => 'विचाराधीन';

  @override
  String get walletStatusFailed => 'असफल';

  @override
  String get walletMethodOnline => 'अनलाइन भुक्तानी';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'कार्ड';

  @override
  String get walletMethodNetbanking => 'नेट बैंकिङ';

  @override
  String get walletMethodRefund => 'वालेटमा फिर्ता';

  @override
  String get walletCopyId => 'ID कपी गर्नुहोस्';

  @override
  String get walletIdCopied => 'कारोबार ID कपी भयो';

  @override
  String get walletShareDetails => 'विवरण सेयर गर्नुहोस्';
}
