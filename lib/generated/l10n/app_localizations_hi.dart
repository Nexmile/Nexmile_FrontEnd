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
  String get loginHeadline => 'पास की दुकानों से गरम खाना, फटाफट आप तक';

  @override
  String get loginOrSignUp => 'लॉग इन या साइन अप करें';

  @override
  String get loginEmailHint => 'अपना ईमेल पता दर्ज करें';

  @override
  String get invalidEmail => 'सही ईमेल पता दर्ज करें';

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
    return '$restaurant को आपका ऑर्डर मिल गया है।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'लगभग $minutes मिनट में तैयार हो जाएगा।';
  }

  @override
  String get trackYourOrder => 'अपना ऑर्डर ट्रैक करें';

  @override
  String get couponApplyTitle => 'कूपन लागू करें';

  @override
  String get couponCodeLabel => 'कूपन कोड';

  @override
  String get couponApply => 'लागू करें';

  @override
  String couponAppliedTitle(String code) {
    return '$code लागू हो गया';
  }

  @override
  String couponSaving(String amount) {
    return 'आपकी $amount की बचत';
  }

  @override
  String get couponRemove => 'हटाएँ';

  @override
  String searchFor(String term) {
    return '\"$term\" खोजें';
  }

  @override
  String get vegModeBadge => 'शुद्ध शाकाहारी';

  @override
  String trackingExpectedBy(String time) {
    return '$time तक पहुँचेगा';
  }

  @override
  String get orderAgainTitle => 'दोबारा ऑर्डर करें';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count और',
      one: '$first + 1 और',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max मिनट';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 में से $rating रेटिंग';
  }

  @override
  String get reorderReplaceTitle => 'अपनी कार्ट बदलें?';

  @override
  String reorderReplaceBody(String restaurant) {
    return 'आपकी कार्ट में $restaurant की चीज़ें इस ऑर्डर के व्यंजनों से बदल दी जाएँगी।';
  }

  @override
  String get reorderReplace => 'बदलें';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes अभी उपलब्ध नहीं हैं, इसलिए इन्हें नहीं जोड़ा गया।',
      one: '$dishes अभी उपलब्ध नहीं है, इसलिए इसे नहीं जोड़ा गया।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'इनमें से कोई भी व्यंजन अभी उपलब्ध नहीं है।';

  @override
  String get searchShort => 'खोजें';

  @override
  String get favouriteSave => 'पसंदीदा में सहेजें';

  @override
  String get restaurantAbout => 'इस रेस्टोरेंट के बारे में';

  @override
  String ratingByCount(String count) {
    return '$count रेटिंग';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ऑफ़र',
      one: '1 ऑफ़र',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile पर $restaurant से ऑर्डर करें';
  }

  @override
  String get ordersSearchHint => 'रेस्टोरेंट या व्यंजन से खोजें…';

  @override
  String get ordersNoMatch =>
      'इस नाम के किसी रेस्टोरेंट या व्यंजन का कोई ऑर्डर नहीं मिला।';

  @override
  String orderPlacedOn(String date) {
    return '$date को ऑर्डर किया गया';
  }

  @override
  String get viewMenu => 'मेन्यू देखें';

  @override
  String get navHistory => 'हिस्ट्री';

  @override
  String get exploreMore => 'और देखें';

  @override
  String get exploreTopRated => 'टॉप रेटेड';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेस्टोरेंट आप तक डिलीवरी कर रहे हैं',
      one: '1 रेस्टोरेंट आप तक डिलीवरी कर रहा है',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'डिलीवरी कैसी रही?';

  @override
  String get rateHowWasFood => 'खाना कैसा था?';

  @override
  String get rateWordTerrible => 'बहुत ख़राब';

  @override
  String get rateWordBad => 'ख़राब';

  @override
  String get rateWordOkay => 'ठीक-ठाक';

  @override
  String get rateWordGood => 'अच्छा';

  @override
  String get rateWordLoved => 'बहुत बढ़िया!';

  @override
  String get rateWhatWentWrong => 'क्या गड़बड़ हुई?';

  @override
  String get rateWhatYouLiked => 'आपको क्या पसंद आया?';

  @override
  String get rateRiderNoteHint => 'डिलीवरी के बारे में नोट (वैकल्पिक)';

  @override
  String get rateReviewHeading => 'समीक्षा लिखें';

  @override
  String get rateFoodFirst => 'भेजने के लिए खाने को रेट करें';

  @override
  String get rateYouRated => 'आपने इस ऑर्डर को रेट किया';

  @override
  String get ratePromptLater => 'अभी नहीं';

  @override
  String get tagTasty => 'स्वादिष्ट';

  @override
  String get tagFreshHot => 'गरम और ताज़ा';

  @override
  String get tagGoodPortion => 'अच्छी मात्रा';

  @override
  String get tagGoodPackaging => 'अच्छी पैकिंग';

  @override
  String get tagValueForMoney => 'पैसा वसूल';

  @override
  String get tagHygienic => 'साफ़-सुथरा';

  @override
  String get tagColdFood => 'ठंडा खाना';

  @override
  String get tagPoorTaste => 'स्वाद अच्छा नहीं था';

  @override
  String get tagSmallPortion => 'कम मात्रा';

  @override
  String get tagWrongItems => 'ग़लत चीज़ें';

  @override
  String get tagMissingItems => 'कुछ चीज़ें नहीं आईं';

  @override
  String get tagPoorPackaging => 'ख़राब पैकिंग';

  @override
  String get tagTooOily => 'ज़्यादा तेल-मसाला';

  @override
  String get tagOnTime => 'समय पर';

  @override
  String get tagPolite => 'विनम्र';

  @override
  String get tagFollowedInstructions => 'निर्देश माने';

  @override
  String get tagCarefulHandling => 'खाना ध्यान से लाए';

  @override
  String get tagGoodCommunication => 'अपडेट देते रहे';

  @override
  String get tagLate => 'देर से डिलीवरी';

  @override
  String get tagRude => 'ख़राब व्यवहार';

  @override
  String get tagIgnoredInstructions => 'निर्देश नहीं माने';

  @override
  String get tagFoodSpilled => 'खाना फैल गया';

  @override
  String get tagAskedExtraMoney => 'ज़्यादा पैसे माँगे';

  @override
  String get tagUnprofessional => 'लापरवाह रवैया';

  @override
  String rateDeliveredBy(String name) {
    return '$name ने डिलीवर किया';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant से';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant से आपका ऑर्डर कैसा रहा?';
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
    return '$total में से $step';
  }

  @override
  String get permNotNow => 'अभी नहीं';

  @override
  String get permLocationTitle => 'अपने आसपास खाना खोजें';

  @override
  String get permNotifyTitle => 'ऑर्डर का कोई अपडेट न छूटे';

  @override
  String get permNotifyBody =>
      'नोटिफ़िकेशन चालू करें ताकि पता रहे कि आपका ऑर्डर कब स्वीकार हुआ, कब उठाया गया और कब आपके दरवाज़े पर पहुँचा।';

  @override
  String get permNotifyLiveTitle => 'ऑर्डर के लाइव अपडेट';

  @override
  String get permNotifyLiveBody =>
      'स्वीकार हुआ, तैयार हो रहा है, उठा लिया गया, डिलीवर हो गया।';

  @override
  String get permNotifyRiderTitle => 'राइडर आपके दरवाज़े पर';

  @override
  String get permNotifyRiderBody =>
      'ऐप पर नज़र रखे बिना जानें कि कब बाहर आना है।';

  @override
  String get permNotifyControlTitle => 'कंट्रोल आपके हाथ में';

  @override
  String get permNotifyControlBody =>
      'नोटिफ़िकेशन आप कभी भी फ़ोन की सेटिंग्स में बंद कर सकते हैं।';

  @override
  String get permNotifyAllow => 'नोटिफ़िकेशन चालू करें';

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
  String get menuSearchHint => 'व्यंजन खोजें';

  @override
  String get filtersShort => 'फ़िल्टर';

  @override
  String get dietVeg => 'शाकाहारी';

  @override
  String get dietEgg => 'अंडा';

  @override
  String get dietNonVeg => 'मांसाहारी';

  @override
  String get menuBestsellerChip => 'सबसे लोकप्रिय';

  @override
  String get menuFoodType => 'खाने का प्रकार';

  @override
  String get menuShowOnly => 'सिर्फ़ ये दिखाएँ';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यंजन',
      one: '1 व्यंजन',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यंजन देखें',
      one: '1 व्यंजन देखें',
      zero: 'कोई व्यंजन नहीं',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'किसी दूसरे व्यंजन का नाम आज़माएँ या कोई फ़िल्टर हटाएँ।';

  @override
  String get menuBrowse => 'मेन्यू';

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
  String get riderLocationStale => 'राइडर की लोकेशन अपडेट हो रही है…';

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
  String get onLabel => 'चालू';

  @override
  String get offLabel => 'बंद';

  @override
  String get profileCoupons => 'आपके कूपन';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count उपलब्ध',
      one: '1 उपलब्ध',
      zero: 'अभी कोई नहीं',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'आपकी पसंद';

  @override
  String get profileVegMode => 'शाकाहारी मोड';

  @override
  String get profileVegModeHint => 'सिर्फ़ शाकाहारी रेस्टोरेंट और व्यंजन';

  @override
  String get profileAppearance => 'थीम';

  @override
  String get appearanceSystem => 'फ़ोन के अनुसार';

  @override
  String get appearanceLight => 'लाइट';

  @override
  String get appearanceDark => 'डार्क';

  @override
  String get profileNotifications => 'नोटिफ़िकेशन';

  @override
  String get profileFoodDelivery => 'फ़ूड डिलीवरी';

  @override
  String get profileFavourites => 'आपके पसंदीदा';

  @override
  String get profileHelp => 'मदद और सपोर्ट';

  @override
  String get profileMore => 'और';

  @override
  String get profileFeedback => 'फ़ीडबैक भेजें';

  @override
  String get profileSafety => 'सुरक्षा इमरजेंसी की रिपोर्ट करें';

  @override
  String get profileAbout => 'Nexmile के बारे में';

  @override
  String get couponsEmptyTitle => 'अभी कोई कूपन नहीं';

  @override
  String get couponsEmptyBody =>
      'जब कोई कूपन इस्तेमाल के लिए होगा, वह यहाँ दिखेगा।';

  @override
  String couponFlatOff(String amount) {
    return '$amount छूट';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% छूट';
  }

  @override
  String couponUpTo(String amount) {
    return '$amount तक';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount से ज़्यादा के ऑर्डर पर';
  }

  @override
  String couponValidTill(String date) {
    return '$date तक मान्य';
  }

  @override
  String get couponAllRestaurants => 'सभी रेस्टोरेंट पर';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant पर';
  }

  @override
  String couponCopied(String code) {
    return 'कोड $code कॉपी हो गया';
  }

  @override
  String get favouritesEmptyTitle => 'अभी कोई पसंदीदा नहीं';

  @override
  String get favouritesEmptyBody =>
      'किसी रेस्टोरेंट के दिल वाले निशान पर टैप करके उसे यहाँ सहेजें।';

  @override
  String get helpCall => 'हमें कॉल करें';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'हमें ईमेल करें';

  @override
  String helpHours(String hours) {
    return 'हम $hours उपलब्ध हैं';
  }

  @override
  String get helpFaqs => 'आम सवाल';

  @override
  String get helpNothing =>
      'मदद की जानकारी अभी उपलब्ध नहीं है। कृपया बाद में फिर कोशिश करें।';

  @override
  String get feedbackPrompt => 'Nexmile के साथ आपका अनुभव कैसा है?';

  @override
  String get feedbackHint =>
      'बताएँ कि आपको क्या पसंद आया, या हम क्या बेहतर कर सकते हैं';

  @override
  String get feedbackNeedRating => 'पहले रेटिंग चुनें';

  @override
  String get feedbackThanks =>
      'धन्यवाद! आपका फ़ीडबैक हमारी टीम तक पहुँच गया है।';

  @override
  String get safetyIntro =>
      'अगर आप या कोई और ख़तरे में है, तो पहले इमरजेंसी सेवाओं को कॉल करें।';

  @override
  String get safetyCallEmergency => '112 पर कॉल करें';

  @override
  String get safetyCallEmergencyBody => 'पुलिस, दमकल और एम्बुलेंस';

  @override
  String get safetyCallNexmile => 'Nexmile सुरक्षा लाइन पर कॉल करें';

  @override
  String get safetyCallNexmileBody => 'हर समय उपलब्ध';

  @override
  String aboutVersion(String version) {
    return 'वर्ज़न $version';
  }

  @override
  String get aboutTerms => 'सेवा की शर्तें';

  @override
  String get aboutPrivacy => 'गोपनीयता नीति';

  @override
  String get aboutLicences => 'ओपन-सोर्स लाइसेंस';

  @override
  String get notifyOrderUpdates => 'ऑर्डर अपडेट';

  @override
  String get notifyOrderUpdatesBody =>
      'हमेशा चालू, ताकि आपको पता रहे कि आपका खाना कहाँ है।';

  @override
  String get notifyPromotions => 'ऑफ़र और प्रमोशन';

  @override
  String get notifyPromotionsBody => 'डील, कूपन और आपके पास के नए रेस्टोरेंट।';

  @override
  String get notifyPhoneOff => 'इस फ़ोन पर Nexmile के नोटिफ़िकेशन बंद हैं।';

  @override
  String get notifyTurnOn => 'चालू करें';

  @override
  String get linkOpenFailed => 'यह इस फ़ोन पर नहीं खुल सका।';

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
  String get walletTitle => 'Nexmile वॉलेट';

  @override
  String get walletBalance => 'वॉलेट बैलेंस';

  @override
  String get walletBalanceHint => 'इससे किसी भी ऑर्डर का भुगतान करें।';

  @override
  String get walletAddMoney => 'पैसे जोड़ें';

  @override
  String get walletEnterAmount => 'राशि दर्ज करें';

  @override
  String walletAmountRange(String min, String max) {
    return '$min से $max के बीच';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount जोड़ें';
  }

  @override
  String get walletSecuredBy => 'भुगतान Razorpay के ज़रिए सुरक्षित हैं';

  @override
  String get walletHistory => 'हिस्ट्री';

  @override
  String get walletNoHistory =>
      'अभी कोई लेन-देन नहीं। आप जो पैसे जोड़ेंगे या खर्च करेंगे, वे यहाँ दिखेंगे।';

  @override
  String get walletEntryTopUp => 'पैसे जोड़े गए';

  @override
  String get walletEntryOrder => 'ऑर्डर के लिए भुगतान';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ऑर्डर $number के लिए भुगतान';
  }

  @override
  String get walletEntryRefund => 'रिफ़ंड';

  @override
  String walletMoneyAdded(String amount) {
    return 'आपके वॉलेट में $amount जोड़े गए';
  }

  @override
  String get walletPaymentFailed =>
      'भुगतान नहीं हो सका। आपके खाते से कोई पैसा नहीं कटा।';

  @override
  String get walletPaymentConfirming =>
      'भुगतान मिल गया। आपका बैलेंस कुछ मिनटों में अपडेट हो जाएगा।';

  @override
  String get walletUseBalance => 'वॉलेट बैलेंस इस्तेमाल करें';

  @override
  String walletAvailable(String amount) {
    return 'उपलब्ध: $amount';
  }

  @override
  String get walletPaidFromWallet => 'वॉलेट से भुगतान';

  @override
  String get walletPayOnDelivery => 'डिलीवरी पर भुगतान';

  @override
  String get walletCoversOrder => 'पूरा भुगतान आपके वॉलेट से';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet वॉलेट से, $rest डिलीवरी पर';
  }

  @override
  String get walletTopUpUnavailable =>
      'अभी पैसे नहीं जोड़े जा सकते। कृपया बाद में फिर कोशिश करें।';

  @override
  String walletFull(String limit) {
    return 'आपका वॉलेट $limit की सीमा तक भर चुका है।';
  }

  @override
  String get searchAddressHint => 'इलाक़ा, गली या लैंडमार्क खोजें';

  @override
  String get selectLocationTitle => 'लोकेशन चुनें';

  @override
  String get useCurrentLocation => 'मौजूदा लोकेशन इस्तेमाल करें';

  @override
  String get locatingYou => 'आपकी लोकेशन ढूँढ रहे हैं…';

  @override
  String get locationOffHint => 'इसके लिए लोकेशन की अनुमति दें';

  @override
  String get savedAddressesHeading => 'सहेजे गए पते';

  @override
  String get recentLocationsHeading => 'हाल की लोकेशन';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'डिलीवरी लोकेशन चुनें';

  @override
  String get movePinTooltip => 'पिन को अपनी सही डिलीवरी लोकेशन पर ले जाएँ';

  @override
  String get locatingPin => 'पता ढूँढ रहे हैं…';

  @override
  String get deliveryDetailsHeading => 'डिलीवरी का विवरण';

  @override
  String get addressDetailsLabel => 'पते का विवरण*';

  @override
  String get addressDetailsHint => 'जैसे: मंज़िल, मकान नंबर';

  @override
  String get missingAreaHint =>
      'इस पिन का पूरा पता नहीं मिल सका। कृपया बाक़ी जानकारी भर दें।';

  @override
  String get whoToContact => 'इस डिलीवरी के लिए हम किससे संपर्क करें?';

  @override
  String get contactMyself => 'मैं खुद';

  @override
  String get contactSomeoneElse => 'कोई और';

  @override
  String get receiverDetailsHeading => 'इस पते पर ऑर्डर लेने वाले की जानकारी';

  @override
  String get receiverAddPrompt => 'ऑर्डर लेने वाले का नाम और नंबर जोड़ें';

  @override
  String get receiverSheetTitle => 'ऑर्डर लेने वाले की जानकारी';

  @override
  String get doorPhotoHeading => 'दरवाज़े/इमारत की फ़ोटो (वैकल्पिक)';

  @override
  String get doorPhotoAdd => 'फ़ोटो जोड़ें';

  @override
  String get doorPhotoBody =>
      'इससे हमारे डिलीवरी पार्टनर आपकी सही लोकेशन जल्दी ढूँढ पाते हैं';

  @override
  String get doorPhotoChange => 'बदलें';

  @override
  String get doorPhotoRemove => 'हटाएँ';

  @override
  String get photoFromCamera => 'फ़ोटो लें';

  @override
  String get photoFromGallery => 'गैलरी से चुनें';

  @override
  String get photoUploaded => 'फ़ोटो जोड़ दी गई';

  @override
  String get photoUploadFailed =>
      'फ़ोटो अपलोड नहीं हो सकी। कृपया बाद में फिर कोशिश करें।';

  @override
  String get addressSavedPhotoFailed =>
      'पता सहेज लिया गया। फ़ोटो अपलोड नहीं हो सकी।';

  @override
  String get removePhotoLabel => 'फ़ोटो हटाएँ';

  @override
  String get photoRemoved => 'फ़ोटो हटा दी गई';

  @override
  String get shareLabel => 'शेयर करें';

  @override
  String get addDoorPhotoLabel => 'दरवाज़े की फ़ोटो जोड़ें';

  @override
  String get searchAddressNoResults =>
      'कोई जगह नहीं मिली। आसपास का कोई लैंडमार्क, इलाक़े का नाम या पिन कोड आज़माएँ।';

  @override
  String get clearLabel => 'साफ़ करें';

  @override
  String get trackingArrivingNow => 'बस पहुँच रहा है';

  @override
  String get trackingLive => 'लाइव';

  @override
  String get trackingStepConfirmed => 'कन्फ़र्म';

  @override
  String get trackingStepPreparing => 'तैयार हो रहा है';

  @override
  String get trackingStepOnTheWay => 'रास्ते में';

  @override
  String get trackingStepDelivered => 'डिलीवर हो गया';

  @override
  String get trackingFindingRider => 'डिलीवरी पार्टनर असाइन किया जा रहा है…';

  @override
  String get trackingPinYou => 'आप';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance दूर हैं';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name को मैसेज करें';
  }

  @override
  String get trackingDeliveringTo => 'डिलीवरी का पता';

  @override
  String get trackingOrderDetails => 'ऑर्डर का विवरण';

  @override
  String get dispatchSearching =>
      'रेस्टोरेंट के पास डिलीवरी पार्टनर ढूँढ रहे हैं…';

  @override
  String get dispatchNoRider =>
      'अभी तक किसी डिलीवरी पार्टनर ने यह ऑर्डर नहीं लिया है। हमारी टीम अभी एक पार्टनर असाइन कर रही है।';

  @override
  String get vehicleBike => 'बाइक';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleBicycle => 'साइकिल';

  @override
  String get vehicleElectric => 'इलेक्ट्रिक स्कूटर';

  @override
  String get exitTitle => 'Nexmile से बाहर निकलें?';

  @override
  String get exitBody => 'क्या आप सच में ऐप से बाहर निकलना चाहते हैं?';

  @override
  String get exitConfirm => 'बाहर निकलें';

  @override
  String cartSavedBanner(String amount) {
    return 'इस ऑर्डर पर आपने $amount बचाए';
  }

  @override
  String get cartAddMoreItems => 'और चीज़ें जोड़ें';

  @override
  String get cartAddNote => 'रेस्टोरेंट के लिए नोट जोड़ें';

  @override
  String get cartOrderNoteHint =>
      'जैसे: किसी भी चीज़ में प्याज़ या लहसुन न डालें';

  @override
  String get cartNoteSave => 'सहेजें';

  @override
  String get cartNoCutlery => 'कटलरी न भेजें';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिक कचरा कम करने में मदद के लिए धन्यवाद';

  @override
  String get cartSavingsCorner => 'बचत कॉर्नर';

  @override
  String get cartDeliveryInstructions => 'डिलीवरी निर्देश';

  @override
  String get cartInstructionsRider =>
      'ये सिर्फ़ आपके डिलीवरी पार्टनर को दिखेंगे';

  @override
  String get instructionLeaveAtDoor => 'दरवाज़े पर छोड़ दें';

  @override
  String get instructionNoBell => 'घंटी न बजाएँ';

  @override
  String get instructionNoCall => 'कॉल न करें';

  @override
  String get instructionSecurity => 'गार्ड को दे दें';

  @override
  String get instructionPet => 'घर में पालतू जानवर';

  @override
  String get cartInclTaxes => 'कर और शुल्क सहित';

  @override
  String cartSavedTag(String amount) {
    return '$amount की बचत';
  }

  @override
  String get cartPayUsing => 'भुगतान का तरीका';

  @override
  String get cartWalletAndCash => 'वॉलेट + नकद';

  @override
  String cartCashRest(String amount) {
    return 'ऑर्डर आने पर $amount दें';
  }

  @override
  String get cartCashFull => 'ऑर्डर आने पर भुगतान करें';

  @override
  String get cartCashNothing => 'डिलीवरी पर कुछ नहीं देना है';

  @override
  String get cartTotal => 'कुल';

  @override
  String get cartPlaceOrder => 'ऑर्डर करें';

  @override
  String cartDeliverTo(String place) {
    return '$place पर डिलीवरी';
  }

  @override
  String get cartChange => 'बदलें';

  @override
  String get cartNoAddress => 'डिलीवरी कहाँ करनी है?';

  @override
  String get cartNoAddressHint => 'ऑर्डर करने के लिए पता जोड़ें';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant से खुद ले जाएँ';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'लगभग $minutes मिनट में तैयार';
  }

  @override
  String get cartChooseAddress => 'डिलीवरी का पता चुनें';

  @override
  String get cartDone => 'हो गया';

  @override
  String get supportTitle => 'Nexmile सपोर्ट';

  @override
  String get supportBubble => 'मदद';

  @override
  String get supportAiLabel => 'AI असिस्टेंट';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile टीम';
  }

  @override
  String get supportDemoBanner =>
      'डेमो: ये जवाब सिर्फ़ नमूने हैं। असली AI असिस्टेंट अभी जुड़ा नहीं है।';

  @override
  String get supportEmptyTitle => 'हम आपकी क्या मदद कर सकते हैं?';

  @override
  String get supportEmptyBody =>
      'किसी ऑर्डर, भुगतान या किसी और चीज़ के बारे में पूछें। पहले हमारा AI असिस्टेंट जवाब देता है, और अगर वह मदद न कर पाए तो हमारी टीम का कोई व्यक्ति आगे बात संभालता है।';

  @override
  String get supportSuggestWhere => 'मेरा ऑर्डर कहाँ है?';

  @override
  String get supportSuggestMissing => 'कुछ सामान नहीं आया';

  @override
  String get supportSuggestRefund => 'रिफ़ंड के बारे में मेरा एक सवाल है';

  @override
  String get supportComposerHint => 'मैसेज लिखें';

  @override
  String get supportSend => 'भेजें';

  @override
  String get supportTyping => 'AI असिस्टेंट लिख रहा है…';

  @override
  String get supportNotSent => 'नहीं भेजा गया';

  @override
  String get supportTookTooLong => 'जवाब आने में बहुत देर लग गई।';

  @override
  String get supportSlowDown => 'और मैसेज भेजने से पहले थोड़ा रुकें।';

  @override
  String get supportUnreachable =>
      'अभी चैट से संपर्क नहीं हो पा रहा है। हमें कॉल करें, या कुछ मिनट बाद फिर कोशिश करें।';

  @override
  String get supportOffline =>
      'आप ऑफ़लाइन हैं। यह आपकी आख़िरी सहेजी गई चैट है।';

  @override
  String get supportClosed => 'यह चैट बंद हो चुकी है।';

  @override
  String get supportStartNew => 'नई चैट शुरू करें';

  @override
  String get supportTalkToPerson => 'किसी व्यक्ति से बात करें';

  @override
  String get supportMarkSolved => 'समस्या हल हो गई';

  @override
  String get supportHelpful => 'मददगार';

  @override
  String get supportNotHelpful => 'मददगार नहीं';

  @override
  String get supportNeedHelp => 'मदद चाहिए?';

  @override
  String get supportChatWithUs => 'हमसे चैट करें';

  @override
  String get supportChatWithUsBody =>
      'हमारा AI असिस्टेंट कुछ ही सेकंड में जवाब देता है, और ज़रूरत हो तो हमारी टीम का कोई व्यक्ति बात संभाल लेता है।';

  @override
  String get supportActionFailed => 'यह नहीं हो पाया। फिर कोशिश करें।';

  @override
  String get supportOrderNotFound => 'यह ऑर्डर आपके खाते में नहीं मिला।';

  @override
  String get supportOrderLookupDown =>
      'अभी यह ऑर्डर देखा नहीं जा सका। आप अपना सवाल लिखकर भेज सकते हैं।';

  @override
  String get supportHandedOverNote => 'टीम का कोई सदस्य जवाब देगा';

  @override
  String get supportVoiceSpeak => 'बोलें';

  @override
  String get supportVoiceListening => 'सुन रहे हैं…';

  @override
  String get supportVoiceHint =>
      'अपना सवाल पूछें। बोलना बंद करते ही यह भेज दिया जाएगा।';

  @override
  String get supportVoiceNotHeard =>
      'ठीक से सुनाई नहीं दिया। फिर कोशिश करें, या मैसेज लिखें।';

  @override
  String get supportVoiceMicDenied =>
      'हमसे बात करने के लिए माइक्रोफ़ोन की अनुमति दें। आप अब भी टाइप कर सकते हैं।';

  @override
  String get supportVoiceReadAloud => 'पढ़कर सुनाएँ';

  @override
  String get supportVoiceStop => 'रोकें';

  @override
  String get restaurantNew => 'नया';

  @override
  String get walletHideBalance => 'बैलेंस छिपाएँ';

  @override
  String get walletShowBalance => 'बैलेंस दिखाएँ';

  @override
  String get walletBalanceHiddenLabel => 'बैलेंस छिपा हुआ है';

  @override
  String walletUpdatedAt(String time) {
    return 'अपडेट: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'कम से कम $amount जोड़ें';
  }

  @override
  String walletAboveMax(String amount) {
    return 'आप ज़्यादा से ज़्यादा $amount जोड़ सकते हैं';
  }

  @override
  String get walletOpeningPayment => 'भुगतान शुरू हो रहा है…';

  @override
  String get walletConfirmingPayment => 'भुगतान की पुष्टि हो रही है…';

  @override
  String get walletTransactions => 'लेन-देन';

  @override
  String get walletFilterAll => 'सभी';

  @override
  String get walletFilterAdded => 'जोड़े गए पैसे';

  @override
  String get walletFilterSpent => 'खर्च हुए पैसे';

  @override
  String get walletSearch => 'खोजें';

  @override
  String get walletSearchHint => 'ऑर्डर नंबर या ID खोजें';

  @override
  String get walletDateFilter => 'तारीख से फ़िल्टर करें';

  @override
  String get walletClearFilters => 'फ़िल्टर हटाएँ';

  @override
  String get walletNoMatches => 'आपके फ़िल्टर से मेल खाता कोई लेन-देन नहीं';

  @override
  String get walletEmptyTitle => 'अभी कोई लेन-देन नहीं';

  @override
  String get walletEmptyBody =>
      'आप जो पैसे जोड़ेंगे, ऑर्डर पर खर्च करेंगे या रिफ़ंड में वापस पाएँगे, वे यहाँ दिखेंगे।';

  @override
  String get walletToday => 'आज';

  @override
  String get walletYesterday => 'कल';

  @override
  String walletLatestOnly(int count) {
    return 'आपके हाल के $count लेन-देन दिखाए जा रहे हैं';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ऑर्डर $number का रिफ़ंड';
  }

  @override
  String get walletDetailsTitle => 'लेन-देन का विवरण';

  @override
  String get walletDetailDate => 'तारीख और समय';

  @override
  String get walletDetailId => 'लेन-देन ID';

  @override
  String get walletDetailType => 'प्रकार';

  @override
  String get walletDetailMethod => 'भुगतान का तरीका';

  @override
  String get walletDetailStatus => 'स्थिति';

  @override
  String get walletDetailOrder => 'ऑर्डर';

  @override
  String get walletDetailReference => 'भुगतान रेफ़रेंस';

  @override
  String get walletDetailBalanceAfter => 'लेन-देन के बाद बैलेंस';

  @override
  String get walletCredit => 'क्रेडिट';

  @override
  String get walletDebit => 'डेबिट';

  @override
  String get walletStatusSuccess => 'सफल';

  @override
  String get walletStatusPending => 'लंबित';

  @override
  String get walletStatusFailed => 'विफल';

  @override
  String get walletMethodOnline => 'ऑनलाइन भुगतान';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'कार्ड';

  @override
  String get walletMethodNetbanking => 'नेट बैंकिंग';

  @override
  String get walletMethodRefund => 'वॉलेट में रिफ़ंड';

  @override
  String get walletCopyId => 'ID कॉपी करें';

  @override
  String get walletIdCopied => 'लेन-देन ID कॉपी हो गई';

  @override
  String get walletShareDetails => 'विवरण शेयर करें';
}
