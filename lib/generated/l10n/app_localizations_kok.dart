// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Konkani (`kok`).
class AppLocalizationsKok extends AppLocalizations {
  AppLocalizationsKok([String locale = 'kok']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'हें खण गरजेचें आसा';

  @override
  String get tagline => 'वेगान डिलिव्हरी. ताजें हास्य.';

  @override
  String get chooseLanguageTitle => 'तुमची भास वेंचात';

  @override
  String get chooseLanguageSubtitle =>
      'तुमकां सोंपी दिसता ती भास वेंचात. तुमी ती केन्नाय सेटिंग्जांत बदलूं येता.';

  @override
  String get searchLanguageHint => 'भास सोदात';

  @override
  String get noLanguageFound => 'खंयचीच भास मेळूंक ना';

  @override
  String languagesAvailable(int count) {
    return '$count भासो उपलब्ध आसात';
  }

  @override
  String get continueLabel => 'फुडें वचात';

  @override
  String get selectedLabel => 'वेंचिल्ली';

  @override
  String get defaultLabel => 'डिफॉल्ट';

  @override
  String get homeTitle => 'Nexmile हांगा येवकार';

  @override
  String get homeSubtitle =>
      'ताजो किराणो, गरम जेवण आनी दिसपट्ट्यो गरजेच्यो वस्तू तुमच्या लागसारच्या दुकानांतल्यान.';

  @override
  String get changeLanguage => 'भास बदलात';

  @override
  String get languageUpdated => 'भास बदल्ली';

  @override
  String get appLanguageLabel => 'ॲपाची भास';

  @override
  String greetingNamed(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String get loginTitle => 'Nexmile हांगा साइन इन करात';

  @override
  String get loginSubtitle =>
      'तुमचो ईमेल वा मोबायल क्रमांक घालात, आमी सत्यापन कोड धाडटले.';

  @override
  String get emailOrPhoneLabel => 'ईमेल वा मोबायल क्रमांक';

  @override
  String get emailOrPhoneHint => 'name@example.com वा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'योग्य ईमेल नामो वा 10 आंकड्यांचो मोबायल क्रमांक घालात';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'कोड धाडात';

  @override
  String get agreeToTermsOnContinue =>
      'फुडें वचून तुमी आमच्यो सेवा अटी आनी गुपीतपण धोरण मान्य करतात.';

  @override
  String get otpTitle => 'हो तुमीच अशें सत्यापित करात';

  @override
  String otpSubtitle(String target) {
    return '$target हाका धाडिल्लो 6 आंकड्यांचो कोड घालात';
  }

  @override
  String get verifyCode => 'सत्यापित करात';

  @override
  String get resendCode => 'कोड परत धाडात';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंदांनी परत धाडात';
  }

  @override
  String get codeResent => 'नवो कोड धाडला';

  @override
  String get incorrectCode =>
      'हो कोड चुकीचो आसा वा ताची मुजत सोंपली. नवो कोड मागात.';

  @override
  String get enterFullCode => 'पुराय 6 आंकडे घालात';

  @override
  String get accountSuspended =>
      'हें खातें निलंबित केलां. उपकार करून आदाराक संपर्क करात.';

  @override
  String get tooManyAttempts =>
      'खूब फावटीं यत्न जाले. उपकार करून थोड्या वेळान परत यत्न करात.';

  @override
  String get sessionExpired =>
      'तुमचें सत्र सोंपलां. उपकार करून परत साइन इन करात.';

  @override
  String get networkError =>
      'इंटरनॅट जोडणी ना. जोडणी तपासात आनी परत यत्न करात.';

  @override
  String get developmentCode => 'डेव्हलपमेंट कोड';

  @override
  String get signOut => 'साइन आवट';

  @override
  String get signedOut => 'तुमी साइन आवट जाल्यात';

  @override
  String get somethingWentWrong =>
      'कितें तरी चुकलें. उपकार करून परत यत्न करात.';

  @override
  String get profileTitle => 'प्रोफायल';

  @override
  String get viewProfile => 'प्रोफायल पळयात';

  @override
  String get nameLabel => 'नांव';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबायल क्रमांक';

  @override
  String get accountStatusLabel => 'खात्याची स्थिती';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'प्रलंबीत';

  @override
  String get statusSuspended => 'निलंबीत';

  @override
  String get verifiedLabel => 'सत्यापीत';

  @override
  String get notProvided => 'जोडूंक ना';

  @override
  String get retry => 'परत यत्न करात';

  @override
  String get navHome => 'होम';

  @override
  String get navSearch => 'सोदात';

  @override
  String get navOrders => 'ऑर्डर';

  @override
  String get cancelLabel => 'रद्द करात';

  @override
  String get deliverTo => 'डिलिव्हरी नामो';

  @override
  String get searchDishesHint => 'जेवण वा रेस्टॉरंट सोदात';

  @override
  String get searchTitle => 'सोदात';

  @override
  String get searchNoResultsTitle => 'कितेंच मेळूंक ना';

  @override
  String get searchNoResultsSubtitle =>
      'हेर जेवण, पाकशैली वा रेस्टॉरंटाचें नांव यत्न करात.';

  @override
  String get cravingTitle => 'आयज कितें खावंक जाय?';

  @override
  String get offersTitle => 'तुमकां खातीर ऑफर';

  @override
  String get restaurantsNearby => 'तुमच्या लागसारचीं रेस्टॉरंटां';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count रेस्टॉरंटां',
      one: '1 रेस्टॉरंट',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'हांगा अजून कितेंच ना';

  @override
  String get noRestaurantsSubtitle => 'हेर वर्ग पळयात वा फिल्टर काडात.';

  @override
  String minutesAway(int minutes) {
    return '$minutes मिनटां';
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
      other: '$count रेटिंगां',
      one: '1 रेटिंग',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'दोगांक ₹$amount';
  }

  @override
  String get freeDelivery => 'फुकट डिलिव्हरी';

  @override
  String percentOff(int percent) {
    return '$percent% सूट';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'तुमच्या ऑर्डराचेर $percent% सूट';
  }

  @override
  String get vegOnly => 'फकत शाकाहारी';

  @override
  String get bestseller => 'चड विकपी';

  @override
  String get addLabel => 'जोडात';

  @override
  String get noVegDishesTitle => 'हांगा शाकाहारी जेवण ना';

  @override
  String get noVegDishesSubtitle =>
      'आख्खो मेनू पळोवंक शाकाहारी फिल्टर बंद करात.';

  @override
  String get replaceCartTitle => 'नवी कार्ट सुरू करूंया?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'तुमच्या कार्टांत $restaurant च्यो वस्तू आसात. हें जोडल्यार त्यो काडटल्यो.';
  }

