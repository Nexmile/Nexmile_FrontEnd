// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bodo (`brx`).
class AppLocalizationsBrx extends AppLocalizations {
  AppLocalizationsBrx([String locale = 'brx']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'बे खोन्दोआ नांगौ';

  @override
  String get tagline => 'गोख्रों डेलिभारि। गोदान मिनिस्लु।';

  @override
  String get chooseLanguageTitle => 'नोंथांनि राव सायख';

  @override
  String get chooseLanguageSubtitle =>
      'नोंथांनो गोसो जायो एरै रावखौ सायख। नोंथाङो बेखौ जेब्लाबाबो सेटिंसआव सोलायनो हागोन।';

  @override
  String get searchLanguageHint => 'राव नागिर';

  @override
  String get noLanguageFound => 'जेबो राव मोनाखै';

  @override
  String languagesAvailable(int count) {
    return '$count राव मोननो हायो';
  }

  @override
  String get continueLabel => 'लाबोबाय था';

  @override
  String get selectedLabel => 'सायखनाय';

  @override
  String get defaultLabel => 'डिफल्ट';

  @override
  String get homeTitle => 'Nexmile आव आजादा';

  @override
  String get homeSubtitle =>
      'गोदान किराना, गोदै आहार आरो सानफ्रोमबो नांगौ बेसादफोर नोंथांनि खात्रिनि दुखानिफ्राय।';

  @override
  String get changeLanguage => 'राव सोलाय';

  @override
  String get languageUpdated => 'राव सोलायबाय';

  @override
  String get appLanguageLabel => 'एपनि राव';

  @override
  String greetingNamed(String name) {
    return 'आजादा, $name';
  }

  @override
  String get loginTitle => 'Nexmile आव साइन इन खालाम';

  @override
  String get loginSubtitle =>
      'नोंथांनि इमेइल एबा मबाइल नामबार दा, जों थि खालामनाय कड दैथाय होगोन।';

  @override
  String get emailOrPhoneLabel => 'इमेइल एबा मबाइल नामबार';

  @override
  String get emailOrPhoneHint => 'name@example.com एबा 9876543210';

  @override
  String get invalidEmailOrPhone => 'थार इमेइल थं एबा 10 अंकनि मबाइल नामबार दा';

  @override
  String get loginHeadline =>
      'नोंथांनि खात्रिनि दुखानिफ्राय गुदुं आहार, गोख्रों डेलिभारि';

  @override
  String get loginOrSignUp => 'साइन इन एबा साइन आप खालाम';

  @override
  String get loginEmailHint => 'नोंथांनि इमेइल थं दा';

  @override
  String get invalidEmail => 'थार इमेइल थं दा';

  @override
  String get sendCode => 'कड दैथाय हो';

  @override
  String get agreeToTermsOnContinue =>
      'लाबोबाय थानाय जों नोंथाङो जोंनि सिबिथाइनि नेमखान्थि आरो गुबैथि नीति जों रोंगौ।';

  @override
  String get otpTitle => 'बेयो नोंथाङ नामा थि खालाम';

  @override
  String otpSubtitle(String target) {
    return '$target आव दैथाय होनाय 6 अंकनि कड दा';
  }

  @override
  String get verifyCode => 'थि खालाम';

  @override
  String get resendCode => 'कड फिन दैथाय हो';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकेन्डआव फिन दैथाय हो';
  }

  @override
  String get codeResent => 'गोदान कड दैथाय होबाय';

  @override
  String get incorrectCode => 'बे कडआ गोरोन्थि एबा समआ जोबबाय। गोदान कड बे।';

  @override
  String get enterFullCode => 'आबुं 6 अंक दा';

  @override
  String get accountSuspended =>
      'बे एकाउन्टखौ थाबाय होनाय जाबाय। अन्नानै मददनि जों सोंख्रीमा खालाम।';

  @override
  String get tooManyAttempts =>
      'गोबां बार नाजानाय जाबाय। अन्नानै मोनसे सम उनाव फिन नाजा।';

  @override
  String get sessionExpired =>
      'नोंथांनि सेसननि समआ जोबबाय। अन्नानै फिन साइन इन खालाम।';

  @override
  String get networkError => 'इन्टारनेट जोनाय गैया। जोनायखौ नाय आरो फिन नाजा।';

  @override
  String get developmentCode => 'डेभेलपमेन्ट कड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'नोंथाङ साइन आउट जाबाय';

  @override
  String get somethingWentWrong => 'मा मानो गोरोन्थि जाबाय। अन्नानै फिन नाजा।';

  @override
  String get profileTitle => 'प्रफाइल';

  @override
  String get viewProfile => 'प्रफाइल नाय';

  @override
  String get nameLabel => 'मुं';

  @override
  String get emailLabel => 'इमेइल';

  @override
  String get mobileLabel => 'मबाइल नामबार';

  @override
  String get accountStatusLabel => 'एकाउन्टनि थाखो';

  @override
  String get statusActive => 'मावथि';

  @override
  String get statusPending => 'नेथाबाय';

  @override
  String get statusSuspended => 'थाबाय होनाय';

  @override
  String get verifiedLabel => 'थि खालामनाय';

  @override
  String get notProvided => 'दाजाबदेराखै';

  @override
  String get retry => 'फिन नाजा';

  @override
  String get navHome => 'हों';

  @override
  String get navSearch => 'नागिर';

  @override
  String get navOrders => 'अर्डार';

  @override
  String get cancelLabel => 'बातिल खालाम';

  @override
  String get deliverTo => 'डेलिभारि थं';

  @override
  String get searchDishesHint => 'आहार एबा रेस्टुरेन्ट नागिर';

  @override
  String get searchTitle => 'नागिर';

  @override
  String get searchNoResultsTitle => 'जेबो मोनाखै';

  @override
  String get searchNoResultsSubtitle =>
      'गुबुन आहार, आहार बानायनाय एबा रेस्टुरेन्टनि मुं नाजा।';

  @override
  String get cravingTitle => 'दिनै मा जानो गोसो?';

  @override
  String get offersTitle => 'नोंथांनि थाखाय अफार';

  @override
  String get restaurantsNearby => 'नोंथांनि खात्रिनि रेस्टुरेन्टफोर';

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
  String get noRestaurantsTitle => 'बेयाव दासिम जेबो गैया';

  @override
  String get noRestaurantsSubtitle => 'गुबुन हानजा नाय एबा फिल्टार बोखार।';

  @override
  String minutesAway(int minutes) {
    return '$minutes मिनिट';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance किमि';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेटिं',
      one: '1 रेटिं',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'मोननैनि थाखाय ₹$amount';
  }

  @override
  String get freeDelivery => 'मुफ्ट डेलिभारि';

