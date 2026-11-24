// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kashmiri (`ks`).
class AppLocalizationsKs extends AppLocalizations {
  AppLocalizationsKs([String locale = 'ks']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'یہ خانہٕ چھُ ضروری';

  @override
  String get tagline => 'تیز ڈیلیوری۔ تازٕ مُسکراہٹ۔';

  @override
  String get chooseLanguageTitle => 'پنُن زبان ژارٕو';

  @override
  String get chooseLanguageSubtitle =>
      'یِم زبان چھِوٕ آسان محسوس کران سُہ ژارٕو۔ توہہِ ہیٚکِو یہ کُنہِ وقتہٕ سیٹِنگز منٛز بدلاوِتھ۔';

  @override
  String get searchLanguageHint => 'زبان ژھانڈٕو';

  @override
  String get noLanguageFound => 'کانہہ زبان نہ لبنہٕ آیہ';

  @override
  String languagesAvailable(int count) {
    return '$count زباناہ چھِ دستیاب';
  }

  @override
  String get continueLabel => 'برونہہ گژھِو';

  @override
  String get selectedLabel => 'ژارنہٕ آمُت';

  @override
  String get defaultLabel => 'ڈیفالٹ';

  @override
  String get homeTitle => 'Nexmile منٛز خوش آمدید';

  @override
  String get homeSubtitle =>
      'تازٕ گروسری، گرٕم کھَنہٕ تہٕ روزمرٕ ضرورتہٕ توہنٛدِن نزدیٚکی دُکانن پؠٹھٕ۔';

  @override
  String get changeLanguage => 'زبان بدلاوٕو';

  @override
  String get languageUpdated => 'زبان آیہ بدلاونہٕ';

  @override
  String get appLanguageLabel => 'ایپ زبان';

  @override
  String greetingNamed(String name) {
    return 'آداب، $name';
  }

  @override
  String get loginTitle => 'Nexmile منٛز سائن اِن کرِو';

  @override
  String get loginSubtitle =>
      'پنُن ای میل یا موبائل نمبر لیٚکھِو، اسہٕ سوزو توہہِ تصدیقی کوڈ۔';

  @override
  String get emailOrPhoneLabel => 'ای میل یا موبائل نمبر';

  @override
  String get emailOrPhoneHint => 'name@example.com یا 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'صحیح ای میل پتہٕ یا 10 ہندسن ہُند موبائل نمبر لیٚکھِو';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'کوڈ سوزِو';

  @override
  String get agreeToTermsOnContinue =>
      'برونہہ گژھِتھ چھِوٕ توہہِ ساني سروس شرطن تہٕ پرائیویسی پالیسی سٕتؠ رٲضی گژھان۔';

  @override
  String get otpTitle => 'تصدیق کرِو زِ یہ چھِوٕ توہہِ';

  @override
  String otpSubtitle(String target) {
    return '$target پؠٹھٕ سوزنہٕ آمُت 6 ہندسن ہُند کوڈ لیٚکھِو';
  }

  @override
  String get verifyCode => 'تصدیق کرِو';

  @override
  String get resendCode => 'کوڈ دوبارٕ سوزِو';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds سیکنڈن منٛز دوبارٕ سوزِو';
  }

  @override
  String get codeResent => 'نوٚو کوڈ آو سوزنہٕ';

  @override
  String get incorrectCode =>
      'یہ کوڈ چھُ غلط یا اَمِ ہُند وقت چھُ گۆمُت۔ نوٚو کوڈ ژھۆنڈِو۔';

  @override
  String get enterFullCode => 'پورٕ 6 ہندسہٕ لیٚکھِو';

  @override
  String get accountSuspended =>
      'یہ کھاتہٕ چھُ معطل کرنہٕ آمُت۔ مہربٲنی کٔرِتھ سپورٹ سٕتؠ رٲبطہٕ کرِو۔';

  @override
  String get tooManyAttempts =>
      'زیادٕ کوششہٕ آیہ کرنہٕ۔ مہربٲنی کٔرِتھ کینٛہہ وقتہٕ پتہٕ دوبارٕ کوشش کرِو۔';