  @override
  String get replaceCartConfirm => 'काडून जोडात';

  @override
  String get cartTitle => 'तुमची कार्ट';

  @override
  String get cartEmptyTitle => 'तुमची कार्ट रिकामी आसा';

  @override
  String get cartEmptySubtitle =>
      'सुरू करुंक खंयच्याय रेस्टॉरंटांतल्यान जेवण जोडात.';

  @override
  String get browseRestaurants => 'रेस्टॉरंटां पळयात';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वस्तू',
      one: '1 वस्त',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'कार्ट पळयात';

  @override
  String get itemTotal => 'वस्तूंची बेरीज';

  @override
  String get deliveryFeeLabel => 'डिलिव्हरी शुल्क';

  @override
  String get taxesAndCharges => 'कर आनी शुल्कां';

  @override
  String get freeLabel => 'फुकट';

  @override
  String get toPay => 'दिवपाचें';

  @override
  String placeOrderFor(String amount) {
    return 'ऑर्डर करात · $amount';
  }

  @override
  String get ordersTitle => 'तुमच्यो ऑर्डरी';

  @override
  String get ordersEmptyTitle => 'अजून ऑर्डर ना';

  @override
  String get ordersEmptySubtitle => 'तुमच्यो पयल्यो ऑर्डरी हांगा दिसतल्यो.';

  @override
  String get reorder => 'परत ऑर्डर';

  @override
  String orderTitle(String id) {
    return 'ऑर्डर $id';
  }

