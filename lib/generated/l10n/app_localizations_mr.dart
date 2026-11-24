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
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

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
  String get riderLocationStale => 'Updating rider\'s location…';

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