  @override
  String percentOff(int percent) {
    return '$percent% खमी';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'नोंथांनि अर्डाराव $percent% खमी';
  }

  @override
  String get vegOnly => 'बेदा आहार खालि';

  @override
  String get bestseller => 'बांसिन फानजानाय';

  @override
  String get addLabel => 'दाजाबदेर';

  @override
  String get noVegDishesTitle => 'बेयाव बेदा आहार गैया';

  @override
  String get noVegDishesSubtitle =>
      'गासैबो मेनु नायनो बेदा फिल्टार बन्द खालाम।';

  @override
  String get replaceCartTitle => 'गोदान कार्ट जागाय?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'नोंथांनि कार्टआव $restaurant निफ्राय बेसाद दङ। बेखौ दाजाबदेरब्ला बेफोर बोखारजागोन।';
  }

  @override
  String get replaceCartConfirm => 'बोखारनानै दाजाबदेर';

  @override
  String get cartTitle => 'नोंथांनि कार्ट';

  @override
  String get cartEmptyTitle => 'नोंथांनि कार्टआ लांदां';

  @override
  String get cartEmptySubtitle =>
      'जागायनो जायखिजाया रेस्टुरेन्टनिफ्राय आहार दाजाबदेर।';

  @override
  String get browseRestaurants => 'रेस्टुरेन्ट नाय';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बेसाद',
      one: '1 बेसाद',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'कार्ट नाय';

  @override
  String get itemTotal => 'बेसादनि गासै';

  @override
  String get deliveryFeeLabel => 'डेलिभारि बिजाब';

  @override
  String get taxesAndCharges => 'खाजाना आरो बिजाब';

  @override
  String get freeLabel => 'मुफ्ट';

  @override
  String get toPay => 'होनांगौ';

  @override
  String placeOrderFor(String amount) {
    return 'अर्डार खालाम · $amount';
  }

  @override
  String get ordersTitle => 'नोंथांनि अर्डारफोर';

  @override
  String get ordersEmptyTitle => 'दासिम जेबो अर्डार गैया';

  @override
  String get ordersEmptySubtitle => 'नोंथांनि सिगांनि अर्डारफोर बेयाव नुजागोन।';

  @override
  String get reorder => 'फिन अर्डार';

  @override
  String orderTitle(String id) {
    return 'अर्डार $id';
  }

  @override
  String get orderPlacedTitle => 'अर्डार जाबाय';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'मोनसे $minutes मिनिटआव सोसन्नो हागोन।';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant आ नोंथांनि अर्डारखौ मोनबाय।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return '$minutes मिनिट सिङाव बानायनाय जोबगोन।';
  }

  @override
  String get trackYourOrder => 'नोंथांनि अर्डारखौ ट्रेक खालाम';

  @override
  String get couponApplyTitle => 'कुपन बाहाय';

  @override
  String get couponCodeLabel => 'कुपन कड';

  @override
  String get couponApply => 'बाहाय';

  @override
  String couponAppliedTitle(String code) {
    return '$code बाहायबाय';
  }

  @override
  String couponSaving(String amount) {
    return 'नोंथाङो $amount खमी मोनो';
  }

  @override
  String get couponRemove => 'बोखार';

  @override
  String searchFor(String term) {
    return '\"$term\" नागिर';
  }

  @override
  String get vegModeBadge => 'सुद्ध बेदा';

  @override
  String trackingExpectedBy(String time) {
    return '$time सिम सोसनगोन';
  }

  @override
  String get orderAgainTitle => 'फिन अर्डार खालाम';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count गुबुन',
      one: '$first + 1 गुबुन',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max मिनिट';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 निफ्राय $rating रेटिं';
  }

  @override
  String get reorderReplaceTitle => 'नोंथांनि कार्टखौ सोलायनो नामा?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant निफ्राय नोंथांनि कार्टखौ बे अर्डारनि आहारजों सोलायगोन।';
  }

  @override
  String get reorderReplace => 'सोलाय';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes दानो मोनाकै, बेनि थाखाय बेफोरखौ दाजाबदेराखै।',
      one: '$dishes दानो मोनाकै, बेनि थाखाय बेखौ दाजाबदेराखै।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable => 'बे आहारफोरनि जेबो दानो मोनाकै।';

  @override
  String get searchShort => 'नागिर';

  @override
  String get favouriteSave => 'फेभारिटआव थिना दोन';

  @override
  String get restaurantAbout => 'बे रेस्टुरेन्टनि सोमोन्दै';

  @override
  String ratingByCount(String count) {
    return '$count सुबुं';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अफार',
      one: '1 अफार',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile आव $restaurant निफ्राय अर्डार खालाम';
  }

  @override
  String get ordersSearchHint => 'रेस्टुरेन्ट एबा आहारजों नागिर…';

  @override
  String get ordersNoMatch =>
      'बे मुंनि रेस्टुरेन्ट एबा आहारनि जेबो अर्डार गैया।';

  @override
  String orderPlacedOn(String date) {
    return '$date आव अर्डार खालामनाय';
  }

  @override
  String get viewMenu => 'मेनु नाय';

  @override
  String get navHistory => 'जारिमिन';

  @override
  String get exploreMore => 'बांसिन नाय';

  @override
  String get exploreTopRated => 'बांसिन रेटिं';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेस्टुरेन्टआ नोंथांसो डेलिभारि खालामो',
      one: '1 रेस्टुरेन्टआ नोंथांसो डेलिभारि खालामो',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'नोंथांनि डेलिभारिया माबोरै जाबाय?';

  @override
  String get rateHowWasFood => 'आहारा माबोरै जाबाय?';

  @override
  String get rateWordTerrible => 'जोबोद गाज्रि';

  @override
  String get rateWordBad => 'गाज्रि';

  @override
  String get rateWordOkay => 'साधारन';

  @override
  String get rateWordGood => 'मोजां';

  @override
  String get rateWordLoved => 'जोबोद मोजां मोनबाय!';

  @override
  String get rateWhatWentWrong => 'मा गोरोन्थि जाबाय?';

  @override
  String get rateWhatYouLiked => 'नोंथाङो माखौ मोजां मोनबाय?';

  @override
  String get rateRiderNoteHint => 'डेलिभारिनि सोमोन्दै नोट (इच्छा)';

  @override
  String get rateReviewHeading => 'सिमांथि लिर';

  @override
  String get rateFoodFirst => 'दैथायनो आहारखौ रेट खालाम';

  @override
  String get rateYouRated => 'नोंथाङो बे अर्डारखौ रेट खालामबाय';

  @override
  String get ratePromptLater => 'दानो नङा';

  @override
  String get tagTasty => 'गोदै';

  @override
  String get tagFreshHot => 'गुदुं आरो गोदान';

  @override
  String get tagGoodPortion => 'मोजां बिबां';

  @override
  String get tagGoodPackaging => 'मोजां पेकिं';

  @override
  String get tagValueForMoney => 'बेसेन बादि मोजां';

  @override
  String get tagHygienic => 'साफा-सुथुरा';

  @override
  String get tagColdFood => 'गुसु आहार';

  @override
  String get tagPoorTaste => 'गोदै जायाखै';

  @override
  String get tagSmallPortion => 'खम बिबां';

  @override
  String get tagWrongItems => 'गोरोन्थि बेसाद';

  @override
  String get tagMissingItems => 'बेसाद गोमाबाय';

  @override
  String get tagPoorPackaging => 'गाज्रि पेकिं';

  @override
  String get tagTooOily => 'जोबोद थाव एबा गोजों';

  @override
  String get tagOnTime => 'समाव';

  @override
  String get tagPolite => 'मोजां आखु';

  @override
  String get tagFollowedInstructions => 'बिथिंखौ मानिबाय';

  @override
  String get tagCarefulHandling => 'आहारखौ होसियारै लाबोबाय';

  @override
  String get tagGoodCommunication => 'आंखौ खोबोर होनानै थाबाय';

  @override
  String get tagLate => 'देरि डेलिभारि';

  @override
  String get tagRude => 'गाज्रि आखु';

  @override
  String get tagIgnoredInstructions => 'बिथिंखौ मानियाखै';

  @override
  String get tagFoodSpilled => 'आहार गोग्लैबाय';

  @override
  String get tagAskedExtraMoney => 'बांसिन रां बिबाय';

  @override
  String get tagUnprofessional => 'पेसादारि गैया';

  @override
  String rateDeliveredBy(String name) {
    return '$name आ डेलिभारि खालामबाय';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant निफ्राय';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant निफ्राय नोंथांनि अर्डारआ माबोरै जाबाय?';
  }

  @override
  String get orderDeliveredTitle => 'डेलिभार जाबाय';

  @override
  String get orderDeliveredSubtitle => 'आहारखौ मोजां मोन।';

  @override
  String get statusOrderPlaced => 'अर्डार जाबाय';

  @override
  String get statusPreparing => 'आहार बानायगासिनो दङ';

  @override
  String get statusOnTheWay => 'लामायाव दङ';

  @override
  String get statusDelivered => 'डेलिभार जाबाय';

  @override
  String get keepBrowsing => 'नायबाय था';

  @override
  String get backToHome => 'हों आव फैफिन';

  @override
  String get prototypeNotice =>
      'नमुना स्टरफ्रन्ट — थार दुखानिफोरा केटालग API जों फैगोन।';

  @override
  String get prototypeCheckoutNotice =>
      'बेयो मोनसे प्रटटाइप। जेबो रांखान्थि लानाय जाया आरो थार अर्डारबो जाया।';

  @override
  String get prototypeTrackingNotice => 'प्रटटाइपनि थाखाय ट्रेकिं आ थार नङा।';

  @override
  String get locationTitle => 'बबेयाव डेलिभारि खालामनांगौ?';

  @override
  String get locationSubtitle =>
      'Nexmile आ 1 किमि सिङाव थानाय दुखानिफ्रायल\' डेलिभारि खालामो, बेनि थाखाय नोंथांनि थार जायगा नांगौ।';

  @override
  String get locationReasonRadiusTitle => '1 किमि सिङनि दुखान';

  @override
  String get locationReasonRadiusBody =>
      'बबेनिफ्राय आहारा गोदै जानानै सोसनगोन, बेफोर रान्नाशालखौल\' दिन्थियो।';

  @override
  String get locationReasonAccuracyTitle => 'थार दरजायाव';

  @override
  String get locationReasonAccuracyBody =>
      'थार पिन दङब्ला डेलिभारि पार्टनारा फन खालामै नोंथांखौ मोनो।';

  @override
  String get locationReasonPrivacyTitle => 'एप बाहायनाय समावल\'';

  @override
  String get locationReasonPrivacyBody =>
      'जों उनथिं नोंथांखौ ट्रेक खालामा, आरो थंखौ नोंथाङो निजिनो लिरनो हागोन।';

  @override
  String get allowLocation => 'जायगानि गनायथि हो';

  @override
  String get enterAddressManually => 'आं निजिनो थं लिरगोन';

  @override
  String get locationDenied =>
      'जायगानि गनायथि मोनाखै। नोंथाङो पिनखौ निजिनो दोननो हागोन।';

  @override
  String get locationDeniedForever =>
      'Nexmile नि थाखाय जायगाया बन्द दङ। सेटिंसआव खेव एबा पिनखौ निजिनो दोन।';

  @override
  String get locationServiceOff => 'बे डिभाइसआव जायगाया बन्द दङ।';

  @override
  String get locationUnavailable => 'जायगा मोनाखै। अन्नानै पिनखौ निजिनो दोन।';

  @override
  String permStepCount(int step, int total) {
    return '$total नि $step';
  }

  @override
  String get permNotNow => 'दानो नङा';

  @override
  String get permLocationTitle => 'नोंथांनि खात्रियाव आहार नागिर';

  @override
  String get permNotifyTitle => 'अर्डारनि गासै खोबोर मोन';

  @override
  String get permNotifyBody =>
      'नोंथांनि अर्डारखौ जेब्ला आजावबाय, लाबाय आरो नोंथांनि दरजायाव सोसनबाय, बेखौ मिथिनो नटिफिकेसन खेव।';

  @override
  String get permNotifyLiveTitle => 'अर्डारनि लाइभ खोबोर';

  @override
  String get permNotifyLiveBody =>
      'आजावबाय, बानायगासिनो दङ, लाबाय, डेलिभार जाबाय।';

  @override
  String get permNotifyRiderTitle => 'राइडारआ नोंथांनि दरजायाव';

  @override
  String get permNotifyRiderBody =>
      'एपखौ नायनांगौ गैया, जेब्ला ओंखारनो नांगौ बेखौ मिथिगोन।';

  @override
  String get permNotifyControlTitle => 'गासैबो नोंथांनि आखायाव';

  @override
  String get permNotifyControlBody =>
      'जेब्लाबाबो नोंथांनि फननि सेटिंसआव नटिफिकेसन बन्द खालाम।';

  @override
  String get permNotifyAllow => 'नटिफिकेसन खेव';

  @override
  String get openSettings => 'सेटिंस';

  @override
  String get pinLocationTitle => 'नोंथांनि डेलिभारि पिन दोन';

  @override
  String get deliveryRadiusHint =>
      'गोलावथिया Nexmile डेलिभारि खालामनाय 1 किमिखौ दिन्थियो।';

  @override
  String get useMyLocation => 'आंनि जायगा बाहाय';

  @override
  String get deliveringHere => 'बेयाव डेलिभारि';

  @override
  String get dragToAdjust => 'पिन सोलायनो मेपखौ बोर';

  @override
  String get confirmLocation => 'जायगा थि खालाम';

  @override
  String get addressDetailsTitle => 'थंनि फोरमायथिहोग्रा';

  @override
  String get addressDetailsSubtitle =>
      'थार दरजायाव सोसननो नोनि नामबार आरो सिन दाजाबदेर।';

  @override
  String get pinnedLocation => 'सायखनाय जायगा';

  @override
  String get changePin => 'सोलाय';

  @override
  String get saveAddressAs => 'बे थंखौ बेबादि थिना दोन';

  @override
  String get labelHome => 'नो';

  @override
  String get labelWork => 'दफ्तर';

  @override
  String get labelOther => 'गुबुन';

  @override
  String get addressLine1Label => 'नो, फ्लेट एबा बिल्डिं';

  @override
  String get addressLine1Hint => '12A, ग्रीन रेसिडेन्सि';

  @override
  String get addressLine2Label => 'लामा एबा बिजिरि';

  @override
  String get addressLine2Hint => 'मोननै एभिनिउ, आना नगर';

  @override
  String get landmarkLabel => 'सिन';

  @override
  String get landmarkHint => 'बास स्टपनि सिगाङाव';

  @override
  String get cityLabel => 'नोगोर';

  @override
  String get stateLabel => 'राइजो';

  @override
  String get pincodeLabel => 'पिन कड';

  @override
  String get invalidPincode => 'थार 6 अंकनि पिन कड दा';

  @override
  String get contactNameLabel => 'सम्पर्कनि मुं';

  @override
  String get contactPhoneLabel => 'सम्पर्कनि नामबार';

  @override
  String get invalidMobileNumber => 'थार 10 अंकनि मबाइल नामबार दा';

  @override
  String get makeDefaultAddress => 'डिफल्ट बादि बेयावनो डेलिभारि';

  @override
  String get saveAddress => 'थं थिना दोन';

  @override
  String get addressSaved => 'थं थिना दोनबाय';

  @override
  String get addressBookTitle => 'डेलिभारि थंफोर';

  @override
  String get manageAddresses => 'थिना दोननाय थंफोरखौ सामलाय';

  @override
  String get noAddressesTitle => 'दासिम जेबो थं गैया';

  @override
  String get noAddressesSubtitle =>
      'नोंथांसो डेलिभारि खालामनाय दुखानफोरखौ दिन्थिनो मोनसे थं दाजाबदेर।';

  @override
  String get addAddress => 'थं दाजाबदेर';

  @override
  String get setAsDefault => 'डिफल्ट खालाम';

  @override
  String get editLabel => 'सुद्रायना';

  @override
  String get addressUpdated => 'थं आपडेट जाबाय';

  @override
  String get deleteLabel => 'खोमोर';

  @override
  String get deleteAddressTitle => 'बे थंखौ खोमोरगोन?';

  @override
  String get deleteAddressMessage => 'नोंथाङो बेखौ उनाव फिन दाजाबदेरनो हागोन।';

  @override
  String get rescueDealsTitle => 'फुड रेस्किउ';

  @override
  String get notTakingOrders => 'अर्डार लानाय नङा';

  @override
  String get closedRightNow => 'दानो बन्द दङ';

  @override
  String minimumOrder(String amount) {
    return 'खमैबो $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count बाजाय दङ';
  }

  @override
  String get soldOut => 'जोबबाय';

  @override
  String get menuEmptyTitle => 'दानोबो जेबो जानाय गैया';

  @override
  String get menuEmptySubtitle => 'बे रेस्टुरेन्टा बिनि मेनुखौ दाजाबदेराखै।';

  @override
  String get moreDishesTitle => 'गोबां जानाय';

  @override
  String get menuSearchHint => 'आहार नागिर';

  @override
  String get filtersShort => 'फिल्टार';

  @override
  String get dietVeg => 'बेदा';

  @override
  String get dietEgg => 'दाउदै';

  @override
  String get dietNonVeg => 'बेदोर';

  @override
  String get menuBestsellerChip => 'बांसिन फानजानाय';

  @override
  String get menuFoodType => 'आहारनि रोखोम';

  @override
  String get menuShowOnly => 'बेफोरल\' दिन्थि';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count जानाय',
      one: '1 जानाय',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count जानाय दिन्थि',
      one: '1 जानाय दिन्थि',
      zero: 'जेबो जानाय गैया',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'गुबुन जानायनि मुं नाजा, एबा फिल्टार बोखार।';

  @override
  String get menuBrowse => 'मेनु';

  @override
  String get customisable => 'गोसो बादि';

  @override
  String get requiredLabel => 'गोनांथि';

  @override
  String get optionalLabel => 'गोसोखां';

  @override
  String get chooseOne => 'मोनसे सायख';

  @override
  String chooseUpTo(int count) {
    return 'बांसिन $count सायख';
  }

  @override
  String chooseAtLeast(int count) {
    return 'खमैबो $count सायख';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min निफ्राय $max सिम सायख';
  }

  @override
  String get specialInstructions => 'गोसो गोनां बिथिं';

  @override
  String get specialInstructionsHint => 'खमसिन गोजों, सामोब नङा…';

  @override
  String addForAmount(String amount) {
    return 'दाजाबदेर · $amount';
  }

  @override
  String get deliveryLabel => 'डेलिभारि';

  @override
  String get pickupLabel => 'गावनो लाना';

  @override
  String get packagingLabel => 'पेकिं';

  @override
  String get discountLabel => 'खमानाय';

  @override
  String get billDetailsTitle => 'बिल बिबुंथि';

  @override
  String get clearCart => 'कार्टखौ लांदां खालाम';

  @override
  String get clearCartTitle => 'बे कार्टखौ लांदां खालामनो नामा?';

  @override
  String get clearCartMessage => 'बेयाव दङमोनखौ गासैबो गैया खालामगोन।';

  @override
  String unavailableItemsNotice(String items) {
    return 'दानो मोनाकै: $items';
  }

  @override
  String get removeUnavailable => 'बिसोरखौ गैया खालाम';

  @override
  String minimumNotMet(String amount) {
    return 'खमैबो अर्डार $amount';
  }

  @override
  String get checkoutTitle => 'चेकआउट';

  @override
  String get deliveryAddressLabel => 'डेलिभारि ठिकना';

  @override
  String get noAddressSelected => 'जेबो ठिकना सायखाखै';

  @override
  String get paymentMethodLabel => 'रांहोनाय';

  @override
  String get payOnDelivery => 'डेलिभारियाव रां';

  @override
  String get noteToRestaurant => 'रेस्टुरेन्टनि थाखाय नोट';

  @override
  String get noteToRestaurantHint => 'घान्टिखौ मोननै खेब सुं…';

  @override
  String get activeOrdersTitle => 'सोलिगासिनो अर्डार';

  @override
  String get pastOrdersTitle => 'गागैनि अर्डार';

  @override
  String get orderItemsTitle => 'जानाय';

  @override
  String get orderProgressTitle => 'गोजौथिनाय';

  @override
  String get arrivingIn => 'सोसैनो';

  @override
  String get pickupCodeLabel => 'पिकआप कोड';

  @override
  String get cancellationReasonLabel => 'बातिल जानायनि जाहोन';

  @override
  String get riderLabel => 'डेलिभारि पार्टनार';

  @override
  String get callRider => 'कल खालाम';

  @override
  String get trackRider => 'राइडारखौ ट्रेक खालाम';

  @override
  String get riderLocationSoon =>
      'अर्डार लाबनाय उनाव राइडारनि जायगा बेयाव नुथारगोन।';

  @override
  String get riderLocationStale => 'राइडारनि जायगा आपडेट खालामगासिनो दङ…';

  @override
  String get recentreOnRider => 'राइडारआव केन्द्र खालाम';

  @override
  String get viewInvoice => 'ट्याक्स इनभइस';

  @override
  String get cancelOrder => 'अर्डारखौ बातिल खालाम';

  @override
  String get cancelOrderTitle => 'बे अर्डारखौ बातिल खालामनो नामा?';

  @override
  String get cancelOrderMessage =>
      'रेस्टुरेन्टा आजावनि सिगां सिनोबो बातिल खालामनो हागौ।';

  @override
  String get cancelReasonLabel => 'जाहोन';

  @override
  String get cancelReasonFallback => 'गिराहागा बातिल खालामबाय';

  @override
  String get orderCancelled => 'अर्डार बातिल जाबाय';

  @override
  String get currentLocationLabel => 'दानिनि जायगा';

  @override
  String get onLabel => 'खेवनाय';

  @override
  String get offLabel => 'बन्द';

  @override
  String get profileCoupons => 'नोंथांनि कुपनफोर';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बाहायनो हायो',
      one: '1 बाहायनो हायो',
      zero: 'दासिम जेबो गैया',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'नोंथांनि सायखनाय';

  @override
  String get profileVegMode => 'बेदा मड';

  @override
  String get profileVegModeHint => 'बेदा रेस्टुरेन्ट आरो बेदा आहार खालि';

  @override
  String get profileAppearance => 'महर';

  @override
  String get appearanceSystem => 'फननि बादि';

  @override
  String get appearanceLight => 'सोरां';

  @override
  String get appearanceDark => 'खोमसि';

  @override
  String get profileNotifications => 'नटिफिकेसन';

  @override
  String get profileFoodDelivery => 'आहार डेलिभारि';

  @override
  String get profileFavourites => 'नोंथांनि फेभारिट';

  @override
  String get profileHelp => 'मदद आरो सापर्ट';

  @override
  String get profileMore => 'गोबां';

  @override
  String get profileFeedback => 'फिडबेक दैथाय';

  @override
  String get profileSafety => 'रैखाथिनि जरुरि खोबोर हो';

  @override
  String get profileAbout => 'Nexmile नि सोमोन्दै';

  @override
  String get couponsEmptyTitle => 'दानो जेबो कुपन गैया';

  @override
  String get couponsEmptyBody =>
      'नोंथाङो बाहायनो हानाय कुपन दङब्ला, बेयो बेयाव नुजागोन।';

  @override
  String couponFlatOff(String amount) {
    return '$amount खमी';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% खमी';
  }

  @override
  String couponUpTo(String amount) {
    return 'बांसिन $amount सिम';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount निख्रुइ बांसिन अर्डाराव';
  }

  @override
  String couponValidTill(String date) {
    return '$date सिम बाहायनो हागोन';
  }

  @override
  String get couponAllRestaurants => 'गासै रेस्टुरेन्टआव';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant आव';
  }

  @override
  String couponCopied(String code) {
    return 'कड $code कपि जाबाय';
  }

  @override
  String get favouritesEmptyTitle => 'दासिम जेबो फेभारिट गैया';

  @override
  String get favouritesEmptyBody =>
      'रेस्टुरेन्टखौ बेयाव थिना दोननो बिनि हार्टखौ टेप खालाम।';

  @override
  String get helpCall => 'जोंखौ कल खालाम';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'जोंनो इमेइल दैथाय';

  @override
  String helpHours(String hours) {
    return 'जोंखौ $hours मोननो हागोन';
  }

  @override
  String get helpFaqs => 'गोबांसे सोंनाय सोंथि';

  @override
  String get helpNothing =>
      'मददनि बिबुंथि दानो मोनाकै। अन्नानै मोनसे सम उनाव फिन नाजा।';

  @override
  String get feedbackPrompt =>
      'Nexmile आ नोंथांनि थाखाय माबोरै खामानि मावगासिनो दङ?';

  @override
  String get feedbackHint =>
      'नोंथाङो माखौ मोजां मोनबाय, एबा जों माखौ बांसिन मोजां खालामनो हागौ, बेखौ बुं';

  @override
  String get feedbackNeedRating => 'गिबियावनो मोनसे रेटिं सायख';

  @override
  String get feedbackThanks => 'साबायखर! नोंथांनि फिडबेकआ जोंनि दलाव सोसनबाय।';

  @override
  String get safetyIntro =>
      'नोंथाङ एबा गुबुन सोरबा खैफोदाव दङब्ला, गिबियावनो जरुरि सेवाखौ कल खालाम।';

  @override
  String get safetyCallEmergency => '112 आव कल खालाम';

  @override
  String get safetyCallEmergencyBody => 'पुलिस, फायार ब्रिगेड आरो एम्बुलेन्स';

  @override
  String get safetyCallNexmile => 'Nexmile नि रैखाथि लाइनआव कल खालाम';

  @override
  String get safetyCallNexmileBody => 'गासै समाव फिननाय होयो';

  @override
  String aboutVersion(String version) {
    return 'भारसन $version';
  }

  @override
  String get aboutTerms => 'सिबिथाइनि नेमखान्थि';

  @override
  String get aboutPrivacy => 'गुबैथि नीति';

  @override
  String get aboutLicences => 'अपेन-सर्स लाइसेन्स';

  @override
  String get notifyOrderUpdates => 'अर्डारनि खोबोर';

  @override
  String get notifyOrderUpdatesBody =>
      'गासै समाव खेवनाय थायो, बेनि थाखाय नोंथांनि आहारा बबेयाव दङ नोंथाङो मिथियो।';

  @override
  String get notifyPromotions => 'अफार आरो प्रमसन';

  @override
  String get notifyPromotionsBody =>
      'नोंथांनि खात्रियाव डिल, कुपन आरो गोदान रेस्टुरेन्ट।';

  @override
  String get notifyPhoneOff => 'बे फनआव Nexmile नि थाखाय नटिफिकेसन बन्द दङ।';

  @override
  String get notifyTurnOn => 'खेव';

  @override
  String get linkOpenFailed => 'बेखौ बे फनआव खेवनो हायाखै।';

  @override
  String get editProfileTitle => 'प्रफाइल सुद्रायहो';

  @override
  String get editProfileSubtitle =>
      'रेस्टुरेन्ट आरो डेलिभारि पार्टनारा नोंथांनि मुंखौलो नुयो।';

  @override
  String get saveChanges => 'सोलायनायखौ थिना दोन';

  @override
  String get profileUpdated => 'प्रफाइल आपडेट जाबाय';

  @override
  String get deleteAccount => 'एकाउन्ट खोमोर';

  @override
  String get deleteAccountTitle => 'नोंथांनि एकाउन्टखौ खोमोरनो नामा?';

  @override
  String get deleteAccountMessage =>
      'गासै डिभाइसनिफ्राय साइन आउट जागोन। गागैनि अर्डार आरो बिलखौ ट्याक्स रेकर्डनि थाखाय दोनो।';

  @override
  String get accountDeleted => 'नोंथांनि एकाउन्ट खोमोरबाय';

  @override
  String get devicesTitle => 'साइन-इन डिभाइस';

  @override
  String get devicesSubtitle => 'नोंथाङा बबेयाव साइन इन दंब्ला';

  @override
  String get devicesEmptyTitle => 'गुबुन जेबो डिभाइस गैया';

  @override
  String get devicesEmptySubtitle => 'नोंथाङा बे डिभाइसावलो साइन इन दङ।';

  @override
  String get signOutDevice => 'साइन आउट';

  @override
  String get signOutDeviceTitle => 'बे डिभाइसखौ साइन आउट खालामनो नामा?';

  @override
  String get signOutDeviceMessage =>
      'नोंथाङा बे डिभाइसखौबो बाहायगासिनो दङब्ला फिन साइन इन खालामनांगोन।';

  @override
  String get deviceSignedOut => 'डिभाइस साइन आउट जाबाय';

  @override
  String get signOutEverywhere => 'गासै जायगानिफ्राय साइन आउट';

  @override
  String get signOutEverywhereTitle =>
      'गासै जायगानिफ्राय साइन आउट खालामनो नामा?';

  @override
  String get signOutEverywhereMessage =>
      'बे डिभाइस लोगोसे मोनफ्रोम डिभाइसआ साइन आउट जागोन।';

  @override
  String get unknownDevice => 'मिथिमोनै डिभाइस';

  @override
  String get activeNow => 'दानो सोलिगासिनो';

  @override
  String minutesAgo(int count) {
    return '$count मिनिट सिगां';
  }

  @override
  String hoursAgo(int count) {
    return '$count घन्टा सिगां';
  }

  @override
  String daysAgo(int count) {
    return '$count सान सिगां';
  }

  @override
  String get filtersAndSorting => 'फिल्टार आरो थाखो';

  @override
  String get clearAll => 'गासैखौ खोमोर';

  @override
  String get showResults => 'फिथाइ दिन्थि';

  @override
  String get closeLabel => 'बन्द खालाम';

  @override
  String get sortByTitle => 'थाखो';

  @override
  String get sortRelevance => 'सोमोन्दो';

  @override
  String get sortRating => 'रेटिं';

  @override
  String get sortDeliveryTime => 'डेलिभारि सम';

  @override
  String get sortCostLowHigh => 'बेसेन: खमनिफ्राय बांसिन';

  @override
  String get sortCostHighLow => 'बेसेन: बांसिननिफ्राय खम';

  @override
  String get timeSection => 'सम';

  @override
  String get nearAndFast => 'खाथि आरो गोख्रों';

  @override
  String get openNow => 'दानो खेवनाय';

  @override
  String get ratingSection => 'रेस्टुरेन्ट रेटिं';

  @override
  String ratedAbove(String rating) {
    return '$rating+ रेटिं';
  }

  @override
  String get offersSection => 'अफार';

  @override
  String get hasOffersLabel => 'अफार दङ';

  @override
  String get dishPriceSection => 'जानायनि बेसेन';

  @override
  String costUnder(String amount) {
    return '$amount निख्रुइ खम';
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
  String get moreSection => 'गोबां';

  @override
  String get noPackagingCharges => 'पेकिं खम गैया';

  @override
  String get allRestaurantsTitle => 'गासै रेस्टुरेन्ट';

  @override
  String get whatsOnYourMind => 'मा जानो मोन दङ?';

  @override
  String get listeningNow => 'खोनासंनो दङ…';

  @override
  String get speakNowHint => 'मोनसे जानाय एबा रेस्टुरेन्ट बुं';

  @override
  String get voiceUnavailable => 'सोदोब नागिरनाय मोनाकै';

  @override
  String get voiceUnavailableBody => 'नोंथाङा टाइप खालामनानै नागिरनो हागौ।';

  @override
  String get microphoneDenied => 'माइक्रफन गनायथि गैया';

  @override
  String get voiceSearchLabel => 'सोदोबजों नागिर';

  @override
  String get ratingsAndReviews => 'रेटिं आरो सिमांथि';

  @override
  String get reviewsWithTextOnly => 'सिमांथि दङब्ला';

  @override
  String get noReviewsTitle => 'दासिम जेबो रेटिं गैया';

  @override
  String get noReviewsSubtitle =>
      'अर्दार खालामनायनि उनाव गिबि रेटिं नोंथाङा हो।';

  @override
  String get rateOrderTitle => 'नोंथांनि अर्दारखौ रेट खालाम';

  @override
  String get rateDishesTitle => 'आवगोदांफोरखौ रेट खालाम';

  @override
  String get reviewHint => 'गुबुन जेबो बुङनो लुबैयो ना? (इच्छा)';

  @override
  String get submitRating => 'रेटिं दैथाय';

  @override
  String get reviewThanks => 'साबायखर — नोंथांनि रेटिं मोनबाय।';

  @override
  String get rateThisOrder => 'बे अर्दारखौ रेट खालाम';

  @override
  String get walletTitle => 'Nexmile वालेट';

  @override
  String get walletBalance => 'वालेट बेलेन्स';

  @override
  String get walletBalanceHint => 'जायखिजाया अर्डारनि रां होनो बाहाय।';

  @override
  String get walletAddMoney => 'रां दाजाबदेर';

  @override
  String get walletEnterAmount => 'रांनि बिबां दा';

  @override
  String walletAmountRange(String min, String max) {
    return '$min निफ्राय $max सिम';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount दाजाबदेर';
  }

  @override
  String get walletSecuredBy => 'रांहोनायखौ Razorpay आ रैखा खालामो';

  @override
  String get walletHistory => 'जारिमिन';

  @override
  String get walletNoHistory =>
      'दासिम जेबो लेनदेन गैया। नोंथाङो दाजाबदेरनाय एबा खरसा खालामनाय रां बेयाव नुजागोन।';

  @override
  String get walletEntryTopUp => 'रां दाजाबदेरबाय';

  @override
  String get walletEntryOrder => 'मोनसे अर्डारनि थाखाय रां होबाय';

  @override
  String walletEntryOrderNumber(String number) {
    return 'अर्डार $number नि थाखाय रां होबाय';
  }

  @override
  String get walletEntryRefund => 'रां फिनहोनाय';

  @override
  String walletMoneyAdded(String amount) {
    return 'नोंथांनि वालेटआव $amount दाजाबदेरबाय';
  }

  @override
  String get walletPaymentFailed =>
      'रांहोनाय जायाखै। नोंथांनि एकाउन्टनिफ्राय जेबो रां लायाखै।';

  @override
  String get walletPaymentConfirming =>
      'रां मोनबाय। नोंथांनि बेलेन्सआ खायसे मिनिटआव आपडेट जागोन।';

  @override
  String get walletUseBalance => 'वालेट बेलेन्स बाहाय';

  @override
  String walletAvailable(String amount) {
    return 'मोननो हायो: $amount';
  }

  @override
  String get walletPaidFromWallet => 'वालेटनिफ्राय होबाय';

  @override
  String get walletPayOnDelivery => 'डेलिभारियाव होनांगौ';

  @override
  String get walletCoversOrder => 'आबुं रां वालेटनिफ्राय होबाय';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet वालेटनिफ्राय, $rest डेलिभारियाव';
  }

  @override
  String get walletTopUpUnavailable =>
      'रां दाजाबदेरनाय दानो मोनाकै। अन्नानै मोनसे सम उनाव फिन नाजा।';

  @override
  String walletFull(String limit) {
    return 'नोंथांनि वालेटआ बिनि $limit सीमायाव सोसनबाय।';
  }

  @override
  String get searchAddressHint => 'बिजिरि, लामा एबा सिन नागिर';

  @override
  String get selectLocationTitle => 'मोनसे जायगा सायख';

  @override
  String get useCurrentLocation => 'दानिनि जायगा बाहाय';

  @override
  String get locatingYou => 'नोंथाङ बबेयाव दङ नागिरगासिनो दङ…';

  @override
  String get locationOffHint => 'बेखौ बाहायनो जायगानि गनायथि हो';

  @override
  String get savedAddressesHeading => 'थिना दोननाय थंफोर';

  @override
  String get recentLocationsHeading => 'सिगां नागिरनाय जायगाफोर';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'डेलिभारि जायगा सायख';

  @override
  String get movePinTooltip => 'पिनखौ नोंथांनि थार डेलिभारि जायगायाव बोर';

  @override
  String get locatingPin => 'थं नागिरगासिनो दङ…';

  @override
  String get deliveryDetailsHeading => 'डेलिभारिनि बिबुंथि';

  @override
  String get addressDetailsLabel => 'थंनि फोरमायथिहोग्रा*';

  @override
  String get addressDetailsHint => 'जेरै: फ्लर, नोनि नामबार';

  @override
  String get missingAreaHint =>
      'बे पिननि आबुं थं फरायनो हायाखै। अन्नानै बाजायखौ दा।';

  @override
  String get whoToContact =>
      'बे डेलिभारिनि थाखाय जों सोरखौ सोंख्रीमा खालामनांगौ?';

  @override
  String get contactMyself => 'आं गावनो';

  @override
  String get contactSomeoneElse => 'गुबुन सोरबा';

  @override
  String get receiverDetailsHeading => 'बे थंनि थाखाय लाग्रानि बिबुंथि';

  @override
  String get receiverAddPrompt => 'लाग्रानि मुं आरो नामबार दाजाबदेर';

  @override
  String get receiverSheetTitle => 'लाग्रानि बिबुंथि';

  @override
  String get doorPhotoHeading => 'दरजा/बिल्डिंनि सावगारि (इच्छा)';

  @override
  String get doorPhotoAdd => 'मोनसे सावगारि दाजाबदेर';

  @override
  String get doorPhotoBody =>
      'बेयो जोंनि डेलिभारि पार्टनारफोरखौ नोंथांनि थार जायगा गोख्रोंसिन मोननो मदद होयो';

  @override
  String get doorPhotoChange => 'सोलाय';

  @override
  String get doorPhotoRemove => 'बोखार';

  @override
  String get photoFromCamera => 'सावगारि ला';

  @override
  String get photoFromGallery => 'गेलारिनिफ्राय सायख';

  @override
  String get photoUploaded => 'सावगारि दाजाबदेरबाय';

  @override
  String get photoUploadFailed =>
      'सावगारिखौ आपल\'ड खालामनो हायाखै। अन्नानै मोनसे सम उनाव फिन नाजा।';

  @override
  String get addressSavedPhotoFailed =>
      'थं थिना दोनबाय। सावगारिखौ आपल\'ड खालामनो हायाखै।';

  @override
  String get removePhotoLabel => 'सावगारि बोखार';

  @override
  String get photoRemoved => 'सावगारि बोखारबाय';

  @override
  String get shareLabel => 'सेयार खालाम';

  @override
  String get addDoorPhotoLabel => 'दरजानि सावगारि दाजाबदेर';

  @override
  String get searchAddressNoResults =>
      'जेबो जायगा मोनाखै। खात्रिनि सिन, बिजिरिनि मुं एबा पिन कड नाजा।';

  @override
  String get clearLabel => 'खोमोर';

  @override
  String get trackingArrivingNow => 'दानो सोसनगासिनो दङ';

  @override
  String get trackingLive => 'लाइभ';

  @override
  String get trackingStepConfirmed => 'थि जाबाय';

  @override
  String get trackingStepPreparing => 'बानायगासिनो दङ';

  @override
  String get trackingStepOnTheWay => 'लामायाव दङ';

  @override
  String get trackingStepDelivered => 'डेलिभार जाबाय';

  @override
  String get trackingFindingRider => 'डेलिभारि पार्टनार सायखगासिनो दङ…';

  @override
  String get trackingPinYou => 'नोंथाङ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name आ $distance गोजानाव दङ';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name नो मेसेज दैथाय';
  }

  @override
  String get trackingDeliveringTo => 'डेलिभारि थं';

  @override
  String get trackingOrderDetails => 'अर्डारनि बिबुंथि';

  @override
  String get dispatchSearching =>
      'रेस्टुरेन्टनि खात्रियाव डेलिभारि पार्टनार नागिरगासिनो दङ…';

  @override
  String get dispatchNoRider =>
      'दासिम जेबो डेलिभारि पार्टनारा अर्डारखौ लायाखै। जोंनि दलआ दानो मोनसेखौ सायखगासिनो दङ।';

  @override
  String get vehicleBike => 'बाइक';

  @override
  String get vehicleScooter => 'स्कुटार';

  @override
  String get vehicleBicycle => 'साइकेल';

  @override
  String get vehicleElectric => 'इलेक्ट्रिक स्कुटार';

  @override
  String get exitTitle => 'Nexmile निफ्राय ओंखारनो नामा?';

  @override
  String get exitBody => 'नोंथाङो थारैनो एपनिफ्राय ओंखारनो लुबैयो ना?';

  @override
  String get exitConfirm => 'ओंखार';

  @override
  String cartSavedBanner(String amount) {
    return 'बे अर्डाराव नोंथाङो $amount खमी मोनबाय';
  }

  @override
  String get cartAddMoreItems => 'बांसिन बेसाद दाजाबदेर';

  @override
  String get cartAddNote => 'रेस्टुरेन्टनि थाखाय नोट दाजाबदेर';

  @override
  String get cartOrderNoteHint => 'जेरै: जेबो मुवायाव सामोब एबा रसुन नङा';

  @override
  String get cartNoteSave => 'थिना दोन';

  @override
  String get cartNoCutlery => 'चामुच नांगौ नङा';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिक बाहायनाय खमायनो मदद होनायनि थाखाय साबायखर';

  @override
  String get cartSavingsCorner => 'खमी मोननायनि जायगा';

  @override
  String get cartDeliveryInstructions => 'डेलिभारिनि बिथिं';

  @override
  String get cartInstructionsRider =>
      'बेफोरखौ नोंथांनि डेलिभारि पार्टनारा खालि नुयो';

  @override
  String get instructionLeaveAtDoor => 'दरजायाव दोन';

  @override
  String get instructionNoBell => 'घान्टि सुंनो नांगौ नङा';

  @override
  String get instructionNoCall => 'कल खालामनो नांगौ नङा';

  @override
  String get instructionSecurity => 'सिकिउरिटिनो हो';

  @override
  String get instructionPet => 'नोआव फसलायनाय जुनार दङ';

  @override
  String get cartInclTaxes => 'खाजाना आरो बिजाबजों';

  @override
  String cartSavedTag(String amount) {
    return '$amount खमी';
  }

  @override
  String get cartPayUsing => 'रांहोनायनि राहा';

  @override
  String get cartWalletAndCash => 'वालेट + नगद';

  @override
  String cartCashRest(String amount) {
    return 'सोसनब्ला $amount हो';
  }

  @override
  String get cartCashFull => 'नोंथांनि अर्डारआ सोसनब्ला रां हो';

  @override
  String get cartCashNothing => 'डेलिभारियाव जेबो होनांगौ गैया';

  @override
  String get cartTotal => 'गासै';

  @override
  String get cartPlaceOrder => 'अर्डार खालाम';

  @override
  String cartDeliverTo(String place) {
    return '$place आव डेलिभारि';
  }

  @override
  String get cartChange => 'सोलाय';

  @override
  String get cartNoAddress => 'बबेयाव डेलिभारि खालामनांगौ?';

  @override
  String get cartNoAddressHint => 'अर्डार खालामनो मोनसे थं दाजाबदेर';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant निफ्राय गावनो ला';
  }

  @override
  String cartReadyIn(int minutes) {
    return '$minutes मिनिट सिङाव बानायनाय जोबगोन';
  }

  @override
  String get cartChooseAddress => 'मोनसे डेलिभारि थं सायख';

  @override
  String get cartDone => 'जोबबाय';

  @override
  String get supportTitle => 'Nexmile सापर्ट';

  @override
  String get supportBubble => 'मदद';

  @override
  String get supportAiLabel => 'AI एसिस्टेन्ट';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile दल';
  }

  @override
  String get supportDemoBanner =>
      'डेमो: बे फिननायफोरा नमुना। थार AI एसिस्टेन्टखौ दासिम जोनाय जायाखै।';

  @override
  String get supportEmptyTitle => 'जों नोंथांखौ माबोरै मदद होनो हागोन?';

  @override
  String get supportEmptyBody =>
      'अर्डार, रांहोनाय एबा गुबुन जायखिजाया मुवानि बागायै सों। गिबियावनो जोंनि AI एसिस्टेन्टआ फिननाय होयो, आरो बेयो मदद होनो हायाब्ला जोंनि दलनि मोनसे सुबुङा मदद होगोन।';

  @override
  String get supportSuggestWhere => 'आंनि अर्डारा बबेयाव दङ?';

  @override
  String get supportSuggestMissing => 'मोनसे बेसाद गोमाबाय';

  @override
  String get supportSuggestRefund =>
      'रां फिनहोनायनि बागायै आंनि मोनसे सोंथि दङ';

  @override
  String get supportComposerHint => 'मेसेज लिर';

  @override
  String get supportSend => 'दैथाय हो';

  @override
  String get supportTyping => 'AI एसिस्टेन्टआ लिरगासिनो दङ…';

  @override
  String get supportNotSent => 'दैथाय होनाय जायाखै';

  @override
  String get supportTookTooLong => 'गोबां सम लाबाय।';

  @override
  String get supportSlowDown => 'मोनसे सम उनाव फिन दैथाय हो।';

  @override
  String get supportUnreachable =>
      'दानो चेटजों जोनो हाया। जोंखौ कल खालाम, एबा मिनिट खायसे उनाव फिन नाजा।';

  @override
  String get supportOffline =>
      'नोंथाङ अफलाइन दङ। बेयो नोंथांनि जोबथा थिना दोननाय चेट।';

  @override
  String get supportClosed => 'बे चेटआ बन्द जाबाय।';

  @override
  String get supportStartNew => 'गोदान चेट जागाय';

  @override
  String get supportTalkToPerson => 'मोनसे सुबुंजों बाथ्रा बुं';

  @override
  String get supportMarkSolved => 'समाधान जाबाय होन्नानै दिन्थि';

  @override
  String get supportHelpful => 'मदद जाबाय';

  @override
  String get supportNotHelpful => 'मदद जायाखै';

  @override
  String get supportNeedHelp => 'मदद नांगौ ना?';

  @override
  String get supportChatWithUs => 'जोंजों चेट खालाम';

  @override
  String get supportChatWithUsBody =>
      'जोंनि AI एसिस्टेन्टआ खायसे सेकेन्डआव फिननाय होयो, आरो नोंथांनो नांब्ला मोनसे सुबुङा मदद होगोन।';

  @override
  String get supportActionFailed => 'बेयो जायाखै। फिन नाजा।';
}