  @override
  String get orderPlacedTitle => 'ऑर्डर जाली';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'सुमार $minutes मिनटांनी पावतली.';
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
  String get orderDeliveredTitle => 'डिलिव्हर जाली';

  @override
  String get orderDeliveredSubtitle => 'जेवणाचो आनंद घेयात.';

  @override
  String get statusOrderPlaced => 'ऑर्डर जाली';

  @override
  String get statusPreparing => 'जेवण तयार जातां';

  @override
  String get statusOnTheWay => 'वाटेर आसा';

  @override
  String get statusDelivered => 'डिलिव्हर जाली';

  @override
  String get keepBrowsing => 'पळयत रावात';

  @override
  String get backToHome => 'होमाचेर परत';

  @override
  String get prototypeNotice =>
      'नमुनो स्टोरफ्रंट — खरीं दुकानां कॅटलॉग API वांगडा येतलीं.';

  @override
  String get prototypeCheckoutNotice =>
      'हो एक प्रोटोटायप. खंयचेंच पैशे घेनात आनी खरी ऑर्डरय जायना.';

  @override
  String get prototypeTrackingNotice =>
      'प्रोटोटायपा खातीर ट्रॅकिंग कृत्रिम आसा.';

  @override
  String get locationTitle => 'डिलिव्हरी खंय करची?';

  @override
  String get locationSubtitle =>
      'Nexmile फकत 1 किमी भितरल्या दुकानांतल्यान डिलिव्हरी करता, देखून तुमचें नेमकें सुवात जाय.';

  @override
  String get locationReasonRadiusTitle => '1 किमी भितरलीं दुकानां';

  @override
  String get locationReasonRadiusBody =>
      'खंयच्यान जेवण गरम पावतलें, तीच रांदपाघरां आमी दाखयतांव.';

  @override
  String get locationReasonAccuracyTitle => 'बरोबर दारा मेरेन';

  @override
  String get locationReasonAccuracyBody =>
      'अचूक पिन आसल्यार डिलिव्हरी पार्टनर फोन करिनासतना तुमकां सोदता.';

  @override
  String get locationReasonPrivacyTitle => 'फकत ॲप वापरतना';

  @override
  String get locationReasonPrivacyBody =>
      'आमी फाटभुंयेर तुमचो माग काडिनांव, आनी नामो तुमी स्वता लेगीत बरोवंक शकतात.';

  @override
  String get allowLocation => 'सुवातेची परवानगी दियात';

  @override
  String get enterAddressManually => 'हांव नामो स्वता बरयतलों';

  @override
  String get locationDenied =>
      'सुवातेची परवानगी मेळूंक ना. तुमी पिन स्वता दवरूंक शकतात.';

  @override
  String get locationDeniedForever =>
      'Nexmile खातीर सुवात बंद आसा. सेटिंग्जांत सुरू करात वा पिन स्वता दवरात.';

  @override
  String get locationServiceOff => 'ह्या उपकरणाचेर सुवात बंद आसा.';

  @override
  String get locationUnavailable =>
      'सुवात मेळूंक ना. उपकार करून पिन स्वता दवरात.';

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
  String get pinLocationTitle => 'तुमचो डिलिव्हरी पिन दवरात';

  @override
  String get deliveryRadiusHint =>
      'वर्तूळ Nexmile डिलिव्हरी करता ती 1 किमी दाखयता.';

  @override
  String get useMyLocation => 'म्हजी सुवात वापरात';

  @override
  String get deliveringHere => 'हांगा डिलिव्हरी';

  @override
  String get dragToAdjust => 'पिन बदलुंक नकासो ओडात';

  @override
  String get confirmLocation => 'सुवात निश्चीत करात';

  @override
  String get addressDetailsTitle => 'नाम्याचो तपशील';

  @override
  String get addressDetailsSubtitle =>
      'बरोबर दारा मेरेन पावपाक घर क्रमांक आनी खूण जोडात.';

  @override
  String get pinnedLocation => 'वेंचिल्ली सुवात';

  @override
  String get changePin => 'बदलात';

  @override
  String get saveAddressAs => 'हो नामो अशें जतनाय करात';

  @override
  String get labelHome => 'घर';

