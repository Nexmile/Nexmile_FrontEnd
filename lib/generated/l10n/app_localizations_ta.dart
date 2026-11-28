// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'இந்தப் புலம் அவசியம்';

  @override
  String get tagline => 'விரைவான டெலிவரி. புத்துணர்ச்சியான புன்னகை.';

  @override
  String get chooseLanguageTitle => 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get chooseLanguageSubtitle =>
      'உங்களுக்கு வசதியான மொழியைத் தேர்ந்தெடுக்கவும். அமைப்புகளில் எப்போது வேண்டுமானாலும் இதை மாற்றலாம்.';

  @override
  String get searchLanguageHint => 'மொழியைத் தேடுங்கள்';

  @override
  String get noLanguageFound => 'மொழி எதுவும் கிடைக்கவில்லை';

  @override
  String languagesAvailable(int count) {
    return '$count மொழிகள் உள்ளன';
  }

  @override
  String get continueLabel => 'தொடரவும்';

  @override
  String get selectedLabel => 'தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get defaultLabel => 'இயல்பு';

  @override
  String get homeTitle => 'Nexmile-க்கு வரவேற்கிறோம்';

  @override
  String get homeSubtitle =>
      'புதிய மளிகைப் பொருட்கள், சூடான உணவு மற்றும் அன்றாடத் தேவைகள் உங்கள் அருகிலுள்ள கடைகளிலிருந்து.';

  @override
  String get changeLanguage => 'மொழியை மாற்று';

  @override
  String get languageUpdated => 'மொழி மாற்றப்பட்டது';

  @override
  String get appLanguageLabel => 'செயலி மொழி';

  @override
  String greetingNamed(String name) {
    return 'வணக்கம், $name';
  }

  @override
  String get loginTitle => 'Nexmile-இல் உள்நுழையவும்';

  @override
  String get loginSubtitle =>
      'உங்கள் மின்னஞ்சல் அல்லது கைபேசி எண்ணை உள்ளிடுங்கள், சரிபார்ப்புக் குறியீட்டை அனுப்புகிறோம்.';

  @override
  String get emailOrPhoneLabel => 'மின்னஞ்சல் அல்லது கைபேசி எண்';

  @override
  String get emailOrPhoneHint => 'name@example.com அல்லது 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'சரியான மின்னஞ்சல் முகவரி அல்லது 10 இலக்க கைபேசி எண்ணை உள்ளிடவும்';

  @override
  String get loginHeadline =>
      'அருகிலுள்ள கடைகளிலிருந்து சூடான உணவு, விரைவான டெலிவரி';

  @override
  String get loginOrSignUp => 'உள்நுழையவும் அல்லது பதிவு செய்யவும்';

  @override
  String get loginEmailHint => 'உங்கள் மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get invalidEmail => 'சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get sendCode => 'குறியீட்டை அனுப்பு';

  @override
  String get agreeToTermsOnContinue =>
      'தொடர்வதன் மூலம், எங்கள் சேவை விதிமுறைகள் மற்றும் தனியுரிமைக் கொள்கையை ஏற்கிறீர்கள்.';

  @override
  String get otpTitle => 'நீங்கள்தான் என உறுதிப்படுத்துங்கள்';

  @override
  String otpSubtitle(String target) {
    return '$target க்கு அனுப்பிய 6 இலக்கக் குறியீட்டை உள்ளிடவும்';
  }

  @override
  String get verifyCode => 'சரிபார்க்கவும்';

  @override
  String get resendCode => 'குறியீட்டை மீண்டும் அனுப்பு';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds வினாடிகளில் மீண்டும் அனுப்பலாம்';
  }

  @override
  String get codeResent => 'புதிய குறியீடு அனுப்பப்பட்டது';

  @override
  String get incorrectCode =>
      'இந்தக் குறியீடு தவறானது அல்லது காலாவதியாகிவிட்டது. புதியதைக் கோரவும்.';

  @override
  String get enterFullCode => '6 இலக்கங்களையும் உள்ளிடவும்';

  @override
  String get accountSuspended =>
      'இந்தக் கணக்கு இடைநிறுத்தப்பட்டுள்ளது. ஆதரவைத் தொடர்பு கொள்ளவும்.';

  @override
  String get tooManyAttempts =>
      'பல முறை முயற்சித்துவிட்டீர்கள். சிறிது நேரம் கழித்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get sessionExpired =>
      'உங்கள் அமர்வு காலாவதியாகிவிட்டது. மீண்டும் உள்நுழையவும்.';

  @override
  String get networkError =>
      'இணைய இணைப்பு இல்லை. உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get developmentCode => 'டெவலப்மென்ட் குறியீடு';

  @override
  String get signOut => 'வெளியேறு';

  @override
  String get signedOut => 'நீங்கள் வெளியேறிவிட்டீர்கள்';

  @override
  String get somethingWentWrong => 'ஏதோ தவறு நடந்தது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get profileTitle => 'சுயவிவரம்';

  @override
  String get viewProfile => 'சுயவிவரத்தைப் பார்';

  @override
  String get nameLabel => 'பெயர்';

  @override
  String get emailLabel => 'மின்னஞ்சல்';

  @override
  String get mobileLabel => 'கைபேசி எண்';

  @override
  String get accountStatusLabel => 'கணக்கு நிலை';

  @override
  String get statusActive => 'செயலில்';

  @override
  String get statusPending => 'நிலுவையில்';

  @override
  String get statusSuspended => 'இடைநிறுத்தப்பட்டது';

  @override
  String get verifiedLabel => 'சரிபார்க்கப்பட்டது';

  @override
  String get notProvided => 'சேர்க்கப்படவில்லை';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get navHome => 'முகப்பு';

  @override
  String get navSearch => 'தேடல்';

  @override
  String get navOrders => 'ஆர்டர்கள்';

  @override
  String get cancelLabel => 'ரத்து செய்';

  @override
  String get deliverTo => 'டெலிவரி முகவரி';

  @override
  String get searchDishesHint => 'உணவு அல்லது உணவகத்தைத் தேடுங்கள்';

  @override
  String get searchTitle => 'தேடல்';

  @override
  String get searchNoResultsTitle => 'எதுவும் கிடைக்கவில்லை';

  @override
  String get searchNoResultsSubtitle =>
      'வேறு உணவு, சமையல் வகை அல்லது உணவகப் பெயரை முயற்சிக்கவும்.';

  @override
  String get cravingTitle => 'என்ன சாப்பிட ஆசை?';

  @override
  String get offersTitle => 'உங்களுக்கான சலுகைகள்';

  @override
  String get restaurantsNearby => 'அருகிலுள்ள உணவகங்கள்';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count உணவகங்கள்',
      one: '1 உணவகம்',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'இங்கே இன்னும் எதுவும் இல்லை';

  @override
  String get noRestaurantsSubtitle =>
      'வேறு வகையை முயற்சிக்கவும் அல்லது வடிகட்டியை நீக்கவும்.';

  @override
  String minutesAway(int minutes) {
    return '$minutes நிமி';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance கி.மீ';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மதிப்பீடுகள்',
      one: '1 மதிப்பீடு',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'இருவருக்கு ₹$amount';
  }

  @override
  String get freeDelivery => 'இலவச டெலிவரி';

  @override
  String percentOff(int percent) {
    return '$percent% தள்ளுபடி';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'உங்கள் ஆர்டரில் $percent% தள்ளுபடி';
  }

  @override
  String get vegOnly => 'சைவம் மட்டும்';

  @override
  String get bestseller => 'அதிகம் விற்பனை';

  @override
  String get addLabel => 'சேர்';

  @override
  String get noVegDishesTitle => 'சைவ உணவுகள் இல்லை';

  @override
  String get noVegDishesSubtitle =>
      'முழு மெனுவைப் பார்க்க சைவ வடிகட்டியை அணைக்கவும்.';

  @override
  String get replaceCartTitle => 'புதிய கூடையைத் தொடங்கவா?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'உங்கள் கூடையில் $restaurant இலிருந்து பொருட்கள் உள்ளன. இதைச் சேர்த்தால் அவை நீக்கப்படும்.';
  }

  @override
  String get replaceCartConfirm => 'நீக்கிச் சேர்';

  @override
  String get cartTitle => 'உங்கள் கூடை';

  @override
  String get cartEmptyTitle => 'உங்கள் கூடை காலியாக உள்ளது';

  @override
  String get cartEmptySubtitle =>
      'தொடங்க ஒரு உணவகத்திலிருந்து உணவைச் சேர்க்கவும்.';

  @override
  String get browseRestaurants => 'உணவகங்களைப் பார்';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பொருட்கள்',
      one: '1 பொருள்',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'கூடையைப் பார்';

  @override
  String get itemTotal => 'பொருட்களின் மொத்தம்';

  @override
  String get deliveryFeeLabel => 'டெலிவரி கட்டணம்';

  @override
  String get taxesAndCharges => 'வரிகள் மற்றும் கட்டணங்கள்';

  @override
  String get freeLabel => 'இலவசம்';

  @override
  String get toPay => 'செலுத்த வேண்டியது';

  @override
  String placeOrderFor(String amount) {
    return 'ஆர்டர் செய் · $amount';
  }

  @override
  String get ordersTitle => 'உங்கள் ஆர்டர்கள்';

  @override
  String get ordersEmptyTitle => 'இதுவரை ஆர்டர்கள் இல்லை';

  @override
  String get ordersEmptySubtitle => 'உங்கள் முந்தைய ஆர்டர்கள் இங்கே தோன்றும்.';

  @override
  String get reorder => 'மீண்டும் ஆர்டர்';

  @override
  String orderTitle(String id) {
    return 'ஆர்டர் $id';
  }

  @override
  String get orderPlacedTitle => 'ஆர்டர் செய்யப்பட்டது';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'சுமார் $minutes நிமிடங்களில் வந்துவிடும்.';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant உங்கள் ஆர்டரைப் பெற்றுள்ளது.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'சுமார் $minutes நிமிடங்களில் தயாராகிவிடும்.';
  }

  @override
  String get trackYourOrder => 'ஆர்டரைக் கண்காணி';

  @override
  String get couponApplyTitle => 'கூப்பனைப் பயன்படுத்து';

  @override
  String get couponCodeLabel => 'கூப்பன் குறியீடு';

  @override
  String get couponApply => 'பயன்படுத்து';

  @override
  String couponAppliedTitle(String code) {
    return '$code பயன்படுத்தப்பட்டது';
  }

  @override
  String couponSaving(String amount) {
    return 'உங்களுக்கு $amount மிச்சம்';
  }

  @override
  String get couponRemove => 'நீக்கு';

  @override
  String searchFor(String term) {
    return '\"$term\" தேடுங்கள்';
  }

  @override
  String get vegModeBadge => 'சுத்த சைவம்';

  @override
  String trackingExpectedBy(String time) {
    return '$time-க்குள் வந்துவிடும்';
  }

  @override
  String get orderAgainTitle => 'மீண்டும் ஆர்டர் செய்யுங்கள்';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + மேலும் $count',
      one: '$first + மேலும் 1',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max நிமி';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5-க்கு $rating மதிப்பீடு';
  }

  @override
  String get reorderReplaceTitle => 'உங்கள் கூடையை மாற்றவா?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant-இலிருந்து சேர்த்த உங்கள் கூடை நீக்கப்பட்டு, இந்த ஆர்டரின் உணவுகள் சேர்க்கப்படும்.';
  }

  @override
  String get reorderReplace => 'மாற்று';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes இப்போது கிடைக்கவில்லை, அதனால் அவை சேர்க்கப்படவில்லை.',
      one: '$dishes இப்போது கிடைக்கவில்லை, அதனால் சேர்க்கப்படவில்லை.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'இந்த உணவுகளில் எதுவும் இப்போது கிடைக்கவில்லை.';

  @override
  String get searchShort => 'தேடு';

  @override
  String get favouriteSave => 'பிடித்தவற்றில் சேர்';

  @override
  String get restaurantAbout => 'இந்த உணவகம் பற்றி';

  @override
  String ratingByCount(String count) {
    return '$count பேர்';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count சலுகைகள்',
      one: '1 சலுகை',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile-இல் $restaurant-இலிருந்து ஆர்டர் செய்யுங்கள்';
  }

  @override
  String get ordersSearchHint => 'உணவகம் அல்லது உணவின் பெயரில் தேடுங்கள்…';

  @override
  String get ordersNoMatch =>
      'அந்தப் பெயரில் உணவகம் அல்லது உணவு உள்ள ஆர்டர்கள் எதுவும் இல்லை.';

  @override
  String orderPlacedOn(String date) {
    return '$date அன்று ஆர்டர் செய்யப்பட்டது';
  }

  @override
  String get viewMenu => 'மெனுவைப் பார்';

  @override
  String get navHistory => 'வரலாறு';

  @override
  String get exploreMore => 'மேலும் பாருங்கள்';

  @override
  String get exploreTopRated => 'சிறந்த மதிப்பீடு';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'உங்களுக்கு டெலிவரி செய்யும் $count உணவகங்கள்',
      one: 'உங்களுக்கு டெலிவரி செய்யும் 1 உணவகம்',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'டெலிவரி எப்படி இருந்தது?';

  @override
  String get rateHowWasFood => 'உணவு எப்படி இருந்தது?';

  @override
  String get rateWordTerrible => 'மிக மோசம்';

  @override
  String get rateWordBad => 'மோசம்';

  @override
  String get rateWordOkay => 'பரவாயில்லை';

  @override
  String get rateWordGood => 'நல்லது';

  @override
  String get rateWordLoved => 'மிகவும் பிடித்தது!';

  @override
  String get rateWhatWentWrong => 'என்ன குறை இருந்தது?';

  @override
  String get rateWhatYouLiked => 'உங்களுக்கு என்ன பிடித்தது?';

  @override
  String get rateRiderNoteHint => 'டெலிவரி பற்றி ஒரு குறிப்பு (விருப்பம்)';

  @override
  String get rateReviewHeading => 'விமர்சனம் எழுதுங்கள்';

  @override
  String get rateFoodFirst => 'அனுப்ப உணவை மதிப்பிடுங்கள்';

  @override
  String get rateYouRated => 'இந்த ஆர்டரை நீங்கள் மதிப்பிட்டுள்ளீர்கள்';

  @override
  String get ratePromptLater => 'இப்போது வேண்டாம்';

  @override
  String get tagTasty => 'சுவையானது';

  @override
  String get tagFreshHot => 'சூடாக & புதிதாக';

  @override
  String get tagGoodPortion => 'நல்ல அளவு';

  @override
  String get tagGoodPackaging => 'நல்ல பேக்கிங்';

  @override
  String get tagValueForMoney => 'விலைக்கேற்ற தரம்';

  @override
  String get tagHygienic => 'சுத்தமானது';

  @override
  String get tagColdFood => 'ஆறிப்போன உணவு';

  @override
  String get tagPoorTaste => 'சுவை சரியில்லை';

  @override
  String get tagSmallPortion => 'அளவு குறைவு';

  @override
  String get tagWrongItems => 'தவறான பொருட்கள்';

  @override
  String get tagMissingItems => 'விடுபட்ட பொருட்கள்';

  @override
  String get tagPoorPackaging => 'மோசமான பேக்கிங்';

  @override
  String get tagTooOily => 'அதிக எண்ணெய் அல்லது காரம்';

  @override
  String get tagOnTime => 'சரியான நேரத்தில்';

  @override
  String get tagPolite => 'மரியாதையான நடத்தை';

  @override
  String get tagFollowedInstructions => 'அறிவுறுத்தல்களைப் பின்பற்றினார்';

  @override
  String get tagCarefulHandling => 'உணவைக் கவனமாகக் கையாண்டார்';

  @override
  String get tagGoodCommunication => 'தகவல் தெரிவித்தார்';

  @override
  String get tagLate => 'தாமதமான டெலிவரி';

  @override
  String get tagRude => 'மரியாதையற்ற நடத்தை';

  @override
  String get tagIgnoredInstructions => 'அறிவுறுத்தல்களைப் பின்பற்றவில்லை';

  @override
  String get tagFoodSpilled => 'உணவு சிந்தியிருந்தது';

  @override
  String get tagAskedExtraMoney => 'கூடுதல் பணம் கேட்டார்';

  @override
  String get tagUnprofessional => 'தொழில்முறையாக இல்லை';

  @override
  String rateDeliveredBy(String name) {
    return '$name டெலிவரி செய்தார்';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant-இலிருந்து';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant-இலிருந்து வந்த உங்கள் ஆர்டர் எப்படி இருந்தது?';
  }

  @override
  String get orderDeliveredTitle => 'டெலிவரி செய்யப்பட்டது';

  @override
  String get orderDeliveredSubtitle => 'உணவை ரசியுங்கள்.';

  @override
  String get statusOrderPlaced => 'ஆர்டர் செய்யப்பட்டது';

  @override
  String get statusPreparing => 'உணவு தயாராகிறது';

  @override
  String get statusOnTheWay => 'வழியில் உள்ளது';

  @override
  String get statusDelivered => 'டெலிவரி செய்யப்பட்டது';

  @override
  String get keepBrowsing => 'தொடர்ந்து பார்';

  @override
  String get backToHome => 'முகப்புக்குத் திரும்பு';

  @override
  String get prototypeNotice =>
      'மாதிரி உணவகப் பட்டியல் — உண்மையான கடைகள் API வந்ததும் சேரும்.';

  @override
  String get prototypeCheckoutNotice =>
      'இது ஒரு மாதிரி வடிவமைப்பு. பணம் எதுவும் வசூலிக்கப்படவில்லை, உண்மையான ஆர்டரும் இல்லை.';

  @override
  String get prototypeTrackingNotice =>
      'இந்த மாதிரிக்காக டிராக்கிங் உருவகப்படுத்தப்பட்டுள்ளது.';

  @override
  String get locationTitle => 'எங்கு டெலிவரி செய்ய வேண்டும்?';

  @override
  String get locationSubtitle =>
      '1 கி.மீ சுற்றளவில் உள்ள கடைகளிலிருந்து மட்டுமே Nexmile டெலிவரி செய்கிறது, எனவே உங்கள் சரியான இடம் தேவை.';

  @override
  String get locationReasonRadiusTitle => '1 கி.மீ-க்குள் உள்ள கடைகள்';

  @override
  String get locationReasonRadiusBody =>
      'சூடாக வந்து சேரக்கூடிய கடைகளை மட்டுமே காட்டுகிறோம்.';

  @override
  String get locationReasonAccuracyTitle => 'சரியான வீட்டு வாசல்';

  @override
  String get locationReasonAccuracyBody =>
      'துல்லியமான இடம் இருந்தால், டெலிவரி நபர் அழைக்காமலேயே உங்களைக் கண்டுபிடிப்பார்.';

  @override
  String get locationReasonPrivacyTitle =>
      'செயலியைப் பயன்படுத்தும்போது மட்டும்';

  @override
  String get locationReasonPrivacyBody =>
      'பின்னணியில் நாங்கள் உங்களைக் கண்காணிப்பதில்லை; முகவரியை நீங்களே தட்டச்சு செய்யலாம்.';

  @override
  String get allowLocation => 'இருப்பிடத்தை அனுமதி';

  @override
  String get enterAddressManually => 'நானே முகவரியை உள்ளிடுகிறேன்';

  @override
  String get locationDenied =>
      'இருப்பிட அனுமதி மறுக்கப்பட்டது. நீங்களே பின்னை வைக்கலாம்.';

  @override
  String get locationDeniedForever =>
      'Nexmile-க்கு இருப்பிடம் தடுக்கப்பட்டுள்ளது. அமைப்புகளில் இயக்கவும் அல்லது பின்னை கையால் வைக்கவும்.';

  @override
  String get locationServiceOff =>
      'இந்தச் சாதனத்தில் இருப்பிடம் அணைக்கப்பட்டுள்ளது.';

  @override
  String get locationUnavailable =>
      'இருப்பிடத்தைப் பெற முடியவில்லை. பின்னை நீங்களே வைக்கவும்.';

  @override
  String permStepCount(int step, int total) {
    return '$total-இல் $step';
  }

  @override
  String get permNotNow => 'இப்போது வேண்டாம்';

  @override
  String get permLocationTitle => 'உங்கள் அருகில் உணவைக் கண்டறியுங்கள்';

  @override
  String get permNotifyTitle => 'ஆர்டர் அப்டேட் எதையும் தவறவிடாதீர்கள்';

  @override
  String get permNotifyBody =>
      'உங்கள் ஆர்டர் ஏற்கப்பட்டதும், எடுக்கப்பட்டதும், உங்கள் வாசலுக்கு வந்ததும் தெரிந்துகொள்ள அறிவிப்புகளை இயக்குங்கள்.';

  @override
  String get permNotifyLiveTitle => 'நேரலை ஆர்டர் அப்டேட்கள்';

  @override
  String get permNotifyLiveBody =>
      'ஏற்கப்பட்டது, சமைக்கப்படுகிறது, எடுக்கப்பட்டது, டெலிவரி செய்யப்பட்டது.';

  @override
  String get permNotifyRiderTitle => 'ரைடர் உங்கள் வாசலில்';

  @override
  String get permNotifyRiderBody =>
      'செயலியைப் பார்த்துக்கொண்டே இருக்காமல், எப்போது வெளியே வர வேண்டும் என்று தெரிந்துகொள்ளுங்கள்.';

  @override
  String get permNotifyControlTitle => 'கட்டுப்பாடு உங்களிடமே';

  @override
  String get permNotifyControlBody =>
      'உங்கள் ஃபோனின் அமைப்புகளில் எப்போது வேண்டுமானாலும் அறிவிப்புகளை அணைக்கலாம்.';

  @override
  String get permNotifyAllow => 'அறிவிப்புகளை இயக்கு';

  @override
  String get openSettings => 'அமைப்புகள்';

  @override
  String get pinLocationTitle => 'உங்கள் டெலிவரி பின்னை அமைக்கவும்';

  @override
  String get deliveryRadiusHint =>
      'Nexmile டெலிவரி செய்யும் 1 கி.மீ சுற்றளவை வட்டம் காட்டுகிறது.';

  @override
  String get useMyLocation => 'என் இருப்பிடத்தைப் பயன்படுத்து';

  @override
  String get deliveringHere => 'இங்கே டெலிவரி';

  @override
  String get dragToAdjust => 'பின்னை மாற்ற வரைபடத்தை நகர்த்தவும்';

  @override
  String get confirmLocation => 'இருப்பிடத்தை உறுதிசெய்';

  @override
  String get addressDetailsTitle => 'முகவரி விவரங்கள்';

  @override
  String get addressDetailsSubtitle =>
      'சரியான வாசலை அடைய வீட்டு எண் மற்றும் அடையாளத்தைச் சேர்க்கவும்.';

  @override
  String get pinnedLocation => 'குறிக்கப்பட்ட இடம்';

  @override
  String get changePin => 'மாற்று';

  @override
  String get saveAddressAs => 'இந்த முகவரியை இப்படிச் சேமி';

  @override
  String get labelHome => 'வீடு';

  @override
  String get labelWork => 'அலுவலகம்';

  @override
  String get labelOther => 'மற்றவை';

  @override
  String get addressLine1Label => 'வீடு / கட்டிட எண்';

  @override
  String get addressLine1Hint => '12A, கிரீன் ரெசிடென்சி';

  @override
  String get addressLine2Label => 'தெரு அல்லது பகுதி';

  @override
  String get addressLine2Hint => '2வது அவென்யூ, அண்ணா நகர்';

  @override
  String get landmarkLabel => 'அடையாளம்';

  @override
  String get landmarkHint => 'பேருந்து நிறுத்தத்திற்கு எதிரில்';

  @override
  String get cityLabel => 'நகரம்';

  @override
  String get stateLabel => 'மாநிலம்';

  @override
  String get pincodeLabel => 'பின் கோடு';

  @override
  String get invalidPincode => 'சரியான 6 இலக்க பின் கோடை உள்ளிடவும்';

  @override
  String get contactNameLabel => 'தொடர்பு பெயர்';

  @override
  String get contactPhoneLabel => 'தொடர்பு எண்';

  @override
  String get invalidMobileNumber => 'சரியான 10 இலக்க கைபேசி எண்ணை உள்ளிடவும்';

  @override
  String get makeDefaultAddress => 'இயல்பாக இங்கே டெலிவரி';

  @override
  String get saveAddress => 'முகவரியைச் சேமி';

  @override
  String get addressSaved => 'முகவரி சேமிக்கப்பட்டது';

  @override
  String get addressBookTitle => 'டெலிவரி முகவரிகள்';

  @override
  String get manageAddresses => 'சேமித்த முகவரிகளை நிர்வகி';

  @override
  String get noAddressesTitle => 'இதுவரை முகவரிகள் இல்லை';

  @override
  String get noAddressesSubtitle =>
      'உங்களுக்கு டெலிவரி செய்யும் கடைகளைக் காட்ட ஒரு முகவரியைச் சேர்க்கவும்.';

  @override
  String get addAddress => 'முகவரியைச் சேர்';

  @override
  String get setAsDefault => 'இயல்பாக அமை';

  @override
  String get editLabel => 'திருத்து';

  @override
  String get addressUpdated => 'முகவரி புதுப்பிக்கப்பட்டது';

  @override
  String get deleteLabel => 'நீக்கு';

  @override
  String get deleteAddressTitle => 'இந்த முகவரியை நீக்கவா?';

  @override
  String get deleteAddressMessage =>
      'பிறகு எப்போது வேண்டுமானாலும் மீண்டும் சேர்க்கலாம்.';

  @override
  String get rescueDealsTitle => 'உணவு மீட்பு';

  @override
  String get notTakingOrders => 'ஆர்டர் ஏற்கவில்லை';

  @override
  String get closedRightNow => 'இப்போது மூடியுள்ளது';

  @override
  String minimumOrder(String amount) {
    return 'குறைந்தது $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count மீதம்';
  }

  @override
  String get soldOut => 'விற்றுத் தீர்ந்தது';

  @override
  String get menuEmptyTitle => 'இன்னும் உணவுகள் இல்லை';

  @override
  String get menuEmptySubtitle => 'இந்த உணவகம் மெனுவைச் சேர்க்கவில்லை.';

  @override
  String get moreDishesTitle => 'மேலும் உணவுகள்';

  @override
  String get menuSearchHint => 'உணவுகளைத் தேடுங்கள்';

  @override
  String get filtersShort => 'வடிகட்டி';

  @override
  String get dietVeg => 'சைவம்';

  @override
  String get dietEgg => 'முட்டை';

  @override
  String get dietNonVeg => 'அசைவம்';

  @override
  String get menuBestsellerChip => 'அதிகம் விற்பனை';

  @override
  String get menuFoodType => 'உணவு வகை';

  @override
  String get menuShowOnly => 'இவற்றை மட்டும் காட்டு';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count உணவுகள்',
      one: '1 உணவு',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count உணவுகளைக் காட்டு',
      one: '1 உணவைக் காட்டு',
      zero: 'உணவுகள் இல்லை',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'வேறு உணவுப் பெயரை முயற்சிக்கவும் அல்லது ஒரு வடிகட்டியை நீக்கவும்.';

  @override
  String get menuBrowse => 'மெனு';

  @override
  String get customisable => 'விருப்பப்படி';

  @override
  String get requiredLabel => 'கட்டாயம்';

  @override
  String get optionalLabel => 'விருப்பம்';

  @override
  String get chooseOne => 'ஒன்றைத் தேர்வு செய்க';

  @override
  String chooseUpTo(int count) {
    return 'அதிகபட்சம் $count தேர்வு செய்க';
  }

  @override
  String chooseAtLeast(int count) {
    return 'குறைந்தது $count தேர்வு செய்க';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min முதல் $max வரை தேர்வு செய்க';
  }

  @override
  String get specialInstructions => 'சிறப்பு அறிவுறுத்தல்கள்';

  @override
  String get specialInstructionsHint => 'குறைவான காரம், வெங்காயம் வேண்டாம்…';

  @override
  String addForAmount(String amount) {
    return 'சேர் · $amount';
  }

  @override
  String get deliveryLabel => 'டெலிவரி';

  @override
  String get pickupLabel => 'நேரில் பெறுதல்';

  @override
  String get packagingLabel => 'பேக்கிங்';

  @override
  String get discountLabel => 'தள்ளுபடி';

  @override
  String get billDetailsTitle => 'கட்டண விவரம்';

  @override
  String get clearCart => 'கார்ட்டை காலி செய்';

  @override
  String get clearCartTitle => 'இந்த கார்ட்டை காலி செய்யவா?';

  @override
  String get clearCartMessage => 'இதில் உள்ள அனைத்தும் நீக்கப்படும்.';

  @override
  String unavailableItemsNotice(String items) {
    return 'இப்போது கிடைக்கவில்லை: $items';
  }

  @override
  String get removeUnavailable => 'அவற்றை நீக்கு';

  @override
  String minimumNotMet(String amount) {
    return 'குறைந்தபட்ச ஆர்டர் $amount';
  }

  @override
  String get checkoutTitle => 'செக்அவுட்';

  @override
  String get deliveryAddressLabel => 'டெலிவரி முகவரி';

  @override
  String get noAddressSelected => 'முகவரி தேர்வு செய்யவில்லை';

  @override
  String get paymentMethodLabel => 'கட்டணம்';

  @override
  String get payOnDelivery => 'டெலிவரியின் போது பணம்';

  @override
  String get noteToRestaurant => 'உணவகத்திற்கு குறிப்பு';

  @override
  String get noteToRestaurantHint => 'மணியை இருமுறை அடிக்கவும்…';

  @override
  String get activeOrdersTitle => 'நடப்பு ஆர்டர்கள்';

  @override
  String get pastOrdersTitle => 'முந்தைய ஆர்டர்கள்';

  @override
  String get orderItemsTitle => 'உணவுகள்';

  @override
  String get orderProgressTitle => 'நிலை';

  @override
  String get arrivingIn => 'வந்து சேரும் நேரம்';

  @override
  String get pickupCodeLabel => 'பிக்அப் குறியீடு';

  @override
  String get cancellationReasonLabel => 'ரத்து செய்யப்பட்ட காரணம்';

  @override
  String get riderLabel => 'டெலிவரி பார்ட்னர்';

  @override
  String get callRider => 'அழை';

  @override
  String get trackRider => 'ரைடரைக் கண்காணி';

  @override
  String get riderLocationSoon =>
      'உங்கள் ஆர்டரை எடுத்ததும் ரைடரின் இருப்பிடம் இங்கே தெரியும்.';

  @override
  String get riderLocationStale => 'ரைடரின் இருப்பிடம் புதுப்பிக்கப்படுகிறது…';

  @override
  String get recentreOnRider => 'ரைடர் மையமாக';

  @override
  String get viewInvoice => 'வரி விலைப்பட்டியல்';

  @override
  String get cancelOrder => 'ஆர்டரை ரத்து செய்';

  @override
  String get cancelOrderTitle => 'இந்த ஆர்டரை ரத்து செய்யவா?';

  @override
  String get cancelOrderMessage =>
      'உணவகம் ஏற்றுக்கொள்வதற்கு முன்பே ரத்து செய்ய முடியும்.';

  @override
  String get cancelReasonLabel => 'காரணம்';

  @override
  String get cancelReasonFallback => 'வாடிக்கையாளர் ரத்து செய்தார்';

  @override
  String get orderCancelled => 'ஆர்டர் ரத்து செய்யப்பட்டது';

  @override
  String get currentLocationLabel => 'தற்போதைய இடம்';

  @override
  String get onLabel => 'ஆன்';

  @override
  String get offLabel => 'ஆஃப்';

  @override
  String get profileCoupons => 'உங்கள் கூப்பன்கள்';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'பயன்படுத்த $count உள்ளன',
      one: 'பயன்படுத்த 1 உள்ளது',
      zero: 'இதுவரை இல்லை',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'உங்கள் விருப்பங்கள்';

  @override
  String get profileVegMode => 'சைவ மோட்';

  @override
  String get profileVegModeHint => 'சைவ உணவகங்களும் உணவுகளும் மட்டும்';

  @override
  String get profileAppearance => 'தோற்றம்';

  @override
  String get appearanceSystem => 'ஃபோனில் உள்ளது போல';

  @override
  String get appearanceLight => 'லைட்';

  @override
  String get appearanceDark => 'டார்க்';

  @override
  String get profileNotifications => 'அறிவிப்புகள்';

  @override
  String get profileFoodDelivery => 'உணவு டெலிவரி';

  @override
  String get profileFavourites => 'உங்களுக்குப் பிடித்தவை';

  @override
  String get profileHelp => 'உதவி & ஆதரவு';

  @override
  String get profileMore => 'மேலும்';

  @override
  String get profileFeedback => 'கருத்தை அனுப்பு';

  @override
  String get profileSafety => 'பாதுகாப்பு அவசரநிலையைத் தெரிவி';

  @override
  String get profileAbout => 'Nexmile பற்றி';

  @override
  String get couponsEmptyTitle => 'இப்போது கூப்பன்கள் இல்லை';

  @override
  String get couponsEmptyBody =>
      'நீங்கள் பயன்படுத்தக்கூடிய கூப்பன் வந்ததும், அது இங்கே தோன்றும்.';

  @override
  String couponFlatOff(String amount) {
    return '$amount தள்ளுபடி';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% தள்ளுபடி';
  }

  @override
  String couponUpTo(String amount) {
    return 'அதிகபட்சம் $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount-க்கு மேலான ஆர்டர்களுக்கு';
  }

  @override
  String couponValidTill(String date) {
    return '$date வரை செல்லும்';
  }

  @override
  String get couponAllRestaurants => 'அனைத்து உணவகங்களிலும்';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant-இல்';
  }

  @override
  String couponCopied(String code) {
    return '$code குறியீடு நகலெடுக்கப்பட்டது';
  }

  @override
  String get favouritesEmptyTitle => 'இதுவரை பிடித்தவை இல்லை';

  @override
  String get favouritesEmptyBody =>
      'ஒரு உணவகத்தை இங்கே சேமிக்க, அதன் இதயக் குறியைத் தட்டவும்.';

  @override
  String get helpCall => 'எங்களை அழைக்கவும்';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'மின்னஞ்சல் அனுப்பவும்';

  @override
  String helpHours(String hours) {
    return 'உதவி நேரம்: $hours';
  }

  @override
  String get helpFaqs => 'பொதுவான கேள்விகள்';

  @override
  String get helpNothing =>
      'உதவி விவரங்கள் இப்போது கிடைக்கவில்லை. சிறிது நேரம் கழித்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get feedbackPrompt => 'Nexmile உங்களுக்கு எப்படி இருக்கிறது?';

  @override
  String get feedbackHint =>
      'உங்களுக்கு என்ன பிடித்தது, அல்லது நாங்கள் எதை மேம்படுத்தலாம் என்று சொல்லுங்கள்';

  @override
  String get feedbackNeedRating => 'முதலில் மதிப்பீட்டைத் தேர்ந்தெடுக்கவும்';

  @override
  String get feedbackThanks =>
      'நன்றி! உங்கள் கருத்து எங்கள் குழுவைச் சென்றடைந்தது.';

  @override
  String get safetyIntro =>
      'நீங்களோ வேறு யாரோ ஆபத்தில் இருந்தால், முதலில் அவசர சேவைகளை அழைக்கவும்.';

  @override
  String get safetyCallEmergency => '112-ஐ அழை';

  @override
  String get safetyCallEmergencyBody =>
      'காவல்துறை, தீயணைப்பு மற்றும் ஆம்புலன்ஸ்';

  @override
  String get safetyCallNexmile => 'Nexmile பாதுகாப்பு எண்ணை அழை';

  @override
  String get safetyCallNexmileBody => 'எந்நேரமும் பதில் கிடைக்கும்';

  @override
  String aboutVersion(String version) {
    return 'பதிப்பு $version';
  }

  @override
  String get aboutTerms => 'சேவை விதிமுறைகள்';

  @override
  String get aboutPrivacy => 'தனியுரிமைக் கொள்கை';

  @override
  String get aboutLicences => 'ஓப்பன் சோர்ஸ் உரிமங்கள்';

  @override
  String get notifyOrderUpdates => 'ஆர்டர் அப்டேட்கள்';

  @override
  String get notifyOrderUpdatesBody =>
      'உங்கள் உணவு எங்கே உள்ளது என்று தெரிய, இது எப்போதும் இயக்கத்தில் இருக்கும்.';

  @override
  String get notifyPromotions => 'சலுகைகள் மற்றும் விளம்பரங்கள்';

  @override
  String get notifyPromotionsBody =>
      'தள்ளுபடிகள், கூப்பன்கள் மற்றும் உங்கள் அருகிலுள்ள புதிய உணவகங்கள்.';

  @override
  String get notifyPhoneOff =>
      'இந்த ஃபோனில் Nexmile-க்கான அறிவிப்புகள் அணைக்கப்பட்டுள்ளன.';

  @override
  String get notifyTurnOn => 'இயக்கு';

  @override
  String get linkOpenFailed => 'இதை இந்த ஃபோனில் திறக்க முடியவில்லை.';

  @override
  String get editProfileTitle => 'சுயவிவரத்தைத் திருத்து';

  @override
  String get editProfileSubtitle =>
      'உணவகமும் டெலிவரி பார்ட்னரும் உங்கள் பெயரைத்தான் பார்ப்பார்கள்.';

  @override
  String get saveChanges => 'மாற்றங்களைச் சேமி';

  @override
  String get profileUpdated => 'சுயவிவரம் புதுப்பிக்கப்பட்டது';

  @override
  String get deleteAccount => 'கணக்கை நீக்கு';

  @override
  String get deleteAccountTitle => 'உங்கள் கணக்கை நீக்கவா?';

  @override
  String get deleteAccountMessage =>
      'எல்லா சாதனங்களிலிருந்தும் வெளியேற்றப்படுவீர்கள். பழைய ஆர்டர்களும் ரசீதுகளும் வரி பதிவுக்காக வைக்கப்படும்.';

  @override
  String get accountDeleted => 'உங்கள் கணக்கு நீக்கப்பட்டது';

  @override
  String get devicesTitle => 'உள்நுழைந்த சாதனங்கள்';

  @override
  String get devicesSubtitle => 'நீங்கள் எங்கு உள்நுழைந்துள்ளீர்கள்';

  @override
  String get devicesEmptyTitle => 'வேறு சாதனங்கள் இல்லை';

  @override
  String get devicesEmptySubtitle =>
      'இந்தச் சாதனத்தில் மட்டுமே உள்நுழைந்துள்ளீர்கள்.';

  @override
  String get signOutDevice => 'வெளியேறு';

  @override
  String get signOutDeviceTitle => 'இந்தச் சாதனத்திலிருந்து வெளியேறவா?';

  @override
  String get signOutDeviceMessage =>
      'நீங்கள் பயன்படுத்துவது இதுவே என்றால் மீண்டும் உள்நுழைய வேண்டும்.';

  @override
  String get deviceSignedOut => 'சாதனம் வெளியேற்றப்பட்டது';

  @override
  String get signOutEverywhere => 'எல்லா இடங்களிலிருந்தும் வெளியேறு';

  @override
  String get signOutEverywhereTitle => 'எல்லா இடங்களிலிருந்தும் வெளியேறவா?';

  @override
  String get signOutEverywhereMessage =>
      'இந்தச் சாதனம் உட்பட எல்லா சாதனங்களும் வெளியேற்றப்படும்.';

  @override
  String get unknownDevice => 'தெரியாத சாதனம்';

  @override
  String get activeNow => 'இப்போது செயலில்';

  @override
  String minutesAgo(int count) {
    return '$count நிமிடங்களுக்கு முன்';
  }

  @override
  String hoursAgo(int count) {
    return '$count மணி நேரத்திற்கு முன்';
  }

  @override
  String daysAgo(int count) {
    return '$count நாட்களுக்கு முன்';
  }

  @override
  String get filtersAndSorting => 'வடிகட்டி மற்றும் வரிசை';

  @override
  String get clearAll => 'அனைத்தையும் அழி';

  @override
  String get showResults => 'முடிவுகளைக் காட்டு';

  @override
  String get closeLabel => 'மூடு';

  @override
  String get sortByTitle => 'வரிசைப்படுத்து';

  @override
  String get sortRelevance => 'பொருத்தம்';

  @override
  String get sortRating => 'மதிப்பீடு';

  @override
  String get sortDeliveryTime => 'டெலிவரி நேரம்';

  @override
  String get sortCostLowHigh => 'விலை: குறைவு முதல் அதிகம்';

  @override
  String get sortCostHighLow => 'விலை: அதிகம் முதல் குறைவு';

  @override
  String get timeSection => 'நேரம்';

  @override
  String get nearAndFast => 'அருகில் & விரைவு';

  @override
  String get openNow => 'இப்போது திறந்துள்ளது';

  @override
  String get ratingSection => 'உணவக மதிப்பீடு';

  @override
  String ratedAbove(String rating) {
    return '$rating+ மதிப்பீடு';
  }

  @override
  String get offersSection => 'சலுகைகள்';

  @override
  String get hasOffersLabel => 'சலுகை உள்ளவை';

  @override
  String get dishPriceSection => 'உணவு விலை';

  @override
  String costUnder(String amount) {
    return '$amountக்கும் குறைவு';
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
  String get moreSection => 'மேலும்';

  @override
  String get noPackagingCharges => 'பேக்கிங் கட்டணம் இல்லை';

  @override
  String get allRestaurantsTitle => 'அனைத்து உணவகங்கள்';

  @override
  String get whatsOnYourMind => 'என்ன சாப்பிடலாம்?';

  @override
  String get listeningNow => 'கேட்கிறோம்…';

  @override
  String get speakNowHint => 'உணவு அல்லது உணவகத்தைச் சொல்லுங்கள்';

  @override
  String get voiceUnavailable => 'குரல் தேடல் கிடைக்கவில்லை';

  @override
  String get voiceUnavailableBody => 'நீங்கள் தட்டச்சு செய்தும் தேடலாம்.';

  @override
  String get microphoneDenied => 'மைக்ரோஃபோன் அனுமதி இல்லை';

  @override
  String get voiceSearchLabel => 'குரலால் தேடு';

  @override
  String get ratingsAndReviews => 'மதிப்பீடுகளும் விமர்சனங்களும்';

  @override
  String get reviewsWithTextOnly => 'விமர்சனம் உள்ளவை';

  @override
  String get noReviewsTitle => 'இதுவரை மதிப்பீடு இல்லை';

  @override
  String get noReviewsSubtitle =>
      'ஆர்டர் செய்த பிறகு முதல் மதிப்பீட்டை நீங்களே அளியுங்கள்.';

  @override
  String get rateOrderTitle => 'உங்கள் ஆர்டரை மதிப்பிடுங்கள்';

  @override
  String get rateDishesTitle => 'உணவுகளை மதிப்பிடுங்கள்';

  @override
  String get reviewHint =>
      'மேலும் ஏதேனும் சொல்ல விரும்புகிறீர்களா? (விருப்பம்)';

  @override
  String get submitRating => 'மதிப்பீட்டை அனுப்பு';

  @override
  String get reviewThanks => 'நன்றி — உங்கள் மதிப்பீடு பதிவானது.';

  @override
  String get rateThisOrder => 'இந்த ஆர்டரை மதிப்பிடுங்கள்';

  @override
  String get walletTitle => 'Nexmile வாலட்';

  @override
  String get walletBalance => 'வாலட் இருப்பு';

  @override
  String get walletBalanceHint =>
      'எந்த ஆர்டருக்கும் பணம் செலுத்த இதைப் பயன்படுத்தலாம்.';

  @override
  String get walletAddMoney => 'பணம் சேர்';

  @override
  String get walletEnterAmount => 'தொகையை உள்ளிடவும்';

  @override
  String walletAmountRange(String min, String max) {
    return '$min முதல் $max வரை';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount சேர்';
  }

  @override
  String get walletSecuredBy =>
      'பணப் பரிவர்த்தனைகள் Razorpay மூலம் பாதுகாக்கப்படுகின்றன';

  @override
  String get walletHistory => 'வரலாறு';

  @override
  String get walletNoHistory =>
      'இதுவரை பரிவர்த்தனைகள் இல்லை. நீங்கள் சேர்க்கும் அல்லது செலவிடும் பணம் இங்கே தோன்றும்.';

  @override
  String get walletEntryTopUp => 'பணம் சேர்க்கப்பட்டது';

  @override
  String get walletEntryOrder => 'ஆர்டருக்குச் செலுத்தப்பட்டது';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ஆர்டர் $number-க்குச் செலுத்தப்பட்டது';
  }

  @override
  String get walletEntryRefund => 'ரீஃபண்ட்';

  @override
  String walletMoneyAdded(String amount) {
    return 'உங்கள் வாலட்டில் $amount சேர்க்கப்பட்டது';
  }

  @override
  String get walletPaymentFailed =>
      'பணம் செலுத்துதல் தோல்வியடைந்தது. உங்கள் கணக்கிலிருந்து பணம் எதுவும் எடுக்கப்படவில்லை.';

  @override
  String get walletPaymentConfirming =>
      'பணம் கிடைத்தது. சில நிமிடங்களில் உங்கள் இருப்பு புதுப்பிக்கப்படும்.';

  @override
  String get walletUseBalance => 'வாலட் இருப்பைப் பயன்படுத்து';

  @override
  String walletAvailable(String amount) {
    return 'இருப்பு: $amount';
  }

  @override
  String get walletPaidFromWallet => 'வாலட்டிலிருந்து செலுத்தியது';

  @override
  String get walletPayOnDelivery => 'டெலிவரியின் போது பணம்';

  @override
  String get walletCoversOrder => 'முழுத் தொகையும் உங்கள் வாலட்டிலிருந்து';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return 'வாலட்டிலிருந்து $wallet, டெலிவரியின் போது $rest';
  }

  @override
  String get walletTopUpUnavailable =>
      'இப்போது பணம் சேர்க்க முடியாது. சிறிது நேரம் கழித்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String walletFull(String limit) {
    return 'உங்கள் வாலட் அதன் $limit வரம்பை எட்டிவிட்டது.';
  }

  @override
  String get searchAddressHint => 'பகுதி, தெரு அல்லது அடையாளத்தைத் தேடுங்கள்';

  @override
  String get selectLocationTitle => 'இருப்பிடத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get useCurrentLocation => 'தற்போதைய இருப்பிடத்தைப் பயன்படுத்து';

  @override
  String get locatingYou => 'நீங்கள் இருக்கும் இடத்தைக் கண்டறிகிறோம்…';

  @override
  String get locationOffHint => 'இதைப் பயன்படுத்த இருப்பிடத்தை அனுமதிக்கவும்';

  @override
  String get savedAddressesHeading => 'சேமித்த முகவரிகள்';

  @override
  String get recentLocationsHeading => 'சமீபத்திய இடங்கள்';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle =>
      'டெலிவரி இருப்பிடத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get movePinTooltip =>
      'பின்னை உங்கள் சரியான டெலிவரி இடத்திற்கு நகர்த்தவும்';

  @override
  String get locatingPin => 'முகவரியைக் கண்டறிகிறோம்…';

  @override
  String get deliveryDetailsHeading => 'டெலிவரி விவரங்கள்';

  @override
  String get addressDetailsLabel => 'முகவரி விவரங்கள்*';

  @override
  String get addressDetailsHint => 'எ.கா. தளம், வீட்டு எண்';

  @override
  String get missingAreaHint =>
      'இந்தப் பின்னுக்கான முழு முகவரியைப் பெற முடியவில்லை. மீதியை நீங்களே நிரப்பவும்.';

  @override
  String get whoToContact => 'இந்த டெலிவரிக்கு யாரைத் தொடர்புகொள்ள வேண்டும்?';

  @override
  String get contactMyself => 'நானே';

  @override
  String get contactSomeoneElse => 'வேறு ஒருவர்';

  @override
  String get receiverDetailsHeading => 'இந்த முகவரிக்கான பெறுநர் விவரங்கள்';

  @override
  String get receiverAddPrompt => 'பெறுநரின் பெயர் மற்றும் எண்ணைச் சேர்க்கவும்';

  @override
  String get receiverSheetTitle => 'பெறுநர் விவரங்கள்';

  @override
  String get doorPhotoHeading => 'வாசல்/கட்டிடப் படம் (விருப்பம்)';

  @override
  String get doorPhotoAdd => 'படத்தைச் சேர்';

  @override
  String get doorPhotoBody =>
      'இது எங்கள் டெலிவரி பார்ட்னர்கள் உங்கள் சரியான இடத்தை விரைவாகக் கண்டுபிடிக்க உதவும்';

  @override
  String get doorPhotoChange => 'மாற்று';

  @override
  String get doorPhotoRemove => 'நீக்கு';

  @override
  String get photoFromCamera => 'புகைப்படம் எடு';

  @override
  String get photoFromGallery => 'கேலரியிலிருந்து தேர்ந்தெடு';

  @override
  String get photoUploaded => 'புகைப்படம் சேர்க்கப்பட்டது';

  @override
  String get photoUploadFailed =>
      'புகைப்படத்தைப் பதிவேற்ற முடியவில்லை. சிறிது நேரம் கழித்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get addressSavedPhotoFailed =>
      'முகவரி சேமிக்கப்பட்டது. புகைப்படத்தைப் பதிவேற்ற முடியவில்லை.';

  @override
  String get removePhotoLabel => 'புகைப்படத்தை நீக்கு';

  @override
  String get photoRemoved => 'புகைப்படம் நீக்கப்பட்டது';

  @override
  String get shareLabel => 'பகிர்';

  @override
  String get addDoorPhotoLabel => 'வாசல் புகைப்படத்தைச் சேர்';

  @override
  String get searchAddressNoResults =>
      'இடங்கள் எதுவும் கிடைக்கவில்லை. அருகிலுள்ள அடையாளம், பகுதியின் பெயர் அல்லது பின் கோடை முயற்சிக்கவும்.';

  @override
  String get clearLabel => 'அழி';

  @override
  String get trackingArrivingNow => 'இதோ வந்துவிடும்';

  @override
  String get trackingLive => 'நேரலை';

  @override
  String get trackingStepConfirmed => 'உறுதிசெய்யப்பட்டது';

  @override
  String get trackingStepPreparing => 'தயாராகிறது';

  @override
  String get trackingStepOnTheWay => 'வழியில் உள்ளது';

  @override
  String get trackingStepDelivered => 'டெலிவரி செய்யப்பட்டது';

  @override
  String get trackingFindingRider => 'டெலிவரி பார்ட்னரை நியமிக்கிறோம்…';

  @override
  String get trackingPinYou => 'நீங்கள்';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance தொலைவில் உள்ளார்';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name-க்கு மெசேஜ் அனுப்பு';
  }

  @override
  String get trackingDeliveringTo => 'டெலிவரி முகவரி';

  @override
  String get trackingOrderDetails => 'ஆர்டர் விவரங்கள்';

  @override
  String get dispatchSearching =>
      'உணவகத்தின் அருகில் டெலிவரி பார்ட்னரைத் தேடுகிறோம்…';

  @override
  String get dispatchNoRider =>
      'இதுவரை எந்த டெலிவரி பார்ட்னரும் ஏற்கவில்லை. எங்கள் குழு இப்போது ஒருவரை நியமிக்கிறது.';

  @override
  String get vehicleBike => 'பைக்';

  @override
  String get vehicleScooter => 'ஸ்கூட்டர்';

  @override
  String get vehicleBicycle => 'சைக்கிள்';

  @override
  String get vehicleElectric => 'எலக்ட்ரிக் ஸ்கூட்டர்';

  @override
  String get exitTitle => 'Nexmile-இலிருந்து வெளியேறவா?';

  @override
  String get exitBody => 'செயலியிலிருந்து நிச்சயமாக வெளியேற வேண்டுமா?';

  @override
  String get exitConfirm => 'வெளியேறு';

  @override
  String cartSavedBanner(String amount) {
    return 'இந்த ஆர்டரில் உங்களுக்கு $amount மிச்சம்';
  }

  @override
  String get cartAddMoreItems => 'மேலும் பொருட்களைச் சேர்';

  @override
  String get cartAddNote => 'உணவகத்திற்கு ஒரு குறிப்பைச் சேர்';

  @override
  String get cartOrderNoteHint =>
      'எ.கா. எதிலும் வெங்காயம், பூண்டு சேர்க்க வேண்டாம்';

  @override
  String get cartNoteSave => 'சேமி';

  @override
  String get cartNoCutlery => 'ஸ்பூன், ஃபோர்க் அனுப்ப வேண்டாம்';

  @override
  String get cartNoCutleryThanks =>
      'பிளாஸ்டிக் கழிவைக் குறைக்க உதவியதற்கு நன்றி';

  @override
  String get cartSavingsCorner => 'சேமிப்புப் பகுதி';

  @override
  String get cartDeliveryInstructions => 'டெலிவரி அறிவுறுத்தல்கள்';

  @override
  String get cartInstructionsRider =>
      'இவற்றை உங்கள் டெலிவரி பார்ட்னர் மட்டுமே பார்ப்பார்';

  @override
  String get instructionLeaveAtDoor => 'வாசலில் வைக்கவும்';

  @override
  String get instructionNoBell => 'மணி அடிக்க வேண்டாம்';

  @override
  String get instructionNoCall => 'அழைக்க வேண்டாம்';

  @override
  String get instructionSecurity => 'செக்யூரிட்டியிடம் கொடுக்கவும்';

  @override
  String get instructionPet => 'வீட்டில் செல்லப்பிராணி';

  @override
  String get cartInclTaxes => 'வரிகள், கட்டணங்கள் உட்பட';

  @override
  String cartSavedTag(String amount) {
    return '$amount மிச்சம்';
  }

  @override
  String get cartPayUsing => 'செலுத்தும் முறை';

  @override
  String get cartWalletAndCash => 'வாலட் + ரொக்கம்';

  @override
  String cartCashRest(String amount) {
    return 'ஆர்டர் வந்ததும் $amount செலுத்தவும்';
  }

  @override
  String get cartCashFull => 'உங்கள் ஆர்டர் வந்ததும் பணம் செலுத்தவும்';

  @override
  String get cartCashNothing => 'டெலிவரியின் போது செலுத்த எதுவும் இல்லை';

  @override
  String get cartTotal => 'மொத்தம்';

  @override
  String get cartPlaceOrder => 'ஆர்டர் செய்';

  @override
  String cartDeliverTo(String place) {
    return '$place-க்கு டெலிவரி';
  }

  @override
  String get cartChange => 'மாற்று';

  @override
  String get cartNoAddress => 'எங்கு டெலிவரி செய்ய வேண்டும்?';

  @override
  String get cartNoAddressHint => 'ஆர்டர் செய்ய ஒரு முகவரியைச் சேர்க்கவும்';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant-இல் பெற்றுக்கொள்ளுங்கள்';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'சுமார் $minutes நிமிடங்களில் தயாராகும்';
  }

  @override
  String get cartChooseAddress => 'டெலிவரி முகவரியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get cartDone => 'முடிந்தது';

  @override
  String get supportTitle => 'Nexmile ஆதரவு';

  @override
  String get supportBubble => 'உதவி';

  @override
  String get supportAiLabel => 'AI உதவியாளர்';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile குழு';
  }

  @override
  String get supportDemoBanner =>
      'டெமோ: இவை மாதிரி பதில்கள் மட்டுமே. உண்மையான AI உதவியாளர் இன்னும் இணைக்கப்படவில்லை.';

  @override
  String get supportEmptyTitle => 'உங்களுக்கு எப்படி உதவலாம்?';

  @override
  String get supportEmptyBody =>
      'ஆர்டர், கட்டணம் அல்லது வேறு எதைப் பற்றியும் கேளுங்கள். முதலில் எங்கள் AI உதவியாளர் பதில் அளிக்கும்; அதனால் உதவ முடியாவிட்டால், எங்கள் குழுவைச் சேர்ந்த ஒருவர் தொடர்ந்து உதவுவார்.';

  @override
  String get supportSuggestWhere => 'என் ஆர்டர் எங்கே?';

  @override
  String get supportSuggestMissing => 'ஆர்டரில் ஏதோ விடுபட்டுள்ளது';

  @override
  String get supportSuggestRefund => 'ரீஃபண்ட் பற்றி ஒரு கேள்வி இருக்கிறது';

  @override
  String get supportComposerHint => 'மெசேஜைத் தட்டச்சு செய்யவும்';

  @override
  String get supportSend => 'அனுப்பு';

  @override
  String get supportTyping => 'AI உதவியாளர் தட்டச்சு செய்கிறது…';

  @override
  String get supportNotSent => 'அனுப்பப்படவில்லை';

  @override
  String get supportTookTooLong => 'பதில் வர அதிக நேரம் ஆகிவிட்டது.';

  @override
  String get supportSlowDown =>
      'மேலும் மெசேஜ் அனுப்பும் முன் சற்று காத்திருக்கவும்.';

  @override
  String get supportUnreachable =>
      'இப்போது சாட்டுடன் இணைக்க முடியவில்லை. எங்களை அழைக்கவும், அல்லது சில நிமிடங்கள் கழித்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get supportOffline =>
      'நீங்கள் ஆஃப்லைனில் உள்ளீர்கள். இது கடைசியாகச் சேமிக்கப்பட்ட உங்கள் சாட்.';

  @override
  String get supportClosed => 'இந்த சாட் மூடப்பட்டது.';

  @override
  String get supportStartNew => 'புதிய சாட்டைத் தொடங்கு';

  @override
  String get supportTalkToPerson => 'ஒரு நபரிடம் பேசு';

  @override
  String get supportMarkSolved => 'தீர்ந்தது எனக் குறிக்கவும்';

  @override
  String get supportHelpful => 'உதவியாக இருந்தது';

  @override
  String get supportNotHelpful => 'உதவியாக இல்லை';

  @override
  String get supportNeedHelp => 'உதவி வேண்டுமா?';

  @override
  String get supportChatWithUs => 'எங்களுடன் சாட் செய்யுங்கள்';

  @override
  String get supportChatWithUsBody =>
      'எங்கள் AI உதவியாளர் சில நொடிகளில் பதில் அளிக்கும்; தேவைப்பட்டால் ஒரு நபர் தொடர்ந்து உதவுவார்.';

  @override
  String get supportActionFailed => 'அது நடக்கவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get supportOrderNotFound => 'அந்த ஆர்டர் உங்கள் கணக்கில் இல்லை.';

  @override
  String get supportOrderLookupDown =>
      'இப்போது அந்த ஆர்டரைப் பார்க்க முடியவில்லை. உங்கள் கேள்வியைத் தட்டச்சு செய்யலாம்.';

  @override
  String get supportHandedOverNote =>
      'எங்கள் குழுவைச் சேர்ந்த ஒருவர் பதில் அளிப்பார்';

  @override
  String get restaurantNew => 'புதியது';

  @override
  String get walletHideBalance => 'இருப்பை மறை';

  @override
  String get walletShowBalance => 'இருப்பைக் காட்டு';

  @override
  String get walletBalanceHiddenLabel => 'இருப்பு மறைக்கப்பட்டுள்ளது';

  @override
  String walletUpdatedAt(String time) {
    return 'புதுப்பிக்கப்பட்டது: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'குறைந்தது $amount சேர்க்கவும்';
  }

  @override
  String walletAboveMax(String amount) {
    return 'அதிகபட்சம் $amount வரை சேர்க்கலாம்';
  }

  @override
  String get walletOpeningPayment => 'பணம் செலுத்தத் தயாராகிறது…';

  @override
  String get walletConfirmingPayment =>
      'பணம் செலுத்துதல் உறுதிசெய்யப்படுகிறது…';

  @override
  String get walletTransactions => 'பரிவர்த்தனைகள்';

  @override
  String get walletFilterAll => 'அனைத்தும்';

  @override
  String get walletFilterAdded => 'சேர்த்த பணம்';

  @override
  String get walletFilterSpent => 'செலவிட்ட பணம்';

  @override
  String get walletSearch => 'தேடு';

  @override
  String get walletSearchHint => 'ஆர்டர் எண் அல்லது ID-ஐத் தேடுங்கள்';

  @override
  String get walletDateFilter => 'தேதி வாரியாக வடிகட்டு';

  @override
  String get walletClearFilters => 'வடிகட்டிகளை நீக்கு';

  @override
  String get walletNoMatches =>
      'உங்கள் வடிகட்டிகளுக்குப் பொருந்தும் பரிவர்த்தனைகள் இல்லை';

  @override
  String get walletEmptyTitle => 'இதுவரை பரிவர்த்தனைகள் இல்லை';

  @override
  String get walletEmptyBody =>
      'நீங்கள் சேர்க்கும், ஆர்டர்களுக்குச் செலவிடும் அல்லது ரீஃபண்டாகத் திரும்பப் பெறும் பணம் இங்கே தோன்றும்.';

  @override
  String get walletToday => 'இன்று';

  @override
  String get walletYesterday => 'நேற்று';

  @override
  String walletLatestOnly(int count) {
    return 'உங்கள் சமீபத்திய $count பரிவர்த்தனைகள் காட்டப்படுகின்றன';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ஆர்டர் $number-க்கான ரீஃபண்ட்';
  }

  @override
  String get walletDetailsTitle => 'பரிவர்த்தனை விவரங்கள்';

  @override
  String get walletDetailDate => 'தேதி மற்றும் நேரம்';

  @override
  String get walletDetailId => 'பரிவர்த்தனை ID';

  @override
  String get walletDetailType => 'வகை';

  @override
  String get walletDetailMethod => 'செலுத்தும் முறை';

  @override
  String get walletDetailStatus => 'நிலை';

  @override
  String get walletDetailOrder => 'ஆர்டர்';

  @override
  String get walletDetailReference => 'கட்டணக் குறிப்பு எண்';

  @override
  String get walletDetailBalanceAfter => 'பரிவர்த்தனைக்குப் பின் இருப்பு';

  @override
  String get walletCredit => 'வரவு';

  @override
  String get walletDebit => 'பற்று';

  @override
  String get walletStatusSuccess => 'வெற்றி';

  @override
  String get walletStatusPending => 'நிலுவையில்';

  @override
  String get walletStatusFailed => 'தோல்வி';

  @override
  String get walletMethodOnline => 'ஆன்லைனில் செலுத்தியது';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'கார்டு';

  @override
  String get walletMethodNetbanking => 'நெட் பேங்கிங்';

  @override
  String get walletMethodRefund => 'வாலட்டுக்கு ரீஃபண்ட்';

  @override
  String get walletCopyId => 'ID-ஐ நகலெடு';

  @override
  String get walletIdCopied => 'பரிவர்த்தனை ID நகலெடுக்கப்பட்டது';

  @override
  String get walletShareDetails => 'விவரங்களைப் பகிர்';
}
