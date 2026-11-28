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
  String get loginHeadline =>
      'तुंदे नेड़लियां दुकानां थमां गरम खाना, तेज़ डिलीवरी';

  @override
  String get loginOrSignUp => 'लॉग इन जां साइन अप करो';

  @override
  String get loginEmailHint => 'अपना ईमेल पता पाओ';

  @override
  String get invalidEmail => 'सही ईमेल पता पाओ';

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
    return '$restaurant गी तुंदा ऑर्डर मिली गेदा ऐ।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'लगभग $minutes मिनटें च त्यार होई जाग।';
  }

  @override
  String get trackYourOrder => 'अपना ऑर्डर ट्रैक करो';

  @override
  String get couponApplyTitle => 'कूपन लागू करो';

  @override
  String get couponCodeLabel => 'कूपन कोड';

  @override
  String get couponApply => 'लागू करो';

  @override
  String couponAppliedTitle(String code) {
    return '$code लागू होई गेआ';
  }

  @override
  String couponSaving(String amount) {
    return 'तुंदी $amount दी बचत';
  }

  @override
  String get couponRemove => 'हटाओ';

  @override
  String searchFor(String term) {
    return '\"$term\" तोपो';
  }

  @override
  String get vegModeBadge => 'शुद्ध शाकाहारी';

  @override
  String trackingExpectedBy(String time) {
    return '$time तगर पुज्जग';
  }

  @override
  String get orderAgainTitle => 'फ्ही ऑर्डर करो';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count होर',
      one: '$first + 1 होर',
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
    return '5 बिच्चा $rating रेटिंग';
  }

  @override
  String get reorderReplaceTitle => 'अपनी कार्ट बदलनी ऐ?';

  @override
  String reorderReplaceBody(String restaurant) {
    return 'तुंदी कार्ट च $restaurant दियां चीजां हटाइयै इस ऑर्डर दे पकवान पाई दित्ते जाङन।';
  }

  @override
  String get reorderReplace => 'बदलो';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes हुन उपलब्ध नेईं न, इस आस्तै एह् छोड़ी दित्ते गे।',
      one: '$dishes हुन उपलब्ध नेईं ऐ, इस आस्तै एह् छोड़ी दित्ता गेआ।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'इंदे बिच्चा कोई बी पकवान हुन उपलब्ध नेईं ऐ।';

  @override
  String get searchShort => 'तोपो';

  @override
  String get favouriteSave => 'पसंदीदा च संभालो';

  @override
  String get restaurantAbout => 'इस रेस्टोरेंट बारै';

  @override
  String ratingByCount(String count) {
    return '$count जनें दी';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ऑफर',
      one: '1 ऑफर',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile उप्पर $restaurant थमां ऑर्डर करो';
  }

  @override
  String get ordersSearchHint => 'रेस्टोरेंट जां पकवान दे नां कन्नै तोपो…';

  @override
  String get ordersNoMatch =>
      'उस नां दे रेस्टोरेंट जां पकवान दा कोई ऑर्डर नेईं।';

  @override
  String orderPlacedOn(String date) {
    return '$date गी ऑर्डर कीता गेआ';
  }

  @override
  String get viewMenu => 'मेनू दिक्खो';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get exploreMore => 'होर दिक्खो';

  @override
  String get exploreTopRated => 'उच्ची रेटिंग';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'तुंदे तगर डिलीवरी करने आह्ले $count रेस्टोरेंट',
      one: 'तुंदे तगर डिलीवरी करने आह्ला 1 रेस्टोरेंट',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'डिलीवरी कनेही ही?';

  @override
  String get rateHowWasFood => 'खाना कनेहा हा?';

  @override
  String get rateWordTerrible => 'बड़ा खराब';

  @override
  String get rateWordBad => 'खराब';

  @override
  String get rateWordOkay => 'ठीक-ठाक';

  @override
  String get rateWordGood => 'बधिया';

  @override
  String get rateWordLoved => 'मजा आई गेआ!';

  @override
  String get rateWhatWentWrong => 'कीह् गलत होआ?';

  @override
  String get rateWhatYouLiked => 'तुसें गी कीह् पसंद आया?';

  @override
  String get rateRiderNoteHint => 'डिलीवरी बारै इक नोट (मरजी दा)';

  @override
  String get rateReviewHeading => 'समीक्षा लिखो';

  @override
  String get rateFoodFirst => 'भेजने आस्तै खाने गी रेट करो';

  @override
  String get rateYouRated => 'तुसें इस ऑर्डर गी रेट कीता';

  @override
  String get ratePromptLater => 'हुन नेईं';

  @override
  String get tagTasty => 'सुआदी';

  @override
  String get tagFreshHot => 'गरम ते ताज़ा';

  @override
  String get tagGoodPortion => 'बधिया मात्रा';

  @override
  String get tagGoodPackaging => 'बधिया पैकिंग';

  @override
  String get tagValueForMoney => 'पैसे वसूल';

  @override
  String get tagHygienic => 'साफ-सुथरा';

  @override
  String get tagColdFood => 'ठंडा खाना';

  @override
  String get tagPoorTaste => 'सुआद नेईं आया';

  @override
  String get tagSmallPortion => 'घट्ट मात्रा';

  @override
  String get tagWrongItems => 'गलत चीजां';

  @override
  String get tagMissingItems => 'चीजां गायब';

  @override
  String get tagPoorPackaging => 'खराब पैकिंग';

  @override
  String get tagTooOily => 'मता तेल जां तिक्खा';

  @override
  String get tagOnTime => 'समें पर';

  @override
  String get tagPolite => 'नम्र';

  @override
  String get tagFollowedInstructions => 'हदायतां मन्नियां';

  @override
  String get tagCarefulHandling => 'खाना ध्यान कन्नै संभालेआ';

  @override
  String get tagGoodCommunication => 'बेल्लै-बेल्लै खबर दित्ती';

  @override
  String get tagLate => 'देरी कन्नै डिलीवरी';

  @override
  String get tagRude => 'रुखा बरताव';

  @override
  String get tagIgnoredInstructions => 'हदायतां नेईं मन्नियां';

  @override
  String get tagFoodSpilled => 'खाना डुल्ली गेआ';

  @override
  String get tagAskedExtraMoney => 'होर पैसे मंगे';

  @override
  String get tagUnprofessional => 'गैर-पेशेवर';

  @override
  String rateDeliveredBy(String name) {
    return '$name डिलीवर कीता';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant थमां';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant थमां तुंदा ऑर्डर कनेहा रेहा?';
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
    return '$total बिच्चा $step';
  }

  @override
  String get permNotNow => 'हुन नेईं';

  @override
  String get permLocationTitle => 'अपने नेड़े खाना तोपो';

  @override
  String get permNotifyTitle => 'ऑर्डर दा कोई बी अपडेट नेईं छुट्टग';

  @override
  String get permNotifyBody =>
      'नोटिफिकेशन चालू करो तां जे पता लग्गै जे तुंदा ऑर्डर कदूं मन्नेआ गेआ, चुक्केआ गेआ ते तुंदे दरवाजे पर पुज्जेआ।';

  @override
  String get permNotifyLiveTitle => 'लाइव ऑर्डर अपडेट';

  @override
  String get permNotifyLiveBody =>
      'मन्नी लैता, त्यार होआ करदा, चुक्की लैता, डिलीवर होई गेआ।';

  @override
  String get permNotifyRiderTitle => 'राइडर तुंदे दरवाजे पर';

  @override
  String get permNotifyRiderBody =>
      'ऐप दिक्खे बगैर पता लग्गी जाग जे बाह्र कदूं निकलना ऐ।';

  @override
  String get permNotifyControlTitle => 'कंट्रोल तुंदे हत्थ च';

  @override
  String get permNotifyControlBody =>
      'अपने फोन दियां सेटिंग्स च कदी बी नोटिफिकेशन बंद करो।';

  @override
  String get permNotifyAllow => 'नोटिफिकेशन चालू करो';

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
  String get menuSearchHint => 'पकवान तोपो';

  @override
  String get filtersShort => 'फिल्टर';

  @override
  String get dietVeg => 'शाकाहारी';

  @override
  String get dietEgg => 'अंडा';

  @override
  String get dietNonVeg => 'मांसाहारी';

  @override
  String get menuBestsellerChip => 'सारें शा बद्ध बिकदा';

  @override
  String get menuFoodType => 'खाने दी किस्म';

  @override
  String get menuShowOnly => 'सिर्फ दस्सो';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पकवान',
      one: '1 पकवान',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पकवान दिक्खो',
      one: '1 पकवान दिक्खो',
      zero: 'कोई पकवान नेईं',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'कोई होर पकवान दा नां अजमाओ, जां कोई फिल्टर हटाओ।';

  @override
  String get menuBrowse => 'मेनू';

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
  String get riderLocationStale => 'राइडर दी लोकेशन अपडेट होआ करदी ऐ…';

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
  String get onLabel => 'चालू';

  @override
  String get offLabel => 'बंद';

  @override
  String get profileCoupons => 'तुंदे कूपन';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'बरतने आस्तै $count',
      one: 'बरतने आस्तै 1',
      zero: 'हाल्ली कोई नेईं',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'तुंदी पसंद';

  @override
  String get profileVegMode => 'शाकाहारी मोड';

  @override
  String get profileVegModeHint => 'सिर्फ शाकाहारी रेस्टोरेंट ते पकवान';

  @override
  String get profileAppearance => 'रंग-रूप';

  @override
  String get appearanceSystem => 'फोन मताबक';

  @override
  String get appearanceLight => 'हल्का';

  @override
  String get appearanceDark => 'गूढ़ा';

  @override
  String get profileNotifications => 'नोटिफिकेशन';

  @override
  String get profileFoodDelivery => 'खाने दी डिलीवरी';

  @override
  String get profileFavourites => 'तुंदे पसंदीदा';

  @override
  String get profileHelp => 'मदद ते सहायता';

  @override
  String get profileMore => 'होर';

  @override
  String get profileFeedback => 'अपनी राय भेजो';

  @override
  String get profileSafety => 'सुरक्षा एमरजैंसी दी रिपोर्ट करो';

  @override
  String get profileAbout => 'Nexmile बारै';

  @override
  String get couponsEmptyTitle => 'हुन कोई कूपन नेईं';

  @override
  String get couponsEmptyBody =>
      'जिसलै कोई कूपन होग जेह्ड़ा तुस बरती सकदे ओ, ओह् इत्थै दिक्खग।';

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
    return 'मते तों मते $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount थमां उप्पर दे ऑर्डरें पर';
  }

  @override
  String couponValidTill(String date) {
    return '$date तगर वैध';
  }

  @override
  String get couponAllRestaurants => 'सब्भै रेस्टोरेंटें पर';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant पर';
  }

  @override
  String couponCopied(String code) {
    return 'कोड $code कॉपी होई गेआ';
  }

  @override
  String get favouritesEmptyTitle => 'हाल्ली कोई पसंदीदा नेईं';

  @override
  String get favouritesEmptyBody =>
      'कुसै रेस्टोरेंट उप्पर दिल गी टैप करियै उसी इत्थै संभालो।';

  @override
  String get helpCall => 'असेंगी कॉल करो';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'असेंगी ईमेल करो';

  @override
  String helpHours(String hours) {
    return 'अस $hours उपलब्ध आं';
  }

  @override
  String get helpFaqs => 'आम सोआल';

  @override
  String get helpNothing =>
      'मदद दी जानकारी हुन उपलब्ध नेईं ऐ। किरपा करियै बाद च फ्ही कोशिश करो।';

  @override
  String get feedbackPrompt => 'Nexmile तुंदे आस्तै कनेहा चला करदा ऐ?';

  @override
  String get feedbackHint =>
      'दस्सो तुसें गी कीह् पसंद आया, जां अस कीह् बेहतर करी सकने आं';

  @override
  String get feedbackNeedRating => 'पैह्लें रेटिंग चुनो';

  @override
  String get feedbackThanks => 'धन्यवाद! तुंदी राय साढ़ी टीम तगर पुज्जी गेई ऐ।';

  @override
  String get safetyIntro =>
      'जेकर तुसें गी जां कुसै होर गी खतरा ऐ, तां पैह्लें एमरजैंसी सेवाएं गी कॉल करो।';

  @override
  String get safetyCallEmergency => '112 पर कॉल करो';

  @override
  String get safetyCallEmergencyBody => 'पुलिस, फायर ब्रिगेड ते एंबुलेंस';

  @override
  String get safetyCallNexmile => 'Nexmile सुरक्षा लाइन पर कॉल करो';

  @override
  String get safetyCallNexmileBody => 'हर बेल्लै जवाब मिलदा ऐ';

  @override
  String aboutVersion(String version) {
    return 'वर्जन $version';
  }

  @override
  String get aboutTerms => 'सेवा शर्तां';

  @override
  String get aboutPrivacy => 'गोपनीयता नीति';

  @override
  String get aboutLicences => 'ओपन-सोर्स लाइसेंस';

  @override
  String get notifyOrderUpdates => 'ऑर्डर अपडेट';

  @override
  String get notifyOrderUpdatesBody =>
      'हमेशा चालू, तां जे तुसें गी पता रवै जे तुंदा खाना कुत्थै ऐ।';

  @override
  String get notifyPromotions => 'ऑफर ते प्रमोशन';

  @override
  String get notifyPromotionsBody =>
      'डील, कूपन ते तुंदे नेड़े नमें रेस्टोरेंट।';

  @override
  String get notifyPhoneOff => 'इस फोन उप्पर Nexmile आस्तै नोटिफिकेशन बंद न।';

  @override
  String get notifyTurnOn => 'चालू करो';

  @override
  String get linkOpenFailed => 'एह् इस फोन उप्पर नेईं खुल्ली सकेआ।';

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
  String get walletTitle => 'Nexmile वॉलेट';

  @override
  String get walletBalance => 'वॉलेट बैलेंस';

  @override
  String get walletBalanceHint =>
      'इसगी कुसै बी ऑर्डर दा भुगतान करने आस्तै बरतो।';

  @override
  String get walletAddMoney => 'पैसे जोड़ो';

  @override
  String get walletEnterAmount => 'रकम पाओ';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ते $max दे बिच्च';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount जोड़ो';
  }

  @override
  String get walletSecuredBy => 'भुगतान Razorpay राहें सुरक्षित न';

  @override
  String get walletHistory => 'इतिहास';

  @override
  String get walletNoHistory =>
      'हाल्ली कोई लेन-देन नेईं। जेह्ड़े पैसे तुस जोड़दे जां खर्चदे ओ, ओह् इत्थै दिक्खने गी मिलङन।';

  @override
  String get walletEntryTopUp => 'पैसे जोड़े गे';

  @override
  String get walletEntryOrder => 'ऑर्डर दा भुगतान कीता';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ऑर्डर $number दा भुगतान कीता';
  }

  @override
  String get walletEntryRefund => 'वापसी';

  @override
  String walletMoneyAdded(String amount) {
    return 'तुंदे वॉलेट च $amount जोड़े गे';
  }

  @override
  String get walletPaymentFailed =>
      'भुगतान नेईं होई सकेआ। तुंदे खाते चा कोई पैसा नेईं कटेआ।';

  @override
  String get walletPaymentConfirming =>
      'भुगतान मिली गेआ। तुंदा बैलेंस किश मिनटें च अपडेट होई जाग।';

  @override
  String get walletUseBalance => 'वॉलेट बैलेंस बरतो';

  @override
  String walletAvailable(String amount) {
    return 'उपलब्ध: $amount';
  }

  @override
  String get walletPaidFromWallet => 'वॉलेट थमां भुगतान';

  @override
  String get walletPayOnDelivery => 'डिलीवरी पर देना';

  @override
  String get walletCoversOrder => 'पूरा भुगतान तुंदे वॉलेट थमां';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet वॉलेट थमां, $rest डिलीवरी पर';
  }

  @override
  String get walletTopUpUnavailable =>
      'हुन पैसे जोड़ने दी सुविधा उपलब्ध नेईं ऐ। किरपा करियै बाद च फ्ही कोशिश करो।';

  @override
  String walletFull(String limit) {
    return 'तुंदा वॉलेट $limit दी हद्द तगर पुज्जी गेदा ऐ।';
  }

  @override
  String get searchAddressHint => 'इलाका, गली जां निशानी तोपो';

  @override
  String get selectLocationTitle => 'थाह्र चुनो';

  @override
  String get useCurrentLocation => 'हुनकी थाह्र बरतो';

  @override
  String get locatingYou => 'तुस कुत्थै ओ, एह् तोपा करदे आं…';

  @override
  String get locationOffHint => 'इसगी बरतने आस्तै थाह्र दी इजाजत देओ';

  @override
  String get savedAddressesHeading => 'संभाले दे पते';

  @override
  String get recentLocationsHeading => 'हाल दियां थाह्रां';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'डिलीवरी दी थाह्र चुनो';

  @override
  String get movePinTooltip => 'पिन गी अपनी ठीक डिलीवरी थाह्र पर लेई जाओ';

  @override
  String get locatingPin => 'पता तोपा करदे आं…';

  @override
  String get deliveryDetailsHeading => 'डिलीवरी दा ब्यौरा';

  @override
  String get addressDetailsLabel => 'पते दा ब्यौरा*';

  @override
  String get addressDetailsHint => 'जियां मंजल, घर नंबर';

  @override
  String get missingAreaHint =>
      'अस इस पिन दा पूरा पता नेईं पढ़ी सके। किरपा करियै बाकी भरो।';

  @override
  String get whoToContact => 'इस डिलीवरी आस्तै अस कुस कन्नै संपर्क करचै?';

  @override
  String get contactMyself => 'मैं अपूं';

  @override
  String get contactSomeoneElse => 'कोई होर';

  @override
  String get receiverDetailsHeading => 'इस पते आस्तै लैने आह्ले दा ब्यौरा';

  @override
  String get receiverAddPrompt => 'लैने आह्ले दा नां ते नंबर जोड़ो';

  @override
  String get receiverSheetTitle => 'लैने आह्ले दा ब्यौरा';

  @override
  String get doorPhotoHeading => 'दरवाजे/इमारत दी फोटो (मरजी दी)';

  @override
  String get doorPhotoAdd => 'फोटो जोड़ो';

  @override
  String get doorPhotoBody =>
      'इस कन्नै साढ़े डिलीवरी पार्टनर तुंदी ठीक थाह्र जल्दी तोपी सकदे न';

  @override
  String get doorPhotoChange => 'बदलो';

  @override
  String get doorPhotoRemove => 'हटाओ';

  @override
  String get photoFromCamera => 'फोटो खिच्चो';

  @override
  String get photoFromGallery => 'गैलरी चा चुनो';

  @override
  String get photoUploaded => 'फोटो जोड़ी गेई';

  @override
  String get photoUploadFailed =>
      'फोटो अपलोड नेईं होई सकी। किरपा करियै बाद च फ्ही कोशिश करो।';

  @override
  String get addressSavedPhotoFailed =>
      'पता संभाली लेदा। फोटो अपलोड नेईं होई सकी।';

  @override
  String get removePhotoLabel => 'फोटो हटाओ';

  @override
  String get photoRemoved => 'फोटो हटाई गेई';

  @override
  String get shareLabel => 'शेयर करो';

  @override
  String get addDoorPhotoLabel => 'दरवाजे दी फोटो जोड़ो';

  @override
  String get searchAddressNoResults =>
      'कोई थाह्र नेईं लब्भी। कोई नेड़ली निशानी, इलाके दा नां जां पिन कोड अजमाओ।';

  @override
  String get clearLabel => 'साफ करो';

  @override
  String get trackingArrivingNow => 'बस पुज्जा करदा ऐ';

  @override
  String get trackingLive => 'लाइव';

  @override
  String get trackingStepConfirmed => 'पक्का';

  @override
  String get trackingStepPreparing => 'त्यार होआ करदा';

  @override
  String get trackingStepOnTheWay => 'रस्ते च';

  @override
  String get trackingStepDelivered => 'डिलीवर होई गेदा';

  @override
  String get trackingFindingRider => 'डिलीवरी पार्टनर तय कीता जा करदा ऐ…';

  @override
  String get trackingPinYou => 'तुस';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance दूर ऐ';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name गी मैसेज करो';
  }

  @override
  String get trackingDeliveringTo => 'डिलीवरी दा पता';

  @override
  String get trackingOrderDetails => 'ऑर्डर दा ब्यौरा';

  @override
  String get dispatchSearching =>
      'रेस्टोरेंट दे नेड़े डिलीवरी पार्टनर तोपा करदे आं…';

  @override
  String get dispatchNoRider =>
      'हाल्ली कुसै डिलीवरी पार्टनर एह् ऑर्डर नेईं लैता। साढ़ी टीम हुन इक पार्टनर तय करा करदी ऐ।';

  @override
  String get vehicleBike => 'बाइक';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleBicycle => 'साइकल';

  @override
  String get vehicleElectric => 'इलैक्ट्रिक स्कूटर';

  @override
  String get exitTitle => 'Nexmile थमां बाह्र निकलना ऐ?';

  @override
  String get exitBody => 'केह् तुस सच्चें गै ऐप थमां बाह्र निकलना चांह्दे ओ?';

  @override
  String get exitConfirm => 'बाह्र निकलो';

  @override
  String cartSavedBanner(String amount) {
    return 'इस ऑर्डर उप्पर तुसें $amount बचाए';
  }

  @override
  String get cartAddMoreItems => 'होर चीजां जोड़ो';

  @override
  String get cartAddNote => 'रेस्टोरेंट आस्तै नोट जोड़ो';

  @override
  String get cartOrderNoteHint => 'जियां: कुसै बी चीजा च गंडा जां थोम नेईं पाओ';

  @override
  String get cartNoteSave => 'संभालो';

  @override
  String get cartNoCutlery => 'चम्मच-कांटे नेईं भेजो';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिक दा कचरा घटाने च मदद आस्तै धन्यवाद';

  @override
  String get cartSavingsCorner => 'बचत कोना';

  @override
  String get cartDeliveryInstructions => 'डिलीवरी हदायतां';

  @override
  String get cartInstructionsRider =>
      'एह् सिर्फ तुंदे डिलीवरी पार्टनर गी गै दिक्खदे न';

  @override
  String get instructionLeaveAtDoor => 'दरवाजे पर रक्खी देओ';

  @override
  String get instructionNoBell => 'घंटी नेईं बजाओ';

  @override
  String get instructionNoCall => 'कॉल नेईं करो';

  @override
  String get instructionSecurity => 'गार्ड कोल छोड़ी देओ';

  @override
  String get instructionPet => 'घर च पालतू जानवर';

  @override
  String get cartInclTaxes => 'कर ते खर्चे शामल';

  @override
  String cartSavedTag(String amount) {
    return '$amount बचे';
  }

  @override
  String get cartPayUsing => 'इस कन्नै भुगतान करो';

  @override
  String get cartWalletAndCash => 'वॉलेट + नकद';

  @override
  String cartCashRest(String amount) {
    return 'पुज्जने पर $amount देओ';
  }

  @override
  String get cartCashFull => 'ऑर्डर पुज्जने पर भुगतान करो';

  @override
  String get cartCashNothing => 'डिलीवरी पर किश नेईं देना';

  @override
  String get cartTotal => 'कुल';

  @override
  String get cartPlaceOrder => 'ऑर्डर करो';

  @override
  String cartDeliverTo(String place) {
    return '$place पर डिलीवरी';
  }

  @override
  String get cartChange => 'बदलो';

  @override
  String get cartNoAddress => 'डिलीवरी कुत्थें करनी ऐ?';

  @override
  String get cartNoAddressHint => 'ऑर्डर करने आस्तै पता जोड़ो';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant थमां पिकअप';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'लगभग $minutes मिनटें च त्यार';
  }

  @override
  String get cartChooseAddress => 'डिलीवरी दा पता चुनो';

  @override
  String get cartDone => 'होई गेआ';

  @override
  String get supportTitle => 'Nexmile सहायता';

  @override
  String get supportBubble => 'मदद';

  @override
  String get supportAiLabel => 'AI सहायक';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile टीम';
  }

  @override
  String get supportDemoBanner =>
      'डैमो: एह् जवाब नमूना न। असली AI सहायक हाल्ली जुड़ेआ नेईं ऐ।';

  @override
  String get supportEmptyTitle => 'अस तुंदी केह् मदद करी सकने आं?';

  @override
  String get supportEmptyBody =>
      'ऑर्डर, भुगतान जां कुसै होर गल्ल बारै पुच्छो। पैह्लें साढ़ा AI सहायक जवाब दिंदा ऐ, ते जेकर ओह् मदद नेईं करी सकै तां साढ़ी टीम दा इक माह्नू संभाली लैंदा ऐ।';

  @override
  String get supportSuggestWhere => 'मेरा ऑर्डर कुत्थें ऐ?';

  @override
  String get supportSuggestMissing => 'कोई चीज गायब ऐ';

  @override
  String get supportSuggestRefund => 'पैसे वापसी बारै मेरा इक सोआल ऐ';

  @override
  String get supportComposerHint => 'मैसेज लिखो';

  @override
  String get supportSend => 'भेजो';

  @override
  String get supportTyping => 'AI सहायक लिखा करदा ऐ…';

  @override
  String get supportNotSent => 'नेईं भेजेआ गेआ';

  @override
  String get supportTookTooLong => 'मती देर होई गेई।';

  @override
  String get supportSlowDown => 'होर भेजने थमां पैह्लें थोह्ड़ा रुको।';

  @override
  String get supportUnreachable =>
      'हुन चैट कन्नै संपर्क नेईं होई सकदा। असेंगी कॉल करो, जां किश मिनटें बाद फ्ही कोशिश करो।';

  @override
  String get supportOffline => 'तुस ऑफलाइन ओ। एह् तुंदी पिछली संभाली दी चैट ऐ।';

  @override
  String get supportClosed => 'एह् चैट बंद होई गेई ऐ।';

  @override
  String get supportStartNew => 'नमीं चैट शुरू करो';

  @override
  String get supportTalkToPerson => 'कुसै माह्नू कन्नै गल्ल करो';

  @override
  String get supportMarkSolved => 'हल होए दा मार्क करो';

  @override
  String get supportHelpful => 'मददगार';

  @override
  String get supportNotHelpful => 'मददगार नेईं';

  @override
  String get supportNeedHelp => 'मदद लोड़दी ऐ?';

  @override
  String get supportChatWithUs => 'साढ़े कन्नै चैट करो';

  @override
  String get supportChatWithUsBody =>
      'साढ़ा AI सहायक किश सैकिंडें च जवाब दिंदा ऐ, ते जिसलै तुसेंगी लोड़ होऐ तां कोई माह्नू संभाली लैंदा ऐ।';

  @override
  String get supportActionFailed => 'एह् नेईं होई सकेआ। फ्ही कोशिश करो।';

  @override
  String get supportOrderNotFound => 'एह् आर्डर तुंदे खाते च नेईं लब्भा।';

  @override
  String get supportOrderLookupDown =>
      'हुनै एह् आर्डर दिक्खेआ नेईं जाई सकेआ। तुस अपना सवाल लिखी सकदे ओ।';

  @override
  String get supportHandedOverNote => 'टीम दा इक सदस्य जवाब देग';

  @override
  String get supportVoiceSpeak => 'बोलो';

  @override
  String get supportVoiceListening => 'सुनदे आं…';

  @override
  String get supportVoiceHint =>
      'अपना सवाल पुच्छो। बोलना बंद करदे गै एह् भेजेआ जाग।';

  @override
  String get supportVoiceNotHeard =>
      'ठीक सुनेआ नेईं जाई सकेआ। फ्ही कोशिश करो, जां मैसेज लिखो।';

  @override
  String get supportVoiceMicDenied =>
      'साढ़े कन्नै गल्ल करने आस्तै माइक्रोफोन दी इजाजत देओ। तुस हुन बी टाइप करी सकदे ओ।';

  @override
  String get supportVoiceReadAloud => 'पढ़ियै सुनाओ';

  @override
  String get supportVoiceStop => 'रोको';

  @override
  String get restaurantNew => 'नमां';

  @override
  String get walletHideBalance => 'बैलेंस छपाओ';

  @override
  String get walletShowBalance => 'बैलेंस दस्सो';

  @override
  String get walletBalanceHiddenLabel => 'बैलेंस छपाया गेदा ऐ';

  @override
  String walletUpdatedAt(String time) {
    return '$time गी अपडेट होआ';
  }

  @override
  String walletBelowMin(String amount) {
    return 'घट्टोघट्ट $amount जोड़ो';
  }

  @override
  String walletAboveMax(String amount) {
    return 'तुस मते तों मते $amount जोड़ी सकदे ओ';
  }

  @override
  String get walletOpeningPayment => 'भुगतान खुल्ला करदा ऐ…';

  @override
  String get walletConfirmingPayment => 'भुगतान पक्का होआ करदा ऐ…';

  @override
  String get walletTransactions => 'लेन-देन';

  @override
  String get walletFilterAll => 'सब्भै';

  @override
  String get walletFilterAdded => 'जोड़े दे पैसे';

  @override
  String get walletFilterSpent => 'खर्चे दे पैसे';

  @override
  String get walletSearch => 'तोपो';

  @override
  String get walletSearchHint => 'ऑर्डर नंबर जां ID तोपो';

  @override
  String get walletDateFilter => 'तरीक मताबक फिल्टर करो';

  @override
  String get walletClearFilters => 'फिल्टर हटाओ';

  @override
  String get walletNoMatches =>
      'तुंदे फिल्टरें कन्नै कोई लेन-देन मेल नेईं खंदा';

  @override
  String get walletEmptyTitle => 'हाल्ली कोई लेन-देन नेईं';

  @override
  String get walletEmptyBody =>
      'जेह्ड़े पैसे तुस जोड़दे ओ, ऑर्डरें पर खर्चदे ओ जां वापसी दे रूप च पांदे ओ, ओह् इत्थै दिक्खने गी मिलङन।';

  @override
  String get walletToday => 'अज्ज';

  @override
  String get walletYesterday => 'कल्ल';

  @override
  String walletLatestOnly(int count) {
    return 'तुंदे ताज़ा $count लेन-देन दस्से जा करदे न';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ऑर्डर $number दी वापसी';
  }

  @override
  String get walletDetailsTitle => 'लेन-देन दा ब्यौरा';

  @override
  String get walletDetailDate => 'तरीक ते समां';

  @override
  String get walletDetailId => 'लेन-देन ID';

  @override
  String get walletDetailType => 'किस्म';

  @override
  String get walletDetailMethod => 'भुगतान दा तरीका';

  @override
  String get walletDetailStatus => 'हालत';

  @override
  String get walletDetailOrder => 'ऑर्डर';

  @override
  String get walletDetailReference => 'भुगतान रेफरेंस';

  @override
  String get walletDetailBalanceAfter => 'बाद दा बैलेंस';

  @override
  String get walletCredit => 'क्रेडिट';

  @override
  String get walletDebit => 'डेबिट';

  @override
  String get walletStatusSuccess => 'कामयाब';

  @override
  String get walletStatusPending => 'पेंडिंग';

  @override
  String get walletStatusFailed => 'नाकाम';

  @override
  String get walletMethodOnline => 'ऑनलाइन भुगतान';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'कार्ड';

  @override
  String get walletMethodNetbanking => 'नेट बैंकिंग';

  @override
  String get walletMethodRefund => 'वॉलेट च वापसी';

  @override
  String get walletCopyId => 'ID कॉपी करो';

  @override
  String get walletIdCopied => 'लेन-देन ID कॉपी होई गेआ';

  @override
  String get walletShareDetails => 'ब्यौरा शेयर करो';
}