  @override
  String get labelWork => 'कार्यालय';

  @override
  String get labelOther => 'हेर';

  @override
  String get addressLine1Label => 'घर, फ्लॅट वा इमारत';

  @override
  String get addressLine1Hint => '12A, ग्रीन रेसिडेन्सी';

  @override
  String get addressLine2Label => 'रस्तो वा वाठार';

  @override
  String get addressLine2Hint => 'दुसरी ॲव्हेन्यू, अन्ना नगर';

  @override
  String get landmarkLabel => 'खूण';

  @override
  String get landmarkHint => 'बस स्टॉपा मुखार';

  @override
  String get cityLabel => 'शार';

  @override
  String get stateLabel => 'राज्य';

  @override
  String get pincodeLabel => 'पिन कोड';

  @override
  String get invalidPincode => 'योग्य 6 आंकड्यांचो पिन कोड घालात';

  @override
  String get contactNameLabel => 'संपर्क नांव';

  @override
  String get contactPhoneLabel => 'संपर्क क्रमांक';

  @override
  String get invalidMobileNumber => 'योग्य 10 आंकड्यांचो मोबायल क्रमांक घालात';

  @override
  String get makeDefaultAddress => 'डिफॉल्ट रुपान हांगाच डिलिव्हरी';

  @override
  String get saveAddress => 'नामो जतनाय करात';

  @override
  String get addressSaved => 'नामो जतनाय केलो';

  @override
  String get addressBookTitle => 'डिलिव्हरी नामे';

  @override
  String get manageAddresses => 'जतनाय केल्ले नामे सांबाळात';

  @override
  String get noAddressesTitle => 'अजून नामो ना';

  @override
  String get noAddressesSubtitle =>
      'तुमकां डिलिव्हरी करपी दुकानां दाखोवपाक एक नामो जोडात.';

  @override
  String get addAddress => 'नामो जोडात';

  @override
  String get setAsDefault => 'डिफॉल्ट करात';

  @override
  String get editLabel => 'संपादन करात';

  @override
  String get addressUpdated => 'नामो अद्यतन जालो';

  @override
  String get deleteLabel => 'काडात';

  @override
  String get deleteAddressTitle => 'हो नामो काडचो?';

  @override
  String get deleteAddressMessage => 'तुमी ताका उपरांत परत जोडूंक शकतात.';

  @override
  String get rescueDealsTitle => 'फूड रेस्क्यू';

  @override
  String get notTakingOrders => 'ऑर्डर घेवपाक ना';

  @override
  String get closedRightNow => 'आतां बंद आसा';

  @override
  String minimumOrder(String amount) {
    return 'कमीत कमी $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count उरल्यात';
  }

  @override
  String get soldOut => 'सोंपले';

  @override
  String get menuEmptyTitle => 'अजून कसलेच पदार्थ ना';

  @override
  String get menuEmptySubtitle => 'ह्या रेस्टॉरंटान आपलो मेनू जोडूंक ना.';

  @override
  String get moreDishesTitle => 'आनीक पदार्थ';

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
  String get customisable => 'आवडी प्रमाणें';

  @override
  String get requiredLabel => 'गरजेचें';

  @override
  String get optionalLabel => 'ऐच्छीक';

  @override
  String get chooseOne => 'एक निवडात';

  @override
  String chooseUpTo(int count) {
    return 'चड आनी चड $count निवडात';
  }

  @override
  String chooseAtLeast(int count) {
    return 'कमीत कमी $count निवडात';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min ते $max निवडात';
  }

  @override
  String get specialInstructions => 'खाशेल्यो सुचोवण्यो';

  @override
  String get specialInstructionsHint => 'उणें तिखट, कांदो नाका…';

  @override
  String addForAmount(String amount) {
    return 'जोडात · $amount';
  }

  @override
  String get deliveryLabel => 'डिलिव्हरी';

  @override
  String get pickupLabel => 'स्वता व्हरप';

  @override
  String get packagingLabel => 'पॅकिंग';

  @override
  String get discountLabel => 'सूट';

  @override
  String get billDetailsTitle => 'बिलाची म्हायती';