  @override
  String get sessionExpired =>
      'توہنٛد سیشن چھُ ختم گۆمُت۔ مہربٲنی کٔرِتھ دوبارٕ سائن اِن کرِو۔';

  @override
  String get networkError =>
      'انٹرنیٹ کنکشن چھُ نہ۔ پنُن کنکشن چیک کٔرِتھ دوبارٕ کوشش کرِو۔';

  @override
  String get developmentCode => 'ڈیویلپمنٹ کوڈ';

  @override
  String get signOut => 'سائن آوٹ';

  @override
  String get signedOut => 'توہہِ چھِوٕ سائن آوٹ گژھمٕتؠ';

  @override
  String get somethingWentWrong =>
      'کینٛہہ غلط گو۔ مہربٲنی کٔرِتھ دوبارٕ کوشش کرِو۔';

  @override
  String get profileTitle => 'پروفائل';

  @override
  String get viewProfile => 'پروفائل وُچھِو';

  @override
  String get nameLabel => 'ناو';

  @override
  String get emailLabel => 'ای میل';

  @override
  String get mobileLabel => 'موبائل نمبر';

  @override
  String get accountStatusLabel => 'کھاتہٕ حالت';

  @override
  String get statusActive => 'فعال';

  @override
  String get statusPending => 'زیرِ التوا';

  @override
  String get statusSuspended => 'معطل';

  @override
  String get verifiedLabel => 'تصدیق شُدٕ';

  @override
  String get notProvided => 'شٲمِل کرنہٕ نہ آمُت';

  @override
  String get retry => 'دوبارٕ کوشش کرِو';

  @override
  String get navHome => 'ہوم';

  @override
  String get navSearch => 'ژھانڈٕو';

  @override
  String get navOrders => 'آرڈر';

  @override
  String get cancelLabel => 'منسوخ کرِو';

  @override
  String get deliverTo => 'ڈیلیوری پتہٕ';

  @override
  String get searchDishesHint => 'کھَنہٕ یا ریسٹورنٹ ژھانڈٕو';

  @override
  String get searchTitle => 'ژھانڈٕو';

  @override
  String get searchNoResultsTitle => 'کینٛہہ نہ لبنہٕ آو';

  @override
  String get searchNoResultsSubtitle =>
      'بیٚاکھ کھَنہٕ، پکاونُک طریقہٕ یا ریسٹورنٹ ناو آزماوِو۔';

  @override
  String get cravingTitle => 'اَز کیٚاہ کھیٚنُک دِل چھُ؟';

  @override
  String get offersTitle => 'توہہِ خٲطرٕ آفر';

  @override
  String get restaurantsNearby => 'توہنٛدِن نزدیٚکی ریسٹورنٹ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ریستوران',
      one: '1 ریستوران',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'یَتہِ چھُ ناوُ کینٛہہ نہ';

  @override
  String get noRestaurantsSubtitle => 'بیٚاکھ قِسم وُچھِو یا فلٹر ہٹاوِو۔';

  @override
  String minutesAway(int minutes) {
    return '$minutes مِنٹ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance کِلومیٹر';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ریٹنگ',
      one: '1 ریٹنگ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'زٕن خٲطرٕ ₹$amount';
  }

  @override
  String get freeDelivery => 'مُفت ڈیلیوری';

  @override
  String percentOff(int percent) {
    return '$percent% رعایت';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'توہنٛدِس آرڈرس پؠٹھٕ $percent% رعایت';
  }

  @override
  String get vegOnly => 'صرف سبزی';

  @override
  String get bestseller => 'سٲری خۄتہٕ زیادٕ ووٚنمُت';

  @override
  String get addLabel => 'شٲمِل';

  @override
  String get noVegDishesTitle => 'یَتہِ چھِ نہ سبزی کھَنہٕ';

  @override
  String get noVegDishesSubtitle =>
      'پورٕ مینو وُچھنہٕ خٲطرٕ سبزی فلٹر بند کرِو۔';

  @override
  String get replaceCartTitle => 'نوٚو کارٹ شُروع کرٕو؟';

  @override
  String replaceCartMessage(String restaurant) {
    return 'توہنٛدِس کارٹس منٛز چھِ $restaurant ہٕنٛدؠ چیٖز۔ یہ شٲمِل کٔرِتھ گژھن تِم ہٹاونہٕ۔';
  }

