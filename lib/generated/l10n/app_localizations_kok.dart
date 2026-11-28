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
  String get loginHeadline =>
      'तुमच्या लागसारच्या दुकानांतल्यान गरम जेवण, वेगान डिलिव्हरी';

  @override
  String get loginOrSignUp => 'लॉग इन वा साइन अप करात';

  @override
  String get loginEmailHint => 'तुमचो ईमेल नामो घालात';

  @override
  String get invalidEmail => 'योग्य ईमेल नामो घालात';

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
    return 'तुमची ऑर्डर $restaurant कडेन पावल्या.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'सुमार $minutes मिनटांनी तयार जातली.';
  }

  @override
  String get trackYourOrder => 'तुमची ऑर्डर ट्रॅक करात';

  @override
  String get couponApplyTitle => 'कूपन लागू करात';

  @override
  String get couponCodeLabel => 'कूपन कोड';

  @override
  String get couponApply => 'लागू करात';

  @override
  String couponAppliedTitle(String code) {
    return '$code लागू जालें';
  }

  @override
  String couponSaving(String amount) {
    return 'तुमची $amount बचत';
  }

  @override
  String get couponRemove => 'काडात';

  @override
  String searchFor(String term) {
    return '\"$term\" सोदात';
  }

  @override
  String get vegModeBadge => 'शुद्ध शाकाहारी';

  @override
  String trackingExpectedBy(String time) {
    return '$time मेरेन पावतली';
  }

  @override
  String get orderAgainTitle => 'परत ऑर्डर करात';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + आनीक $count',
      one: '$first + आनीक 1',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max मिनटां';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 पयकीं $rating रेटिंग';
  }

  @override
  String get reorderReplaceTitle => 'तुमची कार्ट बदलूंया?';

  @override
  String reorderReplaceBody(String restaurant) {
    return 'तुमच्या कार्टांतल्यो $restaurant च्यो वस्तू काडून ह्या ऑर्डरांतले पदार्थ जोडटले.';
  }

  @override
  String get reorderReplace => 'बदलात';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes आतां उपलब्ध नात, देखून ते जोडूंक नात.',
      one: '$dishes आतां उपलब्ध ना, देखून तो जोडूंक ना.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable => 'हातूंतलो एकूय पदार्थ आतां उपलब्ध ना.';

  @override
  String get searchShort => 'सोदात';

  @override
  String get favouriteSave => 'आवडीच्यांत जतनाय करात';

  @override
  String get restaurantAbout => 'ह्या रेस्टॉरंटाविशीं';

  @override
  String ratingByCount(String count) {
    return '$count जाणांनी';
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
    return 'Nexmile चेर $restaurant कडल्यान ऑर्डर करात';
  }

  @override
  String get ordersSearchHint => 'रेस्टॉरंट वा पदार्थाच्या नांवान सोदात…';

  @override
  String get ordersNoMatch =>
      'त्या नांवाच्या रेस्टॉरंटाची वा पदार्थाची एकूय ऑर्डर ना.';

  @override
  String orderPlacedOn(String date) {
    return '$date दिसा ऑर्डर केली';
  }

  @override
  String get viewMenu => 'मेनू पळयात';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get exploreMore => 'आनीक पळयात';

  @override
  String get exploreTopRated => 'उंच रेटिंग';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'तुमकां डिलिव्हरी करपी $count रेस्टॉरंटां',
      one: 'तुमकां डिलिव्हरी करपी 1 रेस्टॉरंट',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'डिलिव्हरी कशी आशिल्ली?';

  @override
  String get rateHowWasFood => 'जेवण कशें आशिल्लें?';

  @override
  String get rateWordTerrible => 'खूब वायट';

  @override
  String get rateWordBad => 'वायट';

  @override
  String get rateWordOkay => 'ठीक';

  @override
  String get rateWordGood => 'बरें';

  @override
  String get rateWordLoved => 'खूब आवडलें!';

  @override
  String get rateWhatWentWrong => 'कितें चुकलें?';

  @override
  String get rateWhatYouLiked => 'तुमकां कितें आवडलें?';

  @override
  String get rateRiderNoteHint => 'डिलिव्हरी विशीं एक नोंद (ऐच्छीक)';

  @override
  String get rateReviewHeading => 'समीक्षा बरयात';

  @override
  String get rateFoodFirst => 'धाडपा आदीं जेवणाक रेटिंग दियात';

  @override
  String get rateYouRated => 'तुमी ह्या ऑर्डराक रेटिंग दिलां';

  @override
  String get ratePromptLater => 'आतां न्हय';

  @override
  String get tagTasty => 'रुचीक';

  @override
  String get tagFreshHot => 'गरम आनी ताजें';

  @override
  String get tagGoodPortion => 'बरें प्रमाण';

  @override
  String get tagGoodPackaging => 'बरें पॅकिंग';

  @override
  String get tagValueForMoney => 'पैशे वसूल';

  @override
  String get tagHygienic => 'स्वच्छ';

  @override
  String get tagColdFood => 'थंड जेवण';

  @override
  String get tagPoorTaste => 'रूच बरी नाशिल्ली';

  @override
  String get tagSmallPortion => 'उणें प्रमाण';

  @override
  String get tagWrongItems => 'चुकीचे पदार्थ';

  @override
  String get tagMissingItems => 'पदार्थ उणे';

  @override
  String get tagPoorPackaging => 'वायट पॅकिंग';

  @override
  String get tagTooOily => 'चड तेलकट वा तिखट';

  @override
  String get tagOnTime => 'वेळार';

  @override
  String get tagPolite => 'नम्र';

  @override
  String get tagFollowedInstructions => 'सुचोवण्यो पाळ्ळ्यो';

  @override
  String get tagCarefulHandling => 'जेवण जतनायेन हाडलें';

  @override
  String get tagGoodCommunication => 'वेळोवेळीं कळयलें';

  @override
  String get tagLate => 'उशिरा डिलिव्हरी';

  @override
  String get tagRude => 'उद्धट वागणूक';

  @override
  String get tagIgnoredInstructions => 'सुचोवण्यो पाळ्ळ्यो नात';

  @override
  String get tagFoodSpilled => 'जेवण सांडलें';

  @override
  String get tagAskedExtraMoney => 'चड पैशे मागले';

  @override
  String get tagUnprofessional => 'बेशिस्त';

  @override
  String rateDeliveredBy(String name) {
    return '$name हांणी डिलिव्हर केली';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant कडल्यान';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant कडल्यान आयिल्ली तुमची ऑर्डर कशी आशिल्ली?';
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
    return '$total पयकीं $step';
  }

  @override
  String get permNotNow => 'आतां न्हय';

  @override
  String get permLocationTitle => 'तुमच्या लागसारचें जेवण सोदात';

  @override
  String get permNotifyTitle => 'ऑर्डराचें एकूय अपडेट चुकचें ना';

  @override
  String get permNotifyBody =>
      'तुमची ऑर्डर मान्य जाली, पिकअप जाली आनी तुमच्या दाराकडेन पावली हें कळपाक नोटिफिकेशनां सुरू करात.';

  @override
  String get permNotifyLiveTitle => 'ऑर्डराचे लायव्ह अपडेट';

  @override
  String get permNotifyLiveBody =>
      'मान्य जाली, रांदप चालू, पिकअप जाली, डिलिव्हर जाली.';

  @override
  String get permNotifyRiderTitle => 'रायडर तुमच्या दाराकडेन';

  @override
  String get permNotifyRiderBody =>
      'ॲप पळयनासतना भायर केन्ना सरचें तें कळटलें.';

  @override
  String get permNotifyControlTitle => 'नियंत्रण तुमच्याच हातांत';

  @override
  String get permNotifyControlBody =>
      'तुमच्या फोनाच्या सेटिंग्जांत केन्नाय नोटिफिकेशनां बंद करात.';

  @override
  String get permNotifyAllow => 'नोटिफिकेशनां सुरू करात';

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
  String get menuSearchHint => 'पदार्थ सोदात';

  @override
  String get filtersShort => 'फिल्टर';

  @override
  String get dietVeg => 'शाकाहारी';

  @override
  String get dietEgg => 'तांतें';

  @override
  String get dietNonVeg => 'मांसाहारी';

  @override
  String get menuBestsellerChip => 'चड विकपी';

  @override
  String get menuFoodType => 'जेवणाचो प्रकार';

  @override
  String get menuShowOnly => 'फकत दाखयात';

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
      other: '$count पदार्थ दाखयात',
      one: '1 पदार्थ दाखयात',
      zero: 'एकूय पदार्थ ना',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'दुसरें पदार्थाचें नांव यत्न करात, वा एक फिल्टर काडात.';

  @override
  String get menuBrowse => 'मेनू';

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
  String get riderLocationStale => 'रायडराचें थळ अपडेट जाता…';

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
  String get onLabel => 'सुरू';

  @override
  String get offLabel => 'बंद';

  @override
  String get profileCoupons => 'तुमचीं कूपनां';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'वापरपाक $count',
      one: 'वापरपाक 1',
      zero: 'अजून एकूय ना',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'तुमच्यो आवडी';

  @override
  String get profileVegMode => 'शाकाहारी मोड';

  @override
  String get profileVegModeHint => 'फकत शाकाहारी रेस्टॉरंटां आनी पदार्थ';

  @override
  String get profileAppearance => 'रूप';

  @override
  String get appearanceSystem => 'फोना सारकें';

  @override
  String get appearanceLight => 'उजवाड';

  @override
  String get appearanceDark => 'काळोख';

  @override
  String get profileNotifications => 'नोटिफिकेशनां';

  @override
  String get profileFoodDelivery => 'जेवण डिलिव्हरी';

  @override
  String get profileFavourites => 'तुमचीं आवडीचीं';

  @override
  String get profileHelp => 'मदत आनी आदार';

  @override
  String get profileMore => 'आनीक';

  @override
  String get profileFeedback => 'अभिप्राय धाडात';

  @override
  String get profileSafety => 'सुरक्षेची आणीबाणी कळयात';

  @override
  String get profileAbout => 'Nexmile विशीं';

  @override
  String get couponsEmptyTitle => 'आतां एकूय कूपन ना';

  @override
  String get couponsEmptyBody =>
      'तुमकां वापरूं येता अशें कूपन आसत तेन्ना तें हांगा दिसतलें.';

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
    return 'चड आनी चड $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount परस चडच्या ऑर्डरांचेर';
  }

  @override
  String couponValidTill(String date) {
    return '$date मेरेन वैध';
  }

  @override
  String get couponAllRestaurants => 'सगळ्या रेस्टॉरंटांनी';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant हांगा';
  }

  @override
  String couponCopied(String code) {
    return 'कोड $code कॉपी जालो';
  }

  @override
  String get favouritesEmptyTitle => 'अजून आवडीचें कांयच ना';

  @override
  String get favouritesEmptyBody =>
      'रेस्टॉरंट हांगा जतनाय करुंक ताचेर आशिल्ल्या काळजाचेर टॅप करात.';

  @override
  String get helpCall => 'आमकां कॉल करात';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'आमकां ईमेल करात';

  @override
  String helpHours(String hours) {
    return 'आमी $hours उपलब्ध आसांव';
  }

  @override
  String get helpFaqs => 'सदांचे प्रस्न';

  @override
  String get helpNothing =>
      'आदाराची म्हायती आतां उपलब्ध ना. उपकार करून उपरांत परत यत्न करात.';

  @override
  String get feedbackPrompt => 'Nexmile वापरून तुमकां कशें दिसता?';

  @override
  String get feedbackHint =>
      'तुमकां कितें आवडलें, वा आमी कितें सुदारूं येता तें सांगात';

  @override
  String get feedbackNeedRating => 'पयलीं रेटिंग वेंचात';

  @override
  String get feedbackThanks =>
      'देव बरें करूं! तुमचो अभिप्राय आमच्या पंगडाक पावला.';

  @override
  String get safetyIntro =>
      'तुमकां वा हेर कोणाक धोको आसल्यार, पयलीं आणीबाणी सेवांक कॉल करात.';

  @override
  String get safetyCallEmergency => '112 चेर कॉल करात';

  @override
  String get safetyCallEmergencyBody => 'पुलीस, अग्निशमन आनी ॲम्बुलन्स';

  @override
  String get safetyCallNexmile => 'Nexmile सुरक्षा लायनीक कॉल करात';

  @override
  String get safetyCallNexmileBody => 'दीसरात जाप दितात';

  @override
  String aboutVersion(String version) {
    return 'आवृत्ती $version';
  }

  @override
  String get aboutTerms => 'सेवा अटी';

  @override
  String get aboutPrivacy => 'गुपीतपण धोरण';

  @override
  String get aboutLicences => 'ओपन-सोर्स परवाने';

  @override
  String get notifyOrderUpdates => 'ऑर्डर अपडेट';

  @override
  String get notifyOrderUpdatesBody =>
      'सदांच सुरू, जाका लागून तुमचें जेवण खंय आसा तें तुमकां कळटा.';

  @override
  String get notifyPromotions => 'ऑफर आनी प्रमोशन';

  @override
  String get notifyPromotionsBody =>
      'डील, कूपनां आनी तुमच्या लागसारचीं नवीं रेस्टॉरंटां.';

  @override
  String get notifyPhoneOff =>
      'ह्या फोनाचेर Nexmile खातीर नोटिफिकेशनां बंद आसात.';

  @override
  String get notifyTurnOn => 'सुरू करात';

  @override
  String get linkOpenFailed => 'हें ह्या फोनाचेर उगडूंक जायना.';

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
  String get walletTitle => 'Nexmile वॉलेट';

  @override
  String get walletBalance => 'वॉलेट शिल्लक';

  @override
  String get walletBalanceHint => 'खंयच्याय ऑर्डराचे पैशे भरपाक वापरात.';

  @override
  String get walletAddMoney => 'पैशे जोडात';

  @override
  String get walletEnterAmount => 'रक्कम घालात';

  @override
  String walletAmountRange(String min, String max) {
    return '$min आनी $max मदीं';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount जोडात';
  }

  @override
  String get walletSecuredBy => 'पेमेंट Razorpay वरवीं सुरक्षीत आसात';

  @override
  String get walletHistory => 'इतिहास';

  @override
  String get walletNoHistory =>
      'अजून एकूय व्यवहार ना. तुमी जोडटात वा खर्च करतात ते पैशे हांगा दिसतले.';

  @override
  String get walletEntryTopUp => 'पैशे जोडले';

  @override
  String get walletEntryOrder => 'ऑर्डराखातीर पैशे भरले';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ऑर्डर $number खातीर पैशे भरले';
  }

  @override
  String get walletEntryRefund => 'परतफेड';

  @override
  String walletMoneyAdded(String amount) {
    return 'तुमच्या वॉलेटांत $amount जोडले';
  }

  @override
  String get walletPaymentFailed =>
      'पेमेंट जावंक ना. तुमच्या खात्यांतल्यान खंयचेच पैशे कापूंक नात.';

  @override
  String get walletPaymentConfirming =>
      'पेमेंट मेळ्ळें. तुमची शिल्लक थोड्या मिनटांनी अपडेट जातली.';

  @override
  String get walletUseBalance => 'वॉलेट शिल्लक वापरात';

  @override
  String walletAvailable(String amount) {
    return 'उपलब्ध: $amount';
  }

  @override
  String get walletPaidFromWallet => 'वॉलेटांतल्यान भरले';

  @override
  String get walletPayOnDelivery => 'डिलिव्हरीचेर दिवपाचें';

  @override
  String get walletCoversOrder => 'पुराय तुमच्या वॉलेटांतल्यान भरले';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet वॉलेटांतल्यान, $rest डिलिव्हरीचेर';
  }

  @override
  String get walletTopUpUnavailable =>
      'आतां पैशे जोडूंक मेळना. उपकार करून उपरांत परत यत्न करात.';

  @override
  String walletFull(String limit) {
    return 'तुमचें वॉलेट $limit मर्यादेक पावलां.';
  }

  @override
  String get searchAddressHint => 'वाठार, रस्तो वा खूण सोदात';

  @override
  String get selectLocationTitle => 'सुवात वेंचात';

  @override
  String get useCurrentLocation => 'सद्याची सुवात वापरात';

  @override
  String get locatingYou => 'तुमी खंय आसात तें सोदतां…';

  @override
  String get locationOffHint => 'हें वापरपाक सुवातेची परवानगी दियात';

  @override
  String get savedAddressesHeading => 'जतनाय केल्ले नामे';

  @override
  String get recentLocationsHeading => 'हालींच्यो सुवाती';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'डिलिव्हरीची सुवात वेंचात';

  @override
  String get movePinTooltip => 'पिन तुमच्या नेमक्या डिलिव्हरी सुवातेर व्हरात';

  @override
  String get locatingPin => 'नामो सोदतां…';

  @override
  String get deliveryDetailsHeading => 'डिलिव्हरीचो तपशील';

  @override
  String get addressDetailsLabel => 'नाम्याचो तपशील*';

  @override
  String get addressDetailsHint => 'देखीक: माळो, घर क्रमांक';

  @override
  String get missingAreaHint =>
      'ह्या पिनाचो पुराय नामो आमकां वाचूंक मेळ्ळो ना. उपकार करून उरिल्लो भरात.';

  @override
  String get whoToContact => 'ह्या डिलिव्हरी खातीर आमी कोणाक संपर्क करचो?';

  @override
  String get contactMyself => 'हांव स्वता';

  @override
  String get contactSomeoneElse => 'हेर कोणूय';

  @override
  String get receiverDetailsHeading => 'ह्या नाम्या खातीर घेवप्याचो तपशील';

  @override
  String get receiverAddPrompt => 'घेवप्याचें नांव आनी क्रमांक जोडात';

  @override
  String get receiverSheetTitle => 'घेवप्याचो तपशील';

  @override
  String get doorPhotoHeading => 'दार/इमारतीचो फोटो (ऐच्छीक)';

  @override
  String get doorPhotoAdd => 'फोटो जोडात';

  @override
  String get doorPhotoBody =>
      'हाका लागून आमच्या डिलिव्हरी पार्टनरांक तुमची नेमकी सुवात बेगीन सोदूंक मेळटा';

  @override
  String get doorPhotoChange => 'बदलात';

  @override
  String get doorPhotoRemove => 'काडात';

  @override
  String get photoFromCamera => 'फोटो काडात';

  @override
  String get photoFromGallery => 'गॅलरींतल्यान वेंचात';

  @override
  String get photoUploaded => 'फोटो जोडलो';

  @override
  String get photoUploadFailed =>
      'फोटो अपलोड जावंक ना. उपकार करून उपरांत परत यत्न करात.';

  @override
  String get addressSavedPhotoFailed => 'नामो जतनाय केलो. फोटो अपलोड जावंक ना.';

  @override
  String get removePhotoLabel => 'फोटो काडात';

  @override
  String get photoRemoved => 'फोटो काडलो';

  @override
  String get shareLabel => 'शेअर करात';

  @override
  String get addDoorPhotoLabel => 'दाराचो फोटो जोडात';

  @override
  String get searchAddressNoResults =>
      'एकूय सुवात मेळूंक ना. लागसारची खूण, वाठाराचें नांव वा पिन कोड यत्न करात.';

  @override
  String get clearLabel => 'पुसात';

  @override
  String get trackingArrivingNow => 'आतां पावता';

  @override
  String get trackingLive => 'लायव्ह';

  @override
  String get trackingStepConfirmed => 'निश्चीत';

  @override
  String get trackingStepPreparing => 'तयार जाता';

  @override
  String get trackingStepOnTheWay => 'वाटेर';

  @override
  String get trackingStepDelivered => 'डिलिव्हर जाली';

  @override
  String get trackingFindingRider => 'डिलिव्हरी पार्टनर नेमतात…';

  @override
  String get trackingPinYou => 'तुमी';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance पयस आसा';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name हांकां मेसेज करात';
  }

  @override
  String get trackingDeliveringTo => 'डिलिव्हरी नामो';

  @override
  String get trackingOrderDetails => 'ऑर्डराचो तपशील';

  @override
  String get dispatchSearching => 'रेस्टॉरंटा लागसार डिलिव्हरी पार्टनर सोदतात…';

  @override
  String get dispatchNoRider =>
      'अजून खंयच्याच डिलिव्हरी पार्टनरान ही ऑर्डर घेवंक ना. आमचो पंगड आतां एकल्याक नेमता.';

  @override
  String get vehicleBike => 'बायक';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleBicycle => 'सायकल';

  @override
  String get vehicleElectric => 'इलेक्ट्रिक स्कूटर';

  @override
  String get exitTitle => 'Nexmile मदल्यान भायर सरूं?';

  @override
  String get exitBody => 'तुमकां खरेंच ॲपांतल्यान भायर सरपाचें आसा?';

  @override
  String get exitConfirm => 'भायर सरात';

  @override
  String cartSavedBanner(String amount) {
    return 'ह्या ऑर्डराचेर तुमची $amount बचत जाली';
  }

  @override
  String get cartAddMoreItems => 'आनीक वस्तू जोडात';

  @override
  String get cartAddNote => 'रेस्टॉरंटाखातीर नोंद जोडात';

  @override
  String get cartOrderNoteHint =>
      'देखीक: खंयच्याच पदार्थांत कांदो वा लसूण घालूं नाकात';

  @override
  String get cartNoteSave => 'जतनाय करात';

  @override
  String get cartNoCutlery => 'चमचे-काटे धाडूं नाकात';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिकचो कचरो उणो करपाक मदत केल्ल्या खातीर देव बरें करूं';

  @override
  String get cartSavingsCorner => 'बचतीचो कोनो';

  @override
  String get cartDeliveryInstructions => 'डिलिव्हरीच्यो सुचोवण्यो';

  @override
  String get cartInstructionsRider =>
      'हीं फकत तुमच्या डिलिव्हरी पार्टनराकच दिसतात';

  @override
  String get instructionLeaveAtDoor => 'दाराकडेन दवरात';

  @override
  String get instructionNoBell => 'घांट वाजोवंक नाकात';

  @override
  String get instructionNoCall => 'कॉल करूं नाकात';

  @override
  String get instructionSecurity => 'राखणदाराकडेन दियात';

  @override
  String get instructionPet => 'घरांत पाळीव मोनजात';

  @override
  String get cartInclTaxes => 'कर आनी शुल्कां धरून';

  @override
  String cartSavedTag(String amount) {
    return '$amount बचत';
  }

  @override
  String get cartPayUsing => 'हाचे वरवीं पैशे भरात';

  @override
  String get cartWalletAndCash => 'वॉलेट + रोकड';

  @override
  String cartCashRest(String amount) {
    return 'ऑर्डर पावतकच $amount भरात';
  }

  @override
  String get cartCashFull => 'तुमची ऑर्डर पावतकच पैशे भरात';

  @override
  String get cartCashNothing => 'डिलिव्हरीचेर कांयच दिवपाचें ना';

  @override
  String get cartTotal => 'बेरीज';

  @override
  String get cartPlaceOrder => 'ऑर्डर करात';

  @override
  String cartDeliverTo(String place) {
    return '$place हांगा डिलिव्हरी';
  }

  @override
  String get cartChange => 'बदलात';

  @override
  String get cartNoAddress => 'डिलिव्हरी खंय करची?';

  @override
  String get cartNoAddressHint => 'ऑर्डर करपाक नामो जोडात';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant कडल्यान पिकअप';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'सुमार $minutes मिनटांनी तयार';
  }

  @override
  String get cartChooseAddress => 'डिलिव्हरीचो नामो वेंचात';

  @override
  String get cartDone => 'जालें';

  @override
  String get supportTitle => 'Nexmile आदार';

  @override
  String get supportBubble => 'मदत';

  @override
  String get supportAiLabel => 'AI सहाय्यक';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile पंगड';
  }

  @override
  String get supportDemoBanner =>
      'डेमो: हीं उत्तरां फकत नमुन्याचीं. खरो AI सहाय्यक अजून जोडूंक ना.';

  @override
  String get supportEmptyTitle => 'आमी कशी मदत करूं?';

  @override
  String get supportEmptyBody =>
      'ऑर्डर, पेमेंट वा हेर खंयच्याय गजाली विशीं विचारात. आमचो AI सहाय्यक पयलीं जाप दिता, आनी तो मदत करूंक शकना जाल्यार आमच्या पंगडांतलो एक मनीस फुडें सांबाळटा.';

  @override
  String get supportSuggestWhere => 'म्हजी ऑर्डर खंय आसा?';

  @override
  String get supportSuggestMissing => 'कितें तरी उणें आसा';

  @override
  String get supportSuggestRefund => 'म्हाका परतफेडी विशीं एक प्रस्न आसा';

  @override
  String get supportComposerHint => 'मेसेज बरयात';

  @override
  String get supportSend => 'धाडात';

  @override
  String get supportTyping => 'AI सहाय्यक बरयता…';

  @override
  String get supportNotSent => 'धाडूंक ना';

  @override
  String get supportTookTooLong => 'खूब वेळ लागलो.';

  @override
  String get supportSlowDown => 'आनीक धाडचे आदीं थोडो वेळ थांबात.';

  @override
  String get supportUnreachable =>
      'आतां चॅटाकडेन संपर्क जायना. आमकां कॉल करात, वा कांय मिनटांनी परत यत्न करात.';

  @override
  String get supportOffline =>
      'तुमी ऑफलायन आसात. ही तुमची निमणी जतनाय केल्ली चॅट.';

  @override
  String get supportClosed => 'ही चॅट बंद जाल्या.';

  @override
  String get supportStartNew => 'नवी चॅट सुरू करात';

  @override
  String get supportTalkToPerson => 'एका मनशाकडेन उलयात';

  @override
  String get supportMarkSolved => 'सुटलें म्हूण खूण करात';

  @override
  String get supportHelpful => 'उपेगी';

  @override
  String get supportNotHelpful => 'उपेगी ना';

  @override
  String get supportNeedHelp => 'मदत जाय?';

  @override
  String get supportChatWithUs => 'आमचे कडेन चॅट करात';

  @override
  String get supportChatWithUsBody =>
      'आमचो AI सहाय्यक कांय सेकंदांनी जाप दिता, आनी तुमकां गरज आसल्यार एक मनीस फुडें सांबाळटा.';

  @override
  String get supportActionFailed => 'तें जावंक ना. परत यत्न करात.';

  @override
  String get supportOrderNotFound => 'ही ऑर्डर तुमच्या खात्यांत मेळ्ळी ना.';

  @override
  String get supportOrderLookupDown =>
      'आतां ही ऑर्डर पळोवंक जायना. तुमी तुमचो प्रस्न बरोवंक शकतात.';

  @override
  String get supportHandedOverNote => 'टीमांतलो एक वांगडी जाप दितलो';

  @override
  String get restaurantNew => 'नवें';

  @override
  String get walletHideBalance => 'शिल्लक लिपयात';

  @override
  String get walletShowBalance => 'शिल्लक दाखयात';

  @override
  String get walletBalanceHiddenLabel => 'शिल्लक लिपयल्या';

  @override
  String walletUpdatedAt(String time) {
    return 'निमणें अपडेट: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'कमीत कमी $amount जोडात';
  }

  @override
  String walletAboveMax(String amount) {
    return 'तुमी चड आनी चड $amount जोडूं येता';
  }

  @override
  String get walletOpeningPayment => 'पेमेंट उगडटा…';

  @override
  String get walletConfirmingPayment => 'पेमेंट निश्चीत जाता…';

  @override
  String get walletTransactions => 'व्यवहार';

  @override
  String get walletFilterAll => 'सगळे';

  @override
  String get walletFilterAdded => 'जोडिल्ले पैशे';

  @override
  String get walletFilterSpent => 'खर्च केल्ले पैशे';

  @override
  String get walletSearch => 'सोदात';

  @override
  String get walletSearchHint => 'ऑर्डर क्रमांक वा ID सोदात';

  @override
  String get walletDateFilter => 'तारखेन फिल्टर करात';

  @override
  String get walletClearFilters => 'फिल्टर काडात';

  @override
  String get walletNoMatches => 'तुमच्या फिल्टरांक जुळपी एकूय व्यवहार ना';

  @override
  String get walletEmptyTitle => 'अजून एकूय व्यवहार ना';

  @override
  String get walletEmptyBody =>
      'तुमी जोडटात, ऑर्डरांचेर खर्च करतात वा परतफेड म्हूण परत मेळटात ते पैशे हांगा दिसतले.';

  @override
  String get walletToday => 'आयज';

  @override
  String get walletYesterday => 'काल';

  @override
  String walletLatestOnly(int count) {
    return 'तुमचे हालींचे $count व्यवहार दाखयल्यात';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ऑर्डर $number खातीर परतफेड';
  }

  @override
  String get walletDetailsTitle => 'व्यवहाराचो तपशील';

  @override
  String get walletDetailDate => 'तारीख आनी वेळ';

  @override
  String get walletDetailId => 'व्यवहार ID';

  @override
  String get walletDetailType => 'प्रकार';

  @override
  String get walletDetailMethod => 'पेमेंटाची पद्दत';

  @override
  String get walletDetailStatus => 'स्थिती';

  @override
  String get walletDetailOrder => 'ऑर्डर';

  @override
  String get walletDetailReference => 'पेमेंट संदर्भ';

  @override
  String get walletDetailBalanceAfter => 'उपरांतची शिल्लक';

  @override
  String get walletCredit => 'क्रेडिट';

  @override
  String get walletDebit => 'डेबिट';

  @override
  String get walletStatusSuccess => 'यशस्वी';

  @override
  String get walletStatusPending => 'प्रलंबीत';

  @override
  String get walletStatusFailed => 'अयशस्वी';

  @override
  String get walletMethodOnline => 'ऑनलायन पेमेंट';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'कार्ड';

  @override
  String get walletMethodNetbanking => 'नेट बँकिंग';

  @override
  String get walletMethodRefund => 'वॉलेटांत परतफेड';

  @override
  String get walletCopyId => 'ID कॉपी करात';

  @override
  String get walletIdCopied => 'व्यवहार ID कॉपी जालो';

  @override
  String get walletShareDetails => 'तपशील शेअर करात';
}
