// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'ഈ ഫീൽഡ് നിർബന്ധമാണ്';

  @override
  String get tagline => 'വേഗത്തിലുള്ള ഡെലിവറി. പുതിയ പുഞ്ചിരികൾ.';

  @override
  String get chooseLanguageTitle => 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseLanguageSubtitle =>
      'നിങ്ങൾക്ക് സൗകര്യപ്രദമായ ഭാഷ തിരഞ്ഞെടുക്കുക. ഇത് എപ്പോൾ വേണമെങ്കിലും ക്രമീകരണങ്ങളിൽ മാറ്റാം.';

  @override
  String get searchLanguageHint => 'ഭാഷ തിരയുക';

  @override
  String get noLanguageFound => 'ഭാഷയൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String languagesAvailable(int count) {
    return '$count ഭാഷകൾ ലഭ്യമാണ്';
  }

  @override
  String get continueLabel => 'തുടരുക';

  @override
  String get selectedLabel => 'തിരഞ്ഞെടുത്തു';

  @override
  String get defaultLabel => 'ഡിഫോൾട്ട്';

  @override
  String get homeTitle => 'Nexmile ലേക്ക് സ്വാഗതം';

  @override
  String get homeSubtitle =>
      'പുതിയ പലവ്യഞ്ജനങ്ങൾ, ചൂടുള്ള ഭക്ഷണം, ദൈനംദിന ആവശ്യസാധനങ്ങൾ എന്നിവ അടുത്തുള്ള കടകളിൽ നിന്ന്.';

  @override
  String get changeLanguage => 'ഭാഷ മാറ്റുക';

  @override
  String get languageUpdated => 'ഭാഷ മാറ്റി';

  @override
  String get appLanguageLabel => 'ആപ്പ് ഭാഷ';

  @override
  String greetingNamed(String name) {
    return 'നമസ്കാരം, $name';
  }

  @override
  String get loginTitle => 'Nexmile ൽ സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get loginSubtitle =>
      'നിങ്ങളുടെ ഇമെയിലോ മൊബൈൽ നമ്പറോ നൽകുക, ഞങ്ങൾ പരിശോധനാ കോഡ് അയയ്ക്കും.';

  @override
  String get emailOrPhoneLabel => 'ഇമെയിൽ അല്ലെങ്കിൽ മൊബൈൽ നമ്പർ';

  @override
  String get emailOrPhoneHint => 'name@example.com അല്ലെങ്കിൽ 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'സാധുവായ ഇമെയിൽ വിലാസമോ 10 അക്ക മൊബൈൽ നമ്പറോ നൽകുക';

  @override
  String get loginHeadline =>
      'അടുത്തുള്ള കടകളിൽ നിന്ന് ചൂടുള്ള ഭക്ഷണം, വേഗത്തിൽ ഡെലിവറി';

  @override
  String get loginOrSignUp => 'ലോഗിൻ അല്ലെങ്കിൽ സൈൻ അപ്പ്';

  @override
  String get loginEmailHint => 'നിങ്ങളുടെ ഇമെയിൽ വിലാസം നൽകുക';

  @override
  String get invalidEmail => 'സാധുവായ ഇമെയിൽ വിലാസം നൽകുക';

  @override
  String get sendCode => 'കോഡ് അയയ്ക്കുക';

  @override
  String get agreeToTermsOnContinue =>
      'തുടരുന്നതിലൂടെ ഞങ്ങളുടെ സേവന നിബന്ധനകളും സ്വകാര്യതാ നയവും നിങ്ങൾ അംഗീകരിക്കുന്നു.';

  @override
  String get otpTitle => 'ഇത് നിങ്ങൾ തന്നെയെന്ന് ഉറപ്പാക്കുക';

  @override
  String otpSubtitle(String target) {
    return '$target ലേക്ക് അയച്ച 6 അക്ക കോഡ് നൽകുക';
  }

  @override
  String get verifyCode => 'പരിശോധിക്കുക';

  @override
  String get resendCode => 'കോഡ് വീണ്ടും അയയ്ക്കുക';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds സെക്കൻഡിൽ വീണ്ടും അയയ്ക്കുക';
  }

  @override
  String get codeResent => 'പുതിയ കോഡ് അയച്ചിട്ടുണ്ട്';

  @override
  String get incorrectCode =>
      'ഈ കോഡ് തെറ്റാണ് അല്ലെങ്കിൽ കാലഹരണപ്പെട്ടു. പുതിയത് ആവശ്യപ്പെടുക.';

  @override
  String get enterFullCode => '6 അക്കങ്ങളും നൽകുക';

  @override
  String get accountSuspended =>
      'ഈ അക്കൗണ്ട് താൽക്കാലികമായി നിർത്തിവച്ചിരിക്കുന്നു. സപ്പോർട്ടുമായി ബന്ധപ്പെടുക.';

  @override
  String get tooManyAttempts =>
      'വളരെയധികം ശ്രമങ്ങൾ. കുറച്ച് സമയത്തിന് ശേഷം വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get sessionExpired =>
      'നിങ്ങളുടെ സെഷൻ കാലഹരണപ്പെട്ടു. വീണ്ടും സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get networkError =>
      'ഇന്റർനെറ്റ് കണക്ഷൻ ഇല്ല. കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get developmentCode => 'ഡെവലപ്പ്മെന്റ് കോഡ്';

  @override
  String get signOut => 'സൈൻ ഔട്ട്';

  @override
  String get signedOut => 'നിങ്ങൾ സൈൻ ഔട്ട് ചെയ്തു';

  @override
  String get somethingWentWrong =>
      'എന്തോ കുഴപ്പം സംഭവിച്ചു. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get profileTitle => 'പ്രൊഫൈൽ';

  @override
  String get viewProfile => 'പ്രൊഫൈൽ കാണുക';

  @override
  String get nameLabel => 'പേര്';

  @override
  String get emailLabel => 'ഇമെയിൽ';

  @override
  String get mobileLabel => 'മൊബൈൽ നമ്പർ';

  @override
  String get accountStatusLabel => 'അക്കൗണ്ട് നില';

  @override
  String get statusActive => 'സജീവം';

  @override
  String get statusPending => 'തീർപ്പാക്കാത്തത്';

  @override
  String get statusSuspended => 'നിർത്തിവച്ചു';

  @override
  String get verifiedLabel => 'പരിശോധിച്ചു';

  @override
  String get notProvided => 'ചേർത്തിട്ടില്ല';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get navHome => 'ഹോം';

  @override
  String get navSearch => 'തിരയുക';

  @override
  String get navOrders => 'ഓർഡറുകൾ';

  @override
  String get cancelLabel => 'റദ്ദാക്കുക';

  @override
  String get deliverTo => 'ഡെലിവറി വിലാസം';

  @override
  String get searchDishesHint => 'വിഭവങ്ങളോ റെസ്റ്റോറന്റുകളോ തിരയുക';

  @override
  String get searchTitle => 'തിരയുക';

  @override
  String get searchNoResultsTitle => 'ഒന്നും കണ്ടെത്തിയില്ല';

  @override
  String get searchNoResultsSubtitle =>
      'മറ്റൊരു വിഭവം, പാചകരീതി അല്ലെങ്കിൽ റെസ്റ്റോറന്റ് പേര് പരീക്ഷിക്കുക.';

  @override
  String get cravingTitle => 'ഇന്ന് എന്ത് കഴിക്കാൻ തോന്നുന്നു?';

  @override
  String get offersTitle => 'നിങ്ങൾക്കുള്ള ഓഫറുകൾ';

  @override
  String get restaurantsNearby => 'അടുത്തുള്ള റെസ്റ്റോറന്റുകൾ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count റെസ്റ്റോറന്റുകൾ',
      one: '1 റെസ്റ്റോറന്റ്',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'ഇവിടെ ഇതുവരെ ഒന്നുമില്ല';

  @override
  String get noRestaurantsSubtitle =>
      'മറ്റൊരു വിഭാഗം നോക്കുക അല്ലെങ്കിൽ ഫിൽട്ടർ നീക്കുക.';

  @override
  String minutesAway(int minutes) {
    return '$minutes മിനിറ്റ്';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance കിമീ';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count റേറ്റിംഗുകൾ',
      one: '1 റേറ്റിംഗ്',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'രണ്ടുപേർക്ക് ₹$amount';
  }

  @override
  String get freeDelivery => 'സൗജന്യ ഡെലിവറി';

  @override
  String percentOff(int percent) {
    return '$percent% കിഴിവ്';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'നിങ്ങളുടെ ഓർഡറിന് $percent% കിഴിവ്';
  }

  @override
  String get vegOnly => 'വെജ് മാത്രം';

  @override
  String get bestseller => 'ഏറ്റവും വിറ്റഴിയുന്നത്';

  @override
  String get addLabel => 'ചേർക്കുക';

  @override
  String get noVegDishesTitle => 'ഇവിടെ വെജ് വിഭവങ്ങളില്ല';

  @override
  String get noVegDishesSubtitle =>
      'മുഴുവൻ മെനു കാണാൻ വെജ് ഫിൽട്ടർ ഓഫ് ചെയ്യുക.';

  @override
  String get replaceCartTitle => 'പുതിയ കാർട്ട് തുടങ്ങണോ?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'നിങ്ങളുടെ കാർട്ടിൽ $restaurant ൽ നിന്നുള്ള സാധനങ്ങളുണ്ട്. ഇത് ചേർത്താൽ അവ നീക്കപ്പെടും.';
  }

  @override
  String get replaceCartConfirm => 'നീക്കി ചേർക്കുക';

  @override
  String get cartTitle => 'നിങ്ങളുടെ കാർട്ട്';

  @override
  String get cartEmptyTitle => 'നിങ്ങളുടെ കാർട്ട് ശൂന്യമാണ്';

  @override
  String get cartEmptySubtitle =>
      'തുടങ്ങാൻ ഏതെങ്കിലും റെസ്റ്റോറന്റിൽ നിന്ന് വിഭവങ്ങൾ ചേർക്കുക.';

  @override
  String get browseRestaurants => 'റെസ്റ്റോറന്റുകൾ കാണുക';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഇനങ്ങൾ',
      one: '1 ഇനം',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'കാർട്ട് കാണുക';

  @override
  String get itemTotal => 'സാധനങ്ങളുടെ ആകെ';

  @override
  String get deliveryFeeLabel => 'ഡെലിവറി ഫീസ്';

  @override
  String get taxesAndCharges => 'നികുതികളും ചാർജുകളും';

  @override
  String get freeLabel => 'സൗജന്യം';

  @override
  String get toPay => 'അടയ്ക്കേണ്ടത്';

  @override
  String placeOrderFor(String amount) {
    return 'ഓർഡർ ചെയ്യുക · $amount';
  }

  @override
  String get ordersTitle => 'നിങ്ങളുടെ ഓർഡറുകൾ';

  @override
  String get ordersEmptyTitle => 'ഇതുവരെ ഓർഡറുകളില്ല';

  @override
  String get ordersEmptySubtitle => 'നിങ്ങളുടെ പഴയ ഓർഡറുകൾ ഇവിടെ കാണാം.';

  @override
  String get reorder => 'വീണ്ടും ഓർഡർ';

  @override
  String orderTitle(String id) {
    return 'ഓർഡർ $id';
  }

  @override
  String get orderPlacedTitle => 'ഓർഡർ ചെയ്തു';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'ഏകദേശം $minutes മിനിറ്റിനുള്ളിൽ എത്തും.';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant ന് നിങ്ങളുടെ ഓർഡർ ലഭിച്ചു.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'ഏകദേശം $minutes മിനിറ്റിനുള്ളിൽ തയ്യാറാകും.';
  }

  @override
  String get trackYourOrder => 'ഓർഡർ ട്രാക്ക് ചെയ്യുക';

  @override
  String get couponApplyTitle => 'കൂപ്പൺ ഉപയോഗിക്കുക';

  @override
  String get couponCodeLabel => 'കൂപ്പൺ കോഡ്';

  @override
  String get couponApply => 'ഉപയോഗിക്കുക';

  @override
  String couponAppliedTitle(String code) {
    return '$code ഉപയോഗിച്ചു';
  }

  @override
  String couponSaving(String amount) {
    return 'നിങ്ങൾക്ക് $amount ലാഭം';
  }

  @override
  String get couponRemove => 'നീക്കുക';

  @override
  String searchFor(String term) {
    return '\"$term\" തിരയുക';
  }

  @override
  String get vegModeBadge => 'പ്യുവർ വെജ്';

  @override
  String trackingExpectedBy(String time) {
    return '$time ഓടെ എത്തും';
  }

  @override
  String get orderAgainTitle => 'വീണ്ടും ഓർഡർ ചെയ്യൂ';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count കൂടി',
      one: '$first + 1 കൂടി',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max മിനിറ്റ്';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 ൽ $rating റേറ്റിംഗ്';
  }

  @override
  String get reorderReplaceTitle => 'നിങ്ങളുടെ കാർട്ട് മാറ്റണോ?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant ൽ നിന്നുള്ള നിങ്ങളുടെ കാർട്ടിന് പകരം ഈ ഓർഡറിലെ വിഭവങ്ങൾ ചേർക്കും.';
  }

  @override
  String get reorderReplace => 'മാറ്റുക';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes ഇപ്പോൾ ലഭ്യമല്ലാത്തതിനാൽ അവ ഒഴിവാക്കി.',
      one: '$dishes ഇപ്പോൾ ലഭ്യമല്ലാത്തതിനാൽ ഒഴിവാക്കി.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable => 'ഈ വിഭവങ്ങളൊന്നും ഇപ്പോൾ ലഭ്യമല്ല.';

  @override
  String get searchShort => 'തിരയുക';

  @override
  String get favouriteSave => 'പ്രിയപ്പെട്ടവയിൽ ചേർക്കുക';

  @override
  String get restaurantAbout => 'ഈ റെസ്റ്റോറന്റിനെക്കുറിച്ച്';

  @override
  String ratingByCount(String count) {
    return '$count പേർ';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഓഫറുകൾ',
      one: '1 ഓഫർ',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return '$restaurant ൽ നിന്ന് Nexmile വഴി ഓർഡർ ചെയ്യൂ';
  }

  @override
  String get ordersSearchHint => 'റെസ്റ്റോറന്റോ വിഭവമോ തിരയുക…';

  @override
  String get ordersNoMatch =>
      'ആ പേരിലുള്ള റെസ്റ്റോറന്റിന്റെയോ വിഭവത്തിന്റെയോ ഓർഡറുകളൊന്നുമില്ല.';

  @override
  String orderPlacedOn(String date) {
    return '$date ന് ഓർഡർ ചെയ്തു';
  }

  @override
  String get viewMenu => 'മെനു കാണുക';

  @override
  String get navHistory => 'ചരിത്രം';

  @override
  String get exploreMore => 'കൂടുതൽ കണ്ടെത്തൂ';

  @override
  String get exploreTopRated => 'മികച്ച റേറ്റിംഗ്';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'നിങ്ങൾക്ക് ഡെലിവർ ചെയ്യുന്ന $count റെസ്റ്റോറന്റുകൾ',
      one: 'നിങ്ങൾക്ക് ഡെലിവർ ചെയ്യുന്ന 1 റെസ്റ്റോറന്റ്',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ഡെലിവറി എങ്ങനെയുണ്ടായിരുന്നു?';

  @override
  String get rateHowWasFood => 'ഭക്ഷണം എങ്ങനെയുണ്ടായിരുന്നു?';

  @override
  String get rateWordTerrible => 'വളരെ മോശം';

  @override
  String get rateWordBad => 'മോശം';

  @override
  String get rateWordOkay => 'കുഴപ്പമില്ല';

  @override
  String get rateWordGood => 'നല്ലത്';

  @override
  String get rateWordLoved => 'വളരെ ഇഷ്ടപ്പെട്ടു!';

  @override
  String get rateWhatWentWrong => 'എന്തായിരുന്നു പ്രശ്നം?';

  @override
  String get rateWhatYouLiked => 'എന്താണ് ഇഷ്ടപ്പെട്ടത്?';

  @override
  String get rateRiderNoteHint => 'ഡെലിവറിയെക്കുറിച്ച് ഒരു കുറിപ്പ് (ഐച്ഛികം)';

  @override
  String get rateReviewHeading => 'അവലോകനം എഴുതുക';

  @override
  String get rateFoodFirst => 'അയയ്ക്കാൻ ഭക്ഷണം റേറ്റ് ചെയ്യൂ';

  @override
  String get rateYouRated => 'നിങ്ങൾ ഈ ഓർഡർ റേറ്റ് ചെയ്തു';

  @override
  String get ratePromptLater => 'ഇപ്പോൾ വേണ്ട';

  @override
  String get tagTasty => 'രുചികരം';

  @override
  String get tagFreshHot => 'ചൂടും ഫ്രഷും';

  @override
  String get tagGoodPortion => 'നല്ല അളവ്';

  @override
  String get tagGoodPackaging => 'നല്ല പാക്കിംഗ്';

  @override
  String get tagValueForMoney => 'പണത്തിനൊത്ത മൂല്യം';

  @override
  String get tagHygienic => 'വൃത്തിയുള്ളത്';

  @override
  String get tagColdFood => 'തണുത്ത ഭക്ഷണം';

  @override
  String get tagPoorTaste => 'രുചി പോരാ';

  @override
  String get tagSmallPortion => 'അളവ് കുറവ്';

  @override
  String get tagWrongItems => 'തെറ്റായ വിഭവങ്ങൾ';

  @override
  String get tagMissingItems => 'വിഭവങ്ങൾ കിട്ടിയില്ല';

  @override
  String get tagPoorPackaging => 'മോശം പാക്കിംഗ്';

  @override
  String get tagTooOily => 'എണ്ണയോ എരിവോ കൂടുതൽ';

  @override
  String get tagOnTime => 'കൃത്യസമയത്ത്';

  @override
  String get tagPolite => 'നല്ല പെരുമാറ്റം';

  @override
  String get tagFollowedInstructions => 'നിർദ്ദേശങ്ങൾ പാലിച്ചു';

  @override
  String get tagCarefulHandling => 'ഭക്ഷണം ശ്രദ്ധയോടെ എത്തിച്ചു';

  @override
  String get tagGoodCommunication => 'കൃത്യമായി വിവരം അറിയിച്ചു';

  @override
  String get tagLate => 'ഡെലിവറി വൈകി';

  @override
  String get tagRude => 'മോശം പെരുമാറ്റം';

  @override
  String get tagIgnoredInstructions => 'നിർദ്ദേശങ്ങൾ പാലിച്ചില്ല';

  @override
  String get tagFoodSpilled => 'ഭക്ഷണം ചോർന്നുപോയി';

  @override
  String get tagAskedExtraMoney => 'അധിക പണം ചോദിച്ചു';

  @override
  String get tagUnprofessional => 'പ്രൊഫഷണലല്ല';

  @override
  String rateDeliveredBy(String name) {
    return 'ഡെലിവർ ചെയ്തത് $name';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant ൽ നിന്ന്';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant ൽ നിന്നുള്ള ഓർഡർ എങ്ങനെയുണ്ടായിരുന്നു?';
  }

  @override
  String get orderDeliveredTitle => 'ഡെലിവർ ചെയ്തു';

  @override
  String get orderDeliveredSubtitle => 'ഭക്ഷണം ആസ്വദിക്കൂ.';

  @override
  String get statusOrderPlaced => 'ഓർഡർ ചെയ്തു';

  @override
  String get statusPreparing => 'ഭക്ഷണം തയ്യാറാകുന്നു';

  @override
  String get statusOnTheWay => 'വഴിയിലാണ്';

  @override
  String get statusDelivered => 'ഡെലിവർ ചെയ്തു';

  @override
  String get keepBrowsing => 'കാണുന്നത് തുടരുക';

  @override
  String get backToHome => 'ഹോമിലേക്ക് മടങ്ങുക';

  @override
  String get prototypeNotice =>
      'മാതൃകാ സ്റ്റോർഫ്രണ്ട് — യഥാർത്ഥ കടകൾ കാറ്റലോഗ് API യോടൊപ്പം വരും.';

  @override
  String get prototypeCheckoutNotice =>
      'ഇതൊരു പ്രോട്ടോടൈപ്പാണ്. പണം ഈടാക്കുന്നില്ല, യഥാർത്ഥ ഓർഡറും നടക്കുന്നില്ല.';

  @override
  String get prototypeTrackingNotice =>
      'പ്രോട്ടോടൈപ്പിനായി ട്രാക്കിംഗ് കൃത്രിമമാണ്.';

  @override
  String get locationTitle => 'എവിടെ ഡെലിവർ ചെയ്യണം?';

  @override
  String get locationSubtitle =>
      'Nexmile 1 കിമീ പരിധിയിലുള്ള കടകളിൽ നിന്ന് മാത്രമേ ഡെലിവർ ചെയ്യൂ, അതിനാൽ നിങ്ങളുടെ കൃത്യമായ സ്ഥലം വേണം.';

  @override
  String get locationReasonRadiusTitle => '1 കിമീയ്ക്കുള്ളിലെ കടകൾ';

  @override
  String get locationReasonRadiusBody =>
      'ചൂടോടെ എത്താൻ കഴിയുന്ന അടുക്കളകൾ മാത്രമേ കാണിക്കൂ.';

  @override
  String get locationReasonAccuracyTitle => 'ശരിയായ വാതിൽക്കൽ';

  @override
  String get locationReasonAccuracyBody =>
      'കൃത്യമായ പിൻ ഉണ്ടെങ്കിൽ ഡെലിവറി പങ്കാളി വിളിക്കാതെ തന്നെ നിങ്ങളെ കണ്ടെത്തും.';

  @override
  String get locationReasonPrivacyTitle => 'ആപ്പ് ഉപയോഗിക്കുമ്പോൾ മാത്രം';

  @override
  String get locationReasonPrivacyBody =>
      'പശ്ചാത്തലത്തിൽ ഞങ്ങൾ നിങ്ങളെ ട്രാക്ക് ചെയ്യില്ല, വിലാസം സ്വയം ടൈപ്പ് ചെയ്യാം.';

  @override
  String get allowLocation => 'ലൊക്കേഷൻ അനുവദിക്കുക';

  @override
  String get enterAddressManually => 'ഞാൻ വിലാസം സ്വയം എഴുതാം';

  @override
  String get locationDenied =>
      'ലൊക്കേഷൻ അനുമതി നിരസിച്ചു. നിങ്ങൾക്ക് പിൻ സ്വയം വയ്ക്കാം.';

  @override
  String get locationDeniedForever =>
      'Nexmile നായി ലൊക്കേഷൻ തടഞ്ഞിരിക്കുന്നു. ക്രമീകരണങ്ങളിൽ ഓണാക്കുക അല്ലെങ്കിൽ പിൻ സ്വയം വയ്ക്കുക.';

  @override
  String get locationServiceOff => 'ഈ ഉപകരണത്തിൽ ലൊക്കേഷൻ ഓഫാണ്.';

  @override
  String get locationUnavailable =>
      'ലൊക്കേഷൻ ലഭിച്ചില്ല. ദയവായി പിൻ സ്വയം വയ്ക്കുക.';

  @override
  String permStepCount(int step, int total) {
    return '$total ൽ $step';
  }

  @override
  String get permNotNow => 'ഇപ്പോൾ വേണ്ട';

  @override
  String get permLocationTitle => 'നിങ്ങളുടെ അടുത്തുള്ള ഭക്ഷണം കണ്ടെത്തൂ';

  @override
  String get permNotifyTitle => 'ഒരു ഓർഡർ അപ്ഡേറ്റും നഷ്ടമാകില്ല';

  @override
  String get permNotifyBody =>
      'ഓർഡർ സ്വീകരിക്കുമ്പോഴും പിക്കപ്പ് ചെയ്യുമ്പോഴും വാതിൽക്കൽ എത്തുമ്പോഴും അറിയാൻ അറിയിപ്പുകൾ ഓണാക്കുക.';

  @override
  String get permNotifyLiveTitle => 'ലൈവ് ഓർഡർ അപ്ഡേറ്റുകൾ';

  @override
  String get permNotifyLiveBody =>
      'സ്വീകരിച്ചു, പാചകം ചെയ്യുന്നു, പിക്കപ്പ് ചെയ്തു, ഡെലിവർ ചെയ്തു.';

  @override
  String get permNotifyRiderTitle => 'റൈഡർ വാതിൽക്കൽ';

  @override
  String get permNotifyRiderBody =>
      'ആപ്പ് നോക്കിയിരിക്കാതെ തന്നെ എപ്പോൾ പുറത്തിറങ്ങണമെന്ന് അറിയാം.';

  @override
  String get permNotifyControlTitle => 'നിയന്ത്രണം നിങ്ങളുടെ കയ്യിൽ';

  @override
  String get permNotifyControlBody =>
      'ഫോണിന്റെ ക്രമീകരണങ്ങളിൽ എപ്പോൾ വേണമെങ്കിലും അറിയിപ്പുകൾ ഓഫാക്കാം.';

  @override
  String get permNotifyAllow => 'അറിയിപ്പുകൾ ഓണാക്കുക';

  @override
  String get openSettings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get pinLocationTitle => 'നിങ്ങളുടെ ഡെലിവറി പിൻ വയ്ക്കുക';

  @override
  String get deliveryRadiusHint =>
      'Nexmile ഡെലിവർ ചെയ്യുന്ന 1 കിമീ വൃത്തം കാണിക്കുന്നു.';

  @override
  String get useMyLocation => 'എന്റെ ലൊക്കേഷൻ ഉപയോഗിക്കുക';

  @override
  String get deliveringHere => 'ഇവിടെ ഡെലിവറി';

  @override
  String get dragToAdjust => 'പിൻ ക്രമീകരിക്കാൻ മാപ്പ് നീക്കുക';

  @override
  String get confirmLocation => 'ലൊക്കേഷൻ സ്ഥിരീകരിക്കുക';

  @override
  String get addressDetailsTitle => 'വിലാസ വിവരങ്ങൾ';

  @override
  String get addressDetailsSubtitle =>
      'ശരിയായ വാതിലിൽ എത്താൻ വീട്ടുനമ്പറും അടയാളവും ചേർക്കുക.';

  @override
  String get pinnedLocation => 'അടയാളപ്പെടുത്തിയ സ്ഥലം';

  @override
  String get changePin => 'മാറ്റുക';

  @override
  String get saveAddressAs => 'ഈ വിലാസം ഇങ്ങനെ സൂക്ഷിക്കുക';

  @override
  String get labelHome => 'വീട്';

  @override
  String get labelWork => 'ഓഫീസ്';

  @override
  String get labelOther => 'മറ്റുള്ളവ';

  @override
  String get addressLine1Label => 'വീട്, ഫ്ലാറ്റ് അല്ലെങ്കിൽ കെട്ടിടം';

  @override
  String get addressLine1Hint => '12A, ഗ്രീൻ റെസിഡൻസി';

  @override
  String get addressLine2Label => 'തെരുവ് അല്ലെങ്കിൽ പ്രദേശം';

  @override
  String get addressLine2Hint => '2-ാം അവന്യൂ, അണ്ണാ നഗർ';

  @override
  String get landmarkLabel => 'അടയാളം';

  @override
  String get landmarkHint => 'ബസ് സ്റ്റോപ്പിന് എതിർവശം';

  @override
  String get cityLabel => 'നഗരം';

  @override
  String get stateLabel => 'സംസ്ഥാനം';

  @override
  String get pincodeLabel => 'പിൻ കോഡ്';

  @override
  String get invalidPincode => 'സാധുവായ 6 അക്ക പിൻ കോഡ് നൽകുക';

  @override
  String get contactNameLabel => 'ബന്ധപ്പെടേണ്ട പേര്';

  @override
  String get contactPhoneLabel => 'ബന്ധപ്പെടേണ്ട നമ്പർ';

  @override
  String get invalidMobileNumber => 'സാധുവായ 10 അക്ക മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get makeDefaultAddress => 'ഡിഫോൾട്ടായി ഇവിടെ ഡെലിവറി';

  @override
  String get saveAddress => 'വിലാസം സൂക്ഷിക്കുക';

  @override
  String get addressSaved => 'വിലാസം സൂക്ഷിച്ചു';

  @override
  String get addressBookTitle => 'ഡെലിവറി വിലാസങ്ങൾ';

  @override
  String get manageAddresses => 'സൂക്ഷിച്ച വിലാസങ്ങൾ കൈകാര്യം ചെയ്യുക';

  @override
  String get noAddressesTitle => 'ഇതുവരെ വിലാസങ്ങളില്ല';

  @override
  String get noAddressesSubtitle =>
      'നിങ്ങൾക്ക് ഡെലിവർ ചെയ്യുന്ന കടകൾ കാണിക്കാൻ ഒരു വിലാസം ചേർക്കുക.';

  @override
  String get addAddress => 'വിലാസം ചേർക്കുക';

  @override
  String get setAsDefault => 'ഡിഫോൾട്ടാക്കുക';

  @override
  String get editLabel => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get addressUpdated => 'വിലാസം അപ്ഡേറ്റ് ചെയ്തു';

  @override
  String get deleteLabel => 'ഇല്ലാതാക്കുക';

  @override
  String get deleteAddressTitle => 'ഈ വിലാസം ഇല്ലാതാക്കണോ?';

  @override
  String get deleteAddressMessage =>
      'പിന്നീട് എപ്പോൾ വേണമെങ്കിലും വീണ്ടും ചേർക്കാം.';

  @override
  String get rescueDealsTitle => 'ഫുഡ് റെസ്ക്യൂ';

  @override
  String get notTakingOrders => 'ഓർഡർ എടുക്കുന്നില്ല';

  @override
  String get closedRightNow => 'ഇപ്പോൾ അടച്ചിരിക്കുന്നു';

  @override
  String minimumOrder(String amount) {
    return 'കുറഞ്ഞത് $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count ബാക്കി';
  }

  @override
  String get soldOut => 'തീർന്നു';

  @override
  String get menuEmptyTitle => 'ഇതുവരെ വിഭവങ്ങളില്ല';

  @override
  String get menuEmptySubtitle =>
      'ഈ റെസ്റ്റോറന്റ് അതിന്റെ മെനു ചേർത്തിട്ടില്ല.';

  @override
  String get moreDishesTitle => 'കൂടുതൽ വിഭവങ്ങൾ';

  @override
  String get menuSearchHint => 'വിഭവങ്ങൾ തിരയുക';

  @override
  String get filtersShort => 'ഫിൽട്ടർ';

  @override
  String get dietVeg => 'വെജ്';

  @override
  String get dietEgg => 'മുട്ട';

  @override
  String get dietNonVeg => 'നോൺ-വെജ്';

  @override
  String get menuBestsellerChip => 'ഏറ്റവും വിറ്റഴിയുന്നത്';

  @override
  String get menuFoodType => 'ഭക്ഷണ തരം';

  @override
  String get menuShowOnly => 'ഇവ മാത്രം കാണിക്കുക';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വിഭവങ്ങൾ',
      one: '1 വിഭവം',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വിഭവങ്ങൾ കാണിക്കുക',
      one: '1 വിഭവം കാണിക്കുക',
      zero: 'വിഭവങ്ങളില്ല',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'മറ്റൊരു വിഭവത്തിന്റെ പേര് നോക്കുക, അല്ലെങ്കിൽ ഒരു ഫിൽട്ടർ നീക്കുക.';

  @override
  String get menuBrowse => 'മെനു';

  @override
  String get customisable => 'ഇഷ്ടാനുസരണം';

  @override
  String get requiredLabel => 'നിർബന്ധം';

  @override
  String get optionalLabel => 'ഐച്ഛികം';

  @override
  String get chooseOne => 'ഒന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String chooseUpTo(int count) {
    return 'പരമാവധി $count തിരഞ്ഞെടുക്കുക';
  }

  @override
  String chooseAtLeast(int count) {
    return 'കുറഞ്ഞത് $count തിരഞ്ഞെടുക്കുക';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min മുതൽ $max വരെ തിരഞ്ഞെടുക്കുക';
  }

  @override
  String get specialInstructions => 'പ്രത്യേക നിർദ്ദേശങ്ങൾ';

  @override
  String get specialInstructionsHint => 'എരിവ് കുറച്ച്, സവാള വേണ്ട…';

  @override
  String addForAmount(String amount) {
    return 'ചേർക്കുക · $amount';
  }

  @override
  String get deliveryLabel => 'ഡെലിവറി';

  @override
  String get pickupLabel => 'നേരിട്ട് വാങ്ങൽ';

  @override
  String get packagingLabel => 'പാക്കിംഗ്';

  @override
  String get discountLabel => 'കിഴിവ്';

  @override
  String get billDetailsTitle => 'ബിൽ വിവരങ്ങൾ';

  @override
  String get clearCart => 'കാർട്ട് ശൂന്യമാക്കുക';

  @override
  String get clearCartTitle => 'ഈ കാർട്ട് ശൂന്യമാക്കണോ?';

  @override
  String get clearCartMessage => 'അതിലുള്ളതെല്ലാം നീക്കം ചെയ്യും.';

  @override
  String unavailableItemsNotice(String items) {
    return 'ഇപ്പോൾ ലഭ്യമല്ല: $items';
  }

  @override
  String get removeUnavailable => 'അവ നീക്കം ചെയ്യുക';

  @override
  String minimumNotMet(String amount) {
    return 'കുറഞ്ഞ ഓർഡർ $amount ആണ്';
  }

  @override
  String get checkoutTitle => 'ചെക്ക്ഔട്ട്';

  @override
  String get deliveryAddressLabel => 'ഡെലിവറി വിലാസം';

  @override
  String get noAddressSelected => 'വിലാസം തിരഞ്ഞെടുത്തിട്ടില്ല';

  @override
  String get paymentMethodLabel => 'പണമടയ്ക്കൽ';

  @override
  String get payOnDelivery => 'ഡെലിവറി സമയത്ത് പണം';

  @override
  String get noteToRestaurant => 'റെസ്റ്റോറന്റിനുള്ള കുറിപ്പ്';

  @override
  String get noteToRestaurantHint => 'ബെൽ രണ്ടു തവണ അടിക്കുക…';

  @override
  String get activeOrdersTitle => 'നടക്കുന്ന ഓർഡറുകൾ';

  @override
  String get pastOrdersTitle => 'പഴയ ഓർഡറുകൾ';

  @override
  String get orderItemsTitle => 'വിഭവങ്ങൾ';

  @override
  String get orderProgressTitle => 'പുരോഗതി';

  @override
  String get arrivingIn => 'എത്തിച്ചേരാൻ';

  @override
  String get pickupCodeLabel => 'പിക്കപ്പ് കോഡ്';

  @override
  String get cancellationReasonLabel => 'റദ്ദാക്കിയ കാരണം';

  @override
  String get riderLabel => 'ഡെലിവറി പങ്കാളി';

  @override
  String get callRider => 'വിളിക്കുക';

  @override
  String get trackRider => 'റൈഡറെ ട്രാക്ക് ചെയ്യുക';

  @override
  String get riderLocationSoon =>
      'ഓർഡർ എടുത്തുകഴിഞ്ഞാൽ റൈഡറുടെ സ്ഥാനം ഇവിടെ കാണാം.';

  @override
  String get riderLocationStale => 'റൈഡറുടെ സ്ഥാനം പുതുക്കുന്നു…';

  @override
  String get recentreOnRider => 'റൈഡറിൽ കേന്ദ്രീകരിക്കുക';

  @override
  String get viewInvoice => 'ടാക്സ് ഇൻവോയ്സ്';

  @override
  String get cancelOrder => 'ഓർഡർ റദ്ദാക്കുക';

  @override
  String get cancelOrderTitle => 'ഈ ഓർഡർ റദ്ദാക്കണോ?';

  @override
  String get cancelOrderMessage =>
      'റെസ്റ്റോറന്റ് സ്വീകരിക്കുന്നതിനു മുൻപ് മാത്രമേ റദ്ദാക്കാനാകൂ.';

  @override
  String get cancelReasonLabel => 'കാരണം';

  @override
  String get cancelReasonFallback => 'ഉപഭോക്താവ് റദ്ദാക്കി';

  @override
  String get orderCancelled => 'ഓർഡർ റദ്ദാക്കി';

  @override
  String get currentLocationLabel => 'നിലവിലെ സ്ഥലം';

  @override
  String get onLabel => 'ഓൺ';

  @override
  String get offLabel => 'ഓഫ്';

  @override
  String get profileCoupons => 'നിങ്ങളുടെ കൂപ്പണുകൾ';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count എണ്ണം ഉപയോഗിക്കാം',
      one: '1 എണ്ണം ഉപയോഗിക്കാം',
      zero: 'ഇതുവരെ ഒന്നുമില്ല',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'നിങ്ങളുടെ മുൻഗണനകൾ';

  @override
  String get profileVegMode => 'വെജ് മോഡ്';

  @override
  String get profileVegModeHint => 'വെജ് റെസ്റ്റോറന്റുകളും വിഭവങ്ങളും മാത്രം';

  @override
  String get profileAppearance => 'രൂപഭാവം';

  @override
  String get appearanceSystem => 'ഫോണിലേത് പോലെ';

  @override
  String get appearanceLight => 'ലൈറ്റ്';

  @override
  String get appearanceDark => 'ഡാർക്ക്';

  @override
  String get profileNotifications => 'അറിയിപ്പുകൾ';

  @override
  String get profileFoodDelivery => 'ഫുഡ് ഡെലിവറി';

  @override
  String get profileFavourites => 'നിങ്ങളുടെ പ്രിയപ്പെട്ടവ';

  @override
  String get profileHelp => 'സഹായവും സപ്പോർട്ടും';

  @override
  String get profileMore => 'കൂടുതൽ';

  @override
  String get profileFeedback => 'ഫീഡ്ബാക്ക് അയയ്ക്കുക';

  @override
  String get profileSafety => 'സുരക്ഷാ അടിയന്തരാവസ്ഥ അറിയിക്കുക';

  @override
  String get profileAbout => 'Nexmile നെക്കുറിച്ച്';

  @override
  String get couponsEmptyTitle => 'ഇപ്പോൾ കൂപ്പണുകളൊന്നുമില്ല';

  @override
  String get couponsEmptyBody =>
      'നിങ്ങൾക്ക് ഉപയോഗിക്കാവുന്ന കൂപ്പൺ വരുമ്പോൾ അത് ഇവിടെ കാണാം.';

  @override
  String couponFlatOff(String amount) {
    return '$amount കിഴിവ്';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% കിഴിവ്';
  }

  @override
  String couponUpTo(String amount) {
    return 'പരമാവധി $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount ന് മുകളിലുള്ള ഓർഡറുകൾക്ക്';
  }

  @override
  String couponValidTill(String date) {
    return '$date വരെ സാധുവാണ്';
  }

  @override
  String get couponAllRestaurants => 'എല്ലാ റെസ്റ്റോറന്റുകളിലും';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant ൽ';
  }

  @override
  String couponCopied(String code) {
    return 'കോഡ് $code കോപ്പി ചെയ്തു';
  }

  @override
  String get favouritesEmptyTitle => 'ഇതുവരെ പ്രിയപ്പെട്ടവയില്ല';

  @override
  String get favouritesEmptyBody =>
      'റെസ്റ്റോറന്റിലെ ഹാർട്ട് ഐക്കണിൽ ടാപ്പ് ചെയ്ത് അത് ഇവിടെ സൂക്ഷിക്കൂ.';

  @override
  String get helpCall => 'ഞങ്ങളെ വിളിക്കൂ';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'ഇമെയിൽ അയയ്ക്കൂ';

  @override
  String helpHours(String hours) {
    return 'ഞങ്ങൾ ലഭ്യമാകുന്ന സമയം: $hours';
  }

  @override
  String get helpFaqs => 'പതിവ് ചോദ്യങ്ങൾ';

  @override
  String get helpNothing =>
      'സഹായ വിവരങ്ങൾ ഇപ്പോൾ ലഭ്യമല്ല. കുറച്ച് സമയത്തിന് ശേഷം വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get feedbackPrompt => 'Nexmile നിങ്ങൾക്ക് എങ്ങനെയുണ്ട്?';

  @override
  String get feedbackHint =>
      'എന്താണ് ഇഷ്ടപ്പെട്ടതെന്നോ എന്ത് മെച്ചപ്പെടുത്താമെന്നോ പറയൂ';

  @override
  String get feedbackNeedRating => 'ആദ്യം ഒരു റേറ്റിംഗ് തിരഞ്ഞെടുക്കുക';

  @override
  String get feedbackThanks =>
      'നന്ദി! നിങ്ങളുടെ ഫീഡ്ബാക്ക് ഞങ്ങളുടെ ടീമിന് ലഭിച്ചു.';

  @override
  String get safetyIntro =>
      'നിങ്ങളോ മറ്റാരെങ്കിലുമോ അപകടത്തിലാണെങ്കിൽ, ആദ്യം അടിയന്തര സേവനങ്ങളെ വിളിക്കുക.';

  @override
  String get safetyCallEmergency => '112 വിളിക്കുക';

  @override
  String get safetyCallEmergencyBody => 'പോലീസ്, ഫയർഫോഴ്സ്, ആംബുലൻസ്';

  @override
  String get safetyCallNexmile => 'Nexmile സുരക്ഷാ ലൈനിൽ വിളിക്കുക';

  @override
  String get safetyCallNexmileBody => 'ഏത് സമയത്തും മറുപടി ലഭിക്കും';

  @override
  String aboutVersion(String version) {
    return 'പതിപ്പ് $version';
  }

  @override
  String get aboutTerms => 'സേവന നിബന്ധനകൾ';

  @override
  String get aboutPrivacy => 'സ്വകാര്യതാ നയം';

  @override
  String get aboutLicences => 'ഓപ്പൺ സോഴ്സ് ലൈസൻസുകൾ';

  @override
  String get notifyOrderUpdates => 'ഓർഡർ അപ്ഡേറ്റുകൾ';

  @override
  String get notifyOrderUpdatesBody =>
      'എപ്പോഴും ഓണാണ്, അതിനാൽ ഭക്ഷണം എവിടെയെത്തിയെന്ന് അറിയാം.';

  @override
  String get notifyPromotions => 'ഓഫറുകളും പ്രൊമോഷനുകളും';

  @override
  String get notifyPromotionsBody =>
      'ഡീലുകൾ, കൂപ്പണുകൾ, അടുത്തുള്ള പുതിയ റെസ്റ്റോറന്റുകൾ.';

  @override
  String get notifyPhoneOff => 'ഈ ഫോണിൽ Nexmile ന്റെ അറിയിപ്പുകൾ ഓഫാണ്.';

  @override
  String get notifyTurnOn => 'ഓണാക്കുക';

  @override
  String get linkOpenFailed => 'ഇത് ഈ ഫോണിൽ തുറക്കാനായില്ല.';

  @override
  String get editProfileTitle => 'പ്രൊഫൈൽ തിരുത്തുക';

  @override
  String get editProfileSubtitle =>
      'റെസ്റ്റോറന്റും ഡെലിവറി പങ്കാളിയും കാണുന്നത് നിങ്ങളുടെ പേരാണ്.';

  @override
  String get saveChanges => 'മാറ്റങ്ങൾ സൂക്ഷിക്കുക';

  @override
  String get profileUpdated => 'പ്രൊഫൈൽ പുതുക്കി';

  @override
  String get deleteAccount => 'അക്കൗണ്ട് ഇല്ലാതാക്കുക';

  @override
  String get deleteAccountTitle => 'നിങ്ങളുടെ അക്കൗണ്ട് ഇല്ലാതാക്കണോ?';

  @override
  String get deleteAccountMessage =>
      'എല്ലാ ഉപകരണങ്ങളിൽ നിന്നും സൈൻ ഔട്ട് ആകും. പഴയ ഓർഡറുകളും ബില്ലുകളും നികുതി രേഖയ്ക്കായി സൂക്ഷിക്കും.';

  @override
  String get accountDeleted => 'നിങ്ങളുടെ അക്കൗണ്ട് ഇല്ലാതാക്കി';

  @override
  String get devicesTitle => 'സൈൻ-ഇൻ ഉപകരണങ്ങൾ';

  @override
  String get devicesSubtitle => 'നിങ്ങൾ എവിടെ സൈൻ ഇൻ ചെയ്തിരിക്കുന്നു';

  @override
  String get devicesEmptyTitle => 'മറ്റ് ഉപകരണങ്ങളില്ല';

  @override
  String get devicesEmptySubtitle =>
      'ഈ ഉപകരണത്തിൽ മാത്രമേ നിങ്ങൾ സൈൻ ഇൻ ചെയ്തിട്ടുള്ളൂ.';

  @override
  String get signOutDevice => 'സൈൻ ഔട്ട്';

  @override
  String get signOutDeviceTitle => 'ഈ ഉപകരണം സൈൻ ഔട്ട് ചെയ്യണോ?';

  @override
  String get signOutDeviceMessage =>
      'നിങ്ങൾ ഉപയോഗിക്കുന്നത് ഇതാണെങ്കിൽ വീണ്ടും സൈൻ ഇൻ ചെയ്യേണ്ടിവരും.';

  @override
  String get deviceSignedOut => 'ഉപകരണം സൈൻ ഔട്ട് ചെയ്തു';

  @override
  String get signOutEverywhere => 'എല്ലായിടത്തും സൈൻ ഔട്ട്';

  @override
  String get signOutEverywhereTitle => 'എല്ലായിടത്തും സൈൻ ഔട്ട് ചെയ്യണോ?';

  @override
  String get signOutEverywhereMessage =>
      'ഈ ഉപകരണം ഉൾപ്പെടെ എല്ലാ ഉപകരണങ്ങളും സൈൻ ഔട്ട് ആകും.';

  @override
  String get unknownDevice => 'അജ്ഞാത ഉപകരണം';

  @override
  String get activeNow => 'ഇപ്പോൾ സജീവം';

  @override
  String minutesAgo(int count) {
    return '$count മിനിറ്റ് മുൻപ്';
  }

  @override
  String hoursAgo(int count) {
    return '$count മണിക്കൂർ മുൻപ്';
  }

  @override
  String daysAgo(int count) {
    return '$count ദിവസം മുൻപ്';
  }

  @override
  String get filtersAndSorting => 'ഫിൽട്ടറും ക്രമവും';

  @override
  String get clearAll => 'എല്ലാം മായ്ക്കുക';

  @override
  String get showResults => 'ഫലങ്ങൾ കാണിക്കുക';

  @override
  String get closeLabel => 'അടയ്ക്കുക';

  @override
  String get sortByTitle => 'ക്രമീകരിക്കുക';

  @override
  String get sortRelevance => 'പ്രസക്തി';

  @override
  String get sortRating => 'റേറ്റിംഗ്';

  @override
  String get sortDeliveryTime => 'ഡെലിവറി സമയം';

  @override
  String get sortCostLowHigh => 'വില: കുറഞ്ഞത് മുതൽ';

  @override
  String get sortCostHighLow => 'വില: കൂടിയത് മുതൽ';

  @override
  String get timeSection => 'സമയം';

  @override
  String get nearAndFast => 'അടുത്തും വേഗവും';

  @override
  String get openNow => 'ഇപ്പോൾ തുറന്നിരിക്കുന്നു';

  @override
  String get ratingSection => 'റെസ്റ്റോറന്റ് റേറ്റിംഗ്';

  @override
  String ratedAbove(String rating) {
    return '$rating+ റേറ്റിംഗ്';
  }

  @override
  String get offersSection => 'ഓഫറുകൾ';

  @override
  String get hasOffersLabel => 'ഓഫർ ഉള്ളവ';

  @override
  String get dishPriceSection => 'വിഭവ വില';

  @override
  String costUnder(String amount) {
    return '$amount യിൽ താഴെ';
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
  String get moreSection => 'കൂടുതൽ';

  @override
  String get noPackagingCharges => 'പാക്കിംഗ് ചാർജ് ഇല്ല';

  @override
  String get allRestaurantsTitle => 'എല്ലാ റെസ്റ്റോറന്റുകളും';

  @override
  String get whatsOnYourMind => 'എന്ത് കഴിക്കാൻ തോന്നുന്നു?';

  @override
  String get listeningNow => 'കേൾക്കുന്നു…';

  @override
  String get speakNowHint => 'ഒരു വിഭവമോ റെസ്റ്റോറന്റോ പറയൂ';

  @override
  String get voiceUnavailable => 'വോയ്‌സ് സെർച്ച് ലഭ്യമല്ല';

  @override
  String get voiceUnavailableBody => 'ടൈപ്പ് ചെയ്തും തിരയാം.';

  @override
  String get microphoneDenied => 'മൈക്രോഫോൺ അനുമതിയില്ല';

  @override
  String get voiceSearchLabel => 'ശബ്ദത്തിൽ തിരയുക';

  @override
  String get ratingsAndReviews => 'റേറ്റിംഗുകളും അവലോകനങ്ങളും';

  @override
  String get reviewsWithTextOnly => 'അവലോകനമുള്ളവ';

  @override
  String get noReviewsTitle => 'ഇതുവരെ റേറ്റിംഗ് ഇല്ല';

  @override
  String get noReviewsSubtitle => 'ഓർഡറിന് ശേഷം ആദ്യ റേറ്റിംഗ് നിങ്ങൾ നൽകൂ.';

  @override
  String get rateOrderTitle => 'നിങ്ങളുടെ ഓർഡർ റേറ്റ് ചെയ്യൂ';

  @override
  String get rateDishesTitle => 'വിഭവങ്ങൾ റേറ്റ് ചെയ്യൂ';

  @override
  String get reviewHint => 'മറ്റെന്തെങ്കിലും പറയാനുണ്ടോ? (ഐച്ഛികം)';

  @override
  String get submitRating => 'റേറ്റിംഗ് അയയ്ക്കുക';

  @override
  String get reviewThanks => 'നന്ദി — നിങ്ങളുടെ റേറ്റിംഗ് ലഭിച്ചു.';

  @override
  String get rateThisOrder => 'ഈ ഓർഡർ റേറ്റ് ചെയ്യൂ';

  @override
  String get walletTitle => 'Nexmile വാലറ്റ്';

  @override
  String get walletBalance => 'വാലറ്റ് ബാലൻസ്';

  @override
  String get walletBalanceHint => 'ഏത് ഓർഡറിനും പണമടയ്ക്കാൻ ഉപയോഗിക്കാം.';

  @override
  String get walletAddMoney => 'പണം ചേർക്കുക';

  @override
  String get walletEnterAmount => 'തുക നൽകുക';

  @override
  String walletAmountRange(String min, String max) {
    return '$min നും $max നും ഇടയിൽ';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount ചേർക്കുക';
  }

  @override
  String get walletSecuredBy => 'പേയ്‌മെന്റുകൾ Razorpay വഴി സുരക്ഷിതം';

  @override
  String get walletHistory => 'ചരിത്രം';

  @override
  String get walletNoHistory =>
      'ഇതുവരെ ഇടപാടുകളില്ല. നിങ്ങൾ ചേർക്കുന്നതും ചെലവാക്കുന്നതുമായ പണം ഇവിടെ കാണാം.';

  @override
  String get walletEntryTopUp => 'പണം ചേർത്തു';

  @override
  String get walletEntryOrder => 'ഓർഡറിന് പണമടച്ചു';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ഓർഡർ $number ന് പണമടച്ചു';
  }

  @override
  String get walletEntryRefund => 'റീഫണ്ട്';

  @override
  String walletMoneyAdded(String amount) {
    return '$amount നിങ്ങളുടെ വാലറ്റിൽ ചേർത്തു';
  }

  @override
  String get walletPaymentFailed =>
      'പേയ്‌മെന്റ് പരാജയപ്പെട്ടു. നിങ്ങളുടെ അക്കൗണ്ടിൽ നിന്ന് പണം എടുത്തിട്ടില്ല.';

  @override
  String get walletPaymentConfirming =>
      'പേയ്‌മെന്റ് ലഭിച്ചു. കുറച്ച് മിനിറ്റിനുള്ളിൽ ബാലൻസ് അപ്ഡേറ്റ് ആകും.';

  @override
  String get walletUseBalance => 'വാലറ്റ് ബാലൻസ് ഉപയോഗിക്കുക';

  @override
  String walletAvailable(String amount) {
    return 'ലഭ്യം: $amount';
  }

  @override
  String get walletPaidFromWallet => 'വാലറ്റിൽ നിന്ന് അടച്ചത്';

  @override
  String get walletPayOnDelivery => 'ഡെലിവറി സമയത്ത് അടയ്ക്കേണ്ടത്';

  @override
  String get walletCoversOrder => 'മുഴുവൻ തുകയും നിങ്ങളുടെ വാലറ്റിൽ നിന്ന്';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet വാലറ്റിൽ നിന്ന്, $rest ഡെലിവറി സമയത്ത്';
  }

  @override
  String get walletTopUpUnavailable =>
      'പണം ചേർക്കൽ ഇപ്പോൾ ലഭ്യമല്ല. കുറച്ച് സമയത്തിന് ശേഷം വീണ്ടും ശ്രമിക്കുക.';

  @override
  String walletFull(String limit) {
    return 'നിങ്ങളുടെ വാലറ്റ് $limit എന്ന പരിധിയിൽ എത്തി.';
  }

  @override
  String get searchAddressHint => 'പ്രദേശം, തെരുവ് അല്ലെങ്കിൽ അടയാളം തിരയുക';

  @override
  String get selectLocationTitle => 'ഒരു ലൊക്കേഷൻ തിരഞ്ഞെടുക്കുക';

  @override
  String get useCurrentLocation => 'നിലവിലെ ലൊക്കേഷൻ ഉപയോഗിക്കുക';

  @override
  String get locatingYou => 'നിങ്ങൾ എവിടെയാണെന്ന് കണ്ടെത്തുന്നു…';

  @override
  String get locationOffHint => 'ഇത് ഉപയോഗിക്കാൻ ലൊക്കേഷൻ അനുമതി നൽകുക';

  @override
  String get savedAddressesHeading => 'സൂക്ഷിച്ച വിലാസങ്ങൾ';

  @override
  String get recentLocationsHeading => 'സമീപകാല ലൊക്കേഷനുകൾ';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ഡെലിവറി ലൊക്കേഷൻ തിരഞ്ഞെടുക്കുക';

  @override
  String get movePinTooltip => 'കൃത്യമായ ഡെലിവറി സ്ഥലത്തേക്ക് പിൻ നീക്കുക';

  @override
  String get locatingPin => 'വിലാസം കണ്ടെത്തുന്നു…';

  @override
  String get deliveryDetailsHeading => 'ഡെലിവറി വിവരങ്ങൾ';

  @override
  String get addressDetailsLabel => 'വിലാസ വിവരങ്ങൾ*';

  @override
  String get addressDetailsHint => 'ഉദാ: നില, വീട്ടുനമ്പർ';

  @override
  String get missingAreaHint =>
      'ഈ പിന്നിന്റെ മുഴുവൻ വിലാസം ലഭിച്ചില്ല. ബാക്കി വിവരങ്ങൾ പൂരിപ്പിക്കുക.';

  @override
  String get whoToContact => 'ഈ ഡെലിവറിക്ക് ആരെയാണ് ബന്ധപ്പെടേണ്ടത്?';

  @override
  String get contactMyself => 'ഞാൻ തന്നെ';

  @override
  String get contactSomeoneElse => 'മറ്റൊരാൾ';

  @override
  String get receiverDetailsHeading =>
      'ഈ വിലാസത്തിൽ സ്വീകരിക്കുന്നയാളുടെ വിവരങ്ങൾ';

  @override
  String get receiverAddPrompt => 'സ്വീകരിക്കുന്നയാളുടെ പേരും നമ്പറും ചേർക്കുക';

  @override
  String get receiverSheetTitle => 'സ്വീകരിക്കുന്നയാളുടെ വിവരങ്ങൾ';

  @override
  String get doorPhotoHeading =>
      'വാതിലിന്റെയോ കെട്ടിടത്തിന്റെയോ ചിത്രം (ഐച്ഛികം)';

  @override
  String get doorPhotoAdd => 'ചിത്രം ചേർക്കുക';

  @override
  String get doorPhotoBody =>
      'ഡെലിവറി പങ്കാളികൾക്ക് നിങ്ങളുടെ കൃത്യമായ സ്ഥലം വേഗത്തിൽ കണ്ടെത്താൻ ഇത് സഹായിക്കും';

  @override
  String get doorPhotoChange => 'മാറ്റുക';

  @override
  String get doorPhotoRemove => 'നീക്കുക';

  @override
  String get photoFromCamera => 'ഫോട്ടോ എടുക്കുക';

  @override
  String get photoFromGallery => 'ഗാലറിയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String get photoUploaded => 'ഫോട്ടോ ചേർത്തു';

  @override
  String get photoUploadFailed =>
      'ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യാനായില്ല. കുറച്ച് സമയത്തിന് ശേഷം വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get addressSavedPhotoFailed =>
      'വിലാസം സൂക്ഷിച്ചു. ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യാനായില്ല.';

  @override
  String get removePhotoLabel => 'ഫോട്ടോ നീക്കുക';

  @override
  String get photoRemoved => 'ഫോട്ടോ നീക്കി';

  @override
  String get shareLabel => 'പങ്കിടുക';

  @override
  String get addDoorPhotoLabel => 'വാതിലിന്റെ ഫോട്ടോ ചേർക്കുക';

  @override
  String get searchAddressNoResults =>
      'സ്ഥലങ്ങളൊന്നും കണ്ടെത്തിയില്ല. അടുത്തുള്ള ഒരു അടയാളം, പ്രദേശത്തിന്റെ പേര് അല്ലെങ്കിൽ പിൻ കോഡ് നൽകി നോക്കുക.';

  @override
  String get clearLabel => 'മായ്ക്കുക';

  @override
  String get trackingArrivingNow => 'ഇപ്പോൾ എത്തും';

  @override
  String get trackingLive => 'ലൈവ്';

  @override
  String get trackingStepConfirmed => 'സ്ഥിരീകരിച്ചു';

  @override
  String get trackingStepPreparing => 'തയ്യാറാകുന്നു';

  @override
  String get trackingStepOnTheWay => 'വഴിയിലാണ്';

  @override
  String get trackingStepDelivered => 'ഡെലിവർ ചെയ്തു';

  @override
  String get trackingFindingRider => 'ഡെലിവറി പങ്കാളിയെ നിയോഗിക്കുന്നു…';

  @override
  String get trackingPinYou => 'നിങ്ങൾ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance അകലെയാണ്';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name ന് മെസേജ് ചെയ്യുക';
  }

  @override
  String get trackingDeliveringTo => 'ഡെലിവറി വിലാസം';

  @override
  String get trackingOrderDetails => 'ഓർഡർ വിവരങ്ങൾ';

  @override
  String get dispatchSearching =>
      'റെസ്റ്റോറന്റിനടുത്തുള്ള ഡെലിവറി പങ്കാളിയെ കണ്ടെത്തുന്നു…';

  @override
  String get dispatchNoRider =>
      'ഇതുവരെ ഒരു ഡെലിവറി പങ്കാളിയും ഓർഡർ എടുത്തിട്ടില്ല. ഞങ്ങളുടെ ടീം ഇപ്പോൾ ഒരാളെ നിയോഗിക്കുന്നു.';

  @override
  String get vehicleBike => 'ബൈക്ക്';

  @override
  String get vehicleScooter => 'സ്കൂട്ടർ';

  @override
  String get vehicleBicycle => 'സൈക്കിൾ';

  @override
  String get vehicleElectric => 'ഇലക്ട്രിക് സ്കൂട്ടർ';

  @override
  String get exitTitle => 'Nexmile ൽ നിന്ന് പുറത്തുകടക്കണോ?';

  @override
  String get exitBody => 'ആപ്പിൽ നിന്ന് പുറത്തുകടക്കണമെന്ന് ഉറപ്പാണോ?';

  @override
  String get exitConfirm => 'പുറത്തുകടക്കുക';

  @override
  String cartSavedBanner(String amount) {
    return 'ഈ ഓർഡറിൽ നിങ്ങൾ $amount ലാഭിച്ചു';
  }

  @override
  String get cartAddMoreItems => 'കൂടുതൽ ഇനങ്ങൾ ചേർക്കുക';

  @override
  String get cartAddNote => 'റെസ്റ്റോറന്റിന് ഒരു കുറിപ്പ് ചേർക്കുക';

  @override
  String get cartOrderNoteHint =>
      'ഉദാ: ഒന്നിലും സവാളയോ വെളുത്തുള്ളിയോ ചേർക്കരുത്';

  @override
  String get cartNoteSave => 'സൂക്ഷിക്കുക';

  @override
  String get cartNoCutlery => 'സ്പൂണും ഫോർക്കും വേണ്ട';

  @override
  String get cartNoCutleryThanks =>
      'പ്ലാസ്റ്റിക് മാലിന്യം കുറയ്ക്കാൻ സഹായിച്ചതിന് നന്ദി';

  @override
  String get cartSavingsCorner => 'സേവിംഗ്സ് കോർണർ';

  @override
  String get cartDeliveryInstructions => 'ഡെലിവറി നിർദ്ദേശങ്ങൾ';

  @override
  String get cartInstructionsRider =>
      'ഇവ നിങ്ങളുടെ ഡെലിവറി പങ്കാളി മാത്രമേ കാണൂ';

  @override
  String get instructionLeaveAtDoor => 'വാതിൽക്കൽ വയ്ക്കുക';

  @override
  String get instructionNoBell => 'ബെൽ അടിക്കരുത്';

  @override
  String get instructionNoCall => 'വിളിക്കരുത്';

  @override
  String get instructionSecurity => 'സെക്യൂരിറ്റിയെ ഏൽപ്പിക്കുക';

  @override
  String get instructionPet => 'വീട്ടിൽ വളർത്തുമൃഗമുണ്ട്';

  @override
  String get cartInclTaxes => 'നികുതികളും ചാർജുകളും ഉൾപ്പെടെ';

  @override
  String cartSavedTag(String amount) {
    return '$amount ലാഭം';
  }

  @override
  String get cartPayUsing => 'പണമടയ്ക്കുന്നത്';

  @override
  String get cartWalletAndCash => 'വാലറ്റ് + ക്യാഷ്';

  @override
  String cartCashRest(String amount) {
    return 'എത്തുമ്പോൾ $amount അടയ്ക്കുക';
  }

  @override
  String get cartCashFull => 'ഓർഡർ എത്തുമ്പോൾ പണമടയ്ക്കുക';

  @override
  String get cartCashNothing => 'ഡെലിവറി സമയത്ത് ഒന്നും അടയ്ക്കേണ്ടതില്ല';

  @override
  String get cartTotal => 'ആകെ';

  @override
  String get cartPlaceOrder => 'ഓർഡർ ചെയ്യുക';

  @override
  String cartDeliverTo(String place) {
    return '$place ലേക്ക് ഡെലിവറി';
  }

  @override
  String get cartChange => 'മാറ്റുക';

  @override
  String get cartNoAddress => 'എവിടെ ഡെലിവർ ചെയ്യണം?';

  @override
  String get cartNoAddressHint => 'ഓർഡർ ചെയ്യാൻ ഒരു വിലാസം ചേർക്കുക';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant ൽ നിന്ന് നേരിട്ട് വാങ്ങുക';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'ഏകദേശം $minutes മിനിറ്റിൽ തയ്യാറാകും';
  }

  @override
  String get cartChooseAddress => 'ഡെലിവറി വിലാസം തിരഞ്ഞെടുക്കുക';

  @override
  String get cartDone => 'ശരി';

  @override
  String get supportTitle => 'Nexmile സപ്പോർട്ട്';

  @override
  String get supportBubble => 'സഹായം';

  @override
  String get supportAiLabel => 'AI അസിസ്റ്റന്റ്';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ടീം';
  }

  @override
  String get supportDemoBanner =>
      'ഡെമോ: ഇവ മാതൃകാ മറുപടികൾ മാത്രമാണ്. യഥാർത്ഥ AI അസിസ്റ്റന്റ് ഇതുവരെ കണക്റ്റ് ചെയ്തിട്ടില്ല.';

  @override
  String get supportEmptyTitle => 'ഞങ്ങൾ എങ്ങനെ സഹായിക്കാം?';

  @override
  String get supportEmptyBody =>
      'ഓർഡർ, പേയ്‌മെന്റ് തുടങ്ങി എന്തിനെക്കുറിച്ചും ചോദിക്കൂ. ആദ്യം ഞങ്ങളുടെ AI അസിസ്റ്റന്റ് മറുപടി നൽകും; അതിന് സഹായിക്കാനാകാത്തപ്പോൾ ഞങ്ങളുടെ ടീമിലെ ഒരാൾ ഏറ്റെടുക്കും.';

  @override
  String get supportSuggestWhere => 'എന്റെ ഓർഡർ എവിടെ?';

  @override
  String get supportSuggestMissing => 'ഓർഡറിൽ എന്തോ കിട്ടിയില്ല';

  @override
  String get supportSuggestRefund => 'റീഫണ്ടിനെക്കുറിച്ച് ഒരു ചോദ്യമുണ്ട്';

  @override
  String get supportComposerHint => 'മെസേജ് ടൈപ്പ് ചെയ്യുക';

  @override
  String get supportSend => 'അയയ്ക്കുക';

  @override
  String get supportTyping => 'AI അസിസ്റ്റന്റ് ടൈപ്പ് ചെയ്യുന്നു…';

  @override
  String get supportNotSent => 'അയച്ചില്ല';

  @override
  String get supportTookTooLong => 'മറുപടി വരാൻ വളരെ സമയമെടുത്തു.';

  @override
  String get supportSlowDown =>
      'കൂടുതൽ മെസേജുകൾ അയയ്ക്കുന്നതിന് മുമ്പ് അൽപ്പം കാത്തിരിക്കൂ.';

  @override
  String get supportUnreachable =>
      'ഇപ്പോൾ ചാറ്റുമായി ബന്ധപ്പെടാൻ കഴിയുന്നില്ല. ഞങ്ങളെ വിളിക്കൂ, അല്ലെങ്കിൽ കുറച്ച് മിനിറ്റുകൾക്ക് ശേഷം വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get supportOffline =>
      'നിങ്ങൾ ഓഫ്‌ലൈനാണ്. ഇത് അവസാനം സൂക്ഷിച്ച നിങ്ങളുടെ ചാറ്റ് ആണ്.';

  @override
  String get supportClosed => 'ഈ ചാറ്റ് അടച്ചു.';

  @override
  String get supportStartNew => 'പുതിയ ചാറ്റ് തുടങ്ങുക';

  @override
  String get supportTalkToPerson => 'ഒരു വ്യക്തിയോട് സംസാരിക്കുക';

  @override
  String get supportMarkSolved => 'പരിഹരിച്ചതായി അടയാളപ്പെടുത്തുക';

  @override
  String get supportHelpful => 'ഉപകാരപ്പെട്ടു';

  @override
  String get supportNotHelpful => 'ഉപകാരപ്പെട്ടില്ല';

  @override
  String get supportNeedHelp => 'സഹായം വേണോ?';

  @override
  String get supportChatWithUs => 'ഞങ്ങളുമായി ചാറ്റ് ചെയ്യൂ';

  @override
  String get supportChatWithUsBody =>
      'ഞങ്ങളുടെ AI അസിസ്റ്റന്റ് നിമിഷങ്ങൾക്കുള്ളിൽ മറുപടി നൽകും; ആവശ്യമെങ്കിൽ ഒരു വ്യക്തി ഏറ്റെടുക്കും.';

  @override
  String get supportActionFailed => 'അത് നടന്നില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get supportOrderNotFound =>
      'ആ ഓർഡർ നിങ്ങളുടെ അക്കൗണ്ടിൽ കണ്ടെത്തിയില്ല.';

  @override
  String get supportOrderLookupDown =>
      'ഇപ്പോൾ ആ ഓർഡർ പരിശോധിക്കാനായില്ല. നിങ്ങളുടെ ചോദ്യം ടൈപ്പ് ചെയ്യാം.';

  @override
  String get restaurantNew => 'പുതിയത്';

  @override
  String get walletHideBalance => 'ബാലൻസ് മറയ്ക്കുക';

  @override
  String get walletShowBalance => 'ബാലൻസ് കാണിക്കുക';

  @override
  String get walletBalanceHiddenLabel => 'ബാലൻസ് മറച്ചിരിക്കുന്നു';

  @override
  String walletUpdatedAt(String time) {
    return 'അപ്ഡേറ്റ് ചെയ്തത്: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'കുറഞ്ഞത് $amount ചേർക്കുക';
  }

  @override
  String walletAboveMax(String amount) {
    return 'പരമാവധി $amount വരെ ചേർക്കാം';
  }

  @override
  String get walletOpeningPayment => 'പേയ്‌മെന്റ് തുറക്കുന്നു…';

  @override
  String get walletConfirmingPayment => 'പേയ്‌മെന്റ് സ്ഥിരീകരിക്കുന്നു…';

  @override
  String get walletTransactions => 'ഇടപാടുകൾ';

  @override
  String get walletFilterAll => 'എല്ലാം';

  @override
  String get walletFilterAdded => 'ചേർത്ത പണം';

  @override
  String get walletFilterSpent => 'ചെലവാക്കിയ പണം';

  @override
  String get walletSearch => 'തിരയുക';

  @override
  String get walletSearchHint => 'ഓർഡർ നമ്പറോ ID-യോ തിരയുക';

  @override
  String get walletDateFilter => 'തീയതി പ്രകാരം ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get walletClearFilters => 'ഫിൽട്ടറുകൾ നീക്കുക';

  @override
  String get walletNoMatches => 'നിങ്ങളുടെ ഫിൽട്ടറുകൾക്ക് ചേരുന്ന ഇടപാടുകളില്ല';

  @override
  String get walletEmptyTitle => 'ഇതുവരെ ഇടപാടുകളില്ല';

  @override
  String get walletEmptyBody =>
      'നിങ്ങൾ ചേർക്കുന്നതും ഓർഡറുകൾക്കായി ചെലവാക്കുന്നതും റീഫണ്ടായി തിരികെ ലഭിക്കുന്നതുമായ പണം ഇവിടെ കാണാം.';

  @override
  String get walletToday => 'ഇന്ന്';

  @override
  String get walletYesterday => 'ഇന്നലെ';

  @override
  String walletLatestOnly(int count) {
    return 'നിങ്ങളുടെ അവസാന $count ഇടപാടുകൾ കാണിക്കുന്നു';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ഓർഡർ $number ന്റെ റീഫണ്ട്';
  }

  @override
  String get walletDetailsTitle => 'ഇടപാട് വിവരങ്ങൾ';

  @override
  String get walletDetailDate => 'തീയതിയും സമയവും';

  @override
  String get walletDetailId => 'ഇടപാട് ID';

  @override
  String get walletDetailType => 'തരം';

  @override
  String get walletDetailMethod => 'പേയ്‌മെന്റ് രീതി';

  @override
  String get walletDetailStatus => 'നില';

  @override
  String get walletDetailOrder => 'ഓർഡർ';

  @override
  String get walletDetailReference => 'പേയ്‌മെന്റ് റഫറൻസ്';

  @override
  String get walletDetailBalanceAfter => 'ഇടപാടിന് ശേഷമുള്ള ബാലൻസ്';

  @override
  String get walletCredit => 'ക്രെഡിറ്റ്';

  @override
  String get walletDebit => 'ഡെബിറ്റ്';

  @override
  String get walletStatusSuccess => 'വിജയിച്ചു';

  @override
  String get walletStatusPending => 'തീർപ്പാക്കാത്തത്';

  @override
  String get walletStatusFailed => 'പരാജയപ്പെട്ടു';

  @override
  String get walletMethodOnline => 'ഓൺലൈൻ പേയ്‌മെന്റ്';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'കാർഡ്';

  @override
  String get walletMethodNetbanking => 'നെറ്റ് ബാങ്കിംഗ്';

  @override
  String get walletMethodRefund => 'വാലറ്റിലേക്ക് റീഫണ്ട്';

  @override
  String get walletCopyId => 'ID കോപ്പി ചെയ്യുക';

  @override
  String get walletIdCopied => 'ഇടപാട് ID കോപ്പി ചെയ്തു';

  @override
  String get walletShareDetails => 'വിവരങ്ങൾ പങ്കിടുക';
}