  @override
  String get clearCart => 'कार्ट रिकामी करात';

  @override
  String get clearCartTitle => 'ही कार्ट रिकामी करूं?';

  @override
  String get clearCartMessage => 'हातूंतलें सगळें काडून उडयतले.';

  @override
  String unavailableItemsNotice(String items) {
    return 'आतां मेळना: $items';
  }

  @override
  String get removeUnavailable => 'तीं काडात';

  @override
  String minimumNotMet(String amount) {
    return 'कमीत कमी ऑर्डर $amount आसा';
  }

  @override
  String get checkoutTitle => 'चेकआउट';

  @override
  String get deliveryAddressLabel => 'डिलिव्हरीचो नामो';

  @override
  String get noAddressSelected => 'खंयचोच नामो निवडूंक ना';

  @override
  String get paymentMethodLabel => 'पावती';

  @override
  String get payOnDelivery => 'डिलिव्हरीचेर रोकड';

  @override
  String get noteToRestaurant => 'रेस्टॉरंटाखातीर नोंद';

  @override
  String get noteToRestaurantHint => 'घांट दोन फावटीं वाजयात…';

  @override
  String get activeOrdersTitle => 'चालू आशिल्ल्यो ऑर्डरी';

  @override
  String get pastOrdersTitle => 'पयल्यो ऑर्डरी';

  @override
  String get orderItemsTitle => 'पदार्थ';

  @override
  String get orderProgressTitle => 'प्रगती';

  @override
  String get arrivingIn => 'पावपाक';

  @override
  String get pickupCodeLabel => 'पिकअप कोड';

  @override
  String get cancellationReasonLabel => 'रद्द जावपाचें कारण';

  @override
  String get riderLabel => 'डिलिव्हरी पार्टनर';

  @override
  String get callRider => 'कॉल करात';

  @override
  String get trackRider => 'रायडर ट्रॅक करात';

  @override
  String get riderLocationSoon =>
      'ऑर्डर घेतल्या उपरांत रायडराचें थळ हांगा दिसतलें.';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'रायडरावर केंद्रित करात';

  @override
  String get viewInvoice => 'कर पावती';

  @override
  String get cancelOrder => 'ऑर्डर रद्द करात';

  @override
  String get cancelOrderTitle => 'ही ऑर्डर रद्द करूं?';

  @override
  String get cancelOrderMessage =>
      'रेस्टॉरंटान मान्य करचे आदींच रद्द करूं येता.';

  @override
  String get cancelReasonLabel => 'कारण';

  @override
  String get cancelReasonFallback => 'गिरायकान रद्द केली';

  @override
  String get orderCancelled => 'ऑर्डर रद्द जाली';

  @override
  String get currentLocationLabel => 'सद्याची सुवात';

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
  String get editProfileTitle => 'प्रोफायल बदलात';

  @override
  String get editProfileSubtitle =>
      'रेस्टॉरंट आनी डिलिव्हरी पार्टनराक तुमचें नांवच दिसता.';

  @override
  String get saveChanges => 'बदल जतनाय करात';

  @override
  String get profileUpdated => 'प्रोफायल अद्ययावत जाली';

  @override
  String get deleteAccount => 'खातें काडात';

  @override
  String get deleteAccountTitle => 'तुमचें खातें काडूं?';

  @override
  String get deleteAccountMessage =>
      'सगळ्या उपकरणांतल्यान सायन आवट जातले. पोरन्यो ऑर्डरी आनी बिलां कर नोंदींखातीर दवरतात.';

  @override
  String get accountDeleted => 'तुमचें खातें काडलें';

  @override
  String get devicesTitle => 'सायन-इन उपकरणां';

  @override
  String get devicesSubtitle => 'तुमी खंय सायन इन आसात';

  @override
  String get devicesEmptyTitle => 'हेर खंयचेंच उपकरण ना';

  @override
  String get devicesEmptySubtitle => 'तुमी फकत ह्याच उपकरणाचेर सायन इन आसात.';

  @override
  String get signOutDevice => 'सायन आवट';

  @override
  String get signOutDeviceTitle => 'हें उपकरण सायन आवट करूं?';

