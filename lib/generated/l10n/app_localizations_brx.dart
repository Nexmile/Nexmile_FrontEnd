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
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

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
  String get riderLocationStale => 'Updating rider\'s location…';

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
