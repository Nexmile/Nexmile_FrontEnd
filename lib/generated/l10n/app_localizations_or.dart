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
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

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
  String get riderLocationStale => 'Updating rider\'s location…';

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
