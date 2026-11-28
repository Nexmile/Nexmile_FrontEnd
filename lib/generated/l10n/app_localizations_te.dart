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
  String get loginHeadline =>
      'మీ దగ్గరి దుకాణాల నుండి వేడి వేడి ఆహారం, వేగంగా డెలివరీ';

  @override
  String get loginOrSignUp => 'లాగిన్ లేదా సైన్ అప్ చేయండి';

  @override
  String get loginEmailHint => 'మీ ఇమెయిల్ చిరునామాను నమోదు చేయండి';

  @override
  String get invalidEmail => 'సరైన ఇమెయిల్ చిరునామాను నమోదు చేయండి';

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
    return '$restaurant కు మీ ఆర్డర్ అందింది.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'సుమారు $minutes నిమిషాల్లో సిద్ధమవుతుంది.';
  }

  @override
  String get trackYourOrder => 'మీ ఆర్డర్‌ను ట్రాక్ చేయండి';

  @override
  String get couponApplyTitle => 'కూపన్ అప్లై చేయండి';

  @override
  String get couponCodeLabel => 'కూపన్ కోడ్';

  @override
  String get couponApply => 'అప్లై చేయి';

  @override
  String couponAppliedTitle(String code) {
    return '$code అప్లై అయింది';
  }

  @override
  String couponSaving(String amount) {
    return 'మీకు $amount ఆదా';
  }

  @override
  String get couponRemove => 'తొలగించు';

  @override
  String searchFor(String term) {
    return '\"$term\" కోసం వెతకండి';
  }

  @override
  String get vegModeBadge => 'శుద్ధ శాకాహారం';

  @override
  String trackingExpectedBy(String time) {
    return '$time కల్లా చేరుతుంది';
  }

  @override
  String get orderAgainTitle => 'మళ్ళీ ఆర్డర్ చేయండి';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + మరో $count',
      one: '$first + మరో 1',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max నిమి';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 కి $rating రేటింగ్';
  }

  @override
  String get reorderReplaceTitle => 'మీ కార్ట్‌ను మార్చాలా?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant నుండి ఉన్న మీ కార్ట్‌లోని వంటకాల స్థానంలో ఈ ఆర్డర్‌లోని వంటకాలు వస్తాయి.';
  }

  @override
  String get reorderReplace => 'మార్చు';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes ఇప్పుడు అందుబాటులో లేవు, అందుకే వాటిని చేర్చలేదు.',
      one: '$dishes ఇప్పుడు అందుబాటులో లేదు, అందుకే దాన్ని చేర్చలేదు.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'ఈ వంటకాల్లో ఏదీ ఇప్పుడు అందుబాటులో లేదు.';

  @override
  String get searchShort => 'వెతకండి';

  @override
  String get favouriteSave => 'ఇష్టమైనవాటిలో సేవ్ చేయి';

  @override
  String get restaurantAbout => 'ఈ రెస్టారెంట్ గురించి';

  @override
  String ratingByCount(String count) {
    return '$count మంది';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఆఫర్లు',
      one: '1 ఆఫర్',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile లో $restaurant నుండి ఆర్డర్ చేయండి';
  }

  @override
  String get ordersSearchHint => 'రెస్టారెంట్ లేదా వంటకం పేరుతో వెతకండి…';

  @override
  String get ordersNoMatch =>
      'ఆ పేరు గల రెస్టారెంట్ లేదా వంటకంతో ఆర్డర్లు ఏవీ లేవు.';

  @override
  String orderPlacedOn(String date) {
    return '$date న ఆర్డర్ చేశారు';
  }

  @override
  String get viewMenu => 'మెనూ చూడండి';

  @override
  String get navHistory => 'హిస్టరీ';

  @override
  String get exploreMore => 'మరిన్ని చూడండి';

  @override
  String get exploreTopRated => 'అత్యధిక రేటింగ్';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'మీకు డెలివరీ చేసే $count రెస్టారెంట్లు',
      one: 'మీకు డెలివరీ చేసే 1 రెస్టారెంట్',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'మీ డెలివరీ ఎలా ఉంది?';

  @override
  String get rateHowWasFood => 'ఆహారం ఎలా ఉంది?';

  @override
  String get rateWordTerrible => 'చాలా దారుణం';

  @override
  String get rateWordBad => 'బాలేదు';

  @override
  String get rateWordOkay => 'పర్వాలేదు';

  @override
  String get rateWordGood => 'బాగుంది';

  @override
  String get rateWordLoved => 'చాలా నచ్చింది!';

  @override
  String get rateWhatWentWrong => 'ఏం తప్పు జరిగింది?';

  @override
  String get rateWhatYouLiked => 'మీకు ఏం నచ్చింది?';

  @override
  String get rateRiderNoteHint => 'డెలివరీ గురించి ఒక గమనిక (ఐచ్ఛికం)';

  @override
  String get rateReviewHeading => 'సమీక్ష రాయండి';

  @override
  String get rateFoodFirst => 'పంపడానికి ఆహారానికి రేటింగ్ ఇవ్వండి';

  @override
  String get rateYouRated => 'మీరు ఈ ఆర్డర్‌కు రేటింగ్ ఇచ్చారు';

  @override
  String get ratePromptLater => 'ఇప్పుడు కాదు';

  @override
  String get tagTasty => 'రుచిగా ఉంది';

  @override
  String get tagFreshHot => 'వేడిగా, తాజాగా';

  @override
  String get tagGoodPortion => 'సరిపడా పరిమాణం';

  @override
  String get tagGoodPackaging => 'మంచి ప్యాకింగ్';

  @override
  String get tagValueForMoney => 'ధరకు తగ్గ విలువ';

  @override
  String get tagHygienic => 'శుభ్రంగా ఉంది';

  @override
  String get tagColdFood => 'ఆహారం చల్లగా ఉంది';

  @override
  String get tagPoorTaste => 'రుచిగా లేదు';

  @override
  String get tagSmallPortion => 'పరిమాణం తక్కువ';

  @override
  String get tagWrongItems => 'తప్పు వంటకాలు వచ్చాయి';

  @override
  String get tagMissingItems => 'కొన్ని వంటకాలు రాలేదు';

  @override
  String get tagPoorPackaging => 'ప్యాకింగ్ బాలేదు';

  @override
  String get tagTooOily => 'నూనె లేదా కారం ఎక్కువ';

  @override
  String get tagOnTime => 'సమయానికి వచ్చారు';

  @override
  String get tagPolite => 'మర్యాదగా ఉన్నారు';

  @override
  String get tagFollowedInstructions => 'సూచనలు పాటించారు';

  @override
  String get tagCarefulHandling => 'ఆహారాన్ని జాగ్రత్తగా తెచ్చారు';

  @override
  String get tagGoodCommunication => 'ఎప్పటికప్పుడు సమాచారం ఇచ్చారు';

  @override
  String get tagLate => 'ఆలస్యంగా డెలివరీ';

  @override
  String get tagRude => 'దురుసు ప్రవర్తన';

  @override
  String get tagIgnoredInstructions => 'సూచనలు పాటించలేదు';

  @override
  String get tagFoodSpilled => 'ఆహారం ఒలికిపోయింది';

  @override
  String get tagAskedExtraMoney => 'అదనపు డబ్బు అడిగారు';

  @override
  String get tagUnprofessional => 'పద్ధతిగా ప్రవర్తించలేదు';

  @override
  String rateDeliveredBy(String name) {
    return '$name డెలివరీ చేశారు';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant నుండి';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant నుండి మీ ఆర్డర్ ఎలా ఉంది?';
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
    return '$total లో $step';
  }

  @override
  String get permNotNow => 'ఇప్పుడు కాదు';

  @override
  String get permLocationTitle => 'మీ దగ్గర్లోని ఆహారం కనుగొనండి';

  @override
  String get permNotifyTitle => 'ఏ ఆర్డర్ అప్‌డేట్‌నూ మిస్ అవ్వకండి';

  @override
  String get permNotifyBody =>
      'మీ ఆర్డర్ ఎప్పుడు అంగీకరించబడిందో, ఎప్పుడు పికప్ అయిందో, ఎప్పుడు మీ ఇంటి వద్దకు వచ్చిందో తెలుసుకోవడానికి నోటిఫికేషన్లు ఆన్ చేయండి.';

  @override
  String get permNotifyLiveTitle => 'లైవ్ ఆర్డర్ అప్‌డేట్‌లు';

  @override
  String get permNotifyLiveBody =>
      'అంగీకరించారు, తయారవుతోంది, పికప్ అయింది, డెలివరీ అయింది.';

  @override
  String get permNotifyRiderTitle => 'రైడర్ మీ ఇంటి ముందు';

  @override
  String get permNotifyRiderBody =>
      'యాప్ చూస్తూ ఉండకుండానే, ఎప్పుడు బయటికి రావాలో తెలుసుకోండి.';

  @override
  String get permNotifyControlTitle => 'నియంత్రణ మీ చేతుల్లోనే';

  @override
  String get permNotifyControlBody =>
      'మీ ఫోన్ సెట్టింగ్‌లలో ఎప్పుడైనా నోటిఫికేషన్లు ఆఫ్ చేయవచ్చు.';

  @override
  String get permNotifyAllow => 'నోటిఫికేషన్లు ఆన్ చేయండి';

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
  String get menuSearchHint => 'వంటకాలను వెతకండి';

  @override
  String get filtersShort => 'ఫిల్టర్‌లు';

  @override
  String get dietVeg => 'శాకాహారం';

  @override
  String get dietEgg => 'గుడ్డు';

  @override
  String get dietNonVeg => 'మాంసాహారం';

  @override
  String get menuBestsellerChip => 'అత్యధిక అమ్మకం';

  @override
  String get menuFoodType => 'ఆహార రకం';

  @override
  String get menuShowOnly => 'ఇవి మాత్రమే చూపు';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వంటకాలు',
      one: '1 వంటకం',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వంటకాలు చూపు',
      one: '1 వంటకం చూపు',
      zero: 'వంటకాలు లేవు',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'వేరే వంటకం పేరు ప్రయత్నించండి, లేదా ఫిల్టర్ తీసేయండి.';

  @override
  String get menuBrowse => 'మెనూ';

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
  String get riderLocationStale => 'రైడర్ స్థానం అప్‌డేట్ అవుతోంది…';

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
  String get onLabel => 'ఆన్';

  @override
  String get offLabel => 'ఆఫ్';

  @override
  String get profileCoupons => 'మీ కూపన్లు';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'వాడటానికి $count ఉన్నాయి',
      one: 'వాడటానికి 1 ఉంది',
      zero: 'ఇంకా ఏవీ లేవు',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'మీ ప్రాధాన్యతలు';

  @override
  String get profileVegMode => 'శాకాహార మోడ్';

  @override
  String get profileVegModeHint => 'శాకాహార రెస్టారెంట్లు, వంటకాలు మాత్రమే';

  @override
  String get profileAppearance => 'థీమ్';

  @override
  String get appearanceSystem => 'ఫోన్ సెట్టింగ్ ప్రకారం';

  @override
  String get appearanceLight => 'లైట్';

  @override
  String get appearanceDark => 'డార్క్';

  @override
  String get profileNotifications => 'నోటిఫికేషన్లు';

  @override
  String get profileFoodDelivery => 'ఫుడ్ డెలివరీ';

  @override
  String get profileFavourites => 'మీ ఇష్టమైనవి';

  @override
  String get profileHelp => 'సహాయం & సపోర్ట్';

  @override
  String get profileMore => 'మరిన్ని';

  @override
  String get profileFeedback => 'మీ అభిప్రాయం పంపండి';

  @override
  String get profileSafety => 'భద్రతా అత్యవసర పరిస్థితిని తెలపండి';

  @override
  String get profileAbout => 'Nexmile గురించి';

  @override
  String get couponsEmptyTitle => 'ప్రస్తుతం కూపన్లు లేవు';

  @override
  String get couponsEmptyBody =>
      'మీరు వాడగలిగే కూపన్ ఉన్నప్పుడు, అది ఇక్కడ కనిపిస్తుంది.';

  @override
  String couponFlatOff(String amount) {
    return '$amount తగ్గింపు';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% తగ్గింపు';
  }

  @override
  String couponUpTo(String amount) {
    return 'గరిష్ఠంగా $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount పైబడిన ఆర్డర్లపై';
  }

  @override
  String couponValidTill(String date) {
    return '$date వరకు చెల్లుతుంది';
  }

  @override
  String get couponAllRestaurants => 'అన్ని రెస్టారెంట్లలో';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant లో';
  }

  @override
  String couponCopied(String code) {
    return 'కోడ్ $code కాపీ అయింది';
  }

  @override
  String get favouritesEmptyTitle => 'ఇంకా ఇష్టమైనవి లేవు';

  @override
  String get favouritesEmptyBody =>
      'ఏదైనా రెస్టారెంట్‌పై హార్ట్ గుర్తును నొక్కితే అది ఇక్కడ సేవ్ అవుతుంది.';

  @override
  String get helpCall => 'మాకు కాల్ చేయండి';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'మాకు ఇమెయిల్ చేయండి';

  @override
  String helpHours(String hours) {
    return 'మేము $hours అందుబాటులో ఉంటాము';
  }

  @override
  String get helpFaqs => 'సాధారణ ప్రశ్నలు';

  @override
  String get helpNothing =>
      'సహాయ వివరాలు ఇప్పుడు అందుబాటులో లేవు. కొంతసేపటి తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get feedbackPrompt => 'Nexmile మీకు ఎలా ఉంది?';

  @override
  String get feedbackHint =>
      'మీకు ఏం నచ్చిందో, లేదా మేము ఇంకా ఏం మెరుగుపరచగలమో చెప్పండి';

  @override
  String get feedbackNeedRating => 'ముందుగా రేటింగ్ ఎంచుకోండి';

  @override
  String get feedbackThanks => 'ధన్యవాదాలు! మీ అభిప్రాయం మా టీమ్‌కు చేరింది.';

  @override
  String get safetyIntro =>
      'మీరు లేదా మరెవరైనా ప్రమాదంలో ఉంటే, ముందుగా అత్యవసర సేవలకు కాల్ చేయండి.';

  @override
  String get safetyCallEmergency => '112 కు కాల్ చేయండి';

  @override
  String get safetyCallEmergencyBody => 'పోలీస్, అగ్నిమాపక దళం, అంబులెన్స్';

  @override
  String get safetyCallNexmile => 'Nexmile భద్రతా లైన్‌కు కాల్ చేయండి';

  @override
  String get safetyCallNexmileBody => 'అన్ని వేళలా అందుబాటులో';

  @override
  String aboutVersion(String version) {
    return 'వెర్షన్ $version';
  }

  @override
  String get aboutTerms => 'సేవా నిబంధనలు';

  @override
  String get aboutPrivacy => 'గోప్యతా విధానం';

  @override
  String get aboutLicences => 'ఓపెన్-సోర్స్ లైసెన్స్‌లు';

  @override
  String get notifyOrderUpdates => 'ఆర్డర్ అప్‌డేట్‌లు';

  @override
  String get notifyOrderUpdatesBody =>
      'మీ ఆహారం ఎక్కడ ఉందో తెలియడానికి, ఇవి ఎప్పుడూ ఆన్‌లో ఉంటాయి.';

  @override
  String get notifyPromotions => 'ఆఫర్లు, ప్రమోషన్లు';

  @override
  String get notifyPromotionsBody =>
      'మీ దగ్గరి డీల్స్, కూపన్లు, కొత్త రెస్టారెంట్లు.';

  @override
  String get notifyPhoneOff =>
      'ఈ ఫోన్‌లో Nexmile కు నోటిఫికేషన్లు ఆఫ్‌లో ఉన్నాయి.';

  @override
  String get notifyTurnOn => 'ఆన్ చేయి';

  @override
  String get linkOpenFailed => 'దాన్ని ఈ ఫోన్‌లో తెరవలేకపోయాం.';

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
  String get walletTitle => 'Nexmile వాలెట్';

  @override
  String get walletBalance => 'వాలెట్ బ్యాలెన్స్';

  @override
  String get walletBalanceHint => 'ఏ ఆర్డర్‌కైనా చెల్లించడానికి వాడండి.';

  @override
  String get walletAddMoney => 'డబ్బు జోడించు';

  @override
  String get walletEnterAmount => 'మొత్తం నమోదు చేయండి';

  @override
  String walletAmountRange(String min, String max) {
    return '$min నుండి $max వరకు';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount జోడించు';
  }

  @override
  String get walletSecuredBy => 'చెల్లింపులు Razorpay ద్వారా సురక్షితం';

  @override
  String get walletHistory => 'లావాదేవీలు';

  @override
  String get walletNoHistory =>
      'ఇంకా లావాదేవీలు లేవు. మీరు జోడించిన లేదా ఖర్చు చేసిన డబ్బు ఇక్కడ కనిపిస్తుంది.';

  @override
  String get walletEntryTopUp => 'డబ్బు జోడించబడింది';

  @override
  String get walletEntryOrder => 'ఆర్డర్‌కు చెల్లించారు';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ఆర్డర్ $number కు చెల్లించారు';
  }

  @override
  String get walletEntryRefund => 'రీఫండ్';

  @override
  String walletMoneyAdded(String amount) {
    return 'మీ వాలెట్‌కు $amount జోడించబడింది';
  }

  @override
  String get walletPaymentFailed =>
      'చెల్లింపు విఫలమైంది. మీ ఖాతా నుండి ఎలాంటి డబ్బు తీసుకోబడలేదు.';

  @override
  String get walletPaymentConfirming =>
      'చెల్లింపు అందింది. కొన్ని నిమిషాల్లో మీ బ్యాలెన్స్ అప్‌డేట్ అవుతుంది.';

  @override
  String get walletUseBalance => 'వాలెట్ బ్యాలెన్స్ వాడండి';

  @override
  String walletAvailable(String amount) {
    return 'అందుబాటులో: $amount';
  }

  @override
  String get walletPaidFromWallet => 'వాలెట్ నుండి చెల్లింపు';

  @override
  String get walletPayOnDelivery => 'డెలివరీ సమయంలో చెల్లించాలి';

  @override
  String get walletCoversOrder => 'పూర్తిగా మీ వాలెట్ నుండి చెల్లింపు';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return 'వాలెట్ నుండి $wallet, డెలివరీ సమయంలో $rest';
  }

  @override
  String get walletTopUpUnavailable =>
      'డబ్బు జోడించడం ఇప్పుడు అందుబాటులో లేదు. కొంతసేపటి తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String walletFull(String limit) {
    return 'మీ వాలెట్ $limit పరిమితికి చేరుకుంది.';
  }

  @override
  String get searchAddressHint => 'ప్రాంతం, వీధి లేదా ల్యాండ్‌మార్క్ వెతకండి';

  @override
  String get selectLocationTitle => 'లొకేషన్ ఎంచుకోండి';

  @override
  String get useCurrentLocation => 'ప్రస్తుత లొకేషన్ వాడు';

  @override
  String get locatingYou => 'మీరు ఎక్కడ ఉన్నారో కనుగొంటున్నాం…';

  @override
  String get locationOffHint => 'దీన్ని వాడటానికి లొకేషన్ అనుమతించండి';

  @override
  String get savedAddressesHeading => 'సేవ్ చేసిన చిరునామాలు';

  @override
  String get recentLocationsHeading => 'ఇటీవలి లొకేషన్లు';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'డెలివరీ లొకేషన్ ఎంచుకోండి';

  @override
  String get movePinTooltip => 'పిన్‌ను మీ ఖచ్చితమైన డెలివరీ లొకేషన్‌కు జరపండి';

  @override
  String get locatingPin => 'చిరునామా కనుగొంటున్నాం…';

  @override
  String get deliveryDetailsHeading => 'డెలివరీ వివరాలు';

  @override
  String get addressDetailsLabel => 'చిరునామా వివరాలు*';

  @override
  String get addressDetailsHint => 'ఉదా. అంతస్తు, ఇంటి నంబర్';

  @override
  String get missingAreaHint =>
      'ఈ పిన్‌కు పూర్తి చిరునామా దొరకలేదు. దయచేసి మిగతా వివరాలు నింపండి.';

  @override
  String get whoToContact => 'ఈ డెలివరీ కోసం ఎవరిని సంప్రదించాలి?';

  @override
  String get contactMyself => 'నేనే';

  @override
  String get contactSomeoneElse => 'వేరే ఎవరైనా';

  @override
  String get receiverDetailsHeading => 'ఈ చిరునామాకు అందుకునేవారి వివరాలు';

  @override
  String get receiverAddPrompt => 'అందుకునేవారి పేరు, నంబర్ జోడించండి';

  @override
  String get receiverSheetTitle => 'అందుకునేవారి వివరాలు';

  @override
  String get doorPhotoHeading => 'తలుపు/భవనం ఫోటో (ఐచ్ఛికం)';

  @override
  String get doorPhotoAdd => 'ఫోటో జోడించు';

  @override
  String get doorPhotoBody =>
      'దీనివల్ల మా డెలివరీ భాగస్వాములు మీ ఖచ్చితమైన లొకేషన్‌ను త్వరగా కనుగొంటారు';

  @override
  String get doorPhotoChange => 'మార్చు';

  @override
  String get doorPhotoRemove => 'తొలగించు';

  @override
  String get photoFromCamera => 'ఫోటో తీయండి';

  @override
  String get photoFromGallery => 'గ్యాలరీ నుండి ఎంచుకోండి';

  @override
  String get photoUploaded => 'ఫోటో జోడించబడింది';

  @override
  String get photoUploadFailed =>
      'ఫోటో అప్‌లోడ్ కాలేదు. కొంతసేపటి తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get addressSavedPhotoFailed =>
      'చిరునామా సేవ్ అయింది. ఫోటో అప్‌లోడ్ కాలేదు.';

  @override
  String get removePhotoLabel => 'ఫోటో తొలగించు';

  @override
  String get photoRemoved => 'ఫోటో తొలగించబడింది';

  @override
  String get shareLabel => 'షేర్ చేయి';

  @override
  String get addDoorPhotoLabel => 'తలుపు ఫోటో జోడించు';

  @override
  String get searchAddressNoResults =>
      'ఏ ప్రదేశాలూ దొరకలేదు. దగ్గర్లోని ల్యాండ్‌మార్క్, ప్రాంతం పేరు లేదా పిన్ కోడ్ ప్రయత్నించండి.';

  @override
  String get clearLabel => 'తీసివేయి';

  @override
  String get trackingArrivingNow => 'ఇప్పుడే చేరుకుంటోంది';

  @override
  String get trackingLive => 'లైవ్';

  @override
  String get trackingStepConfirmed => 'నిర్ధారించబడింది';

  @override
  String get trackingStepPreparing => 'తయారవుతోంది';

  @override
  String get trackingStepOnTheWay => 'దారిలో ఉంది';

  @override
  String get trackingStepDelivered => 'డెలివరీ అయ్యింది';

  @override
  String get trackingFindingRider => 'డెలివరీ భాగస్వామిని కేటాయిస్తున్నాం…';

  @override
  String get trackingPinYou => 'మీరు';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance దూరంలో ఉన్నారు';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name కు మెసేజ్ చేయి';
  }

  @override
  String get trackingDeliveringTo => 'డెలివరీ చిరునామా';

  @override
  String get trackingOrderDetails => 'ఆర్డర్ వివరాలు';

  @override
  String get dispatchSearching =>
      'రెస్టారెంట్ దగ్గర డెలివరీ భాగస్వామి కోసం వెతుకుతున్నాం…';

  @override
  String get dispatchNoRider =>
      'ఇంకా ఏ డెలివరీ భాగస్వామి తీసుకోలేదు. మా టీమ్ ఇప్పుడే ఒకరిని కేటాయిస్తోంది.';

  @override
  String get vehicleBike => 'బైక్';

  @override
  String get vehicleScooter => 'స్కూటర్';

  @override
  String get vehicleBicycle => 'సైకిల్';

  @override
  String get vehicleElectric => 'ఎలక్ట్రిక్ స్కూటర్';

  @override
  String get exitTitle => 'Nexmile నుండి బయటకు వెళ్ళాలా?';

  @override
  String get exitBody => 'మీరు నిజంగా యాప్ నుండి బయటకు వెళ్ళాలనుకుంటున్నారా?';

  @override
  String get exitConfirm => 'బయటకు వెళ్ళు';

  @override
  String cartSavedBanner(String amount) {
    return 'ఈ ఆర్డర్‌పై మీరు $amount ఆదా చేశారు';
  }

  @override
  String get cartAddMoreItems => 'మరిన్ని వస్తువులు జోడించండి';

  @override
  String get cartAddNote => 'రెస్టారెంట్‌కు గమనిక జోడించండి';

  @override
  String get cartOrderNoteHint => 'ఉదా. దేనిలోనూ ఉల్లిపాయ, వెల్లుల్లి వేయొద్దు';

  @override
  String get cartNoteSave => 'సేవ్ చేయి';

  @override
  String get cartNoCutlery => 'స్పూన్, ఫోర్క్ పంపవద్దు';

  @override
  String get cartNoCutleryThanks =>
      'ప్లాస్టిక్ వ్యర్థాలు తగ్గించడంలో సహాయపడినందుకు ధన్యవాదాలు';

  @override
  String get cartSavingsCorner => 'ఆదా చేసుకోండి';

  @override
  String get cartDeliveryInstructions => 'డెలివరీ సూచనలు';

  @override
  String get cartInstructionsRider =>
      'ఇవి మీ డెలివరీ భాగస్వామికి మాత్రమే కనిపిస్తాయి';

  @override
  String get instructionLeaveAtDoor => 'తలుపు వద్ద ఉంచండి';

  @override
  String get instructionNoBell => 'బెల్ కొట్టవద్దు';

  @override
  String get instructionNoCall => 'కాల్ చేయవద్దు';

  @override
  String get instructionSecurity => 'సెక్యూరిటీకి ఇవ్వండి';

  @override
  String get instructionPet => 'ఇంట్లో పెంపుడు జంతువు ఉంది';

  @override
  String get cartInclTaxes => 'పన్నులు, ఛార్జీలతో కలిపి';

  @override
  String cartSavedTag(String amount) {
    return '$amount ఆదా';
  }

  @override
  String get cartPayUsing => 'చెల్లింపు విధానం';

  @override
  String get cartWalletAndCash => 'వాలెట్ + నగదు';

  @override
  String cartCashRest(String amount) {
    return 'డెలివరీ అయినప్పుడు $amount చెల్లించండి';
  }

  @override
  String get cartCashFull => 'ఆర్డర్ వచ్చినప్పుడు చెల్లించండి';

  @override
  String get cartCashNothing => 'డెలివరీ సమయంలో చెల్లించాల్సింది ఏమీ లేదు';

  @override
  String get cartTotal => 'మొత్తం';

  @override
  String get cartPlaceOrder => 'ఆర్డర్ చేయండి';

  @override
  String cartDeliverTo(String place) {
    return '$place కు డెలివరీ';
  }

  @override
  String get cartChange => 'మార్చు';

  @override
  String get cartNoAddress => 'ఎక్కడ డెలివరీ చేయాలి?';

  @override
  String get cartNoAddressHint => 'ఆర్డర్ చేయడానికి చిరునామా జోడించండి';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant నుండి పికప్';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'సుమారు $minutes నిమిషాల్లో సిద్ధం';
  }

  @override
  String get cartChooseAddress => 'డెలివరీ చిరునామా ఎంచుకోండి';

  @override
  String get cartDone => 'పూర్తయింది';

  @override
  String get supportTitle => 'Nexmile సపోర్ట్';

  @override
  String get supportBubble => 'సహాయం';

  @override
  String get supportAiLabel => 'AI అసిస్టెంట్';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile టీమ్';
  }

  @override
  String get supportDemoBanner =>
      'డెమో: ఇవి నమూనా సమాధానాలు మాత్రమే. నిజమైన AI అసిస్టెంట్ ఇంకా కనెక్ట్ కాలేదు.';

  @override
  String get supportEmptyTitle => 'మేము మీకు ఎలా సహాయం చేయగలం?';

  @override
  String get supportEmptyBody =>
      'ఆర్డర్, చెల్లింపు లేదా మరే విషయం గురించైనా అడగండి. ముందుగా మా AI అసిస్టెంట్ సమాధానం ఇస్తుంది; అది సహాయం చేయలేనప్పుడు మా టీమ్‌లోని ఒక వ్యక్తి చూసుకుంటారు.';

  @override
  String get supportSuggestWhere => 'నా ఆర్డర్ ఎక్కడ ఉంది?';

  @override
  String get supportSuggestMissing => 'ఆర్డర్‌లో ఏదో రాలేదు';

  @override
  String get supportSuggestRefund => 'రీఫండ్ గురించి ఒక ప్రశ్న ఉంది';

  @override
  String get supportComposerHint => 'మెసేజ్ టైప్ చేయండి';

  @override
  String get supportSend => 'పంపు';

  @override
  String get supportTyping => 'AI అసిస్టెంట్ టైప్ చేస్తోంది…';

  @override
  String get supportNotSent => 'పంపబడలేదు';

  @override
  String get supportTookTooLong => 'సమాధానం రావడానికి చాలా సమయం పట్టింది.';

  @override
  String get supportSlowDown => 'మరిన్ని మెసేజ్‌లు పంపే ముందు కొంచెం ఆగండి.';

  @override
  String get supportUnreachable =>
      'ఇప్పుడు చాట్‌కు కనెక్ట్ కావడం లేదు. మాకు కాల్ చేయండి, లేదా కొన్ని నిమిషాల తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get supportOffline =>
      'మీరు ఆఫ్‌లైన్‌లో ఉన్నారు. ఇది చివరిగా సేవ్ చేసిన మీ చాట్.';

  @override
  String get supportClosed => 'ఈ చాట్ మూసివేయబడింది.';

  @override
  String get supportStartNew => 'కొత్త చాట్ మొదలుపెట్టండి';

  @override
  String get supportTalkToPerson => 'ఒక వ్యక్తితో మాట్లాడండి';

  @override
  String get supportMarkSolved => 'పరిష్కారమైందని గుర్తించండి';

  @override
  String get supportHelpful => 'ఉపయోగపడింది';

  @override
  String get supportNotHelpful => 'ఉపయోగపడలేదు';

  @override
  String get supportNeedHelp => 'సహాయం కావాలా?';

  @override
  String get supportChatWithUs => 'మాతో చాట్ చేయండి';

  @override
  String get supportChatWithUsBody =>
      'మా AI అసిస్టెంట్ క్షణాల్లో సమాధానం ఇస్తుంది; అవసరమైతే ఒక వ్యక్తి చూసుకుంటారు.';

  @override
  String get supportActionFailed => 'అది జరగలేదు. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get supportOrderNotFound => 'ఆ ఆర్డర్ మీ ఖాతాలో కనిపించలేదు.';

  @override
  String get supportOrderLookupDown =>
      'ప్రస్తుతం ఆ ఆర్డర్‌ను చూడలేకపోయాం. మీ ప్రశ్నను టైప్ చేయవచ్చు.';

  @override
  String get supportHandedOverNote => 'మా బృందంలోని ఒకరు జవాబిస్తారు';

  @override
  String get restaurantNew => 'కొత్తది';

  @override
  String get walletHideBalance => 'బ్యాలెన్స్ దాచు';

  @override
  String get walletShowBalance => 'బ్యాలెన్స్ చూపు';

  @override
  String get walletBalanceHiddenLabel => 'బ్యాలెన్స్ దాచబడింది';

  @override
  String walletUpdatedAt(String time) {
    return 'అప్‌డేట్ అయింది: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'కనీసం $amount జోడించండి';
  }

  @override
  String walletAboveMax(String amount) {
    return 'గరిష్ఠంగా $amount వరకు జోడించవచ్చు';
  }

  @override
  String get walletOpeningPayment => 'చెల్లింపు ప్రారంభమవుతోంది…';

  @override
  String get walletConfirmingPayment => 'చెల్లింపును నిర్ధారిస్తున్నాం…';

  @override
  String get walletTransactions => 'లావాదేవీలు';

  @override
  String get walletFilterAll => 'అన్నీ';

  @override
  String get walletFilterAdded => 'జోడించిన డబ్బు';

  @override
  String get walletFilterSpent => 'ఖర్చు చేసిన డబ్బు';

  @override
  String get walletSearch => 'వెతకండి';

  @override
  String get walletSearchHint => 'ఆర్డర్ నంబర్ లేదా ID వెతకండి';

  @override
  String get walletDateFilter => 'తేదీ ద్వారా ఫిల్టర్ చేయండి';

  @override
  String get walletClearFilters => 'ఫిల్టర్‌లు తీసేయండి';

  @override
  String get walletNoMatches => 'మీ ఫిల్టర్‌లకు సరిపోయే లావాదేవీలు లేవు';

  @override
  String get walletEmptyTitle => 'ఇంకా లావాదేవీలు లేవు';

  @override
  String get walletEmptyBody =>
      'మీరు జోడించిన, ఆర్డర్లపై ఖర్చు చేసిన లేదా రీఫండ్‌గా తిరిగి పొందిన డబ్బు ఇక్కడ కనిపిస్తుంది.';

  @override
  String get walletToday => 'ఈరోజు';

  @override
  String get walletYesterday => 'నిన్న';

  @override
  String walletLatestOnly(int count) {
    return 'మీ తాజా $count లావాదేవీలు చూపిస్తున్నాం';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ఆర్డర్ $number కు రీఫండ్';
  }

  @override
  String get walletDetailsTitle => 'లావాదేవీ వివరాలు';

  @override
  String get walletDetailDate => 'తేదీ, సమయం';

  @override
  String get walletDetailId => 'లావాదేవీ ID';

  @override
  String get walletDetailType => 'రకం';

  @override
  String get walletDetailMethod => 'చెల్లింపు విధానం';

  @override
  String get walletDetailStatus => 'స్థితి';

  @override
  String get walletDetailOrder => 'ఆర్డర్';

  @override
  String get walletDetailReference => 'చెల్లింపు రిఫరెన్స్';

  @override
  String get walletDetailBalanceAfter => 'లావాదేవీ తర్వాత బ్యాలెన్స్';

  @override
  String get walletCredit => 'క్రెడిట్';

  @override
  String get walletDebit => 'డెబిట్';

  @override
  String get walletStatusSuccess => 'విజయవంతం';

  @override
  String get walletStatusPending => 'పెండింగ్';

  @override
  String get walletStatusFailed => 'విఫలం';

  @override
  String get walletMethodOnline => 'ఆన్‌లైన్ చెల్లింపు';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'కార్డ్';

  @override
  String get walletMethodNetbanking => 'నెట్ బ్యాంకింగ్';

  @override
  String get walletMethodRefund => 'వాలెట్‌కు రీఫండ్';

  @override
  String get walletCopyId => 'ID కాపీ చేయి';

  @override
  String get walletIdCopied => 'లావాదేవీ ID కాపీ అయింది';

  @override
  String get walletShareDetails => 'వివరాలు షేర్ చేయి';
}