  @override
  String get replaceCartConfirm => 'ہٹٲوِتھ شٲمِل کرِو';

  @override
  String get cartTitle => 'توہنٛد کارٹ';

  @override
  String get cartEmptyTitle => 'توہنٛد کارٹ چھُ خٲلی';

  @override
  String get cartEmptySubtitle =>
      'شُروع کرنہٕ خٲطرٕ کُنہِ ریسٹورنٹ پؠٹھٕ کھَنہٕ شٲمِل کرِو۔';

  @override
  String get browseRestaurants => 'ریسٹورنٹ وُچھِو';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count چیزٕ',
      one: '1 چیز',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'کارٹ وُچھِو';

  @override
  String get itemTotal => 'چیٖزَن ہُند کُل';

  @override
  String get deliveryFeeLabel => 'ڈیلیوری فیٖس';

  @override
  String get taxesAndCharges => 'ٹیکس تہٕ چارجہٕ';

  @override
  String get freeLabel => 'مُفت';

  @override
  String get toPay => 'أدا کرُن';

  @override
  String placeOrderFor(String amount) {
    return 'آرڈر کرِو · $amount';
  }

  @override
  String get ordersTitle => 'توہنٛدؠ آرڈر';

  @override
  String get ordersEmptyTitle => 'ناوُ کانہہ آرڈر نہ';

  @override
  String get ordersEmptySubtitle =>
      'توہنٛدؠ برونہہ کٕنؠ آرڈر ییٚنہٕ یَتہِ ہاونہٕ۔';

  @override
  String get reorder => 'دوبارٕ آرڈر';

  @override
  String orderTitle(String id) {
    return 'آرڈر $id';
  }

  @override
  String get orderPlacedTitle => 'آرڈر گو';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'تخمیناً $minutes مِنٹن منٛز پکھِ۔';
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
  String get orderDeliveredTitle => 'ڈیلیور گو';

  @override
  String get orderDeliveredSubtitle => 'کھَنہٕ کھیٚو تہٕ مزٕ لِیو۔';

  @override
  String get statusOrderPlaced => 'آرڈر گو';

  @override
  String get statusPreparing => 'کھَنہٕ چھُ تیار گژھان';

  @override
  String get statusOnTheWay => 'وَتہِ پؠٹھٕ چھُ';

  @override
  String get statusDelivered => 'ڈیلیور گو';

  @override
  String get keepBrowsing => 'وُچھان رۄزِو';

  @override
  String get backToHome => 'ہوم کُن واپس';

  @override
  String get prototypeNotice =>
      'نمونہٕ سٹور فرنٹ — اصلی دُکان ییٚنہٕ کیٹلاگ API سٕتؠ۔';

  @override
  String get prototypeCheckoutNotice =>
      'یہ چھُ اکھ پروٹوٹائپ۔ کانہہ أدایگی چھِ نہ ییٚنہٕ ہیٚنہٕ تہٕ نہ کانہہ اصلی آرڈر چھُ گژھان۔';

  @override
  String get prototypeTrackingNotice => 'پروٹوٹائپ خٲطرٕ چھُ ٹریکِنگ مصنوعی۔';

  @override
  String get locationTitle => 'ڈیلیوری کۄتہٕ کرٕو؟';

  @override
  String get locationSubtitle =>
      'Nexmile کران چھُ صرف 1 کِلومیٹر اندر ہٕنٛدین دُکانن پؠٹھٕ ڈیلیوری، تہٕ امہِ خٲطرٕ چھُ توہنٛد صحیح جاے ضروری۔';

  @override
  String get locationReasonRadiusTitle => '1 کِلومیٹر اندر ہٕنٛدؠ دُکان';

  @override
  String get locationReasonRadiusBody =>
      'أسؠ چھِ صرف تِم باورچی خانہٕ ہاوان یَتہِ پؠٹھٕ کھَنہٕ گرٕم پکھِ۔';

  @override
  String get locationReasonAccuracyTitle => 'بالکل صحیح دَروازس تام';

