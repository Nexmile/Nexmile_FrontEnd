// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'આ ક્ષેત્ર જરૂરી છે';

  @override
  String get tagline => 'ઝડપી ડિલિવરી. તાજા સ્મિત.';

  @override
  String get chooseLanguageTitle => 'તમારી ભાષા પસંદ કરો';

  @override
  String get chooseLanguageSubtitle =>
      'તમને અનુકૂળ હોય તે ભાષા પસંદ કરો. તમે તેને કોઈપણ સમયે સેટિંગ્સમાં બદલી શકો છો.';

  @override
  String get searchLanguageHint => 'ભાષા શોધો';

  @override
  String get noLanguageFound => 'કોઈ ભાષા મળી નથી';

  @override
  String languagesAvailable(int count) {
    return '$count ભાષાઓ ઉપલબ્ધ છે';
  }

  @override
  String get continueLabel => 'આગળ વધો';

  @override
  String get selectedLabel => 'પસંદ કરેલ';

  @override
  String get defaultLabel => 'ડિફૉલ્ટ';

  @override
  String get homeTitle => 'Nexmile માં આપનું સ્વાગત છે';

  @override
  String get homeSubtitle =>
      'તાજું કરિયાણું, ગરમ ખોરાક અને રોજિંદી જરૂરિયાતો તમારી નજીકની દુકાનોમાંથી.';

  @override
  String get changeLanguage => 'ભાષા બદલો';

  @override
  String get languageUpdated => 'ભાષા બદલાઈ ગઈ';

  @override
  String get appLanguageLabel => 'એપની ભાષા';

  @override
  String greetingNamed(String name) {
    return 'નમસ્તે, $name';
  }

  @override
  String get loginTitle => 'Nexmile માં સાઇન ઇન કરો';

  @override
  String get loginSubtitle =>
      'તમારો ઇમેઇલ અથવા મોબાઇલ નંબર દાખલ કરો, અમે ચકાસણી કોડ મોકલીશું.';

  @override
  String get emailOrPhoneLabel => 'ઇમેઇલ અથવા મોબાઇલ નંબર';

  @override
  String get emailOrPhoneHint => 'name@example.com અથવા 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'માન્ય ઇમેઇલ સરનામું અથવા 10 અંકનો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get loginHeadline =>
      'તમારી નજીકની દુકાનોમાંથી ગરમાગરમ ભોજન, ઝડપી ડિલિવરી';

  @override
  String get loginOrSignUp => 'લૉગ ઇન અથવા સાઇન અપ કરો';

  @override
  String get loginEmailHint => 'તમારું ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get invalidEmail => 'માન્ય ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get sendCode => 'કોડ મોકલો';

  @override
  String get agreeToTermsOnContinue =>
      'આગળ વધીને તમે અમારી સેવાની શરતો અને ગોપનીયતા નીતિ સાથે સંમત થાઓ છો.';

  @override
  String get otpTitle => 'ખાતરી કરો કે આ તમે જ છો';

  @override
  String otpSubtitle(String target) {
    return '$target પર મોકલેલ 6 અંકનો કોડ દાખલ કરો';
  }

  @override
  String get verifyCode => 'ચકાસો';

  @override
  String get resendCode => 'કોડ ફરી મોકલો';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds સેકંડમાં ફરી મોકલો';
  }

  @override
  String get codeResent => 'નવો કોડ મોકલી દીધો છે';

  @override
  String get incorrectCode =>
      'આ કોડ ખોટો છે અથવા સમાપ્ત થઈ ગયો છે. નવો કોડ મંગાવો.';

  @override
  String get enterFullCode => 'પૂરા 6 અંક દાખલ કરો';

  @override
  String get accountSuspended =>
      'આ ખાતું સ્થગિત કરવામાં આવ્યું છે. કૃપા કરી સપોર્ટનો સંપર્ક કરો.';

  @override
  String get tooManyAttempts =>
      'ઘણા બધા પ્રયાસો થયા. કૃપા કરી થોડી વાર પછી ફરી પ્રયાસ કરો.';

  @override
  String get sessionExpired =>
      'તમારું સત્ર સમાપ્ત થઈ ગયું છે. કૃપા કરી ફરી સાઇન ઇન કરો.';

  @override
  String get networkError =>
      'ઇન્ટરનેટ કનેક્શન નથી. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get developmentCode => 'ડેવલપમેન્ટ કોડ';

  @override
  String get signOut => 'સાઇન આઉટ';

  @override
  String get signedOut => 'તમે સાઇન આઉટ થઈ ગયા છો';

  @override
  String get somethingWentWrong => 'કંઈક ખોટું થયું. ફરી પ્રયાસ કરો.';

  @override
  String get profileTitle => 'પ્રોફાઇલ';

  @override
  String get viewProfile => 'પ્રોફાઇલ જુઓ';

  @override
  String get nameLabel => 'નામ';

  @override
  String get emailLabel => 'ઇમેઇલ';

  @override
  String get mobileLabel => 'મોબાઇલ નંબર';

  @override
  String get accountStatusLabel => 'ખાતાની સ્થિતિ';

  @override
  String get statusActive => 'સક્રિય';

  @override
  String get statusPending => 'બાકી';

  @override
  String get statusSuspended => 'સ્થગિત';

  @override
  String get verifiedLabel => 'ચકાસાયેલ';

  @override
  String get notProvided => 'ઉમેર્યું નથી';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get navHome => 'હોમ';

  @override
  String get navSearch => 'શોધો';

  @override
  String get navOrders => 'ઓર્ડર';

  @override
  String get cancelLabel => 'રદ કરો';

  @override
  String get deliverTo => 'ડિલિવરી સરનામું';

  @override
  String get searchDishesHint => 'વાનગી કે રેસ્ટોરન્ટ શોધો';

  @override
  String get searchTitle => 'શોધો';

  @override
  String get searchNoResultsTitle => 'કંઈ મળ્યું નહીં';

  @override
  String get searchNoResultsSubtitle =>
      'બીજી વાનગી, વ્યંજનશૈલી કે રેસ્ટોરન્ટનું નામ અજમાવો.';

  @override
  String get cravingTitle => 'આજે શું ખાવાનું મન છે?';

  @override
  String get offersTitle => 'તમારા માટે ઓફર';

  @override
  String get restaurantsNearby => 'તમારી નજીકની રેસ્ટોરન્ટ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count રેસ્ટોરાં',
      one: '1 રેસ્ટોરાં',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'અહીં હજી કંઈ નથી';

  @override
  String get noRestaurantsSubtitle => 'બીજી શ્રેણી જુઓ અથવા ફિલ્ટર હટાવો.';

  @override
  String minutesAway(int minutes) {
    return '$minutes મિનિટ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance કિમી';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count રેટિંગ',
      one: '1 રેટિંગ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'બે માટે ₹$amount';
  }

  @override
  String get freeDelivery => 'મફત ડિલિવરી';

  @override
  String percentOff(int percent) {
    return '$percent% છૂટ';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'તમારા ઓર્ડર પર $percent% છૂટ';
  }

  @override
  String get vegOnly => 'માત્ર શાકાહારી';

  @override
  String get bestseller => 'સૌથી વધુ વેચાતું';

  @override
  String get addLabel => 'ઉમેરો';

  @override
  String get noVegDishesTitle => 'અહીં શાકાહારી વાનગી નથી';

  @override
  String get noVegDishesSubtitle => 'આખું મેનૂ જોવા શાકાહારી ફિલ્ટર બંધ કરો.';

  @override
  String get replaceCartTitle => 'નવી કાર્ટ શરૂ કરવી?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'તમારી કાર્ટમાં $restaurant ની વસ્તુઓ છે. આ ઉમેરવાથી તે દૂર થશે.';
  }

  @override
  String get replaceCartConfirm => 'દૂર કરી ઉમેરો';

  @override
  String get cartTitle => 'તમારી કાર્ટ';

  @override
  String get cartEmptyTitle => 'તમારી કાર્ટ ખાલી છે';

  @override
  String get cartEmptySubtitle => 'શરૂ કરવા કોઈ રેસ્ટોરન્ટમાંથી વાનગી ઉમેરો.';

  @override
  String get browseRestaurants => 'રેસ્ટોરન્ટ જુઓ';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વસ્તુઓ',
      one: '1 વસ્તુ',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'કાર્ટ જુઓ';

  @override
  String get itemTotal => 'વસ્તુઓનો કુલ';

  @override
  String get deliveryFeeLabel => 'ડિલિવરી ફી';

  @override
  String get taxesAndCharges => 'કર અને ચાર્જ';

  @override
  String get freeLabel => 'મફત';

  @override
  String get toPay => 'ચૂકવવાનું';

  @override
  String placeOrderFor(String amount) {
    return 'ઓર્ડર કરો · $amount';
  }

  @override
  String get ordersTitle => 'તમારા ઓર્ડર';

  @override
  String get ordersEmptyTitle => 'હજી કોઈ ઓર્ડર નથી';

  @override
  String get ordersEmptySubtitle => 'તમારા અગાઉના ઓર્ડર અહીં દેખાશે.';

  @override
  String get reorder => 'ફરી ઓર્ડર';

  @override
  String orderTitle(String id) {
    return 'ઓર્ડર $id';
  }

  @override
  String get orderPlacedTitle => 'ઓર્ડર થઈ ગયો';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'લગભગ $minutes મિનિટમાં પહોંચશે.';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant ને તમારો ઓર્ડર મળી ગયો છે.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'લગભગ $minutes મિનિટમાં તૈયાર થશે.';
  }

  @override
  String get trackYourOrder => 'તમારો ઓર્ડર ટ્રૅક કરો';

  @override
  String get couponApplyTitle => 'કૂપન લાગુ કરો';

  @override
  String get couponCodeLabel => 'કૂપન કોડ';

  @override
  String get couponApply => 'લાગુ કરો';

  @override
  String couponAppliedTitle(String code) {
    return '$code લાગુ થયો';
  }

  @override
  String couponSaving(String amount) {
    return 'તમે $amount બચાવો છો';
  }

  @override
  String get couponRemove => 'દૂર કરો';

  @override
  String searchFor(String term) {
    return '\"$term\" શોધો';
  }

  @override
  String get vegModeBadge => 'શુદ્ધ શાકાહારી';

  @override
  String trackingExpectedBy(String time) {
    return '$time સુધીમાં પહોંચશે';
  }

  @override
  String get orderAgainTitle => 'ફરી ઓર્ડર કરો';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count વધુ',
      one: '$first + 1 વધુ',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max મિનિટ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 માંથી $rating રેટિંગ';
  }

  @override
  String get reorderReplaceTitle => 'તમારી કાર્ટ બદલવી છે?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant ની તમારી કાર્ટ આ ઓર્ડરની વાનગીઓથી બદલાઈ જશે.';
  }

  @override
  String get reorderReplace => 'બદલો';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes અત્યારે ઉપલબ્ધ નથી, તેથી તેમને છોડી દીધી છે.',
      one: '$dishes અત્યારે ઉપલબ્ધ નથી, તેથી તેને છોડી દીધી છે.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable => 'આમાંની કોઈ વાનગી અત્યારે ઉપલબ્ધ નથી.';

  @override
  String get searchShort => 'શોધો';

  @override
  String get favouriteSave => 'મનપસંદમાં સાચવો';

  @override
  String get restaurantAbout => 'આ રેસ્ટોરાં વિશે';

  @override
  String ratingByCount(String count) {
    return '$count રેટિંગ';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ઓફર',
      one: '1 ઓફર',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile પર $restaurant માંથી ઓર્ડર કરો';
  }

  @override
  String get ordersSearchHint => 'રેસ્ટોરાં કે વાનગીથી શોધો…';

  @override
  String get ordersNoMatch => 'આ નામના રેસ્ટોરાં કે વાનગીનો કોઈ ઓર્ડર નથી.';

  @override
  String orderPlacedOn(String date) {
    return '$date ના રોજ ઓર્ડર કર્યો';
  }

  @override
  String get viewMenu => 'મેનૂ જુઓ';

  @override
  String get navHistory => 'ઇતિહાસ';

  @override
  String get exploreMore => 'વધુ જુઓ';

  @override
  String get exploreTopRated => 'ટોપ રેટેડ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count રેસ્ટોરાં તમારા સુધી ડિલિવરી કરે છે',
      one: '1 રેસ્ટોરાં તમારા સુધી ડિલિવરી કરે છે',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ડિલિવરી કેવી રહી?';

  @override
  String get rateHowWasFood => 'ભોજન કેવું હતું?';

  @override
  String get rateWordTerrible => 'ખૂબ ખરાબ';

  @override
  String get rateWordBad => 'ખરાબ';

  @override
  String get rateWordOkay => 'ઠીક';

  @override
  String get rateWordGood => 'સારું';

  @override
  String get rateWordLoved => 'ખૂબ ગમ્યું!';

  @override
  String get rateWhatWentWrong => 'શું ખોટું થયું?';

  @override
  String get rateWhatYouLiked => 'તમને શું ગમ્યું?';

  @override
  String get rateRiderNoteHint => 'ડિલિવરી વિશે નોંધ (વૈકલ્પિક)';

  @override
  String get rateReviewHeading => 'સમીક્ષા લખો';

  @override
  String get rateFoodFirst => 'મોકલવા માટે ભોજનને રેટ કરો';

  @override
  String get rateYouRated => 'તમે આ ઓર્ડરને રેટ કર્યો';

  @override
  String get ratePromptLater => 'હમણાં નહીં';

  @override
  String get tagTasty => 'સ્વાદિષ્ટ';

  @override
  String get tagFreshHot => 'ગરમ અને તાજું';

  @override
  String get tagGoodPortion => 'પૂરતી માત્રા';

  @override
  String get tagGoodPackaging => 'સારું પેકિંગ';

  @override
  String get tagValueForMoney => 'પૈસા વસૂલ';

  @override
  String get tagHygienic => 'સ્વચ્છ';

  @override
  String get tagColdFood => 'ઠંડું ભોજન';

  @override
  String get tagPoorTaste => 'સ્વાદ સારો ન હતો';

  @override
  String get tagSmallPortion => 'ઓછી માત્રા';

  @override
  String get tagWrongItems => 'ખોટી વસ્તુઓ';

  @override
  String get tagMissingItems => 'વસ્તુઓ ખૂટતી હતી';

  @override
  String get tagPoorPackaging => 'ખરાબ પેકિંગ';

  @override
  String get tagTooOily => 'વધુ તેલવાળું કે તીખું';

  @override
  String get tagOnTime => 'સમયસર';

  @override
  String get tagPolite => 'નમ્ર';

  @override
  String get tagFollowedInstructions => 'સૂચનાઓનું પાલન કર્યું';

  @override
  String get tagCarefulHandling => 'ભોજન કાળજીથી સંભાળ્યું';

  @override
  String get tagGoodCommunication => 'મને અપડેટ આપતા રહ્યા';

  @override
  String get tagLate => 'મોડી ડિલિવરી';

  @override
  String get tagRude => 'અસભ્ય વર્તન';

  @override
  String get tagIgnoredInstructions => 'સૂચનાઓનું પાલન ન કર્યું';

  @override
  String get tagFoodSpilled => 'ભોજન ઢોળાયું';

  @override
  String get tagAskedExtraMoney => 'વધારાના પૈસા માંગ્યા';

  @override
  String get tagUnprofessional => 'બિનવ્યાવસાયિક વર્તન';

  @override
  String rateDeliveredBy(String name) {
    return '$name એ ડિલિવરી કરી';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant માંથી';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant માંથી તમારો ઓર્ડર કેવો રહ્યો?';
  }

  @override
  String get orderDeliveredTitle => 'ડિલિવર થયો';

  @override
  String get orderDeliveredSubtitle => 'ભોજનનો આનંદ માણો.';

  @override
  String get statusOrderPlaced => 'ઓર્ડર થયો';

  @override
  String get statusPreparing => 'ભોજન તૈયાર થઈ રહ્યું છે';

  @override
  String get statusOnTheWay => 'રસ્તામાં છે';

  @override
  String get statusDelivered => 'ડિલિવર થયો';

  @override
  String get keepBrowsing => 'જોતા રહો';

  @override
  String get backToHome => 'હોમ પર પાછા';

  @override
  String get prototypeNotice =>
      'નમૂનારૂપ સ્ટોરફ્રન્ટ — અસલી દુકાનો કેટલોગ API સાથે આવશે.';

  @override
  String get prototypeCheckoutNotice =>
      'આ એક પ્રોટોટાઇપ છે. કોઈ ચુકવણી લેવાતી નથી અને ખરો ઓર્ડર પણ થતો નથી.';

  @override
  String get prototypeTrackingNotice => 'પ્રોટોટાઇપ માટે ટ્રેકિંગ કૃત્રિમ છે.';

  @override
  String get locationTitle => 'ડિલિવરી ક્યાં કરવી?';

  @override
  String get locationSubtitle =>
      'Nexmile માત્ર 1 કિમીની અંદરની દુકાનોમાંથી ડિલિવરી કરે છે, તેથી અમને તમારું ચોક્કસ સ્થાન જોઈએ.';

  @override
  String get locationReasonRadiusTitle => '1 કિમીની અંદરની દુકાનો';

  @override
  String get locationReasonRadiusBody =>
      'જ્યાંથી ખોરાક ગરમ પહોંચે તે જ રસોડાં અમે બતાવીએ છીએ.';

  @override
  String get locationReasonAccuracyTitle => 'સાચા દરવાજા સુધી';

  @override
  String get locationReasonAccuracyBody =>
      'ચોક્કસ પિન હોય તો ડિલિવરી પાર્ટનર ફોન કર્યા વગર તમને શોધી લે છે.';

  @override
  String get locationReasonPrivacyTitle => 'ફક્ત એપ વાપરતી વખતે';

  @override
  String get locationReasonPrivacyBody =>
      'અમે પૃષ્ઠભૂમિમાં તમને ટ્રેક કરતા નથી, અને સરનામું તમે જાતે પણ લખી શકો છો.';

  @override
  String get allowLocation => 'લોકેશનની મંજૂરી આપો';

  @override
  String get enterAddressManually => 'હું સરનામું જાતે લખીશ';

  @override
  String get locationDenied =>
      'લોકેશનની મંજૂરી નકારાઈ. તમે પિન જાતે મૂકી શકો છો.';

  @override
  String get locationDeniedForever =>
      'Nexmile માટે લોકેશન બ્લોક છે. સેટિંગ્સમાં ચાલુ કરો અથવા પિન જાતે મૂકો.';

  @override
  String get locationServiceOff => 'આ ડિવાઇસ પર લોકેશન બંધ છે.';

  @override
  String get locationUnavailable =>
      'લોકેશન મળ્યું નહીં. કૃપા કરી પિન જાતે મૂકો.';

  @override
  String permStepCount(int step, int total) {
    return '$total માંથી $step';
  }

  @override
  String get permNotNow => 'હમણાં નહીં';

  @override
  String get permLocationTitle => 'તમારી નજીકનું ભોજન શોધો';

  @override
  String get permNotifyTitle => 'ઓર્ડરની કોઈ અપડેટ ચૂકશો નહીં';

  @override
  String get permNotifyBody =>
      'તમારો ઓર્ડર સ્વીકારાય, પિકઅપ થાય અને તમારા દરવાજે પહોંચે ત્યારે જાણવા નોટિફિકેશન ચાલુ કરો.';

  @override
  String get permNotifyLiveTitle => 'લાઇવ ઓર્ડર અપડેટ';

  @override
  String get permNotifyLiveBody =>
      'સ્વીકારાયો, તૈયાર થઈ રહ્યો છે, પિકઅપ થયો, ડિલિવર થયો.';

  @override
  String get permNotifyRiderTitle => 'રાઇડર તમારા દરવાજે';

  @override
  String get permNotifyRiderBody => 'એપ જોયા વગર જાણો કે ક્યારે બહાર આવવું.';

  @override
  String get permNotifyControlTitle => 'નિયંત્રણ તમારા હાથમાં';

  @override
  String get permNotifyControlBody =>
      'ફોનના સેટિંગ્સમાં ગમે ત્યારે નોટિફિકેશન બંધ કરી શકો છો.';

  @override
  String get permNotifyAllow => 'નોટિફિકેશન ચાલુ કરો';

  @override
  String get openSettings => 'સેટિંગ્સ';

  @override
  String get pinLocationTitle => 'તમારો ડિલિવરી પિન મૂકો';

  @override
  String get deliveryRadiusHint =>
      'વર્તુળ Nexmile જે 1 કિમીમાં ડિલિવરી કરે છે તે બતાવે છે.';

  @override
  String get useMyLocation => 'મારું લોકેશન વાપરો';

  @override
  String get deliveringHere => 'અહીં ડિલિવરી';

  @override
  String get dragToAdjust => 'પિન બદલવા નકશો ખસેડો';

  @override
  String get confirmLocation => 'લોકેશન નક્કી કરો';

  @override
  String get addressDetailsTitle => 'સરનામાની વિગતો';

  @override
  String get addressDetailsSubtitle =>
      'સાચા દરવાજે પહોંચવા મકાન નંબર અને લેન્ડમાર્ક ઉમેરો.';

  @override
  String get pinnedLocation => 'પસંદ કરેલ સ્થાન';

  @override
  String get changePin => 'બદલો';

  @override
  String get saveAddressAs => 'આ સરનામું આ રીતે સાચવો';

  @override
  String get labelHome => 'ઘર';

  @override
  String get labelWork => 'ઓફિસ';

  @override
  String get labelOther => 'અન્ય';

  @override
  String get addressLine1Label => 'મકાન, ફ્લેટ કે બિલ્ડિંગ';

  @override
  String get addressLine1Hint => '12A, ગ્રીન રેસિડેન્સી';

  @override
  String get addressLine2Label => 'શેરી કે વિસ્તાર';

  @override
  String get addressLine2Hint => '2જી એવન્યુ, અન્ના નગર';

  @override
  String get landmarkLabel => 'લેન્ડમાર્ક';

  @override
  String get landmarkHint => 'બસ સ્ટોપની સામે';

  @override
  String get cityLabel => 'શહેર';

  @override
  String get stateLabel => 'રાજ્ય';

  @override
  String get pincodeLabel => 'પિન કોડ';

  @override
  String get invalidPincode => 'માન્ય 6 અંકનો પિન કોડ દાખલ કરો';

  @override
  String get contactNameLabel => 'સંપર્ક નામ';

  @override
  String get contactPhoneLabel => 'સંપર્ક નંબર';

  @override
  String get invalidMobileNumber => 'માન્ય 10 અંકનો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get makeDefaultAddress => 'ડિફૉલ્ટ રૂપે અહીં જ ડિલિવરી';

  @override
  String get saveAddress => 'સરનામું સાચવો';

  @override
  String get addressSaved => 'સરનામું સાચવાયું';

  @override
  String get addressBookTitle => 'ડિલિવરી સરનામાં';

  @override
  String get manageAddresses => 'સાચવેલા સરનામાં સંભાળો';

  @override
  String get noAddressesTitle => 'હજી કોઈ સરનામું નથી';

  @override
  String get noAddressesSubtitle =>
      'તમારા સુધી ડિલિવરી કરતી દુકાનો બતાવવા એક સરનામું ઉમેરો.';

  @override
  String get addAddress => 'સરનામું ઉમેરો';

  @override
  String get setAsDefault => 'ડિફૉલ્ટ બનાવો';

  @override
  String get editLabel => 'સંપાદિત કરો';

  @override
  String get addressUpdated => 'સરનામું અપડેટ થયું';

  @override
  String get deleteLabel => 'કાઢી નાખો';

  @override
  String get deleteAddressTitle => 'આ સરનામું કાઢી નાખવું?';

  @override
  String get deleteAddressMessage => 'તમે તેને પછી ફરી ઉમેરી શકો છો.';

  @override
  String get rescueDealsTitle => 'ફૂડ રેસ્ક્યૂ';

  @override
  String get notTakingOrders => 'ઓર્ડર લેવાતા નથી';

  @override
  String get closedRightNow => 'અત્યારે બંધ છે';

  @override
  String minimumOrder(String amount) {
    return 'ઓછામાં ઓછું $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count બાકી';
  }

  @override
  String get soldOut => 'ખલાસ થઈ ગયું';

  @override
  String get menuEmptyTitle => 'હજી કોઈ વાનગી નથી';

  @override
  String get menuEmptySubtitle => 'આ રેસ્ટોરાંએ પોતાનું મેનુ ઉમેર્યું નથી.';

  @override
  String get moreDishesTitle => 'વધુ વાનગીઓ';

  @override
  String get menuSearchHint => 'વાનગીઓ શોધો';

  @override
  String get filtersShort => 'ફિલ્ટર';

  @override
  String get dietVeg => 'વેજ';

  @override
  String get dietEgg => 'ઈંડું';

  @override
  String get dietNonVeg => 'નોન-વેજ';

  @override
  String get menuBestsellerChip => 'બેસ્ટસેલર';

  @override
  String get menuFoodType => 'ભોજનનો પ્રકાર';

  @override
  String get menuShowOnly => 'ફક્ત આ બતાવો';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વાનગીઓ',
      one: '1 વાનગી',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વાનગીઓ બતાવો',
      one: '1 વાનગી બતાવો',
      zero: 'કોઈ વાનગી નથી',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'બીજી વાનગીનું નામ અજમાવો, અથવા ફિલ્ટર હટાવો.';

  @override
  String get menuBrowse => 'મેનૂ';

  @override
  String get customisable => 'મનપસંદ રીતે';

  @override
  String get requiredLabel => 'જરૂરી';

  @override
  String get optionalLabel => 'વૈકલ્પિક';

  @override
  String get chooseOne => 'એક પસંદ કરો';

  @override
  String chooseUpTo(int count) {
    return 'વધુમાં વધુ $count પસંદ કરો';
  }

  @override
  String chooseAtLeast(int count) {
    return 'ઓછામાં ઓછા $count પસંદ કરો';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min થી $max પસંદ કરો';
  }

  @override
  String get specialInstructions => 'ખાસ સૂચનાઓ';

  @override
  String get specialInstructionsHint => 'ઓછું તીખું, ડુંગળી નહીં…';

  @override
  String addForAmount(String amount) {
    return 'ઉમેરો · $amount';
  }

  @override
  String get deliveryLabel => 'ડિલિવરી';

  @override
  String get pickupLabel => 'જાતે લેવું';

  @override
  String get packagingLabel => 'પેકિંગ';

  @override
  String get discountLabel => 'છૂટ';

  @override
  String get billDetailsTitle => 'બિલની વિગત';

  @override
  String get clearCart => 'કાર્ટ ખાલી કરો';

  @override
  String get clearCartTitle => 'આ કાર્ટ ખાલી કરવી છે?';

  @override
  String get clearCartMessage => 'તેમાંનું બધું જ કાઢી નાખવામાં આવશે.';

  @override
  String unavailableItemsNotice(String items) {
    return 'હવે ઉપલબ્ધ નથી: $items';
  }

  @override
  String get removeUnavailable => 'તે કાઢી નાખો';

  @override
  String minimumNotMet(String amount) {
    return 'ઓછામાં ઓછો ઓર્ડર $amount છે';
  }

  @override
  String get checkoutTitle => 'ચેકઆઉટ';

  @override
  String get deliveryAddressLabel => 'ડિલિવરીનું સરનામું';

  @override
  String get noAddressSelected => 'કોઈ સરનામું પસંદ કર્યું નથી';

  @override
  String get paymentMethodLabel => 'ચુકવણી';

  @override
  String get payOnDelivery => 'ડિલિવરી વખતે રોકડ';

  @override
  String get noteToRestaurant => 'રેસ્ટોરાં માટે નોંધ';

  @override
  String get noteToRestaurantHint => 'ઘંટડી બે વાર વગાડો…';

  @override
  String get activeOrdersTitle => 'ચાલુ ઓર્ડર';

  @override
  String get pastOrdersTitle => 'જૂના ઓર્ડર';

  @override
  String get orderItemsTitle => 'વાનગીઓ';

  @override
  String get orderProgressTitle => 'પ્રગતિ';

  @override
  String get arrivingIn => 'પહોંચવામાં';

  @override
  String get pickupCodeLabel => 'પિકઅપ કોડ';

  @override
  String get cancellationReasonLabel => 'રદ થવાનું કારણ';

  @override
  String get riderLabel => 'ડિલિવરી પાર્ટનર';

  @override
  String get callRider => 'કૉલ કરો';

  @override
  String get trackRider => 'રાઇડર ટ્રૅક કરો';

  @override
  String get riderLocationSoon => 'ઓર્ડર લીધા પછી રાઇડરનું સ્થાન અહીં દેખાશે.';

  @override
  String get riderLocationStale => 'રાઇડરનું લોકેશન અપડેટ થઈ રહ્યું છે…';

  @override
  String get recentreOnRider => 'રાઇડર પર કેન્દ્રિત કરો';

  @override
  String get viewInvoice => 'ટેક્સ ઇન્વોઇસ';

  @override
  String get cancelOrder => 'ઓર્ડર રદ કરો';

  @override
  String get cancelOrderTitle => 'આ ઓર્ડર રદ કરવો છે?';

  @override
  String get cancelOrderMessage =>
      'રેસ્ટોરાં સ્વીકારે તે પહેલાં જ રદ કરી શકાય છે.';

  @override
  String get cancelReasonLabel => 'કારણ';

  @override
  String get cancelReasonFallback => 'ગ્રાહકે રદ કર્યો';

  @override
  String get orderCancelled => 'ઓર્ડર રદ થયો';

  @override
  String get currentLocationLabel => 'વર્તમાન સ્થાન';

  @override
  String get onLabel => 'ચાલુ';

  @override
  String get offLabel => 'બંધ';

  @override
  String get profileCoupons => 'તમારા કૂપન';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વાપરી શકાય',
      one: '1 વાપરી શકાય',
      zero: 'હજી કોઈ નથી',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'તમારી પસંદગીઓ';

  @override
  String get profileVegMode => 'વેજ મોડ';

  @override
  String get profileVegModeHint => 'માત્ર શાકાહારી રેસ્ટોરાં અને વાનગીઓ';

  @override
  String get profileAppearance => 'દેખાવ';

  @override
  String get appearanceSystem => 'ફોન મુજબ';

  @override
  String get appearanceLight => 'લાઇટ';

  @override
  String get appearanceDark => 'ડાર્ક';

  @override
  String get profileNotifications => 'નોટિફિકેશન';

  @override
  String get profileFoodDelivery => 'ફૂડ ડિલિવરી';

  @override
  String get profileFavourites => 'તમારા મનપસંદ';

  @override
  String get profileHelp => 'મદદ અને સપોર્ટ';

  @override
  String get profileMore => 'વધુ';

  @override
  String get profileFeedback => 'ફીડબેક મોકલો';

  @override
  String get profileSafety => 'સલામતી ઇમરજન્સીની જાણ કરો';

  @override
  String get profileAbout => 'Nexmile વિશે';

  @override
  String get couponsEmptyTitle => 'અત્યારે કોઈ કૂપન નથી';

  @override
  String get couponsEmptyBody =>
      'તમે વાપરી શકો એવા કૂપન આવશે ત્યારે અહીં દેખાશે.';

  @override
  String couponFlatOff(String amount) {
    return '$amount છૂટ';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% છૂટ';
  }

  @override
  String couponUpTo(String amount) {
    return '$amount સુધી';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount થી વધુના ઓર્ડર પર';
  }

  @override
  String couponValidTill(String date) {
    return '$date સુધી માન્ય';
  }

  @override
  String get couponAllRestaurants => 'બધા રેસ્ટોરાંમાં';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant માં';
  }

  @override
  String couponCopied(String code) {
    return 'કોડ $code કૉપિ થયો';
  }

  @override
  String get favouritesEmptyTitle => 'હજી કોઈ મનપસંદ નથી';

  @override
  String get favouritesEmptyBody =>
      'રેસ્ટોરાંને અહીં સાચવવા તેના પરના હાર્ટ પર ટૅપ કરો.';

  @override
  String get helpCall => 'અમને કૉલ કરો';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'અમને ઇમેઇલ કરો';

  @override
  String helpHours(String hours) {
    return 'અમે $hours ઉપલબ્ધ છીએ';
  }

  @override
  String get helpFaqs => 'સામાન્ય પ્રશ્નો';

  @override
  String get helpNothing =>
      'મદદની વિગતો અત્યારે ઉપલબ્ધ નથી. કૃપા કરી થોડી વાર પછી ફરી પ્રયાસ કરો.';

  @override
  String get feedbackPrompt => 'Nexmile સાથે તમારો અનુભવ કેવો છે?';

  @override
  String get feedbackHint =>
      'તમને શું ગમ્યું, અથવા અમે શું વધુ સારું કરી શકીએ તે જણાવો';

  @override
  String get feedbackNeedRating => 'પહેલાં રેટિંગ પસંદ કરો';

  @override
  String get feedbackThanks =>
      'આભાર! તમારો ફીડબેક અમારી ટીમ સુધી પહોંચી ગયો છે.';

  @override
  String get safetyIntro =>
      'જો તમે કે બીજું કોઈ જોખમમાં હોય, તો પહેલાં ઇમરજન્સી સેવાઓને કૉલ કરો.';

  @override
  String get safetyCallEmergency => '112 પર કૉલ કરો';

  @override
  String get safetyCallEmergencyBody => 'પોલીસ, ફાયર બ્રિગેડ અને એમ્બ્યુલન્સ';

  @override
  String get safetyCallNexmile => 'Nexmile સલામતી લાઇન પર કૉલ કરો';

  @override
  String get safetyCallNexmileBody => 'ચોવીસે કલાક ઉપલબ્ધ';

  @override
  String aboutVersion(String version) {
    return 'વર્ઝન $version';
  }

  @override
  String get aboutTerms => 'સેવાની શરતો';

  @override
  String get aboutPrivacy => 'ગોપનીયતા નીતિ';

  @override
  String get aboutLicences => 'ઓપન-સોર્સ લાઇસન્સ';

  @override
  String get notifyOrderUpdates => 'ઓર્ડર અપડેટ';

  @override
  String get notifyOrderUpdatesBody =>
      'હંમેશાં ચાલુ, જેથી તમને ખબર રહે કે તમારું ભોજન ક્યાં છે.';

  @override
  String get notifyPromotions => 'ઓફર અને પ્રમોશન';

  @override
  String get notifyPromotionsBody =>
      'તમારી નજીકની ડીલ, કૂપન અને નવા રેસ્ટોરાં.';

  @override
  String get notifyPhoneOff => 'આ ફોન પર Nexmile માટે નોટિફિકેશન બંધ છે.';

  @override
  String get notifyTurnOn => 'ચાલુ કરો';

  @override
  String get linkOpenFailed => 'આ ફોન પર તે ખોલી શકાયું નહીં.';

  @override
  String get editProfileTitle => 'પ્રોફાઇલ સંપાદિત કરો';

  @override
  String get editProfileSubtitle =>
      'રેસ્ટોરાં અને ડિલિવરી પાર્ટનરને તમારું નામ જ દેખાય છે.';

  @override
  String get saveChanges => 'ફેરફારો સાચવો';

  @override
  String get profileUpdated => 'પ્રોફાઇલ અપડેટ થઈ';

  @override
  String get deleteAccount => 'ખાતું કાઢી નાખો';

  @override
  String get deleteAccountTitle => 'તમારું ખાતું કાઢી નાખવું છે?';

  @override
  String get deleteAccountMessage =>
      'બધા ઉપકરણોમાંથી સાઇન આઉટ થઈ જશો. જૂના ઓર્ડર અને બિલ કર રેકોર્ડ માટે રાખવામાં આવે છે.';

  @override
  String get accountDeleted => 'તમારું ખાતું કાઢી નાખવામાં આવ્યું';

  @override
  String get devicesTitle => 'સાઇન-ઇન ઉપકરણો';

  @override
  String get devicesSubtitle => 'તમે ક્યાં સાઇન ઇન છો';

  @override
  String get devicesEmptyTitle => 'બીજું કોઈ ઉપકરણ નથી';

  @override
  String get devicesEmptySubtitle => 'તમે ફક્ત આ જ ઉપકરણ પર સાઇન ઇન છો.';

  @override
  String get signOutDevice => 'સાઇન આઉટ';

  @override
  String get signOutDeviceTitle => 'આ ઉપકરણ સાઇન આઉટ કરવું છે?';

  @override
  String get signOutDeviceMessage =>
      'જો તમે આ જ ઉપકરણ વાપરતા હો તો ફરી સાઇન ઇન કરવું પડશે.';

  @override
  String get deviceSignedOut => 'ઉપકરણ સાઇન આઉટ થયું';

  @override
  String get signOutEverywhere => 'બધે સાઇન આઉટ';

  @override
  String get signOutEverywhereTitle => 'બધે સાઇન આઉટ કરવું છે?';

  @override
  String get signOutEverywhereMessage =>
      'આ ઉપકરણ સહિત દરેક ઉપકરણ સાઇન આઉટ થઈ જશે.';

  @override
  String get unknownDevice => 'અજાણ્યું ઉપકરણ';

  @override
  String get activeNow => 'હમણાં સક્રિય';

  @override
  String minutesAgo(int count) {
    return '$count મિનિટ પહેલાં';
  }

  @override
  String hoursAgo(int count) {
    return '$count કલાક પહેલાં';
  }

  @override
  String daysAgo(int count) {
    return '$count દિવસ પહેલાં';
  }

  @override
  String get filtersAndSorting => 'ફિલ્ટર અને ક્રમ';

  @override
  String get clearAll => 'બધું દૂર કરો';

  @override
  String get showResults => 'પરિણામો બતાવો';

  @override
  String get closeLabel => 'બંધ કરો';

  @override
  String get sortByTitle => 'ક્રમમાં ગોઠવો';

  @override
  String get sortRelevance => 'સુસંગતતા';

  @override
  String get sortRating => 'રેટિંગ';

  @override
  String get sortDeliveryTime => 'ડિલિવરી સમય';

  @override
  String get sortCostLowHigh => 'કિંમત: ઓછીથી વધુ';

  @override
  String get sortCostHighLow => 'કિંમત: વધુથી ઓછી';

  @override
  String get timeSection => 'સમય';

  @override
  String get nearAndFast => 'નજીક અને ઝડપી';

  @override
  String get openNow => 'હમણાં ખુલ્લું';

  @override
  String get ratingSection => 'રેસ્ટોરાં રેટિંગ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ રેટિંગ';
  }

  @override
  String get offersSection => 'ઓફર';

  @override
  String get hasOffersLabel => 'ઓફર વાળા';

  @override
  String get dishPriceSection => 'વાનગીની કિંમત';

  @override
  String costUnder(String amount) {
    return '$amount થી ઓછું';
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
  String get moreSection => 'વધુ';

  @override
  String get noPackagingCharges => 'પેકિંગ ચાર્જ નથી';

  @override
  String get allRestaurantsTitle => 'બધા રેસ્ટોરાં';

  @override
  String get whatsOnYourMind => 'શું ખાવાનું મન છે?';

  @override
  String get listeningNow => 'સાંભળી રહ્યા છીએ…';

  @override
  String get speakNowHint => 'વાનગી કે રેસ્ટોરાં બોલો';

  @override
  String get voiceUnavailable => 'વોઇસ સર્ચ ઉપલબ્ધ નથી';

  @override
  String get voiceUnavailableBody => 'તમે ટાઇપ કરીને પણ શોધી શકો છો.';

  @override
  String get microphoneDenied => 'માઇક્રોફોન પરવાનગી બંધ';

  @override
  String get voiceSearchLabel => 'અવાજથી શોધો';

  @override
  String get ratingsAndReviews => 'રેટિંગ અને સમીક્ષાઓ';

  @override
  String get reviewsWithTextOnly => 'સમીક્ષાવાળા';

  @override
  String get noReviewsTitle => 'હજી કોઈ રેટિંગ નથી';

  @override
  String get noReviewsSubtitle => 'ઓર્ડર પછી પહેલું રેટિંગ તમે આપો.';

  @override
  String get rateOrderTitle => 'તમારા ઓર્ડરને રેટ કરો';

  @override
  String get rateDishesTitle => 'વાનગીઓને રેટ કરો';

  @override
  String get reviewHint => 'બીજું કંઈ કહેવું છે? (વૈકલ્પિક)';

  @override
  String get submitRating => 'રેટિંગ મોકલો';

  @override
  String get reviewThanks => 'આભાર — તમારું રેટિંગ મળી ગયું.';

  @override
  String get rateThisOrder => 'આ ઓર્ડરને રેટ કરો';

  @override
  String get walletTitle => 'Nexmile વૉલેટ';

  @override
  String get walletBalance => 'વૉલેટ બેલેન્સ';

  @override
  String get walletBalanceHint => 'કોઈપણ ઓર્ડરની ચુકવણી માટે વાપરો.';

  @override
  String get walletAddMoney => 'પૈસા ઉમેરો';

  @override
  String get walletEnterAmount => 'રકમ દાખલ કરો';

  @override
  String walletAmountRange(String min, String max) {
    return '$min થી $max વચ્ચે';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount ઉમેરો';
  }

  @override
  String get walletSecuredBy => 'ચુકવણી Razorpay દ્વારા સુરક્ષિત છે';

  @override
  String get walletHistory => 'ઇતિહાસ';

  @override
  String get walletNoHistory =>
      'હજી કોઈ વ્યવહાર નથી. તમે ઉમેરેલા કે વાપરેલા પૈસા અહીં દેખાશે.';

  @override
  String get walletEntryTopUp => 'પૈસા ઉમેર્યા';

  @override
  String get walletEntryOrder => 'ઓર્ડર માટે ચુકવણી';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ઓર્ડર $number માટે ચુકવણી';
  }

  @override
  String get walletEntryRefund => 'રિફંડ';

  @override
  String walletMoneyAdded(String amount) {
    return '$amount તમારા વૉલેટમાં ઉમેરાયા';
  }

  @override
  String get walletPaymentFailed =>
      'ચુકવણી નિષ્ફળ ગઈ. તમારા ખાતામાંથી કોઈ પૈસા કપાયા નથી.';

  @override
  String get walletPaymentConfirming =>
      'ચુકવણી મળી ગઈ. થોડી મિનિટોમાં તમારું બેલેન્સ અપડેટ થશે.';

  @override
  String get walletUseBalance => 'વૉલેટ બેલેન્સ વાપરો';

  @override
  String walletAvailable(String amount) {
    return 'ઉપલબ્ધ: $amount';
  }

  @override
  String get walletPaidFromWallet => 'વૉલેટમાંથી ચૂકવ્યા';

  @override
  String get walletPayOnDelivery => 'ડિલિવરી વખતે ચૂકવો';

  @override
  String get walletCoversOrder => 'પૂરી ચુકવણી તમારા વૉલેટમાંથી';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet વૉલેટમાંથી, $rest ડિલિવરી વખતે';
  }

  @override
  String get walletTopUpUnavailable =>
      'અત્યારે પૈસા ઉમેરી શકાતા નથી. કૃપા કરી થોડી વાર પછી ફરી પ્રયાસ કરો.';

  @override
  String walletFull(String limit) {
    return 'તમારું વૉલેટ તેની $limit ની મર્યાદા સુધી પહોંચી ગયું છે.';
  }

  @override
  String get searchAddressHint => 'વિસ્તાર, શેરી કે લેન્ડમાર્ક શોધો';

  @override
  String get selectLocationTitle => 'લોકેશન પસંદ કરો';

  @override
  String get useCurrentLocation => 'વર્તમાન લોકેશન વાપરો';

  @override
  String get locatingYou => 'તમારું લોકેશન શોધી રહ્યા છીએ…';

  @override
  String get locationOffHint => 'આ વાપરવા લોકેશનની મંજૂરી આપો';

  @override
  String get savedAddressesHeading => 'સાચવેલા સરનામાં';

  @override
  String get recentLocationsHeading => 'તાજેતરના લોકેશન';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ડિલિવરી લોકેશન પસંદ કરો';

  @override
  String get movePinTooltip => 'પિનને તમારા ચોક્કસ ડિલિવરી લોકેશન પર ખસેડો';

  @override
  String get locatingPin => 'સરનામું શોધી રહ્યા છીએ…';

  @override
  String get deliveryDetailsHeading => 'ડિલિવરીની વિગતો';

  @override
  String get addressDetailsLabel => 'સરનામાની વિગતો*';

  @override
  String get addressDetailsHint => 'દા.ત. માળ, મકાન નંબર';

  @override
  String get missingAreaHint =>
      'આ પિનનું પૂરું સરનામું મળ્યું નહીં. કૃપા કરી બાકીની વિગતો ભરો.';

  @override
  String get whoToContact => 'આ ડિલિવરી માટે કોનો સંપર્ક કરીએ?';

  @override
  String get contactMyself => 'હું પોતે';

  @override
  String get contactSomeoneElse => 'બીજું કોઈ';

  @override
  String get receiverDetailsHeading => 'આ સરનામા માટે લેનારની વિગતો';

  @override
  String get receiverAddPrompt => 'લેનારનું નામ અને નંબર ઉમેરો';

  @override
  String get receiverSheetTitle => 'લેનારની વિગતો';

  @override
  String get doorPhotoHeading => 'દરવાજા/બિલ્ડિંગનો ફોટો (વૈકલ્પિક)';

  @override
  String get doorPhotoAdd => 'ફોટો ઉમેરો';

  @override
  String get doorPhotoBody =>
      'આનાથી અમારા ડિલિવરી પાર્ટનર તમારું ચોક્કસ લોકેશન ઝડપથી શોધી શકે છે';

  @override
  String get doorPhotoChange => 'બદલો';

  @override
  String get doorPhotoRemove => 'દૂર કરો';

  @override
  String get photoFromCamera => 'ફોટો પાડો';

  @override
  String get photoFromGallery => 'ગેલેરીમાંથી પસંદ કરો';

  @override
  String get photoUploaded => 'ફોટો ઉમેરાયો';

  @override
  String get photoUploadFailed =>
      'ફોટો અપલોડ થઈ શક્યો નહીં. કૃપા કરી થોડી વાર પછી ફરી પ્રયાસ કરો.';

  @override
  String get addressSavedPhotoFailed =>
      'સરનામું સાચવાયું. ફોટો અપલોડ થઈ શક્યો નહીં.';

  @override
  String get removePhotoLabel => 'ફોટો દૂર કરો';

  @override
  String get photoRemoved => 'ફોટો દૂર કર્યો';

  @override
  String get shareLabel => 'શેર કરો';

  @override
  String get addDoorPhotoLabel => 'દરવાજાનો ફોટો ઉમેરો';

  @override
  String get searchAddressNoResults =>
      'કોઈ જગ્યા મળી નહીં. નજીકનો લેન્ડમાર્ક, વિસ્તારનું નામ કે પિન કોડ અજમાવો.';

  @override
  String get clearLabel => 'સાફ કરો';

  @override
  String get trackingArrivingNow => 'હમણાં પહોંચશે';

  @override
  String get trackingLive => 'લાઇવ';

  @override
  String get trackingStepConfirmed => 'કન્ફર્મ થયો';

  @override
  String get trackingStepPreparing => 'તૈયારીમાં';

  @override
  String get trackingStepOnTheWay => 'રસ્તામાં';

  @override
  String get trackingStepDelivered => 'ડિલિવર થયો';

  @override
  String get trackingFindingRider => 'ડિલિવરી પાર્ટનર સોંપી રહ્યા છીએ…';

  @override
  String get trackingPinYou => 'તમે';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance દૂર છે';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name ને મેસેજ કરો';
  }

  @override
  String get trackingDeliveringTo => 'ડિલિવરી સરનામું';

  @override
  String get trackingOrderDetails => 'ઓર્ડરની વિગતો';

  @override
  String get dispatchSearching =>
      'રેસ્ટોરાં નજીક ડિલિવરી પાર્ટનર શોધી રહ્યા છીએ…';

  @override
  String get dispatchNoRider =>
      'હજી કોઈ ડિલિવરી પાર્ટનરે ઓર્ડર લીધો નથી. અમારી ટીમ હમણાં એક પાર્ટનર સોંપી રહી છે.';

  @override
  String get vehicleBike => 'બાઇક';

  @override
  String get vehicleScooter => 'સ્કૂટર';

  @override
  String get vehicleBicycle => 'સાઇકલ';

  @override
  String get vehicleElectric => 'ઇલેક્ટ્રિક સ્કૂટર';

  @override
  String get exitTitle => 'Nexmile માંથી બહાર નીકળવું છે?';

  @override
  String get exitBody => 'શું તમે ખરેખર એપમાંથી બહાર નીકળવા માંગો છો?';

  @override
  String get exitConfirm => 'બહાર નીકળો';

  @override
  String cartSavedBanner(String amount) {
    return 'આ ઓર્ડર પર તમે $amount બચાવ્યા';
  }

  @override
  String get cartAddMoreItems => 'વધુ વસ્તુઓ ઉમેરો';

  @override
  String get cartAddNote => 'રેસ્ટોરાં માટે નોંધ ઉમેરો';

  @override
  String get cartOrderNoteHint => 'દા.ત. કશામાં પણ ડુંગળી કે લસણ નાખશો નહીં';

  @override
  String get cartNoteSave => 'સાચવો';

  @override
  String get cartNoCutlery => 'ચમચી-કાંટા ન મોકલશો';

  @override
  String get cartNoCutleryThanks =>
      'પ્લાસ્ટિકનો કચરો ઘટાડવામાં મદદ કરવા બદલ આભાર';

  @override
  String get cartSavingsCorner => 'બચત કોર્નર';

  @override
  String get cartDeliveryInstructions => 'ડિલિવરી સૂચનાઓ';

  @override
  String get cartInstructionsRider => 'આ ફક્ત તમારા ડિલિવરી પાર્ટનરને જ દેખાશે';

  @override
  String get instructionLeaveAtDoor => 'દરવાજે મૂકી દો';

  @override
  String get instructionNoBell => 'ઘંટડી ન વગાડશો';

  @override
  String get instructionNoCall => 'કૉલ ન કરશો';

  @override
  String get instructionSecurity => 'સિક્યોરિટીને આપો';

  @override
  String get instructionPet => 'ઘરે પાલતુ પ્રાણી છે';

  @override
  String get cartInclTaxes => 'કર અને ચાર્જ સહિત';

  @override
  String cartSavedTag(String amount) {
    return '$amount ની બચત';
  }

  @override
  String get cartPayUsing => 'ચુકવણીની રીત';

  @override
  String get cartWalletAndCash => 'વૉલેટ + રોકડ';

  @override
  String cartCashRest(String amount) {
    return 'ઓર્ડર આવે ત્યારે $amount ચૂકવો';
  }

  @override
  String get cartCashFull => 'ઓર્ડર આવે ત્યારે ચૂકવો';

  @override
  String get cartCashNothing => 'ડિલિવરી વખતે કંઈ ચૂકવવાનું નથી';

  @override
  String get cartTotal => 'કુલ';

  @override
  String get cartPlaceOrder => 'ઓર્ડર કરો';

  @override
  String cartDeliverTo(String place) {
    return '$place પર ડિલિવરી';
  }

  @override
  String get cartChange => 'બદલો';

  @override
  String get cartNoAddress => 'ક્યાં ડિલિવરી કરીએ?';

  @override
  String get cartNoAddressHint => 'ઓર્ડર કરવા સરનામું ઉમેરો';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant માંથી જાતે લો';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'લગભગ $minutes મિનિટમાં તૈયાર';
  }

  @override
  String get cartChooseAddress => 'ડિલિવરી સરનામું પસંદ કરો';

  @override
  String get cartDone => 'થઈ ગયું';

  @override
  String get supportTitle => 'Nexmile સપોર્ટ';

  @override
  String get supportBubble => 'મદદ';

  @override
  String get supportAiLabel => 'AI આસિસ્ટન્ટ';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ટીમ';
  }

  @override
  String get supportDemoBanner =>
      'ડેમો: આ જવાબો માત્ર નમૂનારૂપ છે. અસલી AI આસિસ્ટન્ટ હજી જોડાયો નથી.';

  @override
  String get supportEmptyTitle => 'અમે કેવી રીતે મદદ કરી શકીએ?';

  @override
  String get supportEmptyBody =>
      'ઓર્ડર, ચુકવણી અથવા બીજી કોઈ પણ બાબત વિશે પૂછો. પહેલાં અમારો AI આસિસ્ટન્ટ જવાબ આપે છે, અને તે મદદ ન કરી શકે ત્યારે અમારી ટીમની કોઈ વ્યક્તિ આગળ સંભાળે છે.';

  @override
  String get supportSuggestWhere => 'મારો ઓર્ડર ક્યાં છે?';

  @override
  String get supportSuggestMissing => 'ઓર્ડરમાં કંઈક ખૂટે છે';

  @override
  String get supportSuggestRefund => 'રિફંડ વિશે એક પ્રશ્ન છે';

  @override
  String get supportComposerHint => 'મેસેજ લખો';

  @override
  String get supportSend => 'મોકલો';

  @override
  String get supportTyping => 'AI આસિસ્ટન્ટ લખી રહ્યો છે…';

  @override
  String get supportNotSent => 'મોકલાયો નથી';

  @override
  String get supportTookTooLong => 'જવાબ આવતાં બહુ વાર લાગી.';

  @override
  String get supportSlowDown => 'વધુ મેસેજ મોકલતાં પહેલાં થોડી વાર રાહ જુઓ.';

  @override
  String get supportUnreachable =>
      'અત્યારે ચેટ સાથે સંપર્ક થઈ શકતો નથી. અમને કૉલ કરો, અથવા થોડી મિનિટ પછી ફરી પ્રયાસ કરો.';

  @override
  String get supportOffline => 'તમે ઑફલાઇન છો. આ તમારી છેલ્લી સાચવેલી ચેટ છે.';

  @override
  String get supportClosed => 'આ ચેટ બંધ થઈ ગઈ છે.';

  @override
  String get supportStartNew => 'નવી ચેટ શરૂ કરો';

  @override
  String get supportTalkToPerson => 'કોઈ વ્યક્તિ સાથે વાત કરો';

  @override
  String get supportMarkSolved => 'સમસ્યા ઉકેલાઈ ગઈ';

  @override
  String get supportHelpful => 'ઉપયોગી';

  @override
  String get supportNotHelpful => 'ઉપયોગી નથી';

  @override
  String get supportNeedHelp => 'મદદ જોઈએ છે?';

  @override
  String get supportChatWithUs => 'અમારી સાથે ચેટ કરો';

  @override
  String get supportChatWithUsBody =>
      'અમારો AI આસિસ્ટન્ટ થોડી સેકન્ડમાં જવાબ આપે છે, અને જરૂર પડે ત્યારે કોઈ વ્યક્તિ આગળ સંભાળે છે.';

  @override
  String get supportActionFailed => 'તે થઈ શક્યું નહીં. ફરી પ્રયાસ કરો.';

  @override
  String get supportOrderNotFound => 'આ ઓર્ડર તમારા એકાઉન્ટમાં મળ્યો નથી.';

  @override
  String get supportOrderLookupDown =>
      'હમણાં આ ઓર્ડર તપાસી શકાયો નથી. તમે તમારો પ્રશ્ન લખી શકો છો.';

  @override
  String get supportHandedOverNote => 'ટીમના એક સભ્ય જવાબ આપશે';

  @override
  String get supportVoiceSpeak => 'બોલો';

  @override
  String get supportVoiceListening => 'સાંભળી રહ્યા છીએ…';

  @override
  String get supportVoiceHint =>
      'તમારો પ્રશ્ન પૂછો. તમે બોલવાનું બંધ કરશો એટલે તે મોકલાઈ જશે.';

  @override
  String get supportVoiceNotHeard =>
      'બરાબર સંભળાયું નહીં. ફરી પ્રયાસ કરો, અથવા મેસેજ લખો.';

  @override
  String get supportVoiceMicDenied =>
      'અમારી સાથે વાત કરવા માટે માઇક્રોફોનની પરવાનગી આપો. તમે હજુ પણ ટાઇપ કરી શકો છો.';

  @override
  String get supportVoiceReadAloud => 'વાંચી સંભળાવો';

  @override
  String get supportVoiceStop => 'રોકો';

  @override
  String get restaurantNew => 'નવું';

  @override
  String get walletHideBalance => 'બેલેન્સ છુપાવો';

  @override
  String get walletShowBalance => 'બેલેન્સ બતાવો';

  @override
  String get walletBalanceHiddenLabel => 'બેલેન્સ છુપાવેલું છે';

  @override
  String walletUpdatedAt(String time) {
    return 'અપડેટ: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'ઓછામાં ઓછા $amount ઉમેરો';
  }

  @override
  String walletAboveMax(String amount) {
    return 'તમે વધુમાં વધુ $amount ઉમેરી શકો છો';
  }

  @override
  String get walletOpeningPayment => 'ચુકવણી શરૂ થઈ રહી છે…';

  @override
  String get walletConfirmingPayment => 'ચુકવણીની પુષ્ટિ થઈ રહી છે…';

  @override
  String get walletTransactions => 'વ્યવહારો';

  @override
  String get walletFilterAll => 'બધા';

  @override
  String get walletFilterAdded => 'ઉમેરેલા પૈસા';

  @override
  String get walletFilterSpent => 'વાપરેલા પૈસા';

  @override
  String get walletSearch => 'શોધો';

  @override
  String get walletSearchHint => 'ઓર્ડર નંબર કે ID શોધો';

  @override
  String get walletDateFilter => 'તારીખ મુજબ ફિલ્ટર કરો';

  @override
  String get walletClearFilters => 'ફિલ્ટર હટાવો';

  @override
  String get walletNoMatches => 'તમારા ફિલ્ટર સાથે મેળ ખાતો કોઈ વ્યવહાર નથી';

  @override
  String get walletEmptyTitle => 'હજી કોઈ વ્યવહાર નથી';

  @override
  String get walletEmptyBody =>
      'તમે ઉમેરેલા, ઓર્ડર પર વાપરેલા કે રિફંડ તરીકે પાછા મળેલા પૈસા અહીં દેખાશે.';

  @override
  String get walletToday => 'આજે';

  @override
  String get walletYesterday => 'ગઈકાલે';

  @override
  String walletLatestOnly(int count) {
    return 'તમારા તાજેતરના $count વ્યવહારો બતાવી રહ્યા છીએ';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ઓર્ડર $number નું રિફંડ';
  }

  @override
  String get walletDetailsTitle => 'વ્યવહારની વિગતો';

  @override
  String get walletDetailDate => 'તારીખ અને સમય';

  @override
  String get walletDetailId => 'વ્યવહાર ID';

  @override
  String get walletDetailType => 'પ્રકાર';

  @override
  String get walletDetailMethod => 'ચુકવણીની રીત';

  @override
  String get walletDetailStatus => 'સ્થિતિ';

  @override
  String get walletDetailOrder => 'ઓર્ડર';

  @override
  String get walletDetailReference => 'ચુકવણી રેફરન્સ';

  @override
  String get walletDetailBalanceAfter => 'વ્યવહાર પછીનું બેલેન્સ';

  @override
  String get walletCredit => 'ક્રેડિટ';

  @override
  String get walletDebit => 'ડેબિટ';

  @override
  String get walletStatusSuccess => 'સફળ';

  @override
  String get walletStatusPending => 'બાકી';

  @override
  String get walletStatusFailed => 'નિષ્ફળ';

  @override
  String get walletMethodOnline => 'ઓનલાઇન ચુકવણી';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'કાર્ડ';

  @override
  String get walletMethodNetbanking => 'નેટ બેન્કિંગ';

  @override
  String get walletMethodRefund => 'વૉલેટમાં રિફંડ';

  @override
  String get walletCopyId => 'ID કૉપિ કરો';

  @override
  String get walletIdCopied => 'વ્યવહાર ID કૉપિ થઈ';

  @override
  String get walletShareDetails => 'વિગતો શેર કરો';
}