  @override
  String get signOutDeviceMessage =>
      'तुमी हेंच उपकरण वापरता जाल्यार परतून सायन इन करचें पडटलें.';

  @override
  String get deviceSignedOut => 'उपकरण सायन आवट जालें';

  @override
  String get signOutEverywhere => 'सगळेकडेन सायन आवट';

  @override
  String get signOutEverywhereTitle => 'सगळेकडेन सायन आवट करूं?';

  @override
  String get signOutEverywhereMessage =>
      'ह्या उपकरणासयत दर एक उपकरण सायन आवट जातलें.';

  @override
  String get unknownDevice => 'अज्ञात उपकरण';

  @override
  String get activeNow => 'आतां सक्रिय';

  @override
  String minutesAgo(int count) {
    return '$count मिनटां आदीं';
  }

  @override
  String hoursAgo(int count) {
    return '$count वरां आदीं';
  }

  @override
  String daysAgo(int count) {
    return '$count दीस आदीं';
  }

  @override
  String get filtersAndSorting => 'फिल्टर आनी क्रम';

  @override
  String get clearAll => 'सगळें काडात';

  @override
  String get showResults => 'निकाल दाखयात';

  @override
  String get closeLabel => 'बंद करात';

  @override
  String get sortByTitle => 'क्रम';

  @override
  String get sortRelevance => 'सुसंगतताय';

  @override
  String get sortRating => 'रेटिंग';

  @override
  String get sortDeliveryTime => 'डिलिव्हरी वेळ';

  @override
  String get sortCostLowHigh => 'दर: उण्यासावन चड';

  @override
  String get sortCostHighLow => 'दर: चडासावन उणें';

  @override
  String get timeSection => 'वेळ';

  @override
  String get nearAndFast => 'लागीं आनी बेगीन';

  @override
  String get openNow => 'आतां उगडें';

  @override
  String get ratingSection => 'रेस्टॉरंट रेटिंग';

  @override
  String ratedAbove(String rating) {
    return '$rating+ रेटिंग';
  }

  @override
  String get offersSection => 'ऑफर';

  @override
  String get hasOffersLabel => 'ऑफर आशिल्ले';

  @override
  String get dishPriceSection => 'पदार्थाचो दर';

  @override
  String costUnder(String amount) {
    return '$amount परस उणें';
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
  String get moreSection => 'चड';

  @override
  String get noPackagingCharges => 'पॅकिंग शुल्क ना';

  @override
  String get allRestaurantsTitle => 'सगळीं रेस्टॉरंटां';

  @override
  String get whatsOnYourMind => 'कितें खावंक मन आसा?';

  @override
  String get listeningNow => 'आयकतां…';

  @override
  String get speakNowHint => 'खंयचोय पदार्थ वा रेस्टॉरंट सांगात';

  @override
  String get voiceUnavailable => 'व्हॉयस सोद उपलब्ध ना';

  @override
  String get voiceUnavailableBody => 'तुमी टायप करून लेगीत सोदूं येता.';

  @override
  String get microphoneDenied => 'मायक्रोफोन परवानगी बंद';

  @override
  String get voiceSearchLabel => 'आवाजान सोदात';

  @override
  String get ratingsAndReviews => 'रेटिंग आनी समीक्षा';

  @override
  String get reviewsWithTextOnly => 'समीक्षा आशिल्ले';

  @override
  String get noReviewsTitle => 'अजून एकूय रेटिंग ना';

  @override
  String get noReviewsSubtitle =>
      'ऑर्डर केल्या उपरांत पयलें रेटिंग तुमीच दियात.';

  @override
  String get rateOrderTitle => 'तुमच्या ऑर्डराक रेटिंग दियात';

  @override
  String get rateDishesTitle => 'जेवणांक रेटिंग दियात';

  @override
  String get reviewHint => 'आनीक कितें सांगपाचें आसा? (ऐच्छिक)';

  @override
  String get submitRating => 'रेटिंग धाडात';

  @override
  String get reviewThanks => 'देव बरें करूं — तुमचें रेटिंग मेळ्ळें.';

  @override
  String get rateThisOrder => 'ह्या ऑर्डराक रेटिंग दियात';

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