  @override
  String get locationReasonAccuracyBody =>
      'صحیح پِن آسِتھ چھُ ڈیلیوری پارٹنر فون کٔرِتھ بغٲر توہہِ تام واتان۔';

  @override
  String get locationReasonPrivacyTitle => 'صرف ایپ استعمال کران وقتہٕ';

  @override
  String get locationReasonPrivacyBody =>
      'أسؠ چھِ نہ پس منظرس منٛز توہہِ ٹریک کران، تہٕ پتہٕ ہیٚکِو توہہِ پانہٕ تہِ لیٚکھِتھ۔';

  @override
  String get allowLocation => 'جاے ہٕنٛز اجازت دِیِو';

  @override
  String get enterAddressManually => 'بہٕ لیٚکھہٕ پتہٕ پانہٕ';

  @override
  String get locationDenied =>
      'جاے ہٕنٛز اجازت نہ میٚلہ۔ توہہِ ہیٚکِو پِن پانہٕ ٹھٲوِتھ۔';

  @override
  String get locationDeniedForever =>
      'Nexmile خٲطرٕ چھُ جاے بند۔ سیٹِنگز منٛز کھولٕو یا پِن پانہٕ ٹھٲوِو۔';

  @override
  String get locationServiceOff => 'امہِ ڈیوائسس پؠٹھٕ چھُ جاے بند۔';

  @override
  String get locationUnavailable =>
      'جاے نہ لبنہٕ آیہ۔ مہربٲنی کٔرِتھ پِن پانہٕ ٹھٲوِو۔';

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
  String get openSettings => 'سیٹِنگز';

  @override
  String get pinLocationTitle => 'پنُن ڈیلیوری پِن ٹھٲوِو';

  @override
  String get deliveryRadiusHint =>
      'دٲیرٕ چھُ سُہ 1 کِلومیٹر ہاوان یَتہِ منٛز Nexmile ڈیلیوری کران چھُ۔';

  @override
  String get useMyLocation => 'میٚون جاے استعمال کرِو';

  @override
  String get deliveringHere => 'یَتہِ ڈیلیوری';

  @override
  String get dragToAdjust => 'پِن بدلاونہٕ خٲطرٕ نقشہٕ ژَلٕو';

  @override
  String get confirmLocation => 'جاے تصدیق کرِو';

  @override
  String get addressDetailsTitle => 'پتہٕ تفصیل';

  @override
  String get addressDetailsSubtitle =>
      'صحیح دَروازس تام واتنہٕ خٲطرٕ گَرٕ نمبر تہٕ نِشٲنی شٲمِل کرِو۔';

  @override
  String get pinnedLocation => 'ژارنہٕ آمٕژ جاے';

  @override
  String get changePin => 'بدلاوِو';

  @override
  String get saveAddressAs => 'یہ پتہٕ ییٚتھ کٔرِتھ محفوظ کرِو';

  @override
  String get labelHome => 'گَرٕ';

  @override
  String get labelWork => 'دفتر';

  @override
  String get labelOther => 'بیٚاکھ';

  @override
  String get addressLine1Label => 'گَرٕ، فلیٹ یا عمارت';

  @override
  String get addressLine1Hint => '12A، گریٖن ریزیڈنسی';

  @override
  String get addressLine2Label => 'گلی یا علاقہٕ';

  @override
  String get addressLine2Hint => 'دۆیِم ایونیو، اَنا نگر';

  @override
  String get landmarkLabel => 'نِشٲنی';

  @override
  String get landmarkHint => 'بس اسٹاپُک برونٛہہ';

  @override
  String get cityLabel => 'شہر';

  @override
  String get stateLabel => 'ریاست';

  @override
  String get pincodeLabel => 'پِن کوڈ';

  @override
  String get invalidPincode => 'صحیح 6 ہندسن ہُند پِن کوڈ لیٚکھِو';

  @override
  String get contactNameLabel => 'رٲبطہٕ ناو';

  @override
  String get contactPhoneLabel => 'رٲبطہٕ نمبر';

  @override
  String get invalidMobileNumber => 'صحیح 10 ہندسن ہُند موبائل نمبر لیٚکھِو';

  @override
  String get makeDefaultAddress => 'ڈیفالٹ طور یَتہِ ای ڈیلیوری';

