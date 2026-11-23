// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'ఈ ఫీల్డ్ తప్పనిసరి';

  @override
  String get tagline => 'వేగవంతమైన డెలివరీ. తాజా చిరునవ్వులు.';

  @override
  String get chooseLanguageTitle => 'మీ భాషను ఎంచుకోండి';

  @override
  String get chooseLanguageSubtitle =>
      'మీకు సౌకర్యంగా ఉండే భాషను ఎంచుకోండి. దీన్ని ఎప్పుడైనా సెట్టింగ్‌లలో మార్చుకోవచ్చు.';

  @override
  String get searchLanguageHint => 'భాషను వెతకండి';

  @override
  String get noLanguageFound => 'ఏ భాష కనబడలేదు';

  @override
  String languagesAvailable(int count) {
    return '$count భాషలు అందుబాటులో ఉన్నాయి';
  }

  @override
  String get continueLabel => 'కొనసాగించు';

  @override
  String get selectedLabel => 'ఎంపిక చేయబడింది';

  @override
  String get defaultLabel => 'డిఫాల్ట్';

  @override
  String get homeTitle => 'Nexmile కు స్వాగతం';

  @override
  String get homeSubtitle =>
      'తాజా కిరాణా సరుకులు, వేడి ఆహారం మరియు నిత్యావసరాలు మీ దగ్గరి దుకాణాల నుండి.';

  @override
  String get changeLanguage => 'భాషను మార్చండి';

  @override
  String get languageUpdated => 'భాష మార్చబడింది';

  @override
  String get appLanguageLabel => 'యాప్ భాష';

  @override
  String greetingNamed(String name) {
    return 'నమస్కారం, $name';
  }

  @override
  String get loginTitle => 'Nexmile లో సైన్ ఇన్ చేయండి';

  @override
  String get loginSubtitle =>
      'మీ ఇమెయిల్ లేదా మొబైల్ నంబర్‌ను నమోదు చేయండి, మేము ధృవీకరణ కోడ్ పంపుతాము.';

  @override
  String get emailOrPhoneLabel => 'ఇమెయిల్ లేదా మొబైల్ నంబర్';

  @override
  String get emailOrPhoneHint => 'name@example.com లేదా 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'సరైన ఇమెయిల్ చిరునామా లేదా 10 అంకెల మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'కోడ్ పంపు';

  @override
  String get agreeToTermsOnContinue =>
      'కొనసాగించడం ద్వారా మీరు మా సేవా నిబంధనలు మరియు గోప్యతా విధానానికి అంగీకరిస్తున్నారు.';

  @override
  String get otpTitle => 'ఇది మీరేనని ధృవీకరించండి';

  @override
  String otpSubtitle(String target) {
    return '$target కు పంపిన 6 అంకెల కోడ్‌ను నమోదు చేయండి';
  }

  @override
  String get verifyCode => 'ధృవీకరించు';

  @override
  String get resendCode => 'కోడ్‌ను మళ్ళీ పంపు';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds సెకన్లలో మళ్ళీ పంపు';
  }

  @override
  String get codeResent => 'కొత్త కోడ్ పంపబడింది';

  @override
  String get incorrectCode =>
      'ఈ కోడ్ తప్పు లేదా గడువు ముగిసింది. కొత్తది కోరండి.';

  @override
  String get enterFullCode => 'మొత్తం 6 అంకెలు నమోదు చేయండి';

  @override
  String get accountSuspended =>
      'ఈ ఖాతా నిలిపివేయబడింది. దయచేసి సపోర్ట్‌ను సంప్రదించండి.';

  @override
  String get tooManyAttempts =>
      'చాలా సార్లు ప్రయత్నించారు. కొంతసేపటి తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get sessionExpired =>
      'మీ సెషన్ గడువు ముగిసింది. దయచేసి మళ్ళీ సైన్ ఇన్ చేయండి.';

  @override
  String get networkError =>
      'ఇంటర్నెట్ కనెక్షన్ లేదు. మీ కనెక్షన్‌ను తనిఖీ చేసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get developmentCode => 'డెవలప్‌మెంట్ కోడ్';

  @override
  String get signOut => 'సైన్ అవుట్';

  @override
  String get signedOut => 'మీరు సైన్ అవుట్ అయ్యారు';

  @override
  String get somethingWentWrong => 'ఏదో తప్పు జరిగింది. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get profileTitle => 'ప్రొఫైల్';

  @override
  String get viewProfile => 'ప్రొఫైల్ చూడండి';

  @override
  String get nameLabel => 'పేరు';

  @override
  String get emailLabel => 'ఇమెయిల్';

  @override
  String get mobileLabel => 'మొబైల్ నంబర్';

  @override
  String get accountStatusLabel => 'ఖాతా స్థితి';

  @override
  String get statusActive => 'క్రియాశీలం';

  @override
  String get statusPending => 'పెండింగ్';

  @override
  String get statusSuspended => 'నిలిపివేయబడింది';

  @override
  String get verifiedLabel => 'ధృవీకరించబడింది';

  @override
  String get notProvided => 'జోడించలేదు';

  @override
  String get retry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get navHome => 'హోమ్';

  @override
  String get navSearch => 'వెతకండి';

  @override
  String get navOrders => 'ఆర్డర్లు';

  @override
  String get cancelLabel => 'రద్దు';

  @override
  String get deliverTo => 'డెలివరీ చిరునామా';

  @override
  String get searchDishesHint => 'వంటకాలు లేదా రెస్టారెంట్లను వెతకండి';

  @override
  String get searchTitle => 'వెతకండి';

  @override
  String get searchNoResultsTitle => 'ఏదీ దొరకలేదు';

  @override
  String get searchNoResultsSubtitle =>
      'వేరే వంటకం, వంటకాల శైలి లేదా రెస్టారెంట్ పేరు ప్రయత్నించండి.';

  @override
  String get cravingTitle => 'ఏం తినాలని ఉంది?';

  @override
  String get offersTitle => 'మీ కోసం ఆఫర్లు';

  @override
  String get restaurantsNearby => 'మీ దగ్గరి రెస్టారెంట్లు';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రెస్టారెంట్లు',
      one: '1 రెస్టారెంట్',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'ఇక్కడ ఇంకా ఏమీ లేదు';

  @override
  String get noRestaurantsSubtitle =>
      'వేరే విభాగం చూడండి లేదా ఫిల్టర్ తీసేయండి.';

  @override
  String minutesAway(int minutes) {
    return '$minutes నిమి';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance కి.మీ';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రేటింగ్‌లు',
      one: '1 రేటింగ్',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'ఇద్దరికి ₹$amount';
  }

  @override
  String get freeDelivery => 'ఉచిత డెలివరీ';

  @override
  String percentOff(int percent) {
    return '$percent% తగ్గింపు';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'మీ ఆర్డర్‌పై $percent% తగ్గింపు';
  }

  @override
  String get vegOnly => 'శాకాహారం మాత్రమే';

  @override
  String get bestseller => 'అత్యధిక అమ్మకం';

  @override
  String get addLabel => 'జోడించు';

  @override
  String get noVegDishesTitle => 'ఇక్కడ శాకాహార వంటకాలు లేవు';

  @override
  String get noVegDishesSubtitle =>
      'పూర్తి మెనూ చూడటానికి శాకాహార ఫిల్టర్ ఆఫ్ చేయండి.';

  @override
  String get replaceCartTitle => 'కొత్త కార్ట్ మొదలుపెట్టాలా?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'మీ కార్ట్‌లో $restaurant నుండి వస్తువులు ఉన్నాయి. దీన్ని జోడిస్తే అవి తొలగిపోతాయి.';
  }

  @override
  String get replaceCartConfirm => 'తొలగించి జోడించు';

  @override
  String get cartTitle => 'మీ కార్ట్';

  @override
  String get cartEmptyTitle => 'మీ కార్ట్ ఖాళీగా ఉంది';

  @override
  String get cartEmptySubtitle =>
      'మొదలుపెట్టడానికి ఏదైనా రెస్టారెంట్ నుండి వంటకాలు జోడించండి.';

  @override
  String get browseRestaurants => 'రెస్టారెంట్లు చూడండి';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వస్తువులు',
      one: '1 వస్తువు',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'కార్ట్ చూడండి';

  @override
  String get itemTotal => 'వస్తువుల మొత్తం';

  @override
  String get deliveryFeeLabel => 'డెలివరీ ఛార్జీ';

  @override
  String get taxesAndCharges => 'పన్నులు మరియు ఛార్జీలు';

  @override
  String get freeLabel => 'ఉచితం';

  @override
  String get toPay => 'చెల్లించవలసినది';

  @override
  String placeOrderFor(String amount) {
    return 'ఆర్డర్ చేయండి · $amount';
  }

  @override
  String get ordersTitle => 'మీ ఆర్డర్లు';

  @override
  String get ordersEmptyTitle => 'ఇంకా ఆర్డర్లు లేవు';

  @override
  String get ordersEmptySubtitle => 'మీ గత ఆర్డర్లు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get reorder => 'మళ్ళీ ఆర్డర్';

  @override
  String orderTitle(String id) {
    return 'ఆర్డర్ $id';
  }

  @override
  String get orderPlacedTitle => 'ఆర్డర్ చేయబడింది';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'సుమారు $minutes నిమిషాల్లో వస్తుంది.';
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
  String get orderDeliveredTitle => 'డెలివరీ అయ్యింది';

  @override
  String get orderDeliveredSubtitle => 'భోజనం ఆస్వాదించండి.';

  @override
  String get statusOrderPlaced => 'ఆర్డర్ చేయబడింది';

  @override
  String get statusPreparing => 'ఆహారం తయారవుతోంది';

  @override
  String get statusOnTheWay => 'దారిలో ఉంది';

  @override
  String get statusDelivered => 'డెలివరీ అయ్యింది';

  @override
  String get keepBrowsing => 'చూస్తూ ఉండండి';

  @override
  String get backToHome => 'హోమ్‌కు తిరిగి';

  @override
  String get prototypeNotice =>
      'నమూనా స్టోర్‌ఫ్రంట్ — నిజమైన దుకాణాలు కేటలాగ్ APIతో వస్తాయి.';

  @override
  String get prototypeCheckoutNotice =>
      'ఇది ఒక ప్రోటోటైప్. ఎలాంటి చెల్లింపు తీసుకోబడదు, నిజమైన ఆర్డర్ కూడా ఉండదు.';

  @override
  String get prototypeTrackingNotice => 'ప్రోటోటైప్ కోసం ట్రాకింగ్ కృత్రిమం.';

  @override
  String get locationTitle => 'ఎక్కడ డెలివరీ చేయాలి?';

  @override
  String get locationSubtitle =>
      'Nexmile 1 కి.మీ లోపు ఉన్న దుకాణాల నుండి మాత్రమే డెలివరీ చేస్తుంది, అందుకే మీ ఖచ్చితమైన ప్రదేశం కావాలి.';

  @override
  String get locationReasonRadiusTitle => '1 కి.మీ లోపు దుకాణాలు';

  @override
  String get locationReasonRadiusBody =>
      'వేడిగా చేరగలిగే వంటశాలలను మాత్రమే చూపిస్తాము.';

  @override
  String get locationReasonAccuracyTitle => 'సరైన గుమ్మం వద్దకే';

  @override
  String get locationReasonAccuracyBody =>
      'ఖచ్చితమైన పిన్ ఉంటే డెలివరీ భాగస్వామి ఫోన్ చేయకుండానే మిమ్మల్ని కనుగొంటారు.';

  @override
  String get locationReasonPrivacyTitle => 'యాప్ వాడుతున్నప్పుడు మాత్రమే';

  @override
  String get locationReasonPrivacyBody =>
      'నేపథ్యంలో మిమ్మల్ని ట్రాక్ చేయము, చిరునామాను మీరే టైప్ చేయవచ్చు.';

  @override
  String get allowLocation => 'లొకేషన్ అనుమతించండి';

  @override
  String get enterAddressManually => 'నేనే చిరునామా రాస్తాను';

  @override
  String get locationDenied =>
      'లొకేషన్ అనుమతి నిరాకరించబడింది. మీరే పిన్ పెట్టుకోవచ్చు.';

  @override
  String get locationDeniedForever =>
      'Nexmile కు లొకేషన్ నిరోధించబడింది. సెట్టింగ్‌లలో ఆన్ చేయండి లేదా పిన్ మీరే పెట్టండి.';

  @override
  String get locationServiceOff => 'ఈ పరికరంలో లొకేషన్ ఆఫ్‌లో ఉంది.';

  @override
  String get locationUnavailable =>
      'లొకేషన్ దొరకలేదు. దయచేసి పిన్ మీరే పెట్టండి.';

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
  String get openSettings => 'సెట్టింగ్‌లు';

  @override
  String get pinLocationTitle => 'మీ డెలివరీ పిన్ పెట్టండి';

  @override
  String get deliveryRadiusHint =>
      'Nexmile డెలివరీ చేసే 1 కి.మీ పరిధిని వృత్తం చూపిస్తుంది.';

  @override
  String get useMyLocation => 'నా లొకేషన్ వాడు';

  @override
  String get deliveringHere => 'ఇక్కడ డెలివరీ';

  @override
  String get dragToAdjust => 'పిన్ సర్దుబాటు చేయడానికి మ్యాప్ లాగండి';

  @override
  String get confirmLocation => 'లొకేషన్ నిర్ధారించు';

  @override
  String get addressDetailsTitle => 'చిరునామా వివరాలు';

  @override
  String get addressDetailsSubtitle =>
      'సరైన తలుపు వద్దకు చేరడానికి ఇంటి నంబర్ మరియు ల్యాండ్‌మార్క్ ఇవ్వండి.';

  @override
  String get pinnedLocation => 'గుర్తించిన ప్రదేశం';

  @override
  String get changePin => 'మార్చు';

  @override
  String get saveAddressAs => 'ఈ చిరునామాను ఇలా సేవ్ చేయి';

  @override
  String get labelHome => 'ఇల్లు';

  @override
  String get labelWork => 'ఆఫీసు';

  @override
  String get labelOther => 'ఇతర';

  @override
  String get addressLine1Label => 'ఇల్లు, ఫ్లాట్ లేదా భవనం';

  @override
  String get addressLine1Hint => '12A, గ్రీన్ రెసిడెన్సీ';

  @override
  String get addressLine2Label => 'వీధి లేదా ప్రాంతం';

  @override
  String get addressLine2Hint => '2వ అవెన్యూ, అన్నా నగర్';

  @override
  String get landmarkLabel => 'ల్యాండ్‌మార్క్';

  @override
  String get landmarkHint => 'బస్ స్టాప్ ఎదురుగా';

  @override
  String get cityLabel => 'నగరం';

  @override
  String get stateLabel => 'రాష్ట్రం';

  @override
  String get pincodeLabel => 'పిన్ కోడ్';

  @override
  String get invalidPincode => 'సరైన 6 అంకెల పిన్ కోడ్ నమోదు చేయండి';

  @override
  String get contactNameLabel => 'సంప్రదింపు పేరు';

  @override
  String get contactPhoneLabel => 'సంప్రదింపు నంబర్';

  @override
  String get invalidMobileNumber => 'సరైన 10 అంకెల మొబైల్ నంబర్ నమోదు చేయండి';

  @override
  String get makeDefaultAddress => 'డిఫాల్ట్‌గా ఇక్కడే డెలివరీ';

  @override
  String get saveAddress => 'చిరునామా సేవ్ చేయి';

  @override
  String get addressSaved => 'చిరునామా సేవ్ చేయబడింది';

  @override
  String get addressBookTitle => 'డెలివరీ చిరునామాలు';

  @override
  String get manageAddresses => 'సేవ్ చేసిన చిరునామాలను నిర్వహించండి';

  @override
  String get noAddressesTitle => 'ఇంకా చిరునామాలు లేవు';

  @override
  String get noAddressesSubtitle =>
      'మీకు డెలివరీ చేసే దుకాణాలు చూపడానికి ఒక చిరునామా జోడించండి.';

  @override
  String get addAddress => 'చిరునామా జోడించు';

  @override
  String get setAsDefault => 'డిఫాల్ట్‌గా చేయి';

  @override
  String get editLabel => 'సవరించు';

  @override
  String get addressUpdated => 'చిరునామా నవీకరించబడింది';

  @override
  String get deleteLabel => 'తొలగించు';

  @override
  String get deleteAddressTitle => 'ఈ చిరునామాను తొలగించాలా?';

  @override
  String get deleteAddressMessage => 'మీరు తర్వాత మళ్ళీ జోడించవచ్చు.';

  @override
  String get rescueDealsTitle => 'ఫుడ్ రెస్క్యూ';

  @override
  String get notTakingOrders => 'ఆర్డర్లు తీసుకోవడం లేదు';

  @override
  String get closedRightNow => 'ఇప్పుడు మూసివేయబడింది';

  @override
  String minimumOrder(String amount) {
    return 'కనీసం $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count మిగిలాయి';
  }

  @override
  String get soldOut => 'అయిపోయింది';

  @override
  String get menuEmptyTitle => 'ఇంకా వంటకాలు లేవు';

  @override
  String get menuEmptySubtitle => 'ఈ రెస్టారెంట్ తన మెనూను చేర్చలేదు.';

  @override
  String get moreDishesTitle => 'మరిన్ని వంటకాలు';

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
  String get customisable => 'మీ ఇష్టం ప్రకారం';

  @override
  String get requiredLabel => 'తప్పనిసరి';

  @override
  String get optionalLabel => 'ఐచ్ఛికం';

  @override
  String get chooseOne => 'ఒకటి ఎంచుకోండి';

  @override
  String chooseUpTo(int count) {
    return 'గరిష్ఠంగా $count ఎంచుకోండి';
  }

  @override
  String chooseAtLeast(int count) {
    return 'కనీసం $count ఎంచుకోండి';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min నుండి $max వరకు ఎంచుకోండి';
  }

  @override
  String get specialInstructions => 'ప్రత్యేక సూచనలు';

  @override
  String get specialInstructionsHint => 'తక్కువ కారం, ఉల్లిపాయ వద్దు…';

  @override
  String addForAmount(String amount) {
    return 'జోడించు · $amount';
  }

  @override
  String get deliveryLabel => 'డెలివరీ';

  @override
  String get pickupLabel => 'స్వయంగా తీసుకోవడం';

  @override
  String get packagingLabel => 'ప్యాకింగ్';

  @override
  String get discountLabel => 'తగ్గింపు';

  @override
  String get billDetailsTitle => 'బిల్లు వివరాలు';

  @override
  String get clearCart => 'కార్ట్ ఖాళీ చేయి';

  @override
  String get clearCartTitle => 'ఈ కార్ట్ ఖాళీ చేయాలా?';

  @override
  String get clearCartMessage => 'ఇందులోని అన్నీ తొలగించబడతాయి.';

  @override
  String unavailableItemsNotice(String items) {
    return 'ఇప్పుడు అందుబాటులో లేవు: $items';
  }

  @override
  String get removeUnavailable => 'వాటిని తొలగించు';

  @override
  String minimumNotMet(String amount) {
    return 'కనీస ఆర్డర్ $amount';
  }

  @override
  String get checkoutTitle => 'చెక్అవుట్';

  @override
  String get deliveryAddressLabel => 'డెలివరీ చిరునామా';

  @override
  String get noAddressSelected => 'చిరునామా ఎంచుకోలేదు';

  @override
  String get paymentMethodLabel => 'చెల్లింపు';

  @override
  String get payOnDelivery => 'డెలివరీ సమయంలో నగదు';

  @override
  String get noteToRestaurant => 'రెస్టారెంట్‌కు గమనిక';

  @override
  String get noteToRestaurantHint => 'గంట రెండుసార్లు కొట్టండి…';

  @override
  String get activeOrdersTitle => 'జరుగుతున్న ఆర్డర్లు';

  @override
  String get pastOrdersTitle => 'పాత ఆర్డర్లు';

  @override
  String get orderItemsTitle => 'వంటకాలు';

  @override
  String get orderProgressTitle => 'పురోగతి';

  @override
  String get arrivingIn => 'చేరుకునే సమయం';

  @override
  String get pickupCodeLabel => 'పికప్ కోడ్';

  @override
  String get cancellationReasonLabel => 'రద్దు చేసిన కారణం';

  @override
  String get riderLabel => 'డెలివరీ భాగస్వామి';

  @override
  String get callRider => 'కాల్ చేయి';

  @override
  String get trackRider => 'రైడర్‌ను ట్రాక్ చేయండి';

  @override
  String get riderLocationSoon =>
      'మీ ఆర్డర్‌ను తీసుకున్న తర్వాత రైడర్ స్థానం ఇక్కడ కనిపిస్తుంది.';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'రైడర్‌పై కేంద్రీకరించు';

  @override
  String get viewInvoice => 'పన్ను ఇన్‌వాయిస్';

  @override
  String get cancelOrder => 'ఆర్డర్ రద్దు చేయి';

  @override
  String get cancelOrderTitle => 'ఈ ఆర్డర్ రద్దు చేయాలా?';

  @override
  String get cancelOrderMessage =>
      'రెస్టారెంట్ అంగీకరించే ముందు మాత్రమే రద్దు చేయగలరు.';

  @override
  String get cancelReasonLabel => 'కారణం';

  @override
  String get cancelReasonFallback => 'కస్టమర్ రద్దు చేశారు';

  @override
  String get orderCancelled => 'ఆర్డర్ రద్దు అయింది';

  @override
  String get currentLocationLabel => 'ప్రస్తుత స్థానం';

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
  String get editProfileTitle => 'ప్రొఫైల్ మార్చు';

  @override
  String get editProfileSubtitle =>
      'రెస్టారెంట్‌కు, డెలివరీ భాగస్వామికి మీ పేరే కనిపిస్తుంది.';

  @override
  String get saveChanges => 'మార్పులను భద్రపరచు';

  @override
  String get profileUpdated => 'ప్రొఫైల్ నవీకరించబడింది';

  @override
  String get deleteAccount => 'ఖాతా తొలగించు';

  @override
  String get deleteAccountTitle => 'మీ ఖాతాను తొలగించాలా?';

  @override
  String get deleteAccountMessage =>
      'అన్ని పరికరాల నుండి సైన్ అవుట్ అవుతారు. పాత ఆర్డర్లు, బిల్లులు పన్ను రికార్డుల కోసం ఉంచబడతాయి.';

  @override
  String get accountDeleted => 'మీ ఖాతా తొలగించబడింది';

  @override
  String get devicesTitle => 'సైన్ ఇన్ చేసిన పరికరాలు';

  @override
  String get devicesSubtitle => 'మీరు ఎక్కడ సైన్ ఇన్ అయ్యారు';

  @override
  String get devicesEmptyTitle => 'ఇతర పరికరాలు లేవు';

  @override
  String get devicesEmptySubtitle =>
      'మీరు ఈ పరికరంలో మాత్రమే సైన్ ఇన్ అయ్యారు.';

  @override
  String get signOutDevice => 'సైన్ అవుట్';

  @override
  String get signOutDeviceTitle => 'ఈ పరికరం నుండి సైన్ అవుట్ చేయాలా?';

  @override
  String get signOutDeviceMessage =>
      'మీరు వాడుతున్నది ఇదే అయితే మళ్ళీ సైన్ ఇన్ చేయాల్సి ఉంటుంది.';

  @override
  String get deviceSignedOut => 'పరికరం సైన్ అవుట్ అయింది';

  @override
  String get signOutEverywhere => 'అన్ని చోట్ల నుండి సైన్ అవుట్';

  @override
  String get signOutEverywhereTitle => 'అన్ని చోట్ల నుండి సైన్ అవుట్ చేయాలా?';

  @override
  String get signOutEverywhereMessage =>
      'ఈ పరికరంతో సహా అన్ని పరికరాలు సైన్ అవుట్ అవుతాయి.';

  @override
  String get unknownDevice => 'తెలియని పరికరం';

  @override
  String get activeNow => 'ఇప్పుడు క్రియాశీలం';

  @override
  String minutesAgo(int count) {
    return '$count నిమిషాల క్రితం';
  }

  @override
  String hoursAgo(int count) {
    return '$count గంటల క్రితం';
  }

  @override
  String daysAgo(int count) {
    return '$count రోజుల క్రితం';
  }

  @override
  String get filtersAndSorting => 'ఫిల్టర్‌లు, క్రమం';

  @override
  String get clearAll => 'అన్నీ తీసివేయి';

  @override
  String get showResults => 'ఫలితాలు చూపు';

  @override
  String get closeLabel => 'మూసివేయి';

  @override
  String get sortByTitle => 'క్రమబద్ధీకరణ';

  @override
  String get sortRelevance => 'సంబంధితం';

  @override
  String get sortRating => 'రేటింగ్';

  @override
  String get sortDeliveryTime => 'డెలివరీ సమయం';

  @override
  String get sortCostLowHigh => 'ధర: తక్కువ నుండి ఎక్కువ';

  @override
  String get sortCostHighLow => 'ధర: ఎక్కువ నుండి తక్కువ';

  @override
  String get timeSection => 'సమయం';

  @override
  String get nearAndFast => 'దగ్గర & వేగం';

  @override
  String get openNow => 'ఇప్పుడు తెరిచి ఉంది';

  @override
  String get ratingSection => 'రెస్టారెంట్ రేటింగ్';

  @override
  String ratedAbove(String rating) {
    return '$rating+ రేటింగ్';
  }

  @override
  String get offersSection => 'ఆఫర్‌లు';

  @override
  String get hasOffersLabel => 'ఆఫర్‌లు ఉన్నవి';

  @override
  String get dishPriceSection => 'వంటకం ధర';

  @override
  String costUnder(String amount) {
    return '$amount కంటే తక్కువ';
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
  String get moreSection => 'మరిన్ని';

  @override
  String get noPackagingCharges => 'ప్యాకింగ్ రుసుము లేదు';

  @override
  String get allRestaurantsTitle => 'అన్ని రెస్టారెంట్లు';

  @override
  String get whatsOnYourMind => 'ఏం తినాలని ఉంది?';

  @override
  String get listeningNow => 'వింటున్నాం…';

  @override
  String get speakNowHint => 'వంటకం లేదా రెస్టారెంట్ చెప్పండి';

  @override
  String get voiceUnavailable => 'వాయిస్ సెర్చ్ అందుబాటులో లేదు';

  @override
  String get voiceUnavailableBody => 'మీరు టైప్ చేసి కూడా వెతకవచ్చు.';

  @override
  String get microphoneDenied => 'మైక్రోఫోన్ అనుమతి లేదు';

  @override
  String get voiceSearchLabel => 'వాయిస్‌తో వెతకండి';

  @override
  String get ratingsAndReviews => 'రేటింగ్‌లు & సమీక్షలు';

  @override
  String get reviewsWithTextOnly => 'సమీక్షలు ఉన్నవి';

  @override
  String get noReviewsTitle => 'ఇంకా రేటింగ్‌లు లేవు';

  @override
  String get noReviewsSubtitle => 'ఆర్డర్ తర్వాత మొదటి రేటింగ్ మీరే ఇవ్వండి.';

  @override
  String get rateOrderTitle => 'మీ ఆర్డర్‌కు రేటింగ్ ఇవ్వండి';

  @override
  String get rateDishesTitle => 'వంటకాలకు రేటింగ్ ఇవ్వండి';

  @override
  String get reviewHint => 'ఇంకా ఏమైనా చెప్పాలనుకుంటున్నారా? (ఐచ్ఛికం)';

  @override
  String get submitRating => 'రేటింగ్ పంపండి';

  @override
  String get reviewThanks => 'ధన్యవాదాలు — మీ రేటింగ్ అందింది.';

  @override
  String get rateThisOrder => 'ఈ ఆర్డర్‌కు రేటింగ్ ఇవ్వండి';

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
