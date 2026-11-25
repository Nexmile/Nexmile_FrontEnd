// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'ଏହି ଘର ଆବଶ୍ୟକ';

  @override
  String get tagline => 'ଦ୍ରୁତ ଡେଲିଭରି। ସତେଜ ହସ।';

  @override
  String get chooseLanguageTitle => 'ଆପଣଙ୍କ ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get chooseLanguageSubtitle =>
      'ଆପଣ ସହଜ ଅନୁଭବ କରୁଥିବା ଭାଷା ବାଛନ୍ତୁ। ଆପଣ ଏହାକୁ ଯେକୌଣସି ସମୟରେ ସେଟିଂସରେ ବଦଳାଇ ପାରିବେ।';

  @override
  String get searchLanguageHint => 'ଭାଷା ଖୋଜନ୍ତୁ';

  @override
  String get noLanguageFound => 'କୌଣସି ଭାଷା ମିଳିଲା ନାହିଁ';

  @override
  String languagesAvailable(int count) {
    return '$countଟି ଭାଷା ଉପଲବ୍ଧ';
  }

  @override
  String get continueLabel => 'ଆଗକୁ ବଢ଼ନ୍ତୁ';

  @override
  String get selectedLabel => 'ଚୟନିତ';

  @override
  String get defaultLabel => 'ଡିଫଲ୍ଟ';

  @override
  String get homeTitle => 'Nexmile କୁ ସ୍ୱାଗତ';

  @override
  String get homeSubtitle =>
      'ସତେଜ ମୁଦି ସାମଗ୍ରୀ, ଗରମ ଖାଦ୍ୟ ଏବଂ ଦୈନନ୍ଦିନ ଆବଶ୍ୟକତା ଆପଣଙ୍କ ନିକଟସ୍ଥ ଦୋକାନରୁ।';

  @override
  String get changeLanguage => 'ଭାଷା ବଦଳାନ୍ତୁ';

  @override
  String get languageUpdated => 'ଭାଷା ବଦଳାଗଲା';

  @override
  String get appLanguageLabel => 'ଆପ୍ ଭାଷା';

  @override
  String greetingNamed(String name) {
    return 'ନମସ୍କାର, $name';
  }

  @override
  String get loginTitle => 'Nexmile ରେ ସାଇନ ଇନ କରନ୍ତୁ';

  @override
  String get loginSubtitle =>
      'ଆପଣଙ୍କ ଇମେଲ କିମ୍ବା ମୋବାଇଲ ନମ୍ବର ଦିଅନ୍ତୁ, ଆମେ ଯାଞ୍ଚ କୋଡ ପଠାଇବୁ।';

  @override
  String get emailOrPhoneLabel => 'ଇମେଲ କିମ୍ବା ମୋବାଇଲ ନମ୍ବର';

  @override
  String get emailOrPhoneHint => 'name@example.com କିମ୍ବା 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'ସଠିକ ଇମେଲ ଠିକଣା କିମ୍ବା 10 ଅଙ୍କର ମୋବାଇଲ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get loginHeadline => 'ଆପଣଙ୍କ ନିକଟସ୍ଥ ଦୋକାନରୁ ଗରମ ଖାଦ୍ୟ, ଶୀଘ୍ର ଡେଲିଭରି';

  @override
  String get loginOrSignUp => 'ଲଗ ଇନ କିମ୍ବା ସାଇନ ଅପ କରନ୍ତୁ';

  @override
  String get loginEmailHint => 'ଆପଣଙ୍କ ଇମେଲ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get invalidEmail => 'ସଠିକ ଇମେଲ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get sendCode => 'କୋଡ ପଠାନ୍ତୁ';

  @override
  String get agreeToTermsOnContinue =>
      'ଆଗକୁ ବଢ଼ିବା ଦ୍ୱାରା ଆପଣ ଆମର ସେବା ସର୍ତ୍ତାବଳୀ ଓ ଗୋପନୀୟତା ନୀତିରେ ସହମତ ହେଉଛନ୍ତି।';

  @override
  String get otpTitle => 'ଏହା ଆପଣ ବୋଲି ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String otpSubtitle(String target) {
    return '$target କୁ ପଠାଯାଇଥିବା 6 ଅଙ୍କର କୋଡ ଦିଅନ୍ତୁ';
  }

  @override
  String get verifyCode => 'ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get resendCode => 'କୋଡ ପୁଣି ପଠାନ୍ତୁ';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ସେକେଣ୍ଡରେ ପୁଣି ପଠାନ୍ତୁ';
  }

  @override
  String get codeResent => 'ନୂଆ କୋଡ ପଠାଯାଇଛି';

  @override
  String get incorrectCode =>
      'ଏହି କୋଡ ଭୁଲ କିମ୍ବା ମିଆଦ ସରିଯାଇଛି। ନୂଆ କୋଡ ମାଗନ୍ତୁ।';

  @override
  String get enterFullCode => 'ପୂରା 6 ଅଙ୍କ ଦିଅନ୍ତୁ';

  @override
  String get accountSuspended =>
      'ଏହି ଖାତା ନିଲମ୍ବିତ କରାଯାଇଛି। ଦୟାକରି ସହାୟତା ସହ ଯୋଗାଯୋଗ କରନ୍ତୁ।';

  @override
  String get tooManyAttempts =>
      'ବହୁତ ଅଧିକ ଚେଷ୍ଟା ହୋଇଗଲା। ଦୟାକରି କିଛି ସମୟ ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get sessionExpired =>
      'ଆପଣଙ୍କ ସେସନର ମିଆଦ ସରିଯାଇଛି। ଦୟାକରି ପୁଣି ସାଇନ ଇନ କରନ୍ତୁ।';

  @override
  String get networkError =>
      'ଇଣ୍ଟରନେଟ ସଂଯୋଗ ନାହିଁ। ସଂଯୋଗ ଯାଞ୍ଚ କରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get developmentCode => 'ଡେଭଲପମେଣ୍ଟ କୋଡ';

  @override
  String get signOut => 'ସାଇନ ଆଉଟ';

  @override
  String get signedOut => 'ଆପଣ ସାଇନ ଆଉଟ ହୋଇଛନ୍ତି';

  @override
  String get somethingWentWrong => 'କିଛି ଭୁଲ ହେଲା। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get profileTitle => 'ପ୍ରୋଫାଇଲ';

  @override
  String get viewProfile => 'ପ୍ରୋଫାଇଲ ଦେଖନ୍ତୁ';

  @override
  String get nameLabel => 'ନାମ';

  @override
  String get emailLabel => 'ଇମେଲ';

  @override
  String get mobileLabel => 'ମୋବାଇଲ ନମ୍ବର';

  @override
  String get accountStatusLabel => 'ଖାତାର ସ୍ଥିତି';

  @override
  String get statusActive => 'ସକ୍ରିୟ';

  @override
  String get statusPending => 'ବିଚାରାଧୀନ';

  @override
  String get statusSuspended => 'ନିଲମ୍ବିତ';

  @override
  String get verifiedLabel => 'ଯାଞ୍ଚ ହୋଇଛି';

  @override
  String get notProvided => 'ଯୋଡ଼ାଯାଇନାହିଁ';

  @override
  String get retry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get navHome => 'ହୋମ';

  @override
  String get navSearch => 'ଖୋଜନ୍ତୁ';

  @override
  String get navOrders => 'ଅର୍ଡର';

  @override
  String get cancelLabel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get deliverTo => 'ଡେଲିଭରି ଠିକଣା';

  @override
  String get searchDishesHint => 'ଖାଦ୍ୟ କିମ୍ବା ରେଷ୍ଟୁରାଣ୍ଟ ଖୋଜନ୍ତୁ';

  @override
  String get searchTitle => 'ଖୋଜନ୍ତୁ';

  @override
  String get searchNoResultsTitle => 'କିଛି ମିଳିଲା ନାହିଁ';

  @override
  String get searchNoResultsSubtitle =>
      'ଅନ୍ୟ ଖାଦ୍ୟ, ରନ୍ଧନ ଶୈଳୀ କିମ୍ବା ରେଷ୍ଟୁରାଣ୍ଟ ନାମ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get cravingTitle => 'ଆଜି କଣ ଖାଇବାକୁ ଇଚ୍ଛା?';

  @override
  String get offersTitle => 'ଆପଣଙ୍କ ପାଇଁ ଅଫର';

  @override
  String get restaurantsNearby => 'ଆପଣଙ୍କ ନିକଟସ୍ଥ ରେଷ୍ଟୁରାଣ୍ଟ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ରେଷ୍ଟୁରାଣ୍ଟ',
      one: '1ଟି ରେଷ୍ଟୁରାଣ୍ଟ',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'ଏଠାରେ ଏପର୍ଯ୍ୟନ୍ତ କିଛି ନାହିଁ';

  @override
  String get noRestaurantsSubtitle =>
      'ଅନ୍ୟ ବର୍ଗ ଦେଖନ୍ତୁ କିମ୍ବା ଫିଲ୍ଟର ହଟାନ୍ତୁ।';

  @override
  String minutesAway(int minutes) {
    return '$minutes ମିନିଟ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance କିମି';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ରେଟିଂ',
      one: '1 ରେଟିଂ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'ଦୁଇ ଜଣଙ୍କ ପାଇଁ ₹$amount';
  }

  @override
  String get freeDelivery => 'ମାଗଣା ଡେଲିଭରି';

  @override
  String percentOff(int percent) {
    return '$percent% ଛାଡ଼';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'ଆପଣଙ୍କ ଅର୍ଡରରେ $percent% ଛାଡ଼';
  }

  @override
  String get vegOnly => 'କେବଳ ନିରାମିଷ';

  @override
  String get bestseller => 'ସର୍ବାଧିକ ବିକ୍ରି';

  @override
  String get addLabel => 'ଯୋଡ଼ନ୍ତୁ';

  @override
  String get noVegDishesTitle => 'ଏଠାରେ ନିରାମିଷ ଖାଦ୍ୟ ନାହିଁ';

  @override
  String get noVegDishesSubtitle =>
      'ପୂର୍ଣ୍ଣ ମେନୁ ଦେଖିବାକୁ ନିରାମିଷ ଫିଲ୍ଟର ବନ୍ଦ କରନ୍ତୁ।';

  @override
  String get replaceCartTitle => 'ନୂଆ କାର୍ଟ ଆରମ୍ଭ କରିବେ?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'ଆପଣଙ୍କ କାର୍ଟରେ $restaurantର ଜିନିଷ ଅଛି। ଏହା ଯୋଡ଼ିଲେ ସେଗୁଡ଼ିକ ହଟିଯିବ।';
  }

  @override
  String get replaceCartConfirm => 'ହଟାଇ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get cartTitle => 'ଆପଣଙ୍କ କାର୍ଟ';

  @override
  String get cartEmptyTitle => 'ଆପଣଙ୍କ କାର୍ଟ ଖାଲି';

  @override
  String get cartEmptySubtitle =>
      'ଆରମ୍ଭ କରିବାକୁ କୌଣସି ରେଷ୍ଟୁରାଣ୍ଟରୁ ଖାଦ୍ୟ ଯୋଡ଼ନ୍ତୁ।';

  @override
  String get browseRestaurants => 'ରେଷ୍ଟୁରାଣ୍ଟ ଦେଖନ୍ତୁ';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଜିନିଷ',
      one: '1ଟି ଜିନିଷ',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'କାର୍ଟ ଦେଖନ୍ତୁ';

  @override
  String get itemTotal => 'ଜିନିଷର ମୋଟ';

  @override
  String get deliveryFeeLabel => 'ଡେଲିଭରି ଶୁଳ୍କ';

  @override
  String get taxesAndCharges => 'କର ଓ ଶୁଳ୍କ';

  @override
  String get freeLabel => 'ମାଗଣା';

  @override
  String get toPay => 'ଦେୟ';

  @override
  String placeOrderFor(String amount) {
    return 'ଅର୍ଡର କରନ୍ତୁ · $amount';
  }

  @override
  String get ordersTitle => 'ଆପଣଙ୍କ ଅର୍ଡର';

  @override
  String get ordersEmptyTitle => 'ଏପର୍ଯ୍ୟନ୍ତ ଅର୍ଡର ନାହିଁ';

  @override
  String get ordersEmptySubtitle => 'ଆପଣଙ୍କ ପୂର୍ବ ଅର୍ଡର ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get reorder => 'ପୁଣି ଅର୍ଡର';

  @override
  String orderTitle(String id) {
    return 'ଅର୍ଡର $id';
  }

  @override
  String get orderPlacedTitle => 'ଅର୍ଡର ହୋଇଗଲା';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'ପ୍ରାୟ $minutes ମିନିଟରେ ପହଞ୍ଚିବ।';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant ଆପଣଙ୍କ ଅର୍ଡର ପାଇଛି।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'ପ୍ରାୟ $minutes ମିନିଟରେ ପ୍ରସ୍ତୁତ ହେବ।';
  }

  @override
  String get trackYourOrder => 'ଅର୍ଡର ଟ୍ରାକ କରନ୍ତୁ';

  @override
  String get couponApplyTitle => 'କୁପନ ଲଗାନ୍ତୁ';

  @override
  String get couponCodeLabel => 'କୁପନ କୋଡ';

  @override
  String get couponApply => 'ଲଗାନ୍ତୁ';

  @override
  String couponAppliedTitle(String code) {
    return '$code ଲଗାଗଲା';
  }

  @override
  String couponSaving(String amount) {
    return 'ଆପଣଙ୍କ $amount ବଞ୍ଚିଲା';
  }

  @override
  String get couponRemove => 'ହଟାନ୍ତୁ';

  @override
  String searchFor(String term) {
    return '\"$term\" ଖୋଜନ୍ତୁ';
  }

  @override
  String get vegModeBadge => 'ଶୁଦ୍ଧ ନିରାମିଷ';

  @override
  String trackingExpectedBy(String time) {
    return '$time ସୁଦ୍ଧା ପହଞ୍ଚିବ';
  }

  @override
  String get orderAgainTitle => 'ପୁଣି ଅର୍ଡର କରନ୍ତୁ';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + ଆଉ $countଟି',
      one: '$first + ଆଉ 1ଟି',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max ମିନିଟ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 ମଧ୍ୟରୁ $rating ରେଟିଂ';
  }

  @override
  String get reorderReplaceTitle => 'ଆପଣଙ୍କ କାର୍ଟ ବଦଳାଇବେ?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurantର ଆପଣଙ୍କ କାର୍ଟ ଏହି ଅର୍ଡରର ଖାଦ୍ୟରେ ବଦଳିଯିବ।';
  }

  @override
  String get reorderReplace => 'ବଦଳାନ୍ତୁ';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ, ତେଣୁ ସେଗୁଡ଼ିକୁ ଛାଡ଼ି ଦିଆଗଲା।',
      one: '$dishes ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ, ତେଣୁ ଏହାକୁ ଛାଡ଼ି ଦିଆଗଲା।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'ଏହି ଖାଦ୍ୟ ମଧ୍ୟରୁ କୌଣସିଟି ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get searchShort => 'ଖୋଜନ୍ତୁ';

  @override
  String get favouriteSave => 'ପ୍ରିୟ ତାଲିକାରେ ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get restaurantAbout => 'ଏହି ରେଷ୍ଟୁରାଣ୍ଟ ବିଷୟରେ';

  @override
  String ratingByCount(String count) {
    return '$count ରେଟିଂ';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଅଫର',
      one: '1ଟି ଅଫର',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile ରେ $restaurantରୁ ଅର୍ଡର କରନ୍ତୁ';
  }

  @override
  String get ordersSearchHint => 'ରେଷ୍ଟୁରାଣ୍ଟ କିମ୍ବା ଖାଦ୍ୟ ନାମରେ ଖୋଜନ୍ତୁ…';

  @override
  String get ordersNoMatch =>
      'ସେହି ନାମର ରେଷ୍ଟୁରାଣ୍ଟ କିମ୍ବା ଖାଦ୍ୟର କୌଣସି ଅର୍ଡର ନାହିଁ।';

  @override
  String orderPlacedOn(String date) {
    return '$date ରେ ଅର୍ଡର କରାଯାଇଥିଲା';
  }

  @override
  String get viewMenu => 'ମେନୁ ଦେଖନ୍ତୁ';

  @override
  String get navHistory => 'ଇତିହାସ';

  @override
  String get exploreMore => 'ଆହୁରି ଦେଖନ୍ତୁ';

  @override
  String get exploreTopRated => 'ସର୍ବୋଚ୍ଚ ରେଟିଂ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଆପଣଙ୍କ ପାଖକୁ ଡେଲିଭରି କରୁଥିବା $countଟି ରେଷ୍ଟୁରାଣ୍ଟ',
      one: 'ଆପଣଙ୍କ ପାଖକୁ ଡେଲିଭରି କରୁଥିବା 1ଟି ରେଷ୍ଟୁରାଣ୍ଟ',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ଡେଲିଭରି କିପରି ଥିଲା?';

  @override
  String get rateHowWasFood => 'ଖାଦ୍ୟ କିପରି ଥିଲା?';

  @override
  String get rateWordTerrible => 'ବହୁତ ଖରାପ';

  @override
  String get rateWordBad => 'ଖରାପ';

  @override
  String get rateWordOkay => 'ଠିକ ଅଛି';

  @override
  String get rateWordGood => 'ଭଲ';

  @override
  String get rateWordLoved => 'ବହୁତ ଭଲ ଲାଗିଲା!';

  @override
  String get rateWhatWentWrong => 'କଣ ଭୁଲ ହେଲା?';

  @override
  String get rateWhatYouLiked => 'ଆପଣଙ୍କୁ କଣ ଭଲ ଲାଗିଲା?';

  @override
  String get rateRiderNoteHint => 'ଡେଲିଭରି ବିଷୟରେ ଟିପ୍ପଣୀ (ଐଚ୍ଛିକ)';

  @override
  String get rateReviewHeading => 'ସମୀକ୍ଷା ଲେଖନ୍ତୁ';

  @override
  String get rateFoodFirst => 'ପଠାଇବାକୁ ଖାଦ୍ୟକୁ ରେଟ କରନ୍ତୁ';

  @override
  String get rateYouRated => 'ଆପଣ ଏହି ଅର୍ଡରକୁ ରେଟ କରିଛନ୍ତି';

  @override
  String get ratePromptLater => 'ଏବେ ନୁହେଁ';

  @override
  String get tagTasty => 'ସ୍ୱାଦିଷ୍ଟ';

  @override
  String get tagFreshHot => 'ଗରମ ଓ ସତେଜ';

  @override
  String get tagGoodPortion => 'ଭଲ ପରିମାଣ';

  @override
  String get tagGoodPackaging => 'ଭଲ ପ୍ୟାକିଂ';

  @override
  String get tagValueForMoney => 'ପଇସା ଉସୁଲ';

  @override
  String get tagHygienic => 'ପରିଷ୍କାର-ପରିଚ୍ଛନ୍ନ';

  @override
  String get tagColdFood => 'ଥଣ୍ଡା ଖାଦ୍ୟ';

  @override
  String get tagPoorTaste => 'ସ୍ୱାଦ ଭଲ ନଥିଲା';

  @override
  String get tagSmallPortion => 'କମ୍ ପରିମାଣ';

  @override
  String get tagWrongItems => 'ଭୁଲ ଜିନିଷ';

  @override
  String get tagMissingItems => 'କିଛି ଜିନିଷ ନଥିଲା';

  @override
  String get tagPoorPackaging => 'ଖରାପ ପ୍ୟାକିଂ';

  @override
  String get tagTooOily => 'ବହୁତ ତେଲିଆ କିମ୍ବା ଝାଲ';

  @override
  String get tagOnTime => 'ଠିକ ସମୟରେ';

  @override
  String get tagPolite => 'ଭଦ୍ର ବ୍ୟବହାର';

  @override
  String get tagFollowedInstructions => 'ନିର୍ଦ୍ଦେଶ ମାନିଲେ';

  @override
  String get tagCarefulHandling => 'ଖାଦ୍ୟ ଯତ୍ନରେ ଆଣିଲେ';

  @override
  String get tagGoodCommunication => 'ଖବର ଦେଉଥିଲେ';

  @override
  String get tagLate => 'ଡେରିରେ ଡେଲିଭରି';

  @override
  String get tagRude => 'ଅଭଦ୍ର ବ୍ୟବହାର';

  @override
  String get tagIgnoredInstructions => 'ନିର୍ଦ୍ଦେଶ ମାନିଲେ ନାହିଁ';

  @override
  String get tagFoodSpilled => 'ଖାଦ୍ୟ ଢାଳି ହୋଇଥିଲା';

  @override
  String get tagAskedExtraMoney => 'ଅଧିକ ପଇସା ମାଗିଲେ';

  @override
  String get tagUnprofessional => 'ଅପେଶାଦାର ବ୍ୟବହାର';

  @override
  String rateDeliveredBy(String name) {
    return '$name ଡେଲିଭରି କଲେ';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurantରୁ';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurantରୁ ଆପଣଙ୍କ ଅର୍ଡର କିପରି ଥିଲା?';
  }

  @override
  String get orderDeliveredTitle => 'ଡେଲିଭର ହୋଇଗଲା';

  @override
  String get orderDeliveredSubtitle => 'ଖାଦ୍ୟ ଉପଭୋଗ କରନ୍ତୁ।';

  @override
  String get statusOrderPlaced => 'ଅର୍ଡର ହୋଇଗଲା';

  @override
  String get statusPreparing => 'ଖାଦ୍ୟ ପ୍ରସ୍ତୁତ ହେଉଛି';

  @override
  String get statusOnTheWay => 'ରାସ୍ତାରେ ଅଛି';

  @override
  String get statusDelivered => 'ଡେଲିଭର ହୋଇଗଲା';

  @override
  String get keepBrowsing => 'ଦେଖୁଥାନ୍ତୁ';

  @override
  String get backToHome => 'ହୋମକୁ ଫେରନ୍ତୁ';

  @override
  String get prototypeNotice =>
      'ନମୁନା ଷ୍ଟୋରଫ୍ରଣ୍ଟ — ପ୍ରକୃତ ଦୋକାନ କାଟାଲଗ APIସହ ଆସିବ।';

  @override
  String get prototypeCheckoutNotice =>
      'ଏହା ଏକ ପ୍ରୋଟୋଟାଇପ। କୌଣସି ଦେୟ ନିଆଯାଏ ନାହିଁ ଏବଂ ପ୍ରକୃତ ଅର୍ଡର ମଧ୍ୟ ହୁଏ ନାହିଁ।';

  @override
  String get prototypeTrackingNotice => 'ପ୍ରୋଟୋଟାଇପ ପାଇଁ ଟ୍ରାକିଂ କୃତ୍ରିମ।';

  @override
  String get locationTitle => 'କେଉଁଠାରେ ଡେଲିଭରି କରିବୁ?';

  @override
  String get locationSubtitle =>
      'Nexmile କେବଳ 1 କିମି ଭିତରର ଦୋକାନରୁ ଡେଲିଭରି କରେ, ତେଣୁ ଆପଣଙ୍କ ସଠିକ ସ୍ଥାନ ଦରକାର।';

  @override
  String get locationReasonRadiusTitle => '1 କିମି ଭିତରର ଦୋକାନ';

  @override
  String get locationReasonRadiusBody =>
      'ଯେଉଁଠାରୁ ଖାଦ୍ୟ ଗରମ ପହଞ୍ଚିବ, କେବଳ ସେହି ରୋଷେଇଘର ଦେଖାଉ।';

  @override
  String get locationReasonAccuracyTitle => 'ଠିକ୍ ଦୁଆର ପର୍ଯ୍ୟନ୍ତ';

  @override
  String get locationReasonAccuracyBody =>
      'ସଠିକ ପିନ ଥିଲେ ଡେଲିଭରି ପାର୍ଟନର ଫୋନ ନକରି ଆପଣଙ୍କୁ ଖୋଜି ପାଆନ୍ତି।';

  @override
  String get locationReasonPrivacyTitle => 'କେବଳ ଆପ୍ ବ୍ୟବହାର ସମୟରେ';

  @override
  String get locationReasonPrivacyBody =>
      'ଆମେ ପୃଷ୍ଠଭୂମିରେ ଆପଣଙ୍କୁ ଟ୍ରାକ କରୁନାହୁଁ, ଠିକଣା ଆପଣ ନିଜେ ମଧ୍ୟ ଲେଖିପାରିବେ।';

  @override
  String get allowLocation => 'ଲୋକେସନ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get enterAddressManually => 'ମୁଁ ନିଜେ ଠିକଣା ଲେଖିବି';

  @override
  String get locationDenied =>
      'ଲୋକେସନ ଅନୁମତି ମିଳିଲା ନାହିଁ। ଆପଣ ନିଜେ ପିନ ରଖିପାରିବେ।';

  @override
  String get locationDeniedForever =>
      'Nexmile ପାଇଁ ଲୋକେସନ ବନ୍ଦ ଅଛି। ସେଟିଂସରେ ଚାଲୁ କରନ୍ତୁ କିମ୍ବା ପିନ ନିଜେ ରଖନ୍ତୁ।';

  @override
  String get locationServiceOff => 'ଏହି ଡିଭାଇସରେ ଲୋକେସନ ବନ୍ଦ ଅଛି।';

  @override
  String get locationUnavailable =>
      'ଲୋକେସନ ମିଳିଲା ନାହିଁ। ଦୟାକରି ପିନ ନିଜେ ରଖନ୍ତୁ।';

  @override
  String permStepCount(int step, int total) {
    return '$total ମଧ୍ୟରୁ $step';
  }

  @override
  String get permNotNow => 'ଏବେ ନୁହେଁ';

  @override
  String get permLocationTitle => 'ଆପଣଙ୍କ ନିକଟରେ ଖାଦ୍ୟ ଖୋଜନ୍ତୁ';

  @override
  String get permNotifyTitle => 'ଅର୍ଡରର କୌଣସି ଅପଡେଟ ଛାଡ଼ନ୍ତୁ ନାହିଁ';

  @override
  String get permNotifyBody =>
      'ଆପଣଙ୍କ ଅର୍ଡର କେବେ ଗ୍ରହଣ ହେଲା, ଉଠାଗଲା ଏବଂ ଦୁଆରେ ପହଞ୍ଚିଲା ଜାଣିବାକୁ ନୋଟିଫିକେସନ ଚାଲୁ କରନ୍ତୁ।';

  @override
  String get permNotifyLiveTitle => 'ଲାଇଭ ଅର୍ଡର ଅପଡେଟ';

  @override
  String get permNotifyLiveBody =>
      'ଗ୍ରହଣ ହେଲା, ରନ୍ଧା ହେଉଛି, ଉଠାଗଲା, ଡେଲିଭର ହେଲା।';

  @override
  String get permNotifyRiderTitle => 'ରାଇଡର ଆପଣଙ୍କ ଦୁଆରେ';

  @override
  String get permNotifyRiderBody => 'ଆପ୍ ନ ଦେଖି ବି ଜାଣନ୍ତୁ କେବେ ବାହାରକୁ ଆସିବେ।';

  @override
  String get permNotifyControlTitle => 'ନିୟନ୍ତ୍ରଣ ଆପଣଙ୍କ ହାତରେ';

  @override
  String get permNotifyControlBody =>
      'ଫୋନର ସେଟିଂସରେ ଯେକୌଣସି ସମୟରେ ନୋଟିଫିକେସନ ବନ୍ଦ କରନ୍ତୁ।';

  @override
  String get permNotifyAllow => 'ନୋଟିଫିକେସନ ଚାଲୁ କରନ୍ତୁ';

  @override
  String get openSettings => 'ସେଟିଂସ';

  @override
  String get pinLocationTitle => 'ଆପଣଙ୍କ ଡେଲିଭରି ପିନ ରଖନ୍ତୁ';

  @override
  String get deliveryRadiusHint =>
      'Nexmile ଡେଲିଭରି କରୁଥିବା 1 କିମି ପରିସର ବୃତ୍ତ ଦେଖାଉଛି।';

  @override
  String get useMyLocation => 'ମୋ ଲୋକେସନ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get deliveringHere => 'ଏଠାରେ ଡେଲିଭରି';

  @override
  String get dragToAdjust => 'ପିନ ବଦଳାଇବାକୁ ମାନଚିତ୍ର ଟାଣନ୍ତୁ';

  @override
  String get confirmLocation => 'ଲୋକେସନ ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get addressDetailsTitle => 'ଠିକଣା ବିବରଣୀ';

  @override
  String get addressDetailsSubtitle =>
      'ଠିକ୍ ଦୁଆରରେ ପହଞ୍ଚିବାକୁ ଘର ନମ୍ବର ଓ ଚିହ୍ନ ଯୋଡ଼ନ୍ତୁ।';

  @override
  String get pinnedLocation => 'ଚିହ୍ନିତ ସ୍ଥାନ';

  @override
  String get changePin => 'ବଦଳାନ୍ତୁ';

  @override
  String get saveAddressAs => 'ଏହି ଠିକଣା ଏହିପରି ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get labelHome => 'ଘର';

  @override
  String get labelWork => 'ଅଫିସ';

  @override
  String get labelOther => 'ଅନ୍ୟାନ୍ୟ';

  @override
  String get addressLine1Label => 'ଘର, ଫ୍ଲାଟ କିମ୍ବା ବିଲ୍ଡିଂ';

  @override
  String get addressLine1Hint => '12A, ଗ୍ରୀନ ରେସିଡେନ୍ସି';

  @override
  String get addressLine2Label => 'ରାସ୍ତା କିମ୍ବା ଅଞ୍ଚଳ';

  @override
  String get addressLine2Hint => '2ୟ ଆଭେନ୍ୟୁ, ଅନ୍ନା ନଗର';

  @override
  String get landmarkLabel => 'ଚିହ୍ନ';

  @override
  String get landmarkHint => 'ବସ ଷ୍ଟପ ସାମ୍ନାରେ';

  @override
  String get cityLabel => 'ସହର';

  @override
  String get stateLabel => 'ରାଜ୍ୟ';

  @override
  String get pincodeLabel => 'ପିନ କୋଡ';

  @override
  String get invalidPincode => 'ସଠିକ 6 ଅଙ୍କର ପିନ କୋଡ ଦିଅନ୍ତୁ';

  @override
  String get contactNameLabel => 'ଯୋଗାଯୋଗ ନାମ';

  @override
  String get contactPhoneLabel => 'ଯୋଗାଯୋଗ ନମ୍ବର';

  @override
  String get invalidMobileNumber => 'ସଠିକ 10 ଅଙ୍କର ମୋବାଇଲ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get makeDefaultAddress => 'ଡିଫଲ୍ଟ ଭାବେ ଏଠାରେ ଡେଲିଭରି';

  @override
  String get saveAddress => 'ଠିକଣା ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get addressSaved => 'ଠିକଣା ସଞ୍ଚିତ ହେଲା';

  @override
  String get addressBookTitle => 'ଡେଲିଭରି ଠିକଣା';

  @override
  String get manageAddresses => 'ସଞ୍ଚିତ ଠିକଣା ପରିଚାଳନା କରନ୍ତୁ';

  @override
  String get noAddressesTitle => 'ଏପର୍ଯ୍ୟନ୍ତ ଠିକଣା ନାହିଁ';

  @override
  String get noAddressesSubtitle =>
      'ଆପଣଙ୍କ ପାଖକୁ ଡେଲିଭରି କରୁଥିବା ଦୋକାନ ଦେଖାଇବାକୁ ଗୋଟିଏ ଠିକଣା ଯୋଡ଼ନ୍ତୁ।';

  @override
  String get addAddress => 'ଠିକଣା ଯୋଡ଼ନ୍ତୁ';

  @override
  String get setAsDefault => 'ଡିଫଲ୍ଟ କରନ୍ତୁ';

  @override
  String get editLabel => 'ସମ୍ପାଦନା';

  @override
  String get addressUpdated => 'ଠିକଣା ଅପଡେଟ ହେଲା';

  @override
  String get deleteLabel => 'ବିଲୋପ କରନ୍ତୁ';

  @override
  String get deleteAddressTitle => 'ଏହି ଠିକଣା ବିଲୋପ କରିବେ?';

  @override
  String get deleteAddressMessage => 'ଆପଣ ପରେ ପୁଣି ଯୋଡ଼ିପାରିବେ।';

  @override
  String get rescueDealsTitle => 'ଫୁଡ୍ ରେସ୍କ୍ୟୁ';

  @override
  String get notTakingOrders => 'ଅର୍ଡର ନେଉନାହିଁ';

  @override
  String get closedRightNow => 'ବର୍ତ୍ତମାନ ବନ୍ଦ';

  @override
  String minimumOrder(String amount) {
    return 'ସର୍ବନିମ୍ନ $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count ବାକି';
  }

  @override
  String get soldOut => 'ସରିଗଲା';

  @override
  String get menuEmptyTitle => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଖାଦ୍ୟ ନାହିଁ';

  @override
  String get menuEmptySubtitle => 'ଏହି ରେଷ୍ଟୁରାଣ୍ଟ ନିଜ ମେନୁ ଯୋଡ଼ିନାହିଁ।';

  @override
  String get moreDishesTitle => 'ଆଉ ଖାଦ୍ୟ';

  @override
  String get menuSearchHint => 'ଖାଦ୍ୟ ଖୋଜନ୍ତୁ';

  @override
  String get filtersShort => 'ଫିଲ୍ଟର';

  @override
  String get dietVeg => 'ନିରାମିଷ';

  @override
  String get dietEgg => 'ଅଣ୍ଡା';

  @override
  String get dietNonVeg => 'ଆମିଷ';

  @override
  String get menuBestsellerChip => 'ସର୍ବାଧିକ ବିକ୍ରି';

  @override
  String get menuFoodType => 'ଖାଦ୍ୟ ପ୍ରକାର';

  @override
  String get menuShowOnly => 'କେବଳ ଦେଖାନ୍ତୁ';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଖାଦ୍ୟ',
      one: '1ଟି ଖାଦ୍ୟ',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଖାଦ୍ୟ ଦେଖନ୍ତୁ',
      one: '1ଟି ଖାଦ୍ୟ ଦେଖନ୍ତୁ',
      zero: 'କୌଣସି ଖାଦ୍ୟ ନାହିଁ',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'ଅନ୍ୟ ଖାଦ୍ୟ ନାମ ଚେଷ୍ଟା କରନ୍ତୁ, କିମ୍ବା ଗୋଟିଏ ଫିଲ୍ଟର ହଟାନ୍ତୁ।';

  @override
  String get menuBrowse => 'ମେନୁ';

  @override
  String get customisable => 'ପସନ୍ଦ ଅନୁଯାୟୀ';

  @override
  String get requiredLabel => 'ଆବଶ୍ୟକ';

  @override
  String get optionalLabel => 'ଐଚ୍ଛିକ';

  @override
  String get chooseOne => 'ଗୋଟିଏ ବାଛନ୍ତୁ';

  @override
  String chooseUpTo(int count) {
    return 'ସର୍ବାଧିକ $count ବାଛନ୍ତୁ';
  }

  @override
  String chooseAtLeast(int count) {
    return 'ସର୍ବନିମ୍ନ $count ବାଛନ୍ତୁ';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min ରୁ $max ବାଛନ୍ତୁ';
  }

  @override
  String get specialInstructions => 'ବିଶେଷ ନିର୍ଦ୍ଦେଶ';

  @override
  String get specialInstructionsHint => 'କମ୍ ଝାଲ, ପିଆଜ ନୁହେଁ…';

  @override
  String addForAmount(String amount) {
    return 'ଯୋଡ଼ନ୍ତୁ · $amount';
  }

  @override
  String get deliveryLabel => 'ଡେଲିଭରୀ';

  @override
  String get pickupLabel => 'ନିଜେ ନେବା';

  @override
  String get packagingLabel => 'ପ୍ୟାକିଂ';

  @override
  String get discountLabel => 'ରିହାତି';

  @override
  String get billDetailsTitle => 'ବିଲ୍ ବିବରଣୀ';

  @override
  String get clearCart => 'କାର୍ଟ ଖାଲି କରନ୍ତୁ';

  @override
  String get clearCartTitle => 'ଏହି କାର୍ଟ ଖାଲି କରିବେ?';

  @override
  String get clearCartMessage => 'ଏଥିରେ ଥିବା ସବୁକିଛି ହଟାଯିବ।';

  @override
  String unavailableItemsNotice(String items) {
    return 'ଆଉ ଉପଲବ୍ଧ ନାହିଁ: $items';
  }

  @override
  String get removeUnavailable => 'ସେଗୁଡ଼ିକ ହଟାନ୍ତୁ';

  @override
  String minimumNotMet(String amount) {
    return 'ସର୍ବନିମ୍ନ ଅର୍ଡର $amount';
  }

  @override
  String get checkoutTitle => 'ଚେକଆଉଟ';

  @override
  String get deliveryAddressLabel => 'ଡେଲିଭରୀ ଠିକଣା';

  @override
  String get noAddressSelected => 'କୌଣସି ଠିକଣା ବଛାଯାଇନାହିଁ';

  @override
  String get paymentMethodLabel => 'ଦେୟ';

  @override
  String get payOnDelivery => 'ଡେଲିଭରୀ ସମୟରେ ନଗଦ';

  @override
  String get noteToRestaurant => 'ରେଷ୍ଟୁରାଣ୍ଟ ପାଇଁ ଟିପ୍ପଣୀ';

  @override
  String get noteToRestaurantHint => 'ଘଣ୍ଟି ଦୁଇଥର ବଜାନ୍ତୁ…';

  @override
  String get activeOrdersTitle => 'ଚାଲୁଥିବା ଅର୍ଡର';

  @override
  String get pastOrdersTitle => 'ପୁରୁଣା ଅର୍ଡର';

  @override
  String get orderItemsTitle => 'ଖାଦ୍ୟ';

  @override
  String get orderProgressTitle => 'ପ୍ରଗତି';

  @override
  String get arrivingIn => 'ପହଞ୍ଚିବାକୁ';

  @override
  String get pickupCodeLabel => 'ପିକଅପ୍ କୋଡ୍';

  @override
  String get cancellationReasonLabel => 'ବାତିଲ ହେବାର କାରଣ';

  @override
  String get riderLabel => 'ଡେଲିଭରୀ ପାର୍ଟନର';

  @override
  String get callRider => 'କଲ୍ କରନ୍ତୁ';

  @override
  String get trackRider => 'ରାଇଡର ଟ୍ରାକ୍ କରନ୍ତୁ';

  @override
  String get riderLocationSoon =>
      'ଅର୍ଡର ଉଠାଇବା ପରେ ରାଇଡରଙ୍କ ଅବସ୍ଥାନ ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get riderLocationStale => 'ରାଇଡରଙ୍କ ଲୋକେସନ ଅପଡେଟ ହେଉଛି…';

  @override
  String get recentreOnRider => 'ରାଇଡରରେ କେନ୍ଦ୍ରିତ କରନ୍ତୁ';

  @override
  String get viewInvoice => 'ଟିକସ ଇନଭଏସ';

  @override
  String get cancelOrder => 'ଅର୍ଡର ବାତିଲ କରନ୍ତୁ';

  @override
  String get cancelOrderTitle => 'ଏହି ଅର୍ଡର ବାତିଲ କରିବେ?';

  @override
  String get cancelOrderMessage =>
      'ରେଷ୍ଟୁରାଣ୍ଟ ଗ୍ରହଣ କରିବା ପୂର୍ବରୁ ହିଁ ବାତିଲ କରାଯାଇପାରିବ।';

  @override
  String get cancelReasonLabel => 'କାରଣ';

  @override
  String get cancelReasonFallback => 'ଗ୍ରାହକ ବାତିଲ କରିଛନ୍ତି';

  @override
  String get orderCancelled => 'ଅର୍ଡର ବାତିଲ ହେଲା';

  @override
  String get currentLocationLabel => 'ବର୍ତ୍ତମାନ ଅବସ୍ଥାନ';

  @override
  String get onLabel => 'ଚାଲୁ';

  @override
  String get offLabel => 'ବନ୍ଦ';

  @override
  String get profileCoupons => 'ଆପଣଙ୍କ କୁପନ';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଉପଲବ୍ଧ',
      one: '1ଟି ଉପଲବ୍ଧ',
      zero: 'ଏପର୍ଯ୍ୟନ୍ତ ନାହିଁ',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'ଆପଣଙ୍କ ପସନ୍ଦ';

  @override
  String get profileVegMode => 'ନିରାମିଷ ମୋଡ';

  @override
  String get profileVegModeHint => 'କେବଳ ନିରାମିଷ ରେଷ୍ଟୁରାଣ୍ଟ ଓ ଖାଦ୍ୟ';

  @override
  String get profileAppearance => 'ଥିମ';

  @override
  String get appearanceSystem => 'ଫୋନ ପରି';

  @override
  String get appearanceLight => 'ଲାଇଟ';

  @override
  String get appearanceDark => 'ଡାର୍କ';

  @override
  String get profileNotifications => 'ନୋଟିଫିକେସନ';

  @override
  String get profileFoodDelivery => 'ଖାଦ୍ୟ ଡେଲିଭରି';

  @override
  String get profileFavourites => 'ଆପଣଙ୍କ ପ୍ରିୟ ତାଲିକା';

  @override
  String get profileHelp => 'ସାହାଯ୍ୟ ଓ ସହାୟତା';

  @override
  String get profileMore => 'ଅଧିକ';

  @override
  String get profileFeedback => 'ମତାମତ ପଠାନ୍ତୁ';

  @override
  String get profileSafety => 'ସୁରକ୍ଷା ଜରୁରୀକାଳୀନ ସ୍ଥିତି ଜଣାନ୍ତୁ';

  @override
  String get profileAbout => 'Nexmile ବିଷୟରେ';

  @override
  String get couponsEmptyTitle => 'ବର୍ତ୍ତମାନ କୌଣସି କୁପନ ନାହିଁ';

  @override
  String get couponsEmptyBody =>
      'ଆପଣ ବ୍ୟବହାର କରିପାରୁଥିବା କୁପନ ଆସିଲେ ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String couponFlatOff(String amount) {
    return '$amount ଛାଡ଼';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% ଛାଡ଼';
  }

  @override
  String couponUpTo(String amount) {
    return 'ସର୍ବାଧିକ $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount ରୁ ଅଧିକ ଅର୍ଡରରେ';
  }

  @override
  String couponValidTill(String date) {
    return '$date ପର୍ଯ୍ୟନ୍ତ ବୈଧ';
  }

  @override
  String get couponAllRestaurants => 'ସମସ୍ତ ରେଷ୍ଟୁରାଣ୍ଟରେ';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurantରେ';
  }

  @override
  String couponCopied(String code) {
    return 'କୋଡ $code କପି ହେଲା';
  }

  @override
  String get favouritesEmptyTitle => 'ପ୍ରିୟ ତାଲିକା ଏପର୍ଯ୍ୟନ୍ତ ଖାଲି';

  @override
  String get favouritesEmptyBody =>
      'ରେଷ୍ଟୁରାଣ୍ଟରେ ଥିବା ହାର୍ଟ ଚିହ୍ନ ଟ୍ୟାପ କରି ଏଠାରେ ସଞ୍ଚୟ କରନ୍ତୁ।';

  @override
  String get helpCall => 'ଆମକୁ କଲ କରନ୍ତୁ';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'ଆମକୁ ଇମେଲ କରନ୍ତୁ';

  @override
  String helpHours(String hours) {
    return 'ଆମେ $hours ଉପଲବ୍ଧ';
  }

  @override
  String get helpFaqs => 'ସାଧାରଣ ପ୍ରଶ୍ନ';

  @override
  String get helpNothing =>
      'ସାହାଯ୍ୟ ବିବରଣୀ ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ। ଦୟାକରି ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get feedbackPrompt => 'Nexmile ଆପଣଙ୍କ ପାଇଁ କିପରି କାମ କରୁଛି?';

  @override
  String get feedbackHint =>
      'ଆପଣଙ୍କୁ କଣ ଭଲ ଲାଗିଲା, କିମ୍ବା ଆମେ କଣ ଭଲ କରିପାରିବା କୁହନ୍ତୁ';

  @override
  String get feedbackNeedRating => 'ପ୍ରଥମେ ରେଟିଂ ବାଛନ୍ତୁ';

  @override
  String get feedbackThanks => 'ଧନ୍ୟବାଦ! ଆପଣଙ୍କ ମତାମତ ଆମ ଟିମ ପାଖରେ ପହଞ୍ଚିଛି।';

  @override
  String get safetyIntro =>
      'ଯଦି ଆପଣ କିମ୍ବା ଅନ୍ୟ କେହି ବିପଦରେ ଅଛନ୍ତି, ପ୍ରଥମେ ଜରୁରୀକାଳୀନ ସେବାକୁ କଲ କରନ୍ତୁ।';

  @override
  String get safetyCallEmergency => '112 କୁ କଲ କରନ୍ତୁ';

  @override
  String get safetyCallEmergencyBody => 'ପୋଲିସ, ଅଗ୍ନିଶମ ଓ ଆମ୍ବୁଲାନ୍ସ';

  @override
  String get safetyCallNexmile => 'Nexmile ସୁରକ୍ଷା ଲାଇନକୁ କଲ କରନ୍ତୁ';

  @override
  String get safetyCallNexmileBody => 'ସବୁ ସମୟରେ ଉତ୍ତର ମିଳେ';

  @override
  String aboutVersion(String version) {
    return 'ସଂସ୍କରଣ $version';
  }

  @override
  String get aboutTerms => 'ସେବା ସର୍ତ୍ତାବଳୀ';

  @override
  String get aboutPrivacy => 'ଗୋପନୀୟତା ନୀତି';

  @override
  String get aboutLicences => 'ଓପନ-ସୋର୍ସ ଲାଇସେନ୍ସ';

  @override
  String get notifyOrderUpdates => 'ଅର୍ଡର ଅପଡେଟ';

  @override
  String get notifyOrderUpdatesBody =>
      'ସବୁବେଳେ ଚାଲୁ, ଯାହାଦ୍ୱାରା ଆପଣଙ୍କ ଖାଦ୍ୟ କେଉଁଠି ଅଛି ଜାଣିପାରିବେ।';

  @override
  String get notifyPromotions => 'ଅଫର ଓ ପ୍ରଚାର';

  @override
  String get notifyPromotionsBody =>
      'ଡିଲ, କୁପନ ଏବଂ ଆପଣଙ୍କ ନିକଟର ନୂଆ ରେଷ୍ଟୁରାଣ୍ଟ।';

  @override
  String get notifyPhoneOff => 'ଏହି ଫୋନରେ Nexmile ପାଇଁ ନୋଟିଫିକେସନ ବନ୍ଦ ଅଛି।';

  @override
  String get notifyTurnOn => 'ଚାଲୁ କରନ୍ତୁ';

  @override
  String get linkOpenFailed => 'ଏହି ଫୋନରେ ତାହା ଖୋଲାଯାଇପାରିଲା ନାହିଁ।';

  @override
  String get editProfileTitle => 'ପ୍ରୋଫାଇଲ ସମ୍ପାଦନ କରନ୍ତୁ';

  @override
  String get editProfileSubtitle =>
      'ରେଷ୍ଟୁରାଣ୍ଟ ଓ ଡେଲିଭରୀ ପାର୍ଟନର ଆପଣଙ୍କ ନାମ ହିଁ ଦେଖନ୍ତି।';

  @override
  String get saveChanges => 'ପରିବର୍ତ୍ତନ ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get profileUpdated => 'ପ୍ରୋଫାଇଲ ଅପଡେଟ ହେଲା';

  @override
  String get deleteAccount => 'ଖାତା ବିଲୋପ କରନ୍ତୁ';

  @override
  String get deleteAccountTitle => 'ଆପଣଙ୍କ ଖାତା ବିଲୋପ କରିବେ?';

  @override
  String get deleteAccountMessage =>
      'ସବୁ ଉପକରଣରୁ ସାଇନ ଆଉଟ ହୋଇଯିବେ। ପୁରୁଣା ଅର୍ଡର ଓ ବିଲ କର ରେକର୍ଡ ପାଇଁ ରଖାଯାଏ।';

  @override
  String get accountDeleted => 'ଆପଣଙ୍କ ଖାତା ବିଲୋପ କରାଗଲା';

  @override
  String get devicesTitle => 'ସାଇନ-ଇନ ଉପକରଣ';

  @override
  String get devicesSubtitle => 'ଆପଣ କେଉଁଠି ସାଇନ ଇନ ଅଛନ୍ତି';

  @override
  String get devicesEmptyTitle => 'ଅନ୍ୟ କୌଣସି ଉପକରଣ ନାହିଁ';

  @override
  String get devicesEmptySubtitle => 'ଆପଣ କେବଳ ଏହି ଉପକରଣରେ ସାଇନ ଇନ ଅଛନ୍ତି।';

  @override
  String get signOutDevice => 'ସାଇନ ଆଉଟ';

  @override
  String get signOutDeviceTitle => 'ଏହି ଉପକରଣ ସାଇନ ଆଉଟ କରିବେ?';

  @override
  String get signOutDeviceMessage =>
      'ଆପଣ ଏହି ଉପକରଣ ବ୍ୟବହାର କରୁଥିଲେ ପୁଣି ସାଇନ ଇନ କରିବାକୁ ପଡ଼ିବ।';

  @override
  String get deviceSignedOut => 'ଉପକରଣ ସାଇନ ଆଉଟ ହେଲା';

  @override
  String get signOutEverywhere => 'ସବୁଠାରୁ ସାଇନ ଆଉଟ';

  @override
  String get signOutEverywhereTitle => 'ସବୁଠାରୁ ସାଇନ ଆଉଟ କରିବେ?';

  @override
  String get signOutEverywhereMessage =>
      'ଏହି ଉପକରଣ ସହିତ ପ୍ରତ୍ୟେକ ଉପକରଣ ସାଇନ ଆଉଟ ହୋଇଯିବ।';

  @override
  String get unknownDevice => 'ଅଜଣା ଉପକରଣ';

  @override
  String get activeNow => 'ବର୍ତ୍ତମାନ ସକ୍ରିୟ';

  @override
  String minutesAgo(int count) {
    return '$count ମିନିଟ ପୂର୍ବେ';
  }

  @override
  String hoursAgo(int count) {
    return '$count ଘଣ୍ଟା ପୂର୍ବେ';
  }

  @override
  String daysAgo(int count) {
    return '$count ଦିନ ପୂର୍ବେ';
  }

  @override
  String get filtersAndSorting => 'ଫିଲ୍ଟର ଓ କ୍ରମ';

  @override
  String get clearAll => 'ସବୁ ହଟାନ୍ତୁ';

  @override
  String get showResults => 'ଫଳାଫଳ ଦେଖନ୍ତୁ';

  @override
  String get closeLabel => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get sortByTitle => 'କ୍ରମ';

  @override
  String get sortRelevance => 'ପ୍ରାସଙ୍ଗିକତା';

  @override
  String get sortRating => 'ରେଟିଂ';

  @override
  String get sortDeliveryTime => 'ଡେଲିଭରୀ ସମୟ';

  @override
  String get sortCostLowHigh => 'ଦାମ: କମରୁ ଅଧିକ';

  @override
  String get sortCostHighLow => 'ଦାମ: ଅଧିକରୁ କମ';

  @override
  String get timeSection => 'ସମୟ';

  @override
  String get nearAndFast => 'ପାଖ ଓ ଶୀଘ୍ର';

  @override
  String get openNow => 'ବର୍ତ୍ତମାନ ଖୋଲା';

  @override
  String get ratingSection => 'ରେଷ୍ଟୁରାଣ୍ଟ ରେଟିଂ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ରେଟିଂ';
  }

  @override
  String get offersSection => 'ଅଫର';

  @override
  String get hasOffersLabel => 'ଅଫର ଥିବା';

  @override
  String get dishPriceSection => 'ଖାଦ୍ୟ ଦାମ';

  @override
  String costUnder(String amount) {
    return '$amount ରୁ କମ';
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
  String get moreSection => 'ଅଧିକ';

  @override
  String get noPackagingCharges => 'ପ୍ୟାକିଂ ଶୁଳ୍କ ନାହିଁ';

  @override
  String get allRestaurantsTitle => 'ସମସ୍ତ ରେଷ୍ଟୁରାଣ୍ଟ';

  @override
  String get whatsOnYourMind => 'କଣ ଖାଇବାକୁ ମନ ହେଉଛି?';

  @override
  String get listeningNow => 'ଶୁଣୁଛୁ…';

  @override
  String get speakNowHint => 'ଏକ ଖାଦ୍ୟ କିମ୍ବା ରେଷ୍ଟୁରାଣ୍ଟ କୁହନ୍ତୁ';

  @override
  String get voiceUnavailable => 'ଭଏସ ସର୍ଚ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get voiceUnavailableBody => 'ଆପଣ ଟାଇପ କରି ମଧ୍ୟ ଖୋଜିପାରିବେ।';

  @override
  String get microphoneDenied => 'ମାଇକ୍ରୋଫୋନ ଅନୁମତି ନାହିଁ';

  @override
  String get voiceSearchLabel => 'ସ୍ୱରରେ ଖୋଜନ୍ତୁ';

  @override
  String get ratingsAndReviews => 'ରେଟିଂ ଓ ସମୀକ୍ଷା';

  @override
  String get reviewsWithTextOnly => 'ସମୀକ୍ଷା ଥିବା';

  @override
  String get noReviewsTitle => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ରେଟିଂ ନାହିଁ';

  @override
  String get noReviewsSubtitle => 'ଅର୍ଡର ପରେ ପ୍ରଥମ ରେଟିଂ ଆପଣ ଦିଅନ୍ତୁ।';

  @override
  String get rateOrderTitle => 'ଆପଣଙ୍କ ଅର୍ଡରକୁ ରେଟ କରନ୍ତୁ';

  @override
  String get rateDishesTitle => 'ଖାଦ୍ୟଗୁଡ଼ିକୁ ରେଟ କରନ୍ତୁ';

  @override
  String get reviewHint => 'ଆଉ କିଛି କହିବେ କି? (ଐଚ୍ଛିକ)';

  @override
  String get submitRating => 'ରେଟିଂ ପଠାନ୍ତୁ';

  @override
  String get reviewThanks => 'ଧନ୍ୟବାଦ — ଆପଣଙ୍କ ରେଟିଂ ମିଳିଲା।';

  @override
  String get rateThisOrder => 'ଏହି ଅର୍ଡରକୁ ରେଟ କରନ୍ତୁ';

  @override
  String get walletTitle => 'Nexmile ୱାଲେଟ';

  @override
  String get walletBalance => 'ୱାଲେଟ ବାଲାନ୍ସ';

  @override
  String get walletBalanceHint => 'ଯେକୌଣସି ଅର୍ଡରର ଦେୟ ପାଇଁ ବ୍ୟବହାର କରନ୍ତୁ।';

  @override
  String get walletAddMoney => 'ଟଙ୍କା ଯୋଡ଼ନ୍ତୁ';

  @override
  String get walletEnterAmount => 'ରାଶି ଦିଅନ୍ତୁ';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ରୁ $max ମଧ୍ୟରେ';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount ଯୋଡ଼ନ୍ତୁ';
  }

  @override
  String get walletSecuredBy => 'ଦେୟ Razorpay ଦ୍ୱାରା ସୁରକ୍ଷିତ';

  @override
  String get walletHistory => 'ଇତିହାସ';

  @override
  String get walletNoHistory =>
      'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି କାରବାର ନାହିଁ। ଆପଣ ଯୋଡ଼ିଥିବା କିମ୍ବା ଖର୍ଚ୍ଚ କରିଥିବା ଟଙ୍କା ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get walletEntryTopUp => 'ଟଙ୍କା ଯୋଡ଼ାଗଲା';

  @override
  String get walletEntryOrder => 'ଅର୍ଡର ପାଇଁ ଦେୟ';

  @override
  String walletEntryOrderNumber(String number) {
    return 'ଅର୍ଡର $number ପାଇଁ ଦେୟ';
  }

  @override
  String get walletEntryRefund => 'ଫେରସ୍ତ';

  @override
  String walletMoneyAdded(String amount) {
    return 'ଆପଣଙ୍କ ୱାଲେଟରେ $amount ଯୋଡ଼ାଗଲା';
  }

  @override
  String get walletPaymentFailed =>
      'ଦେୟ ବିଫଳ ହେଲା। ଆପଣଙ୍କ ଖାତାରୁ କୌଣସି ଟଙ୍କା କଟିନାହିଁ।';

  @override
  String get walletPaymentConfirming =>
      'ଦେୟ ମିଳିଛି। କିଛି ମିନିଟରେ ଆପଣଙ୍କ ବାଲାନ୍ସ ଅପଡେଟ ହେବ।';

  @override
  String get walletUseBalance => 'ୱାଲେଟ ବାଲାନ୍ସ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String walletAvailable(String amount) {
    return 'ଉପଲବ୍ଧ: $amount';
  }

  @override
  String get walletPaidFromWallet => 'ୱାଲେଟରୁ ଦିଆଗଲା';

  @override
  String get walletPayOnDelivery => 'ଡେଲିଭରି ସମୟରେ ଦେୟ';

  @override
  String get walletCoversOrder => 'ସମ୍ପୂର୍ଣ୍ଣ ୱାଲେଟରୁ ଦିଆଗଲା';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return 'ୱାଲେଟରୁ $wallet, ଡେଲିଭରି ସମୟରେ $rest';
  }

  @override
  String get walletTopUpUnavailable =>
      'ବର୍ତ୍ତମାନ ଟଙ୍କା ଯୋଡ଼ିହେବ ନାହିଁ। ଦୟାକରି ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String walletFull(String limit) {
    return 'ଆପଣଙ୍କ ୱାଲେଟ ଏହାର $limit ସୀମାରେ ପହଞ୍ଚିଛି।';
  }

  @override
  String get searchAddressHint => 'ଅଞ୍ଚଳ, ରାସ୍ତା କିମ୍ବା ଚିହ୍ନ ଖୋଜନ୍ତୁ';

  @override
  String get selectLocationTitle => 'ଲୋକେସନ ବାଛନ୍ତୁ';

  @override
  String get useCurrentLocation => 'ବର୍ତ୍ତମାନ ଲୋକେସନ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get locatingYou => 'ଆପଣ କେଉଁଠି ଅଛନ୍ତି ଖୋଜୁଛୁ…';

  @override
  String get locationOffHint => 'ଏହା ବ୍ୟବହାର କରିବାକୁ ଲୋକେସନ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get savedAddressesHeading => 'ସଞ୍ଚିତ ଠିକଣା';

  @override
  String get recentLocationsHeading => 'ସାମ୍ପ୍ରତିକ ଲୋକେସନ';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ଡେଲିଭରି ଲୋକେସନ ବାଛନ୍ତୁ';

  @override
  String get movePinTooltip => 'ପିନକୁ ଆପଣଙ୍କ ସଠିକ ଡେଲିଭରି ସ୍ଥାନକୁ ଘୁଞ୍ଚାନ୍ତୁ';

  @override
  String get locatingPin => 'ଠିକଣା ଖୋଜୁଛୁ…';

  @override
  String get deliveryDetailsHeading => 'ଡେଲିଭରି ବିବରଣୀ';

  @override
  String get addressDetailsLabel => 'ଠିକଣା ବିବରଣୀ*';

  @override
  String get addressDetailsHint => 'ଯେପରି: ମହଲା, ଘର ନମ୍ବର';

  @override
  String get missingAreaHint =>
      'ଏହି ପିନର ପୂରା ଠିକଣା ପାଇପାରିଲୁ ନାହିଁ। ଦୟାକରି ବାକି ଅଂଶ ପୂରଣ କରନ୍ତୁ।';

  @override
  String get whoToContact => 'ଏହି ଡେଲିଭରି ପାଇଁ କାହା ସହ ଯୋଗାଯୋଗ କରିବୁ?';

  @override
  String get contactMyself => 'ମୁଁ ନିଜେ';

  @override
  String get contactSomeoneElse => 'ଅନ୍ୟ କେହି';

  @override
  String get receiverDetailsHeading => 'ଏହି ଠିକଣା ପାଇଁ ଗ୍ରହଣକାରୀଙ୍କ ବିବରଣୀ';

  @override
  String get receiverAddPrompt => 'ଗ୍ରହଣକାରୀଙ୍କ ନାମ ଓ ନମ୍ବର ଯୋଡ଼ନ୍ତୁ';

  @override
  String get receiverSheetTitle => 'ଗ୍ରହଣକାରୀଙ୍କ ବିବରଣୀ';

  @override
  String get doorPhotoHeading => 'ଦୁଆର/ବିଲ୍ଡିଂର ଫଟୋ (ଐଚ୍ଛିକ)';

  @override
  String get doorPhotoAdd => 'ଫଟୋ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get doorPhotoBody =>
      'ଏହା ଆମ ଡେଲିଭରି ପାର୍ଟନରଙ୍କୁ ଆପଣଙ୍କ ସଠିକ ସ୍ଥାନ ଶୀଘ୍ର ଖୋଜିବାରେ ସାହାଯ୍ୟ କରେ';

  @override
  String get doorPhotoChange => 'ବଦଳାନ୍ତୁ';

  @override
  String get doorPhotoRemove => 'ହଟାନ୍ତୁ';

  @override
  String get photoFromCamera => 'ଫଟୋ ଉଠାନ୍ତୁ';

  @override
  String get photoFromGallery => 'ଗ୍ୟାଲେରୀରୁ ବାଛନ୍ତୁ';

  @override
  String get photoUploaded => 'ଫଟୋ ଯୋଡ଼ାଗଲା';

  @override
  String get photoUploadFailed =>
      'ଫଟୋ ଅପଲୋଡ ହୋଇପାରିଲା ନାହିଁ। ଦୟାକରି ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get addressSavedPhotoFailed =>
      'ଠିକଣା ସଞ୍ଚିତ ହେଲା। ଫଟୋ ଅପଲୋଡ ହୋଇପାରିଲା ନାହିଁ।';

  @override
  String get removePhotoLabel => 'ଫଟୋ ହଟାନ୍ତୁ';

  @override
  String get photoRemoved => 'ଫଟୋ ହଟାଗଲା';

  @override
  String get shareLabel => 'ସେୟାର କରନ୍ତୁ';

  @override
  String get addDoorPhotoLabel => 'ଦୁଆରର ଫଟୋ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get searchAddressNoResults =>
      'କୌଣସି ସ୍ଥାନ ମିଳିଲା ନାହିଁ। ନିକଟସ୍ଥ ଚିହ୍ନ, ଅଞ୍ଚଳ ନାମ କିମ୍ବା ପିନ କୋଡ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get clearLabel => 'ଖାଲି କରନ୍ତୁ';

  @override
  String get trackingArrivingNow => 'ଏବେ ପହଞ୍ଚୁଛି';

  @override
  String get trackingLive => 'ଲାଇଭ';

  @override
  String get trackingStepConfirmed => 'ନିଶ୍ଚିତ';

  @override
  String get trackingStepPreparing => 'ପ୍ରସ୍ତୁତ ହେଉଛି';

  @override
  String get trackingStepOnTheWay => 'ରାସ୍ତାରେ';

  @override
  String get trackingStepDelivered => 'ଡେଲିଭର ହେଲା';

  @override
  String get trackingFindingRider => 'ଡେଲିଭରି ପାର୍ଟନର ନିଯୁକ୍ତ କରାଯାଉଛି…';

  @override
  String get trackingPinYou => 'ଆପଣ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance ଦୂରରେ ଅଛନ୍ତି';
  }

  @override
  String trackingMessageRider(String name) {
    return '$nameଙ୍କୁ ମେସେଜ କରନ୍ତୁ';
  }

  @override
  String get trackingDeliveringTo => 'ଡେଲିଭରି ଠିକଣା';

  @override
  String get trackingOrderDetails => 'ଅର୍ଡର ବିବରଣୀ';

  @override
  String get dispatchSearching => 'ରେଷ୍ଟୁରାଣ୍ଟ ନିକଟରେ ଡେଲିଭରି ପାର୍ଟନର ଖୋଜୁଛୁ…';

  @override
  String get dispatchNoRider =>
      'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଡେଲିଭରି ପାର୍ଟନର ଏହା ନେଇନାହାନ୍ତି। ଆମ ଟିମ ଏବେ ଜଣଙ୍କୁ ନିଯୁକ୍ତ କରୁଛି।';

  @override
  String get vehicleBike => 'ବାଇକ';

  @override
  String get vehicleScooter => 'ସ୍କୁଟର';

  @override
  String get vehicleBicycle => 'ସାଇକେଲ';

  @override
  String get vehicleElectric => 'ଇଲେକ୍ଟ୍ରିକ ସ୍କୁଟର';

  @override
  String get exitTitle => 'Nexmile ରୁ ବାହାରିବେ?';

  @override
  String get exitBody => 'ଆପଣ ନିଶ୍ଚିତ ଭାବେ ଆପ୍ ବନ୍ଦ କରିବାକୁ ଚାହାଁନ୍ତି କି?';

  @override
  String get exitConfirm => 'ବାହାରନ୍ତୁ';

  @override
  String cartSavedBanner(String amount) {
    return 'ଏହି ଅର୍ଡରରେ ଆପଣଙ୍କ $amount ବଞ୍ଚିଲା';
  }

  @override
  String get cartAddMoreItems => 'ଆଉ ଜିନିଷ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get cartAddNote => 'ରେଷ୍ଟୁରାଣ୍ଟ ପାଇଁ ଟିପ୍ପଣୀ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get cartOrderNoteHint =>
      'ଯେପରି: କୌଣସି ଜିନିଷରେ ପିଆଜ କିମ୍ବା ରସୁଣ ଦିଅନ୍ତୁ ନାହିଁ';

  @override
  String get cartNoteSave => 'ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get cartNoCutlery => 'ଚାମଚ-କଣ୍ଟା ପଠାନ୍ତୁ ନାହିଁ';

  @override
  String get cartNoCutleryThanks =>
      'ପ୍ଲାଷ୍ଟିକ ଆବର୍ଜନା କମାଇବାରେ ସାହାଯ୍ୟ ପାଇଁ ଧନ୍ୟବାଦ';

  @override
  String get cartSavingsCorner => 'ସଞ୍ଚୟ କର୍ଣ୍ଣର';

  @override
  String get cartDeliveryInstructions => 'ଡେଲିଭରି ନିର୍ଦ୍ଦେଶ';

  @override
  String get cartInstructionsRider =>
      'ଏସବୁ କେବଳ ଆପଣଙ୍କ ଡେଲିଭରୀ ପାର୍ଟନର ଦେଖନ୍ତି';

  @override
  String get instructionLeaveAtDoor => 'ଦୁଆରେ ରଖିଦିଅନ୍ତୁ';

  @override
  String get instructionNoBell => 'ଘଣ୍ଟି ବଜାନ୍ତୁ ନାହିଁ';

  @override
  String get instructionNoCall => 'କଲ କରନ୍ତୁ ନାହିଁ';

  @override
  String get instructionSecurity => 'ସିକ୍ୟୁରିଟିଙ୍କ ପାଖରେ ଦିଅନ୍ତୁ';

  @override
  String get instructionPet => 'ଘରେ ପୋଷା ଜନ୍ତୁ ଅଛି';

  @override
  String get cartInclTaxes => 'କର ଓ ଶୁଳ୍କ ସମେତ';

  @override
  String cartSavedTag(String amount) {
    return '$amount ବଞ୍ଚିଲା';
  }

  @override
  String get cartPayUsing => 'ଦେୟ ମାଧ୍ୟମ';

  @override
  String get cartWalletAndCash => 'ୱାଲେଟ + ନଗଦ';

  @override
  String cartCashRest(String amount) {
    return 'ପହଞ୍ଚିଲେ $amount ଦିଅନ୍ତୁ';
  }

  @override
  String get cartCashFull => 'ଅର୍ଡର ପହଞ୍ଚିଲେ ଦେୟ ଦିଅନ୍ତୁ';

  @override
  String get cartCashNothing => 'ଡେଲିଭରି ସମୟରେ କିଛି ଦେବାକୁ ନାହିଁ';

  @override
  String get cartTotal => 'ମୋଟ';

  @override
  String get cartPlaceOrder => 'ଅର୍ଡର କରନ୍ତୁ';

  @override
  String cartDeliverTo(String place) {
    return '$place କୁ ଡେଲିଭରି';
  }

  @override
  String get cartChange => 'ବଦଳାନ୍ତୁ';

  @override
  String get cartNoAddress => 'କେଉଁଠାରେ ଡେଲିଭରି କରିବୁ?';

  @override
  String get cartNoAddressHint => 'ଅର୍ଡର କରିବାକୁ ଗୋଟିଏ ଠିକଣା ଯୋଡ଼ନ୍ତୁ';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurantରୁ ନିଜେ ନିଅନ୍ତୁ';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'ପ୍ରାୟ $minutes ମିନିଟରେ ପ୍ରସ୍ତୁତ';
  }

  @override
  String get cartChooseAddress => 'ଡେଲିଭରି ଠିକଣା ବାଛନ୍ତୁ';

  @override
  String get cartDone => 'ହୋଇଗଲା';

  @override
  String get supportTitle => 'Nexmile ସହାୟତା';

  @override
  String get supportBubble => 'ସାହାଯ୍ୟ';

  @override
  String get supportAiLabel => 'AI ସହାୟକ';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ଟିମ';
  }

  @override
  String get supportDemoBanner =>
      'ଡେମୋ: ଏହି ଉତ୍ତରଗୁଡ଼ିକ ନମୁନା। ପ୍ରକୃତ ସହାୟକ ଏପର୍ଯ୍ୟନ୍ତ ସଂଯୁକ୍ତ ହୋଇନାହିଁ।';

  @override
  String get supportEmptyTitle => 'ଆମେ କିପରି ସାହାଯ୍ୟ କରିପାରିବୁ?';

  @override
  String get supportEmptyBody =>
      'ଅର୍ଡର, ଦେୟ କିମ୍ବା ଅନ୍ୟ ଯେକୌଣସି ବିଷୟରେ ପଚାରନ୍ତୁ। ପ୍ରଥମେ ଆମ AI ସହାୟକ ଉତ୍ତର ଦିଏ, ଏବଂ ଏହା ସାହାଯ୍ୟ କରିନପାରିଲେ ଆମ ଟିମର ଜଣେ ବ୍ୟକ୍ତି ଦାୟିତ୍ୱ ନିଅନ୍ତି।';

  @override
  String get supportSuggestWhere => 'ମୋ ଅର୍ଡର କେଉଁଠି ଅଛି?';

  @override
  String get supportSuggestMissing => 'କିଛି ଜିନିଷ ମିଳିନାହିଁ';

  @override
  String get supportSuggestRefund => 'ଫେରସ୍ତ ବିଷୟରେ ମୋର ଏକ ପ୍ରଶ୍ନ ଅଛି';

  @override
  String get supportComposerHint => 'ମେସେଜ ଟାଇପ କରନ୍ତୁ';

  @override
  String get supportSend => 'ପଠାନ୍ତୁ';

  @override
  String get supportTyping => 'AI ସହାୟକ ଟାଇପ କରୁଛି…';

  @override
  String get supportNotSent => 'ପଠାଯାଇନାହିଁ';

  @override
  String get supportTookTooLong => 'ବହୁତ ସମୟ ଲାଗିଗଲା।';

  @override
  String get supportSlowDown => 'ଆଉ ପଠାଇବା ପୂର୍ବରୁ ଟିକେ ଅପେକ୍ଷା କରନ୍ତୁ।';

  @override
  String get supportUnreachable =>
      'ବର୍ତ୍ତମାନ ଚାଟ ସହ ସଂଯୋଗ ହୋଇପାରୁନାହିଁ। ଆମକୁ କଲ କରନ୍ତୁ, କିମ୍ବା କିଛି ମିନିଟ ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get supportOffline => 'ଆପଣ ଅଫଲାଇନ ଅଛନ୍ତି। ଏହା ଆପଣଙ୍କ ଶେଷ ସଞ୍ଚିତ ଚାଟ।';

  @override
  String get supportClosed => 'ଏହି ଚାଟ ବନ୍ଦ ହୋଇଯାଇଛି।';

  @override
  String get supportStartNew => 'ନୂଆ ଚାଟ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get supportTalkToPerson => 'ଜଣେ ବ୍ୟକ୍ତିଙ୍କ ସହ କଥା ହୁଅନ୍ତୁ';

  @override
  String get supportMarkSolved => 'ସମାଧାନ ହୋଇଗଲା';

  @override
  String get supportHelpful => 'ଉପଯୋଗୀ';

  @override
  String get supportNotHelpful => 'ଉପଯୋଗୀ ନୁହେଁ';

  @override
  String get supportNeedHelp => 'ସାହାଯ୍ୟ ଦରକାର?';

  @override
  String get supportChatWithUs => 'ଆମ ସହ ଚାଟ କରନ୍ତୁ';

  @override
  String get supportChatWithUsBody =>
      'ଆମ AI ସହାୟକ କିଛି ସେକେଣ୍ଡରେ ଉତ୍ତର ଦିଏ, ଏବଂ ଆବଶ୍ୟକ ହେଲେ ଜଣେ ବ୍ୟକ୍ତି ଦାୟିତ୍ୱ ନିଅନ୍ତି।';

  @override
  String get supportActionFailed => 'ଏହା ହୋଇପାରିଲା ନାହିଁ। ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get restaurantNew => 'ନୂଆ';

  @override
  String get walletHideBalance => 'ବାଲାନ୍ସ ଲୁଚାନ୍ତୁ';

  @override
  String get walletShowBalance => 'ବାଲାନ୍ସ ଦେଖାନ୍ତୁ';

  @override
  String get walletBalanceHiddenLabel => 'ବାଲାନ୍ସ ଲୁଚାଯାଇଛି';

  @override
  String walletUpdatedAt(String time) {
    return '$time ରେ ଅପଡେଟ ହୋଇଛି';
  }

  @override
  String walletBelowMin(String amount) {
    return 'ସର୍ବନିମ୍ନ $amount ଯୋଡ଼ନ୍ତୁ';
  }

  @override
  String walletAboveMax(String amount) {
    return 'ଆପଣ ସର୍ବାଧିକ $amount ଯୋଡ଼ିପାରିବେ';
  }

  @override
  String get walletOpeningPayment => 'ଦେୟ ଖୋଲାଯାଉଛି…';

  @override
  String get walletConfirmingPayment => 'ଦେୟ ନିଶ୍ଚିତ କରାଯାଉଛି…';

  @override
  String get walletTransactions => 'କାରବାର';

  @override
  String get walletFilterAll => 'ସବୁ';

  @override
  String get walletFilterAdded => 'ଟଙ୍କା ଯୋଡ଼ାଗଲା';

  @override
  String get walletFilterSpent => 'ଟଙ୍କା ଖର୍ଚ୍ଚ ହେଲା';

  @override
  String get walletSearch => 'ଖୋଜନ୍ତୁ';

  @override
  String get walletSearchHint => 'ଅର୍ଡର ନମ୍ବର କିମ୍ବା ID ଖୋଜନ୍ତୁ';

  @override
  String get walletDateFilter => 'ତାରିଖ ଅନୁସାରେ ଫିଲ୍ଟର କରନ୍ତୁ';

  @override
  String get walletClearFilters => 'ଫିଲ୍ଟର ହଟାନ୍ତୁ';

  @override
  String get walletNoMatches => 'ଆପଣଙ୍କ ଫିଲ୍ଟର ସହ କୌଣସି କାରବାର ମେଳ ଖାଉନାହିଁ';

  @override
  String get walletEmptyTitle => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି କାରବାର ନାହିଁ';

  @override
  String get walletEmptyBody =>
      'ଆପଣ ଯୋଡ଼ିଥିବା, ଅର୍ଡରରେ ଖର୍ଚ୍ଚ କରିଥିବା କିମ୍ବା ଫେରସ୍ତ ଭାବେ ପାଇଥିବା ଟଙ୍କା ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get walletToday => 'ଆଜି';

  @override
  String get walletYesterday => 'ଗତକାଲି';

  @override
  String walletLatestOnly(int count) {
    return 'ଆପଣଙ୍କ ସାମ୍ପ୍ରତିକ $countଟି କାରବାର ଦେଖାଯାଉଛି';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'ଅର୍ଡର $number ପାଇଁ ଫେରସ୍ତ';
  }

  @override
  String get walletDetailsTitle => 'କାରବାର ବିବରଣୀ';

  @override
  String get walletDetailDate => 'ତାରିଖ ଓ ସମୟ';

  @override
  String get walletDetailId => 'କାରବାର ID';

  @override
  String get walletDetailType => 'ପ୍ରକାର';

  @override
  String get walletDetailMethod => 'ଦେୟ ମାଧ୍ୟମ';

  @override
  String get walletDetailStatus => 'ସ୍ଥିତି';

  @override
  String get walletDetailOrder => 'ଅର୍ଡର';

  @override
  String get walletDetailReference => 'ଦେୟ ରେଫରେନ୍ସ';

  @override
  String get walletDetailBalanceAfter => 'କାରବାର ପରେ ବାଲାନ୍ସ';

  @override
  String get walletCredit => 'କ୍ରେଡିଟ';

  @override
  String get walletDebit => 'ଡେବିଟ';

  @override
  String get walletStatusSuccess => 'ସଫଳ';

  @override
  String get walletStatusPending => 'ବିଚାରାଧୀନ';

  @override
  String get walletStatusFailed => 'ବିଫଳ';

  @override
  String get walletMethodOnline => 'ଅନଲାଇନ ଦେୟ';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'କାର୍ଡ';

  @override
  String get walletMethodNetbanking => 'ନେଟ ବ୍ୟାଙ୍କିଂ';

  @override
  String get walletMethodRefund => 'ୱାଲେଟକୁ ଫେରସ୍ତ';

  @override
  String get walletCopyId => 'ID କପି କରନ୍ତୁ';

  @override
  String get walletIdCopied => 'କାରବାର ID କପି ହେଲା';

  @override
  String get walletShareDetails => 'ବିବରଣୀ ସେୟାର କରନ୍ତୁ';
}