  @override
  String get saveAddress => 'پتہٕ محفوظ کرِو';

  @override
  String get addressSaved => 'پتہٕ آو محفوظ کرنہٕ';

  @override
  String get addressBookTitle => 'ڈیلیوری پتہٕ';

  @override
  String get manageAddresses => 'محفوظ پتہٕ سنبالٕو';

  @override
  String get noAddressesTitle => 'ناوُ کانہہ پتہٕ نہ';

  @override
  String get noAddressesSubtitle =>
      'اَکھ پتہٕ شٲمِل کرِو تہٕ أسؠ ہیٚکَو توہہِ تام ڈیلیوری کران وٲلؠ دُکان ہٲوِتھ۔';

  @override
  String get addAddress => 'پتہٕ شٲمِل کرِو';

  @override
  String get setAsDefault => 'ڈیفالٹ بناوِو';

  @override
  String get editLabel => 'تبدیٖلی کرِو';

  @override
  String get addressUpdated => 'پتہٕ آو اپ ڈیٹ کرنہٕ';

  @override
  String get deleteLabel => 'مِٹاوِو';

  @override
  String get deleteAddressTitle => 'یہ پتہٕ مِٹاوٕو؟';

  @override
  String get deleteAddressMessage =>
      'توہہِ ہیٚکِو یہ پتہٕ دوبارٕ شٲمِل کٔرِتھ۔';

  @override
  String get rescueDealsTitle => 'فوڈ ریسکیو';

  @override
  String get notTakingOrders => 'آرڈر چھِ نہ ہیوان';

  @override
  String get closedRightNow => 'وُنی چھُ بند';

  @override
  String minimumOrder(String amount) {
    return 'کم از کم $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count باقی';
  }

  @override
  String get soldOut => 'ختم گو';

  @override
  String get menuEmptyTitle => 'وُنی چھُ نہ کینہہ کھانہٕ';

  @override
  String get menuEmptySubtitle => 'یَتھ ریستوران چھُنہ پنُن مینو رٹِمُت۔';

  @override
  String get moreDishesTitle => 'زیادٕ کھانہٕ';

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
  String get customisable => 'پننِس پسندٕ مطابق';

  @override
  String get requiredLabel => 'ضروری';

  @override
  String get optionalLabel => 'اختیاری';

  @override
  String get chooseOne => 'اکھ ژارٕو';

  @override
  String chooseUpTo(int count) {
    return 'زیادٕ کھۄتہ زیادٕ $count ژارٕو';
  }

  @override
  String chooseAtLeast(int count) {
    return 'کم از کم $count ژارٕو';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min پؠٹھٕ $max تام ژارٕو';
  }

  @override
  String get specialInstructions => 'خاص ہدایژ';

  @override
  String get specialInstructionsHint => 'کم مرچ، گَندٕ نہٕ…';

  @override
  String addForAmount(String amount) {
    return 'شامل کریو · $amount';
  }

  @override
  String get deliveryLabel => 'ڈیلیوری';

  @override
  String get pickupLabel => 'پانہٕ ہیون';

  @override
  String get packagingLabel => 'پیکنگ';

  @override
  String get discountLabel => 'رعایژ';

  @override
  String get billDetailsTitle => 'بلٕچ تفصیل';

  @override
  String get clearCart => 'کارٹ خالی کریو';

  @override
  String get clearCartTitle => 'یہ کارٹ خالی کریو؟';

  @override
  String get clearCartMessage => 'یَتھ منٛز چھُ سٲری کینہہ ہٹاون یِوان۔';

  @override
  String unavailableItemsNotice(String items) {
    return 'وُنی چھُنہ دستیاب: $items';
  }

  @override
  String get removeUnavailable => 'تِم ہٹاویو';

  @override
  String minimumNotMet(String amount) {
    return 'کم از کم آرڈر چھُ $amount';
  }

  @override
  String get checkoutTitle => 'چیک آؤٹ';

  @override
  String get deliveryAddressLabel => 'ڈیلیوری ایڈریس';

  @override
  String get noAddressSelected => 'کانہہ ایڈریس چھُنہ ژارمُت';

