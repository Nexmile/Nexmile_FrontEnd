// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'हे क्षेत्र आवश्यक आहे';

  @override
  String get tagline => 'जलद डिलिव्हरी. ताजे स्मित.';

  @override
  String get chooseLanguageTitle => 'तुमची भाषा निवडा';

  @override
  String get chooseLanguageSubtitle =>
      'तुम्हाला सोयीची वाटेल ती भाषा निवडा. तुम्ही ती कधीही सेटिंग्जमध्ये बदलू शकता.';

  @override
  String get searchLanguageHint => 'भाषा शोधा';

  @override
  String get noLanguageFound => 'कोणतीही भाषा सापडली नाही';

  @override
  String languagesAvailable(int count) {
    return '$count भाषा उपलब्ध आहेत';
  }

  @override
  String get continueLabel => 'पुढे चला';

  @override
  String get selectedLabel => 'निवडलेली';

  @override
  String get defaultLabel => 'डीफॉल्ट';

  @override
  String get homeTitle => 'Nexmile मध्ये आपले स्वागत आहे';

  @override
  String get homeSubtitle =>
      'ताजा किराणा, गरम जेवण आणि दैनंदिन गरजा तुमच्या जवळच्या दुकानांमधून.';

  @override
  String get changeLanguage => 'भाषा बदला';

  @override
  String get languageUpdated => 'भाषा बदलली';

  @override
  String get appLanguageLabel => 'ॲपची भाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String get loginTitle => 'Nexmile मध्ये साइन इन करा';

  @override
  String get loginSubtitle =>
      'तुमचा ईमेल किंवा मोबाइल क्रमांक टाका, आम्ही पडताळणी कोड पाठवू.';

  @override
  String get emailOrPhoneLabel => 'ईमेल किंवा मोबाइल क्रमांक';

  @override
  String get emailOrPhoneHint => 'name@example.com किंवा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'वैध ईमेल पत्ता किंवा 10 अंकी मोबाइल क्रमांक टाका';

  @override
  String get loginHeadline =>
      'तुमच्या जवळच्या दुकानांमधून गरम जेवण, झटपट डिलिव्हरी';

  @override
  String get loginOrSignUp => 'लॉग इन किंवा साइन अप करा';

  @override
  String get loginEmailHint => 'तुमचा ईमेल पत्ता टाका';

  @override
  String get invalidEmail => 'वैध ईमेल पत्ता टाका';

  @override
  String get sendCode => 'कोड पाठवा';

  @override
  String get agreeToTermsOnContinue =>
      'पुढे जाऊन तुम्ही आमच्या सेवा अटी आणि गोपनीयता धोरणाशी सहमत होता.';

  @override
  String get otpTitle => 'तुम्हीच आहात याची खात्री करा';

  @override
  String otpSubtitle(String target) {
    return '$target वर पाठवलेला 6 अंकी कोड टाका';
  }

  @override
  String get verifyCode => 'पडताळा';

  @override
  String get resendCode => 'कोड पुन्हा पाठवा';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंदांत पुन्हा पाठवा';
  }

  @override
  String get codeResent => 'नवीन कोड पाठवला आहे';

  @override
  String get incorrectCode =>
      'हा कोड चुकीचा आहे किंवा त्याची मुदत संपली आहे. नवीन कोड मागवा.';

  @override
  String get enterFullCode => 'पूर्ण 6 अंक टाका';

  @override
  String get accountSuspended =>
      'हे खाते निलंबित करण्यात आले आहे. कृपया सहाय्यताशी संपर्क साधा.';

  @override
  String get tooManyAttempts =>
      'खूप वेळा प्रयत्न झाले. कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get sessionExpired =>
      'तुमचे सत्र संपले आहे. कृपया पुन्हा साइन इन करा.';

  @override
  String get networkError =>
      'इंटरनेट कनेक्शन नाही. तुमचे कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get developmentCode => 'डेव्हलपमेंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'तुम्ही साइन आउट झाला आहात';

  @override
  String get somethingWentWrong => 'काहीतरी चूक झाली. पुन्हा प्रयत्न करा.';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get viewProfile => 'प्रोफाइल पहा';

  @override
  String get nameLabel => 'नाव';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल क्रमांक';

  @override
  String get accountStatusLabel => 'खात्याची स्थिती';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'प्रलंबित';

  @override
  String get statusSuspended => 'निलंबित';

  @override
  String get verifiedLabel => 'पडताळलेले';

  @override
  String get notProvided => 'जोडलेले नाही';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get navHome => 'होम';

  @override
  String get navSearch => 'शोधा';

  @override
  String get navOrders => 'ऑर्डर';

  @override
  String get cancelLabel => 'रद्द करा';

  @override
  String get deliverTo => 'डिलिव्हरी पत्ता';

  @override
  String get searchDishesHint => 'पदार्थ किंवा रेस्टॉरंट शोधा';

  @override
  String get searchTitle => 'शोधा';

  @override
  String get searchNoResultsTitle => 'काहीही सापडले नाही';

  @override
  String get searchNoResultsSubtitle =>
      'दुसरा पदार्थ, पाककृती किंवा रेस्टॉरंटचे नाव वापरून पहा.';

  @override
  String get cravingTitle => 'आज काय खावंसं वाटतंय?';

  @override
  String get offersTitle => 'तुमच्यासाठी ऑफर';

  @override
  String get restaurantsNearby => 'तुमच्या जवळची रेस्टॉरंट';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेस्टॉरंट',
      one: '1 रेस्टॉरंट',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'इथे अजून काही नाही';

  @override
  String get noRestaurantsSubtitle => 'दुसरी श्रेणी पहा किंवा फिल्टर काढा.';

  @override
  String minutesAway(int minutes) {
    return '$minutes मिनिटे';
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
    return 'दोघांसाठी ₹$amount';
  }

  @override
  String get freeDelivery => 'मोफत डिलिव्हरी';

  @override
  String percentOff(int percent) {
    return '$percent% सूट';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'तुमच्या ऑर्डरवर $percent% सूट';
  }

  @override
  String get vegOnly => 'फक्त शाकाहारी';

  @override
  String get bestseller => 'सर्वाधिक विकले';

  @override
  String get addLabel => 'जोडा';

  @override
  String get noVegDishesTitle => 'इथे शाकाहारी पदार्थ नाहीत';

  @override
  String get noVegDishesSubtitle =>
      'पूर्ण मेन्यू पाहण्यासाठी शाकाहारी फिल्टर बंद करा.';

  @override
  String get replaceCartTitle => 'नवीन कार्ट सुरू करायची?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'तुमच्या कार्टमध्ये $restaurant मधील वस्तू आहेत. हे जोडल्यास त्या काढल्या जातील.';
  }

  @override
  String get replaceCartConfirm => 'काढून जोडा';

  @override
  String get cartTitle => 'तुमची कार्ट';

  @override
  String get cartEmptyTitle => 'तुमची कार्ट रिकामी आहे';

  @override
  String get cartEmptySubtitle =>
      'सुरू करण्यासाठी एखाद्या रेस्टॉरंटमधून पदार्थ जोडा.';

  @override
  String get browseRestaurants => 'रेस्टॉरंट पहा';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वस्तू',
      one: '1 वस्तू',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'कार्ट पहा';

  @override
  String get itemTotal => 'वस्तूंची एकूण';

  @override
  String get deliveryFeeLabel => 'डिलिव्हरी शुल्क';

  @override
  String get taxesAndCharges => 'कर आणि शुल्क';

  @override
  String get freeLabel => 'मोफत';

  @override
  String get toPay => 'देय रक्कम';

  @override
  String placeOrderFor(String amount) {
    return 'ऑर्डर करा · $amount';
  }

  @override
  String get ordersTitle => 'तुमच्या ऑर्डर';

  @override
  String get ordersEmptyTitle => 'अजून ऑर्डर नाहीत';

  @override
  String get ordersEmptySubtitle => 'तुमच्या मागील ऑर्डर इथे दिसतील.';

  @override
  String get reorder => 'पुन्हा ऑर्डर';

  @override
  String orderTitle(String id) {
    return 'ऑर्डर $id';
  }

  @override
  String get orderPlacedTitle => 'ऑर्डर झाली';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'सुमारे $minutes मिनिटांत पोहोचेल.';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return 'तुमची ऑर्डर $restaurant कडे पोहोचली आहे.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'सुमारे $minutes मिनिटांत तयार होईल.';
  }

  @override
  String get trackYourOrder => 'ऑर्डर ट्रॅक करा';

  @override
  String get couponApplyTitle => 'कूपन लागू करा';

  @override
  String get couponCodeLabel => 'कूपन कोड';

  @override
  String get couponApply => 'लागू करा';

  @override
  String couponAppliedTitle(String code) {
    return '$code लागू झाले';
  }

  @override
  String couponSaving(String amount) {
    return 'तुमची $amount बचत';
  }

  @override
  String get couponRemove => 'काढा';

  @override
  String searchFor(String term) {
    return '\"$term\" शोधा';
  }

  @override
  String get vegModeBadge => 'शुद्ध शाकाहारी';

  @override
  String trackingExpectedBy(String time) {
    return '$time पर्यंत पोहोचेल';
  }

  @override
  String get orderAgainTitle => 'पुन्हा ऑर्डर करा';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + आणखी $count',
      one: '$first + आणखी 1',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max मिनिटे';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 पैकी $rating रेटिंग';
  }

  @override
  String get reorderReplaceTitle => 'तुमची कार्ट बदलायची?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant मधील तुमची कार्ट या ऑर्डरमधील पदार्थांनी बदलली जाईल.';
  }

  @override
  String get reorderReplace => 'बदला';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes सध्या उपलब्ध नाहीत, म्हणून ते पदार्थ वगळले.',
      one: '$dishes सध्या उपलब्ध नाही, म्हणून तो पदार्थ वगळला.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'यापैकी कोणताही पदार्थ सध्या उपलब्ध नाही.';

  @override
  String get searchShort => 'शोधा';

  @override
  String get favouriteSave => 'आवडत्यांमध्ये जतन करा';

  @override
  String get restaurantAbout => 'या रेस्टॉरंटबद्दल';

  @override
  String ratingByCount(String count) {
    return '$count जणांकडून';
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
    return 'Nexmile वर $restaurant मधून ऑर्डर करा';
  }

  @override
  String get ordersSearchHint => 'रेस्टॉरंट किंवा पदार्थ शोधा…';

  @override
  String get ordersNoMatch =>
      'त्या नावाच्या रेस्टॉरंट किंवा पदार्थाची कोणतीही ऑर्डर सापडली नाही.';

  @override
  String orderPlacedOn(String date) {
    return '$date रोजी ऑर्डर केली';
  }

  @override
  String get viewMenu => 'मेनू पहा';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get exploreMore => 'आणखी पहा';

  @override
  String get exploreTopRated => 'सर्वोत्तम रेटिंग';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'तुमच्यापर्यंत डिलिव्हरी करणारी $count रेस्टॉरंट',
      one: 'तुमच्यापर्यंत डिलिव्हरी करणारे 1 रेस्टॉरंट',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'डिलिव्हरी कशी होती?';

  @override
  String get rateHowWasFood => 'जेवण कसे होते?';

  @override
  String get rateWordTerrible => 'खूप वाईट';

  @override
  String get rateWordBad => 'वाईट';

  @override
  String get rateWordOkay => 'ठीक';

  @override
  String get rateWordGood => 'छान';

  @override
  String get rateWordLoved => 'खूप आवडले!';

  @override
  String get rateWhatWentWrong => 'काय चुकले?';

  @override
  String get rateWhatYouLiked => 'तुम्हाला काय आवडले?';

  @override
  String get rateRiderNoteHint => 'डिलिव्हरीबद्दल काही सांगायचे आहे? (ऐच्छिक)';

  @override
  String get rateReviewHeading => 'परीक्षण लिहा';

  @override
  String get rateFoodFirst => 'पाठवण्यासाठी जेवणाला रेटिंग द्या';

  @override
  String get rateYouRated => 'तुम्ही या ऑर्डरला रेटिंग दिले';

  @override
  String get ratePromptLater => 'आत्ता नको';

  @override
  String get tagTasty => 'चविष्ट';

  @override
  String get tagFreshHot => 'गरम आणि ताजे';

  @override
  String get tagGoodPortion => 'भरपूर प्रमाण';

  @override
  String get tagGoodPackaging => 'चांगले पॅकिंग';

  @override
  String get tagValueForMoney => 'पैसा वसूल';

  @override
  String get tagHygienic => 'स्वच्छ';

  @override
  String get tagColdFood => 'थंड जेवण';

  @override
  String get tagPoorTaste => 'चव चांगली नव्हती';

  @override
  String get tagSmallPortion => 'कमी प्रमाण';

  @override
  String get tagWrongItems => 'चुकीचे पदार्थ';

  @override
  String get tagMissingItems => 'काही पदार्थ आले नाहीत';

  @override
  String get tagPoorPackaging => 'खराब पॅकिंग';

  @override
  String get tagTooOily => 'खूप तेलकट किंवा तिखट';

  @override
  String get tagOnTime => 'वेळेवर';

  @override
  String get tagPolite => 'नम्र';

  @override
  String get tagFollowedInstructions => 'सूचना पाळल्या';

  @override
  String get tagCarefulHandling => 'जेवण काळजीपूर्वक आणले';

  @override
  String get tagGoodCommunication => 'वेळोवेळी कळवले';

  @override
  String get tagLate => 'उशिरा डिलिव्हरी';

  @override
  String get tagRude => 'उद्धट वागणूक';

  @override
  String get tagIgnoredInstructions => 'सूचना पाळल्या नाहीत';

  @override
  String get tagFoodSpilled => 'जेवण सांडले';

  @override
  String get tagAskedExtraMoney => 'जास्त पैसे मागितले';

  @override
  String get tagUnprofessional => 'अव्यावसायिक वागणूक';

  @override
  String rateDeliveredBy(String name) {
    return '$name यांनी डिलिव्हरी केली';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant मधून';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant मधील तुमची ऑर्डर कशी होती?';
  }

  @override
  String get orderDeliveredTitle => 'डिलिव्हर झाली';

  @override
  String get orderDeliveredSubtitle => 'जेवणाचा आनंद घ्या.';

  @override
  String get statusOrderPlaced => 'ऑर्डर झाली';

  @override
  String get statusPreparing => 'जेवण तयार होत आहे';

  @override
  String get statusOnTheWay => 'वाटेवर आहे';

  @override
  String get statusDelivered => 'डिलिव्हर झाली';

  @override
  String get keepBrowsing => 'पाहत रहा';

  @override
  String get backToHome => 'होमवर परत';

  @override
  String get prototypeNotice =>
      'नमुना स्टोअरफ्रंट — खरी दुकाने कॅटलॉग API सोबत येतील.';

  @override
  String get prototypeCheckoutNotice =>
      'हा एक प्रोटोटाइप आहे. कोणतेही पैसे घेतले जात नाहीत आणि खरी ऑर्डरही होत नाही.';

  @override
  String get prototypeTrackingNotice => 'प्रोटोटाइपसाठी ट्रॅकिंग कृत्रिम आहे.';

  @override
  String get locationTitle => 'डिलिव्हरी कुठे करायची?';

  @override
  String get locationSubtitle =>
      'Nexmile फक्त 1 किमीच्या आतल्या दुकानांमधून डिलिव्हरी करते, म्हणून तुमचे नेमके ठिकाण हवे.';

  @override
  String get locationReasonRadiusTitle => '1 किमीच्या आतली दुकाने';

  @override
  String get locationReasonRadiusBody =>
      'जिथून जेवण गरम पोहोचेल तीच स्वयंपाकघरे आम्ही दाखवतो.';

  @override
  String get locationReasonAccuracyTitle => 'अगदी योग्य दारापर्यंत';

  @override
  String get locationReasonAccuracyBody =>
      'अचूक पिन असल्यास डिलिव्हरी पार्टनर फोन न करता तुम्हाला शोधतो.';

  @override
  String get locationReasonPrivacyTitle => 'फक्त ॲप वापरताना';

  @override
  String get locationReasonPrivacyBody =>
      'आम्ही पार्श्वभूमीत तुमचा माग काढत नाही, आणि पत्ता तुम्ही स्वतःही लिहू शकता.';

  @override
  String get allowLocation => 'लोकेशनला परवानगी द्या';

  @override
  String get enterAddressManually => 'मी पत्ता स्वतः लिहीन';

  @override
  String get locationDenied =>
      'लोकेशनची परवानगी नाकारली. तुम्ही पिन स्वतः ठेवू शकता.';

  @override
  String get locationDeniedForever =>
      'Nexmile साठी लोकेशन बंद आहे. सेटिंग्जमध्ये चालू करा किंवा पिन स्वतः ठेवा.';

  @override
  String get locationServiceOff => 'या डिव्हाइसवर लोकेशन बंद आहे.';

  @override
  String get locationUnavailable => 'लोकेशन मिळाले नाही. कृपया पिन स्वतः ठेवा.';

  @override
  String permStepCount(int step, int total) {
    return '$total पैकी $step';
  }

  @override
  String get permNotNow => 'आत्ता नको';

  @override
  String get permLocationTitle => 'तुमच्या जवळचे जेवण शोधा';

  @override
  String get permNotifyTitle => 'ऑर्डरचे एकही अपडेट चुकवू नका';

  @override
  String get permNotifyBody =>
      'तुमची ऑर्डर कधी स्वीकारली, कधी उचलली आणि कधी दारात पोहोचली हे कळण्यासाठी नोटिफिकेशन चालू करा.';

  @override
  String get permNotifyLiveTitle => 'ऑर्डरचे लाइव्ह अपडेट';

  @override
  String get permNotifyLiveBody =>
      'स्वीकारली, तयार होत आहे, उचलली, डिलिव्हर झाली.';

  @override
  String get permNotifyRiderTitle => 'रायडर तुमच्या दारात';

  @override
  String get permNotifyRiderBody => 'ॲप पाहत न बसता बाहेर कधी यायचे ते कळेल.';

  @override
  String get permNotifyControlTitle => 'नियंत्रण तुमच्याच हातात';

  @override
  String get permNotifyControlBody =>
      'फोनच्या सेटिंग्जमध्ये तुम्ही नोटिफिकेशन कधीही बंद करू शकता.';

  @override
  String get permNotifyAllow => 'नोटिफिकेशन चालू करा';

  @override
  String get openSettings => 'सेटिंग्ज';

  @override
  String get pinLocationTitle => 'तुमचा डिलिव्हरी पिन ठेवा';

  @override
  String get deliveryRadiusHint =>
      'वर्तुळ Nexmile डिलिव्हरी करत असलेली 1 किमी दाखवते.';

  @override
  String get useMyLocation => 'माझे लोकेशन वापरा';

  @override
  String get deliveringHere => 'इथे डिलिव्हरी';

  @override
  String get dragToAdjust => 'पिन बदलण्यासाठी नकाशा हलवा';

  @override
  String get confirmLocation => 'लोकेशन निश्चित करा';

  @override
  String get addressDetailsTitle => 'पत्त्याचा तपशील';

  @override
  String get addressDetailsSubtitle =>
      'योग्य दारापर्यंत पोहोचण्यासाठी घर क्रमांक आणि खूण द्या.';

  @override
  String get pinnedLocation => 'निवडलेले ठिकाण';

  @override
  String get changePin => 'बदला';

  @override
  String get saveAddressAs => 'हा पत्ता असा जतन करा';

  @override
  String get labelHome => 'घर';

  @override
  String get labelWork => 'ऑफिस';

  @override
  String get labelOther => 'इतर';

  @override
  String get addressLine1Label => 'घर, फ्लॅट किंवा इमारत';

  @override
  String get addressLine1Hint => '12A, ग्रीन रेसिडेन्सी';

  @override
  String get addressLine2Label => 'रस्ता किंवा परिसर';

  @override
  String get addressLine2Hint => 'दुसरा अव्हेन्यू, अण्णा नगर';

  @override
  String get landmarkLabel => 'खूण';

  @override
  String get landmarkHint => 'बस स्टॉपसमोर';

  @override
  String get cityLabel => 'शहर';

  @override
  String get stateLabel => 'राज्य';

  @override
  String get pincodeLabel => 'पिन कोड';

  @override
  String get invalidPincode => 'वैध 6 अंकी पिन कोड टाका';

  @override
  String get contactNameLabel => 'संपर्क नाव';

  @override
  String get contactPhoneLabel => 'संपर्क क्रमांक';

  @override
  String get invalidMobileNumber => 'वैध 10 अंकी मोबाइल क्रमांक टाका';

  @override
  String get makeDefaultAddress => 'डीफॉल्टनुसार इथेच डिलिव्हरी';

  @override
  String get saveAddress => 'पत्ता जतन करा';

  @override
  String get addressSaved => 'पत्ता जतन झाला';

  @override
  String get addressBookTitle => 'डिलिव्हरी पत्ते';

  @override
  String get manageAddresses => 'जतन केलेले पत्ते व्यवस्थापित करा';

  @override
  String get noAddressesTitle => 'अजून पत्ता नाही';

  @override
  String get noAddressesSubtitle =>
      'तुमच्यापर्यंत डिलिव्हरी करणारी दुकाने दाखवण्यासाठी एक पत्ता जोडा.';

  @override
  String get addAddress => 'पत्ता जोडा';

  @override
  String get setAsDefault => 'डीफॉल्ट करा';

  @override
  String get editLabel => 'संपादित करा';

  @override
  String get addressUpdated => 'पत्ता अद्ययावत झाला';

  @override
  String get deleteLabel => 'हटवा';

  @override
  String get deleteAddressTitle => 'हा पत्ता हटवायचा?';

  @override
  String get deleteAddressMessage => 'तुम्ही तो नंतर पुन्हा जोडू शकता.';

  @override
  String get rescueDealsTitle => 'फूड रेस्क्यू';

  @override
  String get notTakingOrders => 'ऑर्डर घेत नाही';

  @override
  String get closedRightNow => 'सध्या बंद आहे';

  @override
  String minimumOrder(String amount) {
    return 'किमान $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count शिल्लक';
  }

  @override
  String get soldOut => 'संपले';

  @override
  String get menuEmptyTitle => 'अजून पदार्थ नाहीत';

  @override
  String get menuEmptySubtitle => 'या रेस्टॉरंटने आपला मेनू जोडलेला नाही.';

  @override
  String get moreDishesTitle => 'आणखी पदार्थ';

  @override
  String get menuSearchHint => 'पदार्थ शोधा';

  @override
  String get filtersShort => 'फिल्टर';

  @override
  String get dietVeg => 'शाकाहारी';

  @override
  String get dietEgg => 'अंडे';

  @override
  String get dietNonVeg => 'मांसाहारी';

  @override
  String get menuBestsellerChip => 'सर्वाधिक विकले';

  @override
  String get menuFoodType => 'पदार्थाचा प्रकार';

  @override
  String get menuShowOnly => 'फक्त हे दाखवा';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पदार्थ',
      one: '1 पदार्थ',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पदार्थ दाखवा',
      one: '1 पदार्थ दाखवा',
      zero: 'एकही पदार्थ नाही',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'पदार्थाचे दुसरे नाव वापरून पहा, किंवा एखादा फिल्टर काढा.';

  @override
  String get menuBrowse => 'मेनू';

  @override
  String get customisable => 'आवडीनुसार';

  @override
  String get requiredLabel => 'आवश्यक';

  @override
  String get optionalLabel => 'ऐच्छिक';

  @override
  String get chooseOne => 'एक निवडा';

  @override
  String chooseUpTo(int count) {
    return 'जास्तीत जास्त $count निवडा';
  }

  @override
  String chooseAtLeast(int count) {
    return 'किमान $count निवडा';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min ते $max निवडा';
  }

  @override
  String get specialInstructions => 'खास सूचना';

  @override
  String get specialInstructionsHint => 'कमी तिखट, कांदा नको…';

  @override
  String addForAmount(String amount) {
    return 'जोडा · $amount';
  }

  @override
  String get deliveryLabel => 'डिलिव्हरी';

  @override
  String get pickupLabel => 'स्वतः न्या';

  @override
  String get packagingLabel => 'पॅकिंग';

  @override
  String get discountLabel => 'सवलत';

  @override
  String get billDetailsTitle => 'बिलाचा तपशील';

  @override
  String get clearCart => 'कार्ट रिकामी करा';

  @override
  String get clearCartTitle => 'ही कार्ट रिकामी करायची?';

  @override
  String get clearCartMessage => 'यातील सर्व काही काढून टाकले जाईल.';

  @override
  String unavailableItemsNotice(String items) {
    return 'आता उपलब्ध नाही: $items';
  }

  @override
  String get removeUnavailable => 'ते काढून टाका';

  @override
  String minimumNotMet(String amount) {
    return 'किमान ऑर्डर $amount आहे';
  }

  @override
  String get checkoutTitle => 'चेकआउट';

  @override
  String get deliveryAddressLabel => 'डिलिव्हरीचा पत्ता';

  @override
  String get noAddressSelected => 'पत्ता निवडलेला नाही';

  @override
  String get paymentMethodLabel => 'पेमेंट';

  @override
  String get payOnDelivery => 'डिलिव्हरीवर रोख';

  @override
  String get noteToRestaurant => 'रेस्टॉरंटसाठी सूचना';

  @override
  String get noteToRestaurantHint => 'बेल दोनदा वाजवा…';

  @override
  String get activeOrdersTitle => 'सुरू असलेल्या ऑर्डर';

  @override
  String get pastOrdersTitle => 'जुन्या ऑर्डर';

  @override
  String get orderItemsTitle => 'पदार्थ';

  @override
  String get orderProgressTitle => 'प्रगती';

  @override
  String get arrivingIn => 'पोहोचण्यास';

  @override
  String get pickupCodeLabel => 'पिकअप कोड';

  @override
  String get cancellationReasonLabel => 'रद्द होण्याचे कारण';

  @override
  String get riderLabel => 'डिलिव्हरी पार्टनर';

  @override
  String get callRider => 'कॉल करा';

  @override
  String get trackRider => 'रायडर ट्रॅक करा';

  @override
  String get riderLocationSoon => 'ऑर्डर उचलल्यावर रायडरचे स्थान येथे दिसेल.';

  @override
  String get riderLocationStale => 'रायडरचे स्थान अपडेट होत आहे…';

  @override
  String get recentreOnRider => 'रायडरवर केंद्रित करा';

  @override
  String get viewInvoice => 'कर पावती';

  @override
  String get cancelOrder => 'ऑर्डर रद्द करा';

  @override
  String get cancelOrderTitle => 'ही ऑर्डर रद्द करायची?';

  @override
  String get cancelOrderMessage =>
      'रेस्टॉरंटने स्वीकारण्यापूर्वीच रद्द करता येते.';

  @override
  String get cancelReasonLabel => 'कारण';

  @override
  String get cancelReasonFallback => 'ग्राहकाने रद्द केली';

  @override
  String get orderCancelled => 'ऑर्डर रद्द झाली';

  @override
  String get currentLocationLabel => 'सध्याचे ठिकाण';

  @override
  String get onLabel => 'चालू';

  @override
  String get offLabel => 'बंद';

  @override
  String get profileCoupons => 'तुमची कूपन';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वापरता येतील',
      one: '1 वापरता येईल',
      zero: 'अजून एकही नाही',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'तुमच्या पसंती';

  @override
  String get profileVegMode => 'शाकाहारी मोड';

  @override
  String get profileVegModeHint => 'फक्त शाकाहारी रेस्टॉरंट आणि पदार्थ';

  @override
  String get profileAppearance => 'थीम';

  @override
  String get appearanceSystem => 'फोनप्रमाणे';

  @override
  String get appearanceLight => 'लाइट';

  @override
  String get appearanceDark => 'डार्क';

  @override
  String get profileNotifications => 'नोटिफिकेशन';

  @override
  String get profileFoodDelivery => 'फूड डिलिव्हरी';

  @override
  String get profileFavourites => 'तुमची आवडती रेस्टॉरंट';

  @override
  String get profileHelp => 'मदत आणि सहाय्य';

  @override
  String get profileMore => 'अधिक';

  @override
  String get profileFeedback => 'अभिप्राय पाठवा';

  @override
  String get profileSafety => 'सुरक्षेसंबंधी आणीबाणी कळवा';

  @override
  String get profileAbout => 'Nexmile बद्दल';

  @override
  String get couponsEmptyTitle => 'सध्या कोणतेही कूपन नाही';

  @override
  String get couponsEmptyBody =>
      'तुम्हाला वापरता येईल असे कूपन आले की ते इथे दिसेल.';

  @override
  String couponFlatOff(String amount) {
    return '$amount सूट';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% सूट';
  }

  @override
  String couponUpTo(String amount) {
    return 'जास्तीत जास्त $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount पेक्षा जास्त ऑर्डरवर';
  }

  @override
  String couponValidTill(String date) {
    return '$date पर्यंत वैध';
  }

  @override
  String get couponAllRestaurants => 'सर्व रेस्टॉरंटमध्ये';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant मध्ये';
  }

  @override
  String couponCopied(String code) {
    return 'कोड $code कॉपी झाला';
  }

  @override
  String get favouritesEmptyTitle => 'अजून आवडती रेस्टॉरंट नाहीत';

  @override
  String get favouritesEmptyBody =>
      'रेस्टॉरंट इथे जतन करण्यासाठी त्यावरील हार्टवर टॅप करा.';

  @override
  String get helpCall => 'आम्हाला कॉल करा';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'आम्हाला ईमेल करा';

  @override
  String helpHours(String hours) {
    return 'आम्ही $hours उपलब्ध आहोत';
  }

  @override
  String get helpFaqs => 'नेहमीचे प्रश्न';

  @override
  String get helpNothing =>
      'मदतीची माहिती सध्या उपलब्ध नाही. कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get feedbackPrompt => 'Nexmile वापरण्याचा तुमचा अनुभव कसा आहे?';

  @override
  String get feedbackHint =>
      'तुम्हाला काय आवडले, किंवा आम्ही काय सुधारू शकतो ते सांगा';

  @override
  String get feedbackNeedRating => 'आधी रेटिंग निवडा';

  @override
  String get feedbackThanks =>
      'धन्यवाद! तुमचा अभिप्राय आमच्या टीमपर्यंत पोहोचला.';

  @override
  String get safetyIntro =>
      'तुम्ही किंवा इतर कोणी धोक्यात असल्यास, आधी आपत्कालीन सेवांना कॉल करा.';

  @override
  String get safetyCallEmergency => '112 वर कॉल करा';

  @override
  String get safetyCallEmergencyBody => 'पोलीस, अग्निशमन आणि रुग्णवाहिका';

  @override
  String get safetyCallNexmile => 'Nexmile सुरक्षा लाइनवर कॉल करा';

  @override
  String get safetyCallNexmileBody => '24 तास उपलब्ध';

  @override
  String aboutVersion(String version) {
    return 'आवृत्ती $version';
  }

  @override
  String get aboutTerms => 'सेवा अटी';

  @override
  String get aboutPrivacy => 'गोपनीयता धोरण';

  @override
  String get aboutLicences => 'ओपन-सोर्स परवाने';

  @override
  String get notifyOrderUpdates => 'ऑर्डर अपडेट';

  @override
  String get notifyOrderUpdatesBody =>
      'नेहमी चालू, म्हणजे तुमचे जेवण कुठे आहे ते तुम्हाला कळेल.';

  @override
  String get notifyPromotions => 'ऑफर आणि प्रमोशन';

  @override
  String get notifyPromotionsBody =>
      'डील, कूपन आणि तुमच्या जवळची नवीन रेस्टॉरंट.';

  @override
  String get notifyPhoneOff => 'या फोनवर Nexmile साठी नोटिफिकेशन बंद आहेत.';

  @override
  String get notifyTurnOn => 'चालू करा';

  @override
  String get linkOpenFailed => 'हे या फोनवर उघडता आले नाही.';

  @override
  String get editProfileTitle => 'प्रोफाइल संपादित करा';

  @override
  String get editProfileSubtitle =>
      'रेस्टॉरंट आणि डिलिव्हरी पार्टनरला तुमचे नावच दिसते.';

  @override
  String get saveChanges => 'बदल जतन करा';

  @override
  String get profileUpdated => 'प्रोफाइल अद्ययावत झाले';

  @override
  String get deleteAccount => 'खाते हटवा';

  @override
  String get deleteAccountTitle => 'तुमचे खाते हटवायचे?';

  @override
  String get deleteAccountMessage =>
      'सर्व उपकरणांवरून साइन आउट व्हाल. जुन्या ऑर्डर आणि पावत्या कर नोंदींसाठी ठेवल्या जातात.';

  @override
  String get accountDeleted => 'तुमचे खाते हटवले गेले';

  @override
  String get devicesTitle => 'साइन-इन उपकरणे';

  @override
  String get devicesSubtitle => 'तुम्ही कुठे साइन इन आहात';

  @override
  String get devicesEmptyTitle => 'दुसरे कोणतेही उपकरण नाही';

  @override
  String get devicesEmptySubtitle => 'तुम्ही फक्त याच उपकरणावर साइन इन आहात.';

  @override
  String get signOutDevice => 'साइन आउट';

  @override
  String get signOutDeviceTitle => 'हे उपकरण साइन आउट करायचे?';

  @override
  String get signOutDeviceMessage =>
      'तुम्ही हेच उपकरण वापरत असाल तर पुन्हा साइन इन करावे लागेल.';

  @override
  String get deviceSignedOut => 'उपकरण साइन आउट झाले';

  @override
  String get signOutEverywhere => 'सर्वत्र साइन आउट';

  @override
  String get signOutEverywhereTitle => 'सर्वत्र साइन आउट करायचे?';

  @override
  String get signOutEverywhereMessage =>
      'या उपकरणासह प्रत्येक उपकरण साइन आउट होईल.';

  @override
  String get unknownDevice => 'अज्ञात उपकरण';

  @override
  String get activeNow => 'आत्ता सक्रिय';

  @override
  String minutesAgo(int count) {
    return '$count मिनिटांपूर्वी';
  }

  @override
  String hoursAgo(int count) {
    return '$count तासांपूर्वी';
  }

  @override
  String daysAgo(int count) {
    return '$count दिवसांपूर्वी';
  }

  @override
  String get filtersAndSorting => 'फिल्टर आणि क्रम';

  @override
  String get clearAll => 'सर्व काढा';

  @override
  String get showResults => 'निकाल पहा';

  @override
  String get closeLabel => 'बंद करा';

  @override
  String get sortByTitle => 'क्रमवारी';

  @override
  String get sortRelevance => 'सुसंगतता';

  @override
  String get sortRating => 'रेटिंग';

  @override
  String get sortDeliveryTime => 'डिलिव्हरी वेळ';

  @override
  String get sortCostLowHigh => 'किंमत: कमी ते जास्त';

  @override
  String get sortCostHighLow => 'किंमत: जास्त ते कमी';

  @override
  String get timeSection => 'वेळ';

  @override
  String get nearAndFast => 'जवळ आणि जलद';

  @override
  String get openNow => 'आत्ता उघडे';

  @override
  String get ratingSection => 'रेस्टॉरंट रेटिंग';

  @override
  String ratedAbove(String rating) {
    return '$rating+ रेटिंग';
  }

  @override
  String get offersSection => 'ऑफर';

  @override
  String get hasOffersLabel => 'ऑफर असलेले';

  @override
  String get dishPriceSection => 'पदार्थाची किंमत';

  @override
  String costUnder(String amount) {
    return '$amount पेक्षा कमी';
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
  String get moreSection => 'अधिक';

  @override
  String get noPackagingCharges => 'पॅकिंग शुल्क नाही';

  @override
  String get allRestaurantsTitle => 'सर्व रेस्टॉरंट';

  @override
  String get whatsOnYourMind => 'काय खावंसं वाटतंय?';

  @override
  String get listeningNow => 'ऐकत आहोत…';

  @override
  String get speakNowHint => 'पदार्थ किंवा रेस्टॉरंट सांगा';

  @override
  String get voiceUnavailable => 'व्हॉइस सर्च उपलब्ध नाही';

  @override
  String get voiceUnavailableBody => 'तुम्ही टाइप करूनही शोधू शकता.';

  @override
  String get microphoneDenied => 'मायक्रोफोन परवानगी बंद';

  @override
  String get voiceSearchLabel => 'आवाजाने शोधा';

  @override
  String get ratingsAndReviews => 'रेटिंग आणि परीक्षणे';

  @override
  String get reviewsWithTextOnly => 'परीक्षण असलेली';

  @override
  String get noReviewsTitle => 'अजून एकही रेटिंग नाही';

  @override
  String get noReviewsSubtitle => 'ऑर्डरनंतर पहिले रेटिंग तुम्हीच द्या.';

  @override
  String get rateOrderTitle => 'तुमच्या ऑर्डरला रेटिंग द्या';

  @override
  String get rateDishesTitle => 'पदार्थांना रेटिंग द्या';

  @override
  String get reviewHint => 'आणखी काही सांगायचे आहे? (ऐच्छिक)';

  @override
  String get submitRating => 'रेटिंग पाठवा';

  @override
  String get reviewThanks => 'धन्यवाद — तुमचे रेटिंग नोंदले.';

  @override
  String get rateThisOrder => 'या ऑर्डरला रेटिंग द्या';

  @override
  String get walletTitle => 'Nexmile वॉलेट';

  @override
  String get walletBalance => 'वॉलेट शिल्लक';

  @override
  String get walletBalanceHint => 'कोणत्याही ऑर्डरचे पैसे भरण्यासाठी वापरा.';

  @override
  String get walletAddMoney => 'पैसे जोडा';

  @override
  String get walletEnterAmount => 'रक्कम टाका';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ते $max दरम्यान';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount जोडा';
  }

  @override
  String get walletSecuredBy => 'Razorpay द्वारे सुरक्षित पेमेंट';

  @override
  String get walletHistory => 'इतिहास';

  @override
  String get walletNoHistory =>
      'अजून कोणतेही व्यवहार नाहीत. तुम्ही जोडलेले किंवा खर्च केलेले पैसे इथे दिसतील.';

  @override
  String get walletEntryTopUp => 'पैसे जोडले';

  @override
  String get walletEntryOrder => 'ऑर्डरसाठी पेमेंट';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ऑर्डर $number साठी पेमेंट';
  }

  @override
  String get walletEntryRefund => 'रिफंड';

  @override
  String walletMoneyAdded(String amount) {
    return 'तुमच्या वॉलेटमध्ये $amount जोडले';
  }

  @override
  String get walletPaymentFailed =>
      'पेमेंट अयशस्वी झाले. तुमच्या खात्यातून कोणतेही पैसे कापले गेले नाहीत.';

  @override
  String get walletPaymentConfirming =>
      'पेमेंट मिळाले. काही मिनिटांत तुमची शिल्लक अपडेट होईल.';

  @override
  String get walletUseBalance => 'वॉलेट शिल्लक वापरा';

  @override
  String walletAvailable(String amount) {
    return 'उपलब्ध: $amount';
  }

  @override
  String get walletPaidFromWallet => 'वॉलेटमधून भरले';

  @override
  String get walletPayOnDelivery => 'डिलिव्हरीवर द्यायचे';

  @override
  String get walletCoversOrder => 'पूर्ण रक्कम तुमच्या वॉलेटमधून भरली';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet वॉलेटमधून, $rest डिलिव्हरीवर';
  }

  @override
  String get walletTopUpUnavailable =>
      'सध्या पैसे जोडता येत नाहीत. कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String walletFull(String limit) {
    return 'तुमचे वॉलेट $limit च्या मर्यादेपर्यंत भरले आहे.';
  }

  @override
  String get searchAddressHint => 'परिसर, रस्ता किंवा खूण शोधा';

  @override
  String get selectLocationTitle => 'लोकेशन निवडा';

  @override
  String get useCurrentLocation => 'सध्याचे लोकेशन वापरा';

  @override
  String get locatingYou => 'तुमचे लोकेशन शोधत आहोत…';

  @override
  String get locationOffHint => 'हे वापरण्यासाठी लोकेशनला परवानगी द्या';

  @override
  String get savedAddressesHeading => 'जतन केलेले पत्ते';

  @override
  String get recentLocationsHeading => 'अलीकडील ठिकाणे';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'डिलिव्हरीचे लोकेशन निवडा';

  @override
  String get movePinTooltip => 'पिन तुमच्या डिलिव्हरीच्या नेमक्या ठिकाणी हलवा';

  @override
  String get locatingPin => 'पत्ता शोधत आहोत…';

  @override
  String get deliveryDetailsHeading => 'डिलिव्हरीचा तपशील';

  @override
  String get addressDetailsLabel => 'पत्त्याचा तपशील*';

  @override
  String get addressDetailsHint => 'उदा. मजला, घर क्रमांक';

  @override
  String get missingAreaHint =>
      'या पिनचा पूर्ण पत्ता आम्हाला मिळाला नाही. कृपया उरलेला तपशील भरा.';

  @override
  String get whoToContact => 'या डिलिव्हरीसाठी आम्ही कोणाशी संपर्क साधावा?';

  @override
  String get contactMyself => 'मी स्वतः';

  @override
  String get contactSomeoneElse => 'दुसरी व्यक्ती';

  @override
  String get receiverDetailsHeading => 'या पत्त्यावर ऑर्डर घेणाऱ्याचा तपशील';

  @override
  String get receiverAddPrompt => 'ऑर्डर घेणाऱ्याचे नाव आणि क्रमांक जोडा';

  @override
  String get receiverSheetTitle => 'ऑर्डर घेणाऱ्याचा तपशील';

  @override
  String get doorPhotoHeading => 'दार/इमारतीचा फोटो (ऐच्छिक)';

  @override
  String get doorPhotoAdd => 'फोटो जोडा';

  @override
  String get doorPhotoBody =>
      'यामुळे आमच्या डिलिव्हरी पार्टनरना तुमचे नेमके ठिकाण लवकर सापडते';

  @override
  String get doorPhotoChange => 'बदला';

  @override
  String get doorPhotoRemove => 'काढा';

  @override
  String get photoFromCamera => 'फोटो काढा';

  @override
  String get photoFromGallery => 'गॅलरीमधून निवडा';

  @override
  String get photoUploaded => 'फोटो जोडला';

  @override
  String get photoUploadFailed =>
      'फोटो अपलोड झाला नाही. कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get addressSavedPhotoFailed => 'पत्ता जतन झाला. फोटो अपलोड झाला नाही.';

  @override
  String get removePhotoLabel => 'फोटो काढून टाका';

  @override
  String get photoRemoved => 'फोटो काढला';

  @override
  String get shareLabel => 'शेअर करा';

  @override
  String get addDoorPhotoLabel => 'दाराचा फोटो जोडा';

  @override
  String get searchAddressNoResults =>
      'कोणतेही ठिकाण सापडले नाही. जवळची खूण, परिसराचे नाव किंवा पिन कोड वापरून पहा.';

  @override
  String get clearLabel => 'साफ करा';

  @override
  String get trackingArrivingNow => 'आता पोहोचत आहे';

  @override
  String get trackingLive => 'लाइव्ह';

  @override
  String get trackingStepConfirmed => 'निश्चित झाली';

  @override
  String get trackingStepPreparing => 'तयार होत आहे';

  @override
  String get trackingStepOnTheWay => 'वाटेवर';

  @override
  String get trackingStepDelivered => 'डिलिव्हर झाली';

  @override
  String get trackingFindingRider => 'डिलिव्हरी पार्टनर नेमत आहोत…';

  @override
  String get trackingPinYou => 'तुम्ही';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance अंतरावर आहेत';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name यांना मेसेज करा';
  }

  @override
  String get trackingDeliveringTo => 'डिलिव्हरी पत्ता';

  @override
  String get trackingOrderDetails => 'ऑर्डरचा तपशील';

  @override
  String get dispatchSearching => 'रेस्टॉरंटजवळ डिलिव्हरी पार्टनर शोधत आहोत…';

  @override
  String get dispatchNoRider =>
      'अजून कोणत्याही डिलिव्हरी पार्टनरने ऑर्डर घेतलेली नाही. आमची टीम आता एकाला नेमत आहे.';

  @override
  String get vehicleBike => 'बाइक';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleBicycle => 'सायकल';

  @override
  String get vehicleElectric => 'इलेक्ट्रिक स्कूटर';

  @override
  String get exitTitle => 'Nexmile मधून बाहेर पडायचे?';

  @override
  String get exitBody => 'तुम्हाला नक्की ॲपमधून बाहेर पडायचे आहे का?';

  @override
  String get exitConfirm => 'बाहेर पडा';

  @override
  String cartSavedBanner(String amount) {
    return 'या ऑर्डरवर तुमचे $amount वाचले';
  }

  @override
  String get cartAddMoreItems => 'आणखी पदार्थ जोडा';

  @override
  String get cartAddNote => 'रेस्टॉरंटसाठी सूचना जोडा';

  @override
  String get cartOrderNoteHint => 'उदा. कशातही कांदा किंवा लसूण घालू नका';

  @override
  String get cartNoteSave => 'जतन करा';

  @override
  String get cartNoCutlery => 'चमचे-काटे पाठवू नका';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिक कचरा कमी करण्यात मदत केल्याबद्दल धन्यवाद';

  @override
  String get cartSavingsCorner => 'बचत कॉर्नर';

  @override
  String get cartDeliveryInstructions => 'डिलिव्हरीसाठी सूचना';

  @override
  String get cartInstructionsRider =>
      'या सूचना फक्त तुमच्या डिलिव्हरी पार्टनरलाच दिसतात';

  @override
  String get instructionLeaveAtDoor => 'दारात ठेवा';

  @override
  String get instructionNoBell => 'बेल वाजवू नका';

  @override
  String get instructionNoCall => 'कॉल करू नका';

  @override
  String get instructionSecurity => 'सिक्युरिटीकडे द्या';

  @override
  String get instructionPet => 'घरी पाळीव प्राणी आहे';

  @override
  String get cartInclTaxes => 'कर आणि शुल्क धरून';

  @override
  String cartSavedTag(String amount) {
    return '$amount वाचले';
  }

  @override
  String get cartPayUsing => 'पेमेंट पद्धत';

  @override
  String get cartWalletAndCash => 'वॉलेट + रोख';

  @override
  String cartCashRest(String amount) {
    return 'ऑर्डर आल्यावर $amount द्या';
  }

  @override
  String get cartCashFull => 'ऑर्डर आल्यावर पैसे द्या';

  @override
  String get cartCashNothing => 'डिलिव्हरीवर काहीही द्यायचे नाही';

  @override
  String get cartTotal => 'एकूण';

  @override
  String get cartPlaceOrder => 'ऑर्डर करा';

  @override
  String cartDeliverTo(String place) {
    return '$place येथे डिलिव्हरी';
  }

  @override
  String get cartChange => 'बदला';

  @override
  String get cartNoAddress => 'डिलिव्हरी कुठे करायची?';

  @override
  String get cartNoAddressHint => 'ऑर्डर करण्यासाठी पत्ता जोडा';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant मधून स्वतः न्या';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'सुमारे $minutes मिनिटांत तयार';
  }

  @override
  String get cartChooseAddress => 'डिलिव्हरी पत्ता निवडा';

  @override
  String get cartDone => 'झाले';

  @override
  String get supportTitle => 'Nexmile सहाय्य';

  @override
  String get supportBubble => 'मदत';

  @override
  String get supportAiLabel => 'AI सहाय्यक';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile टीम';
  }

  @override
  String get supportDemoBanner =>
      'डेमो: ही फक्त नमुना उत्तरे आहेत. खरा AI सहाय्यक अजून जोडलेला नाही.';

  @override
  String get supportEmptyTitle => 'आम्ही कशी मदत करू शकतो?';

  @override
  String get supportEmptyBody =>
      'ऑर्डर, पेमेंट किंवा इतर कशाबद्दलही विचारा. आधी आमचा AI सहाय्यक उत्तर देतो, आणि तो मदत करू शकला नाही तर आमच्या टीममधील एखादी व्यक्ती पुढे मदत करते.';

  @override
  String get supportSuggestWhere => 'माझी ऑर्डर कुठे आहे?';

  @override
  String get supportSuggestMissing => 'ऑर्डरमधील काहीतरी आले नाही';

  @override
  String get supportSuggestRefund => 'रिफंडबद्दल एक प्रश्न आहे';

  @override
  String get supportComposerHint => 'मेसेज लिहा';

  @override
  String get supportSend => 'पाठवा';

  @override
  String get supportTyping => 'AI सहाय्यक लिहित आहे…';

  @override
  String get supportNotSent => 'पाठवला गेला नाही';

  @override
  String get supportTookTooLong => 'उत्तर यायला खूप वेळ लागला.';

  @override
  String get supportSlowDown => 'आणखी मेसेज पाठवण्यापूर्वी थोडा वेळ थांबा.';

  @override
  String get supportUnreachable =>
      'सध्या चॅटशी संपर्क होऊ शकत नाही. आम्हाला कॉल करा, किंवा काही मिनिटांनी पुन्हा प्रयत्न करा.';

  @override
  String get supportOffline =>
      'तुम्ही ऑफलाइन आहात. ही तुमची शेवटची जतन केलेली चॅट आहे.';

  @override
  String get supportClosed => 'ही चॅट बंद झाली आहे.';

  @override
  String get supportStartNew => 'नवीन चॅट सुरू करा';

  @override
  String get supportTalkToPerson => 'एखाद्या व्यक्तीशी बोला';

  @override
  String get supportMarkSolved => 'समस्या सुटली';

  @override
  String get supportHelpful => 'उपयुक्त';

  @override
  String get supportNotHelpful => 'उपयुक्त नाही';

  @override
  String get supportNeedHelp => 'मदत हवी आहे?';

  @override
  String get supportChatWithUs => 'आमच्याशी चॅट करा';

  @override
  String get supportChatWithUsBody =>
      'आमचा AI सहाय्यक काही सेकंदांत उत्तर देतो, आणि गरज पडल्यास एखादी व्यक्ती पुढे मदत करते.';

  @override
  String get supportActionFailed => 'ते झाले नाही. पुन्हा प्रयत्न करा.';
}
