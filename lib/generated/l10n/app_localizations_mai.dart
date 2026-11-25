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
  String get loginHeadline => 'अहाँक लगक दोकान सँ गरम भोजन, तेज डिलीवरी';

  @override
  String get loginOrSignUp => 'लॉग इन वा साइन अप करू';

  @override
  String get loginEmailHint => 'अपन ईमेल पता लिखू';

  @override
  String get invalidEmail => 'सही ईमेल पता लिखू';

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
    return 'अहाँक ऑर्डर $restaurant लग पहुँचि गेल।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'लगभग $minutes मिनट मे तैयार भऽ जाएत।';
  }

  @override
  String get trackYourOrder => 'अपन ऑर्डर ट्रैक करू';

  @override
  String get couponApplyTitle => 'कूपन लगाउ';

  @override
  String get couponCodeLabel => 'कूपन कोड';

  @override
  String get couponApply => 'लगाउ';

  @override
  String couponAppliedTitle(String code) {
    return '$code लागि गेल';
  }

  @override
  String couponSaving(String amount) {
    return 'अहाँक $amount बचत';
  }

  @override
  String get couponRemove => 'हटाउ';

  @override
  String searchFor(String term) {
    return '\"$term\" ताकू';
  }

  @override
  String get vegModeBadge => 'शुद्ध शाकाहारी';

  @override
  String trackingExpectedBy(String time) {
    return '$time धरि पहुँचत';
  }

  @override
  String get orderAgainTitle => 'फेर ऑर्डर करू';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count आओर',
      one: '$first + 1 आओर',
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
    return '5 मे सँ $rating रेटिंग';
  }

  @override
  String get reorderReplaceTitle => 'अहाँक कार्ट बदलि दी?';

  @override
  String reorderReplaceBody(String restaurant) {
    return 'अहाँक कार्ट मे $restaurant क व्यंजनक बदला एहि ऑर्डरक व्यंजन राखल जाएत।';
  }

  @override
  String get reorderReplace => 'बदलू';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes अखन उपलब्ध नहि अछि, तेँ ई सब नहि जोड़ल गेल।',
      one: '$dishes अखन उपलब्ध नहि अछि, तेँ नहि जोड़ल गेल।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'एहि मे सँ कोनो व्यंजन अखन उपलब्ध नहि अछि।';

  @override
  String get searchShort => 'ताकू';

  @override
  String get favouriteSave => 'पसंदीदा मे सहेजू';

  @override
  String get restaurantAbout => 'एहि रेस्टोरेंटक बारे मे';

  @override
  String ratingByCount(String count) {
    return '$count लोक द्वारा';
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
    return 'Nexmile पर $restaurant सँ ऑर्डर करू';
  }

  @override
  String get ordersSearchHint => 'रेस्टोरेंट वा व्यंजनक नाम सँ ताकू…';

  @override
  String get ordersNoMatch =>
      'ओहि नामक कोनो रेस्टोरेंट वा व्यंजनक ऑर्डर नहि भेटल।';

  @override
  String orderPlacedOn(String date) {
    return '$date केँ ऑर्डर कएल गेल';
  }

  @override
  String get viewMenu => 'मेनू देखू';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get exploreMore => 'आओर देखू';

  @override
  String get exploreTopRated => 'उच्च रेटिंग';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'अहाँ धरि डिलीवरी करय बला $count रेस्टोरेंट',
      one: 'अहाँ धरि डिलीवरी करय बला 1 रेस्टोरेंट',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'डिलीवरी केहन रहल?';

  @override
  String get rateHowWasFood => 'भोजन केहन छल?';

  @override
  String get rateWordTerrible => 'बहुत खराब';

  @override
  String get rateWordBad => 'खराब';

  @override
  String get rateWordOkay => 'ठीक-ठाक';

  @override
  String get rateWordGood => 'नीक';

  @override
  String get rateWordLoved => 'बहुत नीक लागल!';

  @override
  String get rateWhatWentWrong => 'की गड़बड़ भेल?';

  @override
  String get rateWhatYouLiked => 'अहाँकेँ की नीक लागल?';

  @override
  String get rateRiderNoteHint => 'डिलीवरीक बारे मे नोट (वैकल्पिक)';

  @override
  String get rateReviewHeading => 'समीक्षा लिखू';

  @override
  String get rateFoodFirst => 'पठेबाक लेल पहिने भोजनकेँ रेट करू';

  @override
  String get rateYouRated => 'अहाँ एहि ऑर्डरकेँ रेट कएलहुँ';

  @override
  String get ratePromptLater => 'अखन नहि';

  @override
  String get tagTasty => 'स्वादिष्ट';

  @override
  String get tagFreshHot => 'गरम आ ताजा';

  @override
  String get tagGoodPortion => 'भरपूर मात्रा';

  @override
  String get tagGoodPackaging => 'नीक पैकिंग';

  @override
  String get tagValueForMoney => 'पाइ वसूल';

  @override
  String get tagHygienic => 'साफ-सुथरा';

  @override
  String get tagColdFood => 'ठंढा भोजन';

  @override
  String get tagPoorTaste => 'स्वाद नीक नहि छल';

  @override
  String get tagSmallPortion => 'कम मात्रा';

  @override
  String get tagWrongItems => 'गलत व्यंजन';

  @override
  String get tagMissingItems => 'व्यंजन छुटि गेल';

  @override
  String get tagPoorPackaging => 'खराब पैकिंग';

  @override
  String get tagTooOily => 'बेसी तेल वा तीत';

  @override
  String get tagOnTime => 'समय पर';

  @override
  String get tagPolite => 'नम्र व्यवहार';

  @override
  String get tagFollowedInstructions => 'निर्देश मानलनि';

  @override
  String get tagCarefulHandling => 'भोजन सम्हारि कऽ अनलनि';

  @override
  String get tagGoodCommunication => 'जानकारी दैत रहलाह';

  @override
  String get tagLate => 'देरी सँ डिलीवरी';

  @override
  String get tagRude => 'रूखा व्यवहार';

  @override
  String get tagIgnoredInstructions => 'निर्देश नहि मानलनि';

  @override
  String get tagFoodSpilled => 'भोजन छलकि गेल';

  @override
  String get tagAskedExtraMoney => 'बेसी पाइ मंगलनि';

  @override
  String get tagUnprofessional => 'अव्यावसायिक व्यवहार';

  @override
  String rateDeliveredBy(String name) {
    return '$name डिलीवर कएलनि';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant सँ';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant सँ अहाँक ऑर्डर केहन रहल?';
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
    return '$total मे सँ $step';
  }

  @override
  String get permNotNow => 'अखन नहि';

  @override
  String get permLocationTitle => 'लगक भोजन ताकू';

  @override
  String get permNotifyTitle => 'ऑर्डरक कोनो अपडेट नहि छुटत';

  @override
  String get permNotifyBody =>
      'अहाँक ऑर्डर कखन स्वीकार भेल, उठाओल गेल आ दरवाजा पर पहुँचल, से जनबाक लेल सूचना चालू करू।';

  @override
  String get permNotifyLiveTitle => 'ऑर्डरक लाइव अपडेट';

  @override
  String get permNotifyLiveBody =>
      'स्वीकार भेल, बनि रहल अछि, उठाओल गेल, डिलीवर भऽ गेल।';

  @override
  String get permNotifyRiderTitle => 'राइडर अहाँक दरवाजा पर';

  @override
  String get permNotifyRiderBody =>
      'एप्प देखैत रहबाक बिना जानू जे कखन बाहर निकलबाक अछि।';

  @override
  String get permNotifyControlTitle => 'नियंत्रण अहाँक हाथ मे';

  @override
  String get permNotifyControlBody =>
      'फोनक सेटिंग्स मे जा कऽ कखनो सूचना बन्द कऽ सकैत छी।';

  @override
  String get permNotifyAllow => 'सूचना चालू करू';

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
  String get menuSearchHint => 'व्यंजन ताकू';

  @override
  String get filtersShort => 'फिल्टर';

  @override
  String get dietVeg => 'शाकाहारी';

  @override
  String get dietEgg => 'अंडा';

  @override
  String get dietNonVeg => 'मांसाहारी';

  @override
  String get menuBestsellerChip => 'सभसँ बेसी बिकाइत';

  @override
  String get menuFoodType => 'भोजनक प्रकार';

  @override
  String get menuShowOnly => 'मात्र ई देखाउ';

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
      other: '$count व्यंजन देखू',
      one: '1 व्यंजन देखू',
      zero: 'कोनो व्यंजन नहि',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle => 'दोसर व्यंजनक नाम आजमाउ, वा फिल्टर हटाउ।';

  @override
  String get menuBrowse => 'मेनू';

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
  String get riderLocationStale => 'राइडरक लोकेशन अपडेट भऽ रहल अछि…';

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
  String get onLabel => 'चालू';

  @override
  String get offLabel => 'बन्द';

  @override
  String get profileCoupons => 'अहाँक कूपन';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count उपलब्ध',
      one: '1 उपलब्ध',
      zero: 'अखन धरि कोनो नहि',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'अहाँक पसंद';

  @override
  String get profileVegMode => 'शाकाहारी मोड';

  @override
  String get profileVegModeHint => 'मात्र शाकाहारी रेस्टोरेंट आ व्यंजन';

  @override
  String get profileAppearance => 'थीम';

  @override
  String get appearanceSystem => 'फोन जकाँ';

  @override
  String get appearanceLight => 'इजोत';

  @override
  String get appearanceDark => 'अन्हार';

  @override
  String get profileNotifications => 'सूचना';

  @override
  String get profileFoodDelivery => 'भोजन डिलीवरी';

  @override
  String get profileFavourites => 'अहाँक पसंदीदा';

  @override
  String get profileHelp => 'मदति आ सहायता';

  @override
  String get profileMore => 'आओर';

  @override
  String get profileFeedback => 'प्रतिक्रिया पठाउ';

  @override
  String get profileSafety => 'सुरक्षा आपातकालक जानकारी दिअ';

  @override
  String get profileAbout => 'Nexmile क बारे मे';

  @override
  String get couponsEmptyTitle => 'अखन कोनो कूपन नहि';

  @override
  String get couponsEmptyBody =>
      'जखन अहाँक लेल कोनो कूपन उपलब्ध होएत, ओ एतय देखाएत।';

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
    return 'बेसी सँ बेसी $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount सँ बेसीक ऑर्डर पर';
  }

  @override
  String couponValidTill(String date) {
    return '$date धरि मान्य';
  }

  @override
  String get couponAllRestaurants => 'सब रेस्टोरेंट मे';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant मे';
  }

  @override
  String couponCopied(String code) {
    return 'कोड $code कॉपी भऽ गेल';
  }

  @override
  String get favouritesEmptyTitle => 'अखन धरि कोनो पसंदीदा नहि';

  @override
  String get favouritesEmptyBody =>
      'कोनो रेस्टोरेंट पर दिलक निशान दबाउ, ओ एतय सहेजल जाएत।';

  @override
  String get helpCall => 'हमरा कॉल करू';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'हमरा ईमेल करू';

  @override
  String helpHours(String hours) {
    return 'हम $hours उपलब्ध छी';
  }

  @override
  String get helpFaqs => 'सामान्य प्रश्न';

  @override
  String get helpNothing =>
      'सहायताक जानकारी अखन उपलब्ध नहि अछि। कृपया बाद मे फेर कोशिश करू।';

  @override
  String get feedbackPrompt => 'Nexmile अहाँकेँ केहन लागि रहल अछि?';

  @override
  String get feedbackHint => 'की नीक लागल, वा हम की आओर नीक कऽ सकैत छी, से कहू';

  @override
  String get feedbackNeedRating => 'पहिने रेटिंग चुनू';

  @override
  String get feedbackThanks =>
      'धन्यवाद! अहाँक प्रतिक्रिया हमर टीम धरि पहुँचि गेल।';

  @override
  String get safetyIntro =>
      'जँ अहाँ वा आन कियो खतरा मे होइ, तँ पहिने आपातकालीन सेवा केँ कॉल करू।';

  @override
  String get safetyCallEmergency => '112 पर कॉल करू';

  @override
  String get safetyCallEmergencyBody => 'पुलिस, दमकल आ एम्बुलेंस';

  @override
  String get safetyCallNexmile => 'Nexmile सुरक्षा लाइन पर कॉल करू';

  @override
  String get safetyCallNexmileBody => 'चौबीसो घंटा फोन उठाओल जाइत अछि';

  @override
  String aboutVersion(String version) {
    return 'संस्करण $version';
  }

  @override
  String get aboutTerms => 'सेवाक शर्त';

  @override
  String get aboutPrivacy => 'गोपनीयता नीति';

  @override
  String get aboutLicences => 'ओपन-सोर्स लाइसेंस';

  @override
  String get notifyOrderUpdates => 'ऑर्डर अपडेट';

  @override
  String get notifyOrderUpdatesBody =>
      'सदिखन चालू, जाहि सँ अहाँ जानि सकी जे अहाँक भोजन कतय अछि।';

  @override
  String get notifyPromotions => 'ऑफर आ प्रमोशन';

  @override
  String get notifyPromotionsBody => 'छूट, कूपन आ अहाँक लगक नव रेस्टोरेंट।';

  @override
  String get notifyPhoneOff => 'एहि फोन पर Nexmile लेल सूचना बन्द अछि।';

  @override
  String get notifyTurnOn => 'चालू करू';

  @override
  String get linkOpenFailed => 'एहि फोन पर ई नहि खुजि सकल।';

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
  String get walletTitle => 'Nexmile वॉलेट';

  @override
  String get walletBalance => 'वॉलेट बैलेंस';

  @override
  String get walletBalanceHint => 'कोनो ऑर्डरक भुगतान लेल एकर प्रयोग करू।';

  @override
  String get walletAddMoney => 'पाइ जोड़ू';

  @override
  String get walletEnterAmount => 'राशि लिखू';

  @override
  String walletAmountRange(String min, String max) {
    return '$min सँ $max धरि';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount जोड़ू';
  }

  @override
  String get walletSecuredBy => 'भुगतान Razorpay द्वारा सुरक्षित अछि';

  @override
  String get walletHistory => 'इतिहास';

  @override
  String get walletNoHistory =>
      'अखन धरि कोनो लेन-देन नहि। अहाँ जे पाइ जोड़ब वा खर्च करब, से एतय देखाएत।';

  @override
  String get walletEntryTopUp => 'पाइ जोड़ल गेल';

  @override
  String get walletEntryOrder => 'ऑर्डरक भुगतान';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ऑर्डर $number क भुगतान';
  }

  @override
  String get walletEntryRefund => 'रिफंड';

  @override
  String walletMoneyAdded(String amount) {
    return 'अहाँक वॉलेट मे $amount जोड़ल गेल';
  }

  @override
  String get walletPaymentFailed =>
      'भुगतान विफल भेल। अहाँक खाता सँ कोनो पाइ नहि कटल।';

  @override
  String get walletPaymentConfirming =>
      'भुगतान भेटि गेल। अहाँक बैलेंस किछु मिनट मे अपडेट भऽ जाएत।';

  @override
  String get walletUseBalance => 'वॉलेट बैलेंस प्रयोग करू';

  @override
  String walletAvailable(String amount) {
    return 'उपलब्ध: $amount';
  }

  @override
  String get walletPaidFromWallet => 'वॉलेट सँ भुगतान';

  @override
  String get walletPayOnDelivery => 'डिलीवरी पर देय';

  @override
  String get walletCoversOrder => 'पूरा भुगतान अहाँक वॉलेट सँ';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet वॉलेट सँ, $rest डिलीवरी पर';
  }

  @override
  String get walletTopUpUnavailable =>
      'अखन पाइ नहि जोड़ि सकैत छी। कृपया बाद मे फेर कोशिश करू।';

  @override
  String walletFull(String limit) {
    return 'अहाँक वॉलेट $limit क सीमा पर पहुँचि गेल अछि।';
  }

  @override
  String get searchAddressHint => 'इलाका, गली वा चिन्ह ताकू';

  @override
  String get selectLocationTitle => 'स्थान चुनू';

  @override
  String get useCurrentLocation => 'वर्तमान स्थान प्रयोग करू';

  @override
  String get locatingYou => 'अहाँक स्थान ताकि रहल छी…';

  @override
  String get locationOffHint => 'एकर प्रयोग लेल स्थानक अनुमति दिअ';

  @override
  String get savedAddressesHeading => 'सहेजल पता';

  @override
  String get recentLocationsHeading => 'हालक स्थान';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'डिलीवरी स्थान चुनू';

  @override
  String get movePinTooltip => 'पिन केँ ठीक ओहि ठाम राखू जतय डिलीवरी चाही';

  @override
  String get locatingPin => 'पता ताकि रहल छी…';

  @override
  String get deliveryDetailsHeading => 'डिलीवरीक विवरण';

  @override
  String get addressDetailsLabel => 'पताक विवरण*';

  @override
  String get addressDetailsHint => 'जेना: मंजिल, घर नंबर';

  @override
  String get missingAreaHint =>
      'एहि पिनक पूरा पता नहि पढ़ि सकलहुँ। कृपया बाँकी जानकारी भरू।';

  @override
  String get whoToContact => 'एहि डिलीवरी लेल ककरा सँ संपर्क करी?';

  @override
  String get contactMyself => 'हम स्वयं';

  @override
  String get contactSomeoneElse => 'आन कियो';

  @override
  String get receiverDetailsHeading => 'एहि पताक लेल प्राप्तकर्ताक विवरण';

  @override
  String get receiverAddPrompt => 'प्राप्तकर्ताक नाम आ नंबर जोड़ू';

  @override
  String get receiverSheetTitle => 'प्राप्तकर्ताक विवरण';

  @override
  String get doorPhotoHeading => 'दरवाजा/भवनक फोटो (वैकल्पिक)';

  @override
  String get doorPhotoAdd => 'फोटो जोड़ू';

  @override
  String get doorPhotoBody =>
      'एहि सँ हमर डिलीवरी पार्टनर अहाँक सही ठाम जल्दी ताकि पबैत छथि';

  @override
  String get doorPhotoChange => 'बदलू';

  @override
  String get doorPhotoRemove => 'हटाउ';

  @override
  String get photoFromCamera => 'फोटो खींचू';

  @override
  String get photoFromGallery => 'गैलरी सँ चुनू';

  @override
  String get photoUploaded => 'फोटो जोड़ल गेल';

  @override
  String get photoUploadFailed =>
      'फोटो अपलोड नहि भऽ सकल। कृपया बाद मे फेर कोशिश करू।';

  @override
  String get addressSavedPhotoFailed => 'पता सहेजल गेल। फोटो अपलोड नहि भऽ सकल।';

  @override
  String get removePhotoLabel => 'फोटो हटाउ';

  @override
  String get photoRemoved => 'फोटो हटा देल गेल';

  @override
  String get shareLabel => 'शेयर करू';

  @override
  String get addDoorPhotoLabel => 'दरवाजाक फोटो जोड़ू';

  @override
  String get searchAddressNoResults =>
      'कोनो ठाम नहि भेटल। लगक कोनो चिन्ह, इलाकाक नाम वा पिन कोड आजमाउ।';

  @override
  String get clearLabel => 'खाली करू';

  @override
  String get trackingArrivingNow => 'आब पहुँचि रहल अछि';

  @override
  String get trackingLive => 'लाइव';

  @override
  String get trackingStepConfirmed => 'पुष्टि भेल';

  @override
  String get trackingStepPreparing => 'तैयार भऽ रहल';

  @override
  String get trackingStepOnTheWay => 'रास्ता मे';

  @override
  String get trackingStepDelivered => 'डिलीवर भऽ गेल';

  @override
  String get trackingFindingRider => 'डिलीवरी पार्टनर तय कएल जा रहल अछि…';

  @override
  String get trackingPinYou => 'अहाँ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance दूर छथि';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name केँ मैसेज करू';
  }

  @override
  String get trackingDeliveringTo => 'डिलीवरीक पता';

  @override
  String get trackingOrderDetails => 'ऑर्डरक विवरण';

  @override
  String get dispatchSearching => 'रेस्टोरेंटक लग डिलीवरी पार्टनर ताकि रहल छी…';

  @override
  String get dispatchNoRider =>
      'अखन धरि कोनो डिलीवरी पार्टनर ई ऑर्डर नहि लेलनि। हमर टीम अखने एकटा तय कऽ रहल अछि।';

  @override
  String get vehicleBike => 'बाइक';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleBicycle => 'साइकिल';

  @override
  String get vehicleElectric => 'इलेक्ट्रिक स्कूटर';

  @override
  String get exitTitle => 'Nexmile सँ बाहर निकलब?';

  @override
  String get exitBody => 'की अहाँ सत्ते एप्प सँ बाहर निकलय चाहैत छी?';

  @override
  String get exitConfirm => 'बाहर निकलू';

  @override
  String cartSavedBanner(String amount) {
    return 'एहि ऑर्डर पर अहाँ $amount बचेलहुँ';
  }

  @override
  String get cartAddMoreItems => 'आओर व्यंजन जोड़ू';

  @override
  String get cartAddNote => 'रेस्टोरेंट लेल नोट जोड़ू';

  @override
  String get cartOrderNoteHint => 'जेना: कोनो चीज मे प्याज वा लहसुन नहि दिअ';

  @override
  String get cartNoteSave => 'सहेजू';

  @override
  String get cartNoCutlery => 'चम्मच-काँटा नहि पठाउ';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिक कचरा कम करबा मे मदति लेल धन्यवाद';

  @override
  String get cartSavingsCorner => 'बचत कोना';

  @override
  String get cartDeliveryInstructions => 'डिलीवरी निर्देश';

  @override
  String get cartInstructionsRider =>
      'ई सभ मात्र अहाँक डिलीवरी पार्टनर देखैत छथि';

  @override
  String get instructionLeaveAtDoor => 'दरवाजा पर राखि दिअ';

  @override
  String get instructionNoBell => 'घंटी नहि बजाउ';

  @override
  String get instructionNoCall => 'फोन नहि करू';

  @override
  String get instructionSecurity => 'गार्ड केँ दऽ दिअ';

  @override
  String get instructionPet => 'घर मे पालतू जानवर अछि';

  @override
  String get cartInclTaxes => 'कर आ शुल्क सहित';

  @override
  String cartSavedTag(String amount) {
    return '$amount बचत';
  }

  @override
  String get cartPayUsing => 'भुगतानक तरीका';

  @override
  String get cartWalletAndCash => 'वॉलेट + नगद';

  @override
  String cartCashRest(String amount) {
    return 'पहुँचला पर $amount दिअ';
  }

  @override
  String get cartCashFull => 'ऑर्डर पहुँचला पर भुगतान करू';

  @override
  String get cartCashNothing => 'डिलीवरी पर किछु नहि देबाक अछि';

  @override
  String get cartTotal => 'कुल';

  @override
  String get cartPlaceOrder => 'ऑर्डर करू';

  @override
  String cartDeliverTo(String place) {
    return '$place पर डिलीवरी';
  }

  @override
  String get cartChange => 'बदलू';

  @override
  String get cartNoAddress => 'कतय डिलीवरी करी?';

  @override
  String get cartNoAddressHint => 'ऑर्डर करबाक लेल पता जोड़ू';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant सँ अपने लऽ जाउ';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'लगभग $minutes मिनट मे तैयार';
  }

  @override
  String get cartChooseAddress => 'डिलीवरी पता चुनू';

  @override
  String get cartDone => 'भऽ गेल';

  @override
  String get supportTitle => 'Nexmile सहायता';

  @override
  String get supportBubble => 'मदति';

  @override
  String get supportAiLabel => 'AI सहायक';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile टीम';
  }

  @override
  String get supportDemoBanner =>
      'डेमो: ई उत्तर नमूना अछि। असली AI सहायक अखन धरि नहि जुड़ल अछि।';

  @override
  String get supportEmptyTitle => 'हम अहाँक की मदति कऽ सकैत छी?';

  @override
  String get supportEmptyBody =>
      'ऑर्डर, भुगतान वा आन कोनो बात पूछू। पहिने हमर AI सहायक उत्तर दैत अछि, आ जँ ओ मदति नहि कऽ सकय तँ हमर टीमक कियो व्यक्ति आगाँ सम्हारैत छथि।';

  @override
  String get supportSuggestWhere => 'हमर ऑर्डर कतय अछि?';

  @override
  String get supportSuggestMissing => 'किछु छुटि गेल अछि';

  @override
  String get supportSuggestRefund => 'हमरा रिफंडक बारे मे एकटा प्रश्न अछि';

  @override
  String get supportComposerHint => 'मैसेज लिखू';

  @override
  String get supportSend => 'पठाउ';

  @override
  String get supportTyping => 'AI सहायक लिखि रहल अछि…';

  @override
  String get supportNotSent => 'नहि पठाओल गेल';

  @override
  String get supportTookTooLong => 'बहुत समय लागि गेल।';

  @override
  String get supportSlowDown => 'आर पठेबा सँ पहिने कनेक रुकू।';

  @override
  String get supportUnreachable =>
      'अखन चैट सँ संपर्क नहि भऽ रहल अछि। हमरा कॉल करू, वा किछु मिनट बाद फेर कोशिश करू।';

  @override
  String get supportOffline => 'अहाँ ऑफलाइन छी। ई अहाँक अंतिम सहेजल चैट अछि।';

  @override
  String get supportClosed => 'ई चैट बन्न भऽ गेल अछि।';

  @override
  String get supportStartNew => 'नव चैट शुरू करू';

  @override
  String get supportTalkToPerson => 'कोनो व्यक्ति सँ बात करू';

  @override
  String get supportMarkSolved => 'समाधान भेल कहि चिन्हित करू';

  @override
  String get supportHelpful => 'उपयोगी';

  @override
  String get supportNotHelpful => 'उपयोगी नहि';

  @override
  String get supportNeedHelp => 'मदति चाही?';

  @override
  String get supportChatWithUs => 'हमरा सँ चैट करू';

  @override
  String get supportChatWithUsBody =>
      'हमर AI सहायक किछु सेकंड मे उत्तर दैत अछि, आ जखन अहाँकेँ जरूरति हो तँ कियो व्यक्ति आगाँ सम्हारैत छथि।';

  @override
  String get supportActionFailed => 'ई नहि भऽ सकल। फेर कोशिश करू।';

  @override
  String get restaurantNew => 'नव';

  @override
  String get walletHideBalance => 'बैलेंस नुकाउ';

  @override
  String get walletShowBalance => 'बैलेंस देखाउ';

  @override
  String get walletBalanceHiddenLabel => 'बैलेंस नुकाएल अछि';

  @override
  String walletUpdatedAt(String time) {
    return '$time केँ अपडेट भेल';
  }

  @override
  String walletBelowMin(String amount) {
    return 'कम सँ कम $amount जोड़ू';
  }

  @override
  String walletAboveMax(String amount) {
    return 'अहाँ बेसी सँ बेसी $amount जोड़ि सकैत छी';
  }

  @override
  String get walletOpeningPayment => 'भुगतान खुजि रहल अछि…';

  @override
  String get walletConfirmingPayment => 'भुगतान पक्का भऽ रहल अछि…';

  @override
  String get walletTransactions => 'लेन-देन';

  @override
  String get walletFilterAll => 'सब';

  @override
  String get walletFilterAdded => 'जोड़ल पाइ';

  @override
  String get walletFilterSpent => 'खर्च कएल पाइ';

  @override
  String get walletSearch => 'ताकू';

  @override
  String get walletSearchHint => 'ऑर्डर नंबर वा ID ताकू';

  @override
  String get walletDateFilter => 'तारीख सँ फिल्टर करू';

  @override
  String get walletClearFilters => 'फिल्टर हटाउ';

  @override
  String get walletNoMatches => 'अहाँक फिल्टर सँ कोनो लेन-देन मेल नहि खाइत अछि';

  @override
  String get walletEmptyTitle => 'अखन धरि कोनो लेन-देन नहि';

  @override
  String get walletEmptyBody =>
      'अहाँ जे पाइ जोड़ब, ऑर्डर पर खर्च करब वा रिफंड मे वापस पाएब, से एतय देखाएत।';

  @override
  String get walletToday => 'आइ';

  @override
  String get walletYesterday => 'काल्हि';

  @override
  String walletLatestOnly(int count) {
    return 'अहाँक नवीनतम $count लेन-देन देखाओल जा रहल अछि';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ऑर्डर $number क रिफंड';
  }

  @override
  String get walletDetailsTitle => 'लेन-देनक विवरण';

  @override
  String get walletDetailDate => 'तारीख आ समय';

  @override
  String get walletDetailId => 'लेन-देन ID';

  @override
  String get walletDetailType => 'प्रकार';

  @override
  String get walletDetailMethod => 'भुगतानक तरीका';

  @override
  String get walletDetailStatus => 'स्थिति';

  @override
  String get walletDetailOrder => 'ऑर्डर';

  @override
  String get walletDetailReference => 'भुगतान रेफरेंस';

  @override
  String get walletDetailBalanceAfter => 'बादक बैलेंस';

  @override
  String get walletCredit => 'क्रेडिट';

  @override
  String get walletDebit => 'डेबिट';

  @override
  String get walletStatusSuccess => 'सफल';

  @override
  String get walletStatusPending => 'विचाराधीन';

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
  String get walletMethodRefund => 'वॉलेट मे रिफंड';

  @override
  String get walletCopyId => 'ID कॉपी करू';

  @override
  String get walletIdCopied => 'लेन-देन ID कॉपी भऽ गेल';

  @override
  String get walletShareDetails => 'विवरण शेयर करू';
}