  @override
  String get paymentMethodLabel => 'ادایگی';

  @override
  String get payOnDelivery => 'ڈیلیوری وقتہٕ نقد';

  @override
  String get noteToRestaurant => 'ریستورانس خٲطرٕ نوٹ';

  @override
  String get noteToRestaurantHint => 'گھنٹی زٕ لٹہٕ بجٲویو…';

  @override
  String get activeOrdersTitle => 'جاری آرڈر';

  @override
  String get pastOrdersTitle => 'پرانہ آرڈر';

  @override
  String get orderItemsTitle => 'کھانہٕ';

  @override
  String get orderProgressTitle => 'پیش رفت';

  @override
  String get arrivingIn => 'وۄتنس منٛز';

  @override
  String get pickupCodeLabel => 'پک اپ کوڈ';

  @override
  String get cancellationReasonLabel => 'منسوخ گژھنُک وجہ';

  @override
  String get riderLabel => 'ڈیلیوری پارٹنر';

  @override
  String get callRider => 'کال کریو';

  @override
  String get trackRider => 'رائِڈر ٹریک کریو';

  @override
  String get riderLocationSoon =>
      'آرڈر ہیتھ پتہٕ رائِڈرُک مقام یَتہِ ہیکہِ ظاہر گژھِتھ۔';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'رائِڈرَس پؠٹھ مرکوز کریو';

  @override
  String get viewInvoice => 'ٹیکس انوائس';

  @override
  String get cancelOrder => 'آرڈر منسوخ کریو';

  @override
  String get cancelOrderTitle => 'یہ آرڈر منسوخ کریو؟';

  @override
  String get cancelOrderMessage =>
      'ریستوران قبول کرنہٕ برونٛہہ ہی ہیکو منسوخ کٕرِتھ۔';

  @override
  String get cancelReasonLabel => 'وجہ';

  @override
  String get cancelReasonFallback => 'گاہکن کور منسوخ';

  @override
  String get orderCancelled => 'آرڈر گو منسوخ';

  @override
  String get currentLocationLabel => 'موجودٕ جاے';

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
  String get editProfileTitle => 'پروفائل تبدیل کریو';

  @override
  String get editProfileSubtitle =>
      'ریستوران تہٕ ڈیلیوری پارٹنرَس چھُ توٚہنٛد ناو ہی بوٚزان۔';

  @override
  String get saveChanges => 'تبدیلی محفوظ کریو';

  @override
  String get profileUpdated => 'پروفائل گۄ اپ ڈیٹ';

  @override
  String get deleteAccount => 'اکاؤنٹ مِٹٲویو';

  @override
  String get deleteAccountTitle => 'پنُن اکاؤنٹ مِٹٲویو؟';

  @override
  String get deleteAccountMessage =>
      'سٲری ڈیوائسن پؠٹھٕ گژھِو سائن آؤٹ۔ پرانہٕ آرڈر تہٕ بل چھِ ٹیکس ریکارڈ خٲطرٕ رٹنہٕ یِوان۔';

  @override
  String get accountDeleted => 'توٚہنٛد اکاؤنٹ آو مِٹاونہٕ';

  @override
  String get devicesTitle => 'سائن ان ڈیوائسہٕ';

  @override
  String get devicesSubtitle => 'توہہِ چھِو کۄتہِ سائن ان';

  @override
  String get devicesEmptyTitle => 'بیٛاکھ کانہہ ڈیوائس چھُنہ';

  @override
  String get devicesEmptySubtitle =>
      'توہہِ چھِو صرف یَتھ ڈیوائسس پؠٹھ سائن ان۔';

  @override
  String get signOutDevice => 'سائن آؤٹ';

  @override
  String get signOutDeviceTitle => 'یہ ڈیوائس کریو سائن آؤٹ؟';

  @override
  String get signOutDeviceMessage =>
      'اگر توہہِ چھِو یہی ڈیوائس استعمال کران تہٕ پھیر گژھِو سائن ان کرُن۔';

  @override
  String get deviceSignedOut => 'ڈیوائس گۄ سائن آؤٹ';

  @override
  String get signOutEverywhere => 'ہر جایہٕ پؠٹھٕ سائن آؤٹ';

  @override
  String get signOutEverywhereTitle => 'ہر جایہٕ پؠٹھٕ کریو سائن آؤٹ؟';

  @override
  String get signOutEverywhereMessage =>
      'یَتھ ڈیوائسس سٲتؠ سٲری ڈیوائسہٕ گژھن سائن آؤٹ۔';

  @override
  String get unknownDevice => 'ناواقف ڈیوائس';

  @override
  String get activeNow => 'وُنی فعال';

  @override
  String minutesAgo(int count) {
    return '$count منٹ برونٛہہ';
  }

  @override
  String hoursAgo(int count) {
    return '$count گھنٹہٕ برونٛہہ';
  }

  @override
  String daysAgo(int count) {
    return '$count دۄہ برونٛہہ';
  }

  @override
  String get filtersAndSorting => 'فلٹر تہٕ ترتیب';

  @override
  String get clearAll => 'سٲرؠ ہٹٲویو';

  @override
  String get showResults => 'نتیجہٕ ہٲویو';

  @override
  String get closeLabel => 'بند کریو';

  @override
  String get sortByTitle => 'ترتیب';

  @override
  String get sortRelevance => 'مطابقت';

  @override
  String get sortRating => 'ریٹنگ';

  @override
  String get sortDeliveryTime => 'ڈیلیوری وَکھ';

  @override
  String get sortCostLowHigh => 'قیمت: کم پؠٹھٕ زیادٕ';

  @override
  String get sortCostHighLow => 'قیمت: زیادٕ پؠٹھٕ کم';

  @override
  String get timeSection => 'وَکھ';

  @override
  String get nearAndFast => 'نزدیک تہٕ تیز';

  @override
  String get openNow => 'وُنی کھۄلمُت';

  @override
  String get ratingSection => 'ریستوران ریٹنگ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ریٹنگ';
  }

  @override
  String get offersSection => 'آفر';

  @override
  String get hasOffersLabel => 'آفر ٲسِتھ';

  @override
  String get dishPriceSection => 'کھانَکؠ قیمت';

  @override
  String costUnder(String amount) {
    return '$amount کھۄتہٕ کم';
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
  String get moreSection => 'زیادٕ';

  @override
  String get noPackagingCharges => 'پیکنگ فیس چھُنہ';

  @override
  String get allRestaurantsTitle => 'سٲرؠ ریستوران';

  @override
  String get whatsOnYourMind => 'کیاہ کھینٕچ خواہش چھِ؟';

  @override
  String get listeningNow => 'بوزان چھِ…';

  @override
  String get speakNowHint => 'کانہہ کھانہٕ یا ریستوران وَنیو';

  @override
  String get voiceUnavailable => 'آواز ژھانڈُن چھُنہ دستیاب';

  @override
  String get voiceUnavailableBody => 'توہہِ ہیٚکِو ٹایپ کٔرِتھ تہٕ ژھانڈِتھ۔';

  @override
  String get microphoneDenied => 'مائیکروفونُک اجازت چھُ بند';

  @override
  String get voiceSearchLabel => 'آوازہٕ سٟتؠ ژھانڈیو';

  @override
  String get ratingsAndReviews => 'ریٹنگ تہٕ جائزٕ';

  @override
  String get reviewsWithTextOnly => 'جائزٕ والۍ';

  @override
  String get noReviewsTitle => 'وُنی چھُ نہٕ کانہہ ریٹنگ';

  @override
  String get noReviewsSubtitle => 'آرڈرَس پتٕ گۆڈنیُک ریٹنگ توہہِ دِیِو۔';

  @override
  String get rateOrderTitle => 'پنُن آرڈر ریٹ کریِو';

  @override
  String get rateDishesTitle => 'کھَنہٕ ریٹ کریِو';

  @override
  String get reviewHint => 'کینٛہہ بیٚیہ وننٕ چھُ؟ (اختیاری)';

  @override
  String get submitRating => 'ریٹنگ ہاوِو';

  @override
  String get reviewThanks => 'شکریہ — توٚہنٛز ریٹنگ آیہٕ۔';

  @override
  String get rateThisOrder => 'یہ آرڈر ریٹ کریِو';

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
