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
  String get loginHeadline =>
      'توہنٛدِن نزدیٚکی دُکانن پؠٹھٕ گرٕم کھَنہٕ، تیز ڈیلیوری سٕتؠ';

  @override
  String get loginOrSignUp => 'سائن اِن یا سائن اَپ کرِو';

  @override
  String get loginEmailHint => 'پنُن ای میل پتہٕ لیٚکھِو';

  @override
  String get invalidEmail => 'صحیح ای میل پتہٕ لیٚکھِو';

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
    return 'توہنٛد آرڈر آو $restaurant کُن سوزنہٕ۔';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'تخمیناً $minutes مِنٹن منٛز گژھِ تیار۔';
  }

  @override
  String get trackYourOrder => 'پنُن آرڈر ٹریک کرِو';

  @override
  String get couponApplyTitle => 'کوپن لگاوِو';

  @override
  String get couponCodeLabel => 'کوپن کوڈ';

  @override
  String get couponApply => 'لگاوِو';

  @override
  String couponAppliedTitle(String code) {
    return '$code آو لگاونہٕ';
  }

  @override
  String couponSaving(String amount) {
    return 'توہہِ چھِوٕ $amount بچاوان';
  }

  @override
  String get couponRemove => 'ہٹاوِو';

  @override
  String searchFor(String term) {
    return '\"$term\" ژھانڈٕو';
  }

  @override
  String get vegModeBadge => 'خالص سبزی';

  @override
  String trackingExpectedBy(String time) {
    return '$time تام واتِ';
  }

  @override
  String get orderAgainTitle => 'دوبارٕ آرڈر کرِو';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count بیٚیہ',
      one: '$first + 1 بیٚیہ',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max مِنٹ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 منٛزٕ $rating ریٹنگ';
  }

  @override
  String get reorderReplaceTitle => 'پنُن کارٹ بدلاوٕو؟';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant ہُند توہنٛد کارٹ یِیہِ امہِ آرڈرٕکؠ کھَنہٕ سٕتؠ بدلاونہٕ۔';
  }

  @override
  String get reorderReplace => 'بدلاوِو';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes چھِ نہ وُنی دستیاب، تَوَے آیہ نہ تِم شٲمِل کرنہٕ۔',
      one: '$dishes چھُ نہ وُنی دستیاب، تَوَے آو نہ یہ شٲمِل کرنہٕ۔',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'یِمو منٛزٕ چھُ نہ کانہہ کھَنہٕ وُنی دستیاب۔';

  @override
  String get searchShort => 'ژھانڈٕو';

  @override
  String get favouriteSave => 'پسندیدٕ منٛز محفوظ کرِو';

  @override
  String get restaurantAbout => 'امہِ ریستوران بابت';

  @override
  String ratingByCount(String count) {
    return '$count ریٹنگ';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آفر',
      one: '1 آفر',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile منٛز $restaurant پؠٹھٕ آرڈر کرِو';
  }

  @override
  String get ordersSearchHint => 'ریستوران یا کھَنہٕ ژھانڈٕو…';

  @override
  String get ordersNoMatch =>
      'امہِ ناوُک کانہہ ریستوران یا کھَنہٕ چھُ نہ توہنٛدِن آرڈرن منٛز۔';

  @override
  String orderPlacedOn(String date) {
    return 'آرڈر آو $date کرنہٕ';
  }

  @override
  String get viewMenu => 'مینو وُچھِو';

  @override
  String get navHistory => 'ہسٹری';

  @override
  String get exploreMore => 'بیٚیہ وُچھِو';

  @override
  String get exploreTopRated => 'بہترین ریٹنگ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ریستوران چھِ توہہِ تام ڈیلیوری کران',
      one: '1 ریستوران چھُ توہہِ تام ڈیلیوری کران',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'توہنٛز ڈیلیوری کیٚژھ ٲس؟';

  @override
  String get rateHowWasFood => 'کھَنہٕ کیُتھ اوس؟';

  @override
  String get rateWordTerrible => 'بیکار';

  @override
  String get rateWordBad => 'خراب';

  @override
  String get rateWordOkay => 'ٹھیک ٹھاک';

  @override
  String get rateWordGood => 'جان';

  @override
  String get rateWordLoved => 'بیحد پسند آو!';

  @override
  String get rateWhatWentWrong => 'کیٚاہ گو غلط؟';

  @override
  String get rateWhatYouLiked => 'توہہِ کیٚاہ آو پسند؟';

  @override
  String get rateRiderNoteHint => 'ڈیلیوری بابت نوٹ (اختیاری)';

  @override
  String get rateReviewHeading => 'جائزٕ لیٚکھِو';

  @override
  String get rateFoodFirst => 'سوزنہٕ خٲطرٕ کھَنہٕ ریٹ کرِو';

  @override
  String get rateYouRated => 'توہہِ کوٚر یہ آرڈر ریٹ';

  @override
  String get ratePromptLater => 'وُنی نہ';

  @override
  String get tagTasty => 'مزیدار';

  @override
  String get tagFreshHot => 'گرٕم تہٕ تازٕ';

  @override
  String get tagGoodPortion => 'جان مقدار';

  @override
  String get tagGoodPackaging => 'جان پیکنگ';

  @override
  String get tagValueForMoney => 'پونسہٕ وصول';

  @override
  String get tagHygienic => 'صاف سُتھرٕ';

  @override
  String get tagColdFood => 'شیہل کھَنہٕ';

  @override
  String get tagPoorTaste => 'مزٕ آو نہ';

  @override
  String get tagSmallPortion => 'کم مقدار';

  @override
  String get tagWrongItems => 'غلط چیٖز';

  @override
  String get tagMissingItems => 'چیٖز غائب';

  @override
  String get tagPoorPackaging => 'خراب پیکنگ';

  @override
  String get tagTooOily => 'زیادٕ تیل یا مرچ';

  @override
  String get tagOnTime => 'وقتس پؠٹھٕ';

  @override
  String get tagPolite => 'خوش اخلاق';

  @override
  String get tagFollowedInstructions => 'ہدایژن پؠٹھ کوٚر عمل';

  @override
  String get tagCarefulHandling => 'کھَنہٕ اوٚن احتیاطہٕ سٕتؠ';

  @override
  String get tagGoodCommunication => 'وقتہٕ وقتہٕ دِژ خبر';

  @override
  String get tagLate => 'دیر سٕتؠ ڈیلیوری';

  @override
  String get tagRude => 'بدتمیزی';

  @override
  String get tagIgnoredInstructions => 'ہدایژن پؠٹھ کوٚر نہ عمل';

  @override
  String get tagFoodSpilled => 'کھَنہٕ گو ہارِتھ';

  @override
  String get tagAskedExtraMoney => 'زیادٕ پونسن ہُند مطالبہٕ';

  @override
  String get tagUnprofessional => 'غیر پیشہٕ ورانہٕ';

  @override
  String rateDeliveredBy(String name) {
    return '$name کٔر ڈیلیوری';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant پؠٹھٕ';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant پؠٹھٕ توہنٛد آرڈر کیُتھ اوس؟';
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
    return '$total منٛزٕ $step';
  }

  @override
  String get permNotNow => 'وُنی نہ';

  @override
  String get permLocationTitle => 'نزدیٚکی کھَنہٕ ژھانڈٕو';

  @override
  String get permNotifyTitle => 'آرڈرٕچ ہر اپ ڈیٹ حاصل کرِو';

  @override
  String get permNotifyBody =>
      'نوٹیفکیشن آن کرِو تاکہ توہہِ خبر آسہِ کر توہنٛد آرڈر قبول گژھِ، پِک اپ گژھِ تہٕ توہنٛدِس دَروازس پؠٹھ واتِ۔';

  @override
  String get permNotifyLiveTitle => 'لائیو آرڈر اپ ڈیٹ';

  @override
  String get permNotifyLiveBody => 'قبول، تیار گژھان، پِک اپ، ڈیلیور۔';

  @override
  String get permNotifyRiderTitle => 'رائِڈر توہنٛدِس دَروازس پؠٹھ';

  @override
  String get permNotifyRiderBody =>
      'ایپ وُچھنہٕ بغٲر زانِو کر نیٚبر نیرُن چھُ۔';

  @override
  String get permNotifyControlTitle => 'کنٹرول چھُ توہنٛدِس اتھس منٛز';

  @override
  String get permNotifyControlBody =>
      'توہہِ ہیٚکِو نوٹیفکیشن کُنہِ تہِ وقتہٕ فونٕکؠ سیٹِنگز منٛز بند کٔرِتھ۔';

  @override
  String get permNotifyAllow => 'نوٹیفکیشن آن کرِو';

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
  String get menuSearchHint => 'کھَنہٕ ژھانڈٕو';

  @override
  String get filtersShort => 'فلٹر';

  @override
  String get dietVeg => 'سبزی';

  @override
  String get dietEgg => 'ٹھوٗل';

  @override
  String get dietNonVeg => 'نان ویج';

  @override
  String get menuBestsellerChip => 'بیسٹ سیلر';

  @override
  String get menuFoodType => 'کھَنُک قِسم';

  @override
  String get menuShowOnly => 'صرف ہٲوِو';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کھَنہٕ',
      one: '1 کھَنہٕ',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کھَنہٕ ہٲوِو',
      one: '1 کھَنہٕ ہٲوِو',
      zero: 'کانہہ کھَنہٕ نہ',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'بیٚاکھ کھَنہٕ ناو آزماوِو، یا کانہہ فلٹر ہٹاوِو۔';

  @override
  String get menuBrowse => 'مینو';

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
  String get riderLocationStale => 'رائِڈرُک مقام چھُ اپ ڈیٹ گژھان…';

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
  String get onLabel => 'آن';

  @override
  String get offLabel => 'بند';

  @override
  String get profileCoupons => 'توہنٛدؠ کوپن';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دستیاب',
      one: '1 دستیاب',
      zero: 'ناوُ کانہہ نہ',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'توہنٛز پسند';

  @override
  String get profileVegMode => 'سبزی موڈ';

  @override
  String get profileVegModeHint => 'صرف سبزی ریستوران تہٕ کھَنہٕ';

  @override
  String get profileAppearance => 'ظاہری شکل';

  @override
  String get appearanceSystem => 'فونس ہیُو';

  @override
  String get appearanceLight => 'روشن';

  @override
  String get appearanceDark => 'تاریک';

  @override
  String get profileNotifications => 'نوٹیفکیشن';

  @override
  String get profileFoodDelivery => 'کھَنہٕ ڈیلیوری';

  @override
  String get profileFavourites => 'توہنٛدؠ پسندیدٕ';

  @override
  String get profileHelp => 'مدد تہٕ سپورٹ';

  @override
  String get profileMore => 'زیادٕ';

  @override
  String get profileFeedback => 'رائے سوزِو';

  @override
  String get profileSafety => 'حفاظتی ایمرجنسی رپورٹ کرِو';

  @override
  String get profileAbout => 'Nexmile بابت';

  @override
  String get couponsEmptyTitle => 'وُنی چھُ نہ کانہہ کوپن';

  @override
  String get couponsEmptyBody =>
      'ییٚلہِ کانہہ کوپن توہہِ استعمال کرنہٕ لایق آسہِ، سُہ ییٚیہ یَتہِ ہاونہٕ۔';

  @override
  String couponFlatOff(String amount) {
    return '$amount رعایت';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% رعایت';
  }

  @override
  String couponUpTo(String amount) {
    return '$amount تام';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount کھۄتہٕ زیادٕ آرڈرن پؠٹھ';
  }

  @override
  String couponValidTill(String date) {
    return '$date تام کارآمد';
  }

  @override
  String get couponAllRestaurants => 'سٲرِنی ریستورانن پؠٹھ';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant پؠٹھ';
  }

  @override
  String couponCopied(String code) {
    return 'کوڈ $code آو کاپی کرنہٕ';
  }

  @override
  String get favouritesEmptyTitle => 'ناوُ کانہہ پسندیدٕ نہ';

  @override
  String get favouritesEmptyBody =>
      'کُنہِ ریستورانس پؠٹھ دِلس دبٲوِو تہٕ سُہ گژھِ یَتہِ محفوظ۔';

  @override
  String get helpCall => 'اسہِ کال کرِو';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'اسہِ ای میل کرِو';

  @override
  String helpHours(String hours) {
    return 'أسؠ چھِ $hours دستیاب';
  }

  @override
  String get helpFaqs => 'عام سوال';

  @override
  String get helpNothing =>
      'مددٕچ تفصیل چھےٚ نہ وُنی دستیاب۔ مہربٲنی کٔرِتھ کینٛہہ وقتہٕ پتہٕ دوبارٕ کوشش کرِو۔';

  @override
  String get feedbackPrompt => 'Nexmile کیُتھ چھُ توہہِ خٲطرٕ کٲم کران؟';

  @override
  String get feedbackHint =>
      'اسہِ وَنِو توہہِ کیٚاہ آو پسند، یا أسؠ کیٚاہ ہیٚکَو بہتر کٔرِتھ';

  @override
  String get feedbackNeedRating => 'گۄڈٕ ریٹنگ ژارٕو';

  @override
  String get feedbackThanks => 'شکریہ! توہنٛز رائے آیہ سانِس ٹیمس تام سوزنہٕ۔';

  @override
  String get safetyIntro =>
      'اگر توہہِ یا کانہہ بیٚاکھ خطرس منٛز چھُ، گۄڈٕ ایمرجنسی سروسز کال کرِو۔';

  @override
  String get safetyCallEmergency => '112 پؠٹھ کال کرِو';

  @override
  String get safetyCallEmergencyBody => 'پولیس، فائر تہٕ ایمبولینس';

  @override
  String get safetyCallNexmile => 'Nexmile حفاظتی لائن پؠٹھ کال کرِو';

  @override
  String get safetyCallNexmileBody => 'دۄہ رات دستیاب';

  @override
  String aboutVersion(String version) {
    return 'ورژن $version';
  }

  @override
  String get aboutTerms => 'سروس شرطہٕ';

  @override
  String get aboutPrivacy => 'پرائیویسی پالیسی';

  @override
  String get aboutLicences => 'اوپن سورس لائسنس';

  @override
  String get notifyOrderUpdates => 'آرڈر اپ ڈیٹ';

  @override
  String get notifyOrderUpdatesBody =>
      'ہمیشہ آن، تاکہ توہہِ خبر آسہِ زِ توہنٛد کھَنہٕ کۄتہٕ چھُ۔';

  @override
  String get notifyPromotions => 'آفر تہٕ پروموشن';

  @override
  String get notifyPromotionsBody =>
      'ڈیل، کوپن تہٕ توہنٛدِس نزدیٚک نٔوؠ ریستوران۔';

  @override
  String get notifyPhoneOff =>
      'امہِ فونس پؠٹھ چھِ Nexmile خٲطرٕ نوٹیفکیشن بند۔';

  @override
  String get notifyTurnOn => 'آن کرِو';

  @override
  String get linkOpenFailed => 'امہِ فونس پؠٹھ ہیوٚک نہ یہ کھُلِتھ۔';

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
  String get walletTitle => 'Nexmile والیٹ';

  @override
  String get walletBalance => 'والیٹ بیلنس';

  @override
  String get walletBalanceHint =>
      'یہ ہیٚکِو کُنہِ تہِ آرڈرٕچ أدایگی خٲطرٕ استعمال کٔرِتھ۔';

  @override
  String get walletAddMoney => 'پونسہٕ شٲمِل کرِو';

  @override
  String get walletEnterAmount => 'رقم لیٚکھِو';

  @override
  String walletAmountRange(String min, String max) {
    return '$min پؠٹھٕ $max تام';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount شٲمِل کرِو';
  }

  @override
  String get walletSecuredBy => 'أدایگی چھےٚ Razorpay سٕتؠ محفوظ';

  @override
  String get walletHistory => 'ہسٹری';

  @override
  String get walletNoHistory =>
      'ناوُ کانہہ لین دین نہ۔ یِم پونسہٕ توہہِ شٲمِل یا خرچ کرِو، تِم ییٚنہٕ یَتہِ ہاونہٕ۔';

  @override
  String get walletEntryTopUp => 'پونسہٕ شٲمِل';

  @override
  String get walletEntryOrder => 'آرڈرٕچ أدایگی';

  @override
  String walletEntryOrderNumber(String number) {
    return 'آرڈر $number خٲطرٕ أدایگی';
  }

  @override
  String get walletEntryRefund => 'رِفنڈ';

  @override
  String walletMoneyAdded(String amount) {
    return '$amount آو توہنٛدِس والیٹس منٛز شٲمِل کرنہٕ';
  }

  @override
  String get walletPaymentFailed =>
      'أدایگی گیہ ناکام۔ توہنٛدِس کھاتس منٛزٕ آیہ نہ کانہہ پونسہٕ کڈنہٕ۔';

  @override
  String get walletPaymentConfirming =>
      'أدایگی آیہ وصول۔ توہنٛد بیلنس گژھِ کینٛہہ مِنٹن منٛز اپ ڈیٹ۔';

  @override
  String get walletUseBalance => 'والیٹ بیلنس استعمال کرِو';

  @override
  String walletAvailable(String amount) {
    return 'دستیاب: $amount';
  }

  @override
  String get walletPaidFromWallet => 'والیٹ پؠٹھٕ أدا';

  @override
  String get walletPayOnDelivery => 'ڈیلیوری وقتہٕ نقد';

  @override
  String get walletCoversOrder => 'پورٕ أدایگی توہنٛدِس والیٹس پؠٹھٕ';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet والیٹس پؠٹھٕ، $rest ڈیلیوری وقتہٕ';
  }

  @override
  String get walletTopUpUnavailable =>
      'پونسہٕ شٲمِل کرُن چھُ نہ وُنی دستیاب۔ مہربٲنی کٔرِتھ کینٛہہ وقتہٕ پتہٕ دوبارٕ کوشش کرِو۔';

  @override
  String walletFull(String limit) {
    return 'توہنٛد والیٹ چھُ پننِس $limit حدس پؠٹھ واتمُت۔';
  }

  @override
  String get searchAddressHint => 'علاقہٕ، گلی یا نِشٲنی ژھانڈٕو';

  @override
  String get selectLocationTitle => 'جاے ژارٕو';

  @override
  String get useCurrentLocation => 'موجودٕ جاے استعمال کرِو';

  @override
  String get locatingYou => 'جاے ژھانڈان…';

  @override
  String get locationOffHint => 'یہ استعمال کرنہٕ خٲطرٕ جاے ہٕنٛز اجازت دِیِو';

  @override
  String get savedAddressesHeading => 'محفوظ پتہٕ';

  @override
  String get recentLocationsHeading => 'حالیہ جایہٕ';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ڈیلیوری جاے ژارٕو';

  @override
  String get movePinTooltip => 'پِن پننِس صحیح ڈیلیوری جایہِ پؠٹھ ٹھٲوِو';

  @override
  String get locatingPin => 'پتہٕ ژھانڈان…';

  @override
  String get deliveryDetailsHeading => 'ڈیلیوری تفصیل';

  @override
  String get addressDetailsLabel => 'پتہٕ تفصیل*';

  @override
  String get addressDetailsHint => 'مثلاً منزل، گَرٕ نمبر';

  @override
  String get missingAreaHint =>
      'امہِ پِن خٲطرٕ آو نہ پورٕ پتہٕ لبنہٕ۔ مہربٲنی کٔرِتھ باقی تفصیل بٔرِو۔';

  @override
  String get whoToContact => 'امہِ ڈیلیوری خٲطرٕ کَمِس سٕتؠ کرَو رٲبطہٕ؟';

  @override
  String get contactMyself => 'بہٕ پانہٕ';

  @override
  String get contactSomeoneElse => 'کانہہ بیٚاکھ';

  @override
  String get receiverDetailsHeading =>
      'امہِ پتہٕ خٲطرٕ وصول کرن وٲلِس ہٕنٛز تفصیل';

  @override
  String get receiverAddPrompt => 'وصول کرن وٲلِس ہُند ناو تہٕ نمبر شٲمِل کرِو';

  @override
  String get receiverSheetTitle => 'وصول کرن وٲلِس ہٕنٛز تفصیل';

  @override
  String get doorPhotoHeading => 'دَروازٕ/عمارتُک فوٹو (اختیاری)';

  @override
  String get doorPhotoAdd => 'فوٹو شٲمِل کرِو';

  @override
  String get doorPhotoBody =>
      'امہِ سٕتؠ ہیٚکن سانؠ ڈیلیوری پارٹنر صحیح جاے جلدی ژھٲنڈِتھ';

  @override
  String get doorPhotoChange => 'بدلاوِو';

  @override
  String get doorPhotoRemove => 'ہٹاوِو';

  @override
  String get photoFromCamera => 'فوٹو کڈِو';

  @override
  String get photoFromGallery => 'گیلری منٛزٕ ژارٕو';

  @override
  String get photoUploaded => 'فوٹو آو شٲمِل کرنہٕ';

  @override
  String get photoUploadFailed =>
      'فوٹو آو نہ اپلوڈ کرنہٕ۔ مہربٲنی کٔرِتھ کینٛہہ وقتہٕ پتہٕ دوبارٕ کوشش کرِو۔';

  @override
  String get addressSavedPhotoFailed =>
      'پتہٕ آو محفوظ کرنہٕ۔ فوٹو آو نہ اپلوڈ کرنہٕ۔';

  @override
  String get removePhotoLabel => 'فوٹو ہٹاوِو';

  @override
  String get photoRemoved => 'فوٹو آو ہٹاونہٕ';

  @override
  String get shareLabel => 'شیئر کرِو';

  @override
  String get addDoorPhotoLabel => 'دَروازُک فوٹو شٲمِل کرِو';

  @override
  String get searchAddressNoResults =>
      'کانہہ جاے نہ لبنہٕ آیہ۔ نزدیٚکی نِشٲنی، علاقُک ناو یا پِن کوڈ آزماوِو۔';

  @override
  String get clearLabel => 'صاف کرِو';

  @override
  String get trackingArrivingNow => 'وُنی واتان';

  @override
  String get trackingLive => 'لائیو';

  @override
  String get trackingStepConfirmed => 'تصدیق شُدٕ';

  @override
  String get trackingStepPreparing => 'تیار گژھان';

  @override
  String get trackingStepOnTheWay => 'وَتہِ پؠٹھٕ';

  @override
  String get trackingStepDelivered => 'ڈیلیور گو';

  @override
  String get trackingFindingRider => 'ڈیلیوری پارٹنر مقرر کرنہٕ یِوان…';

  @override
  String get trackingPinYou => 'توہہِ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name چھُ $distance دُور';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name کُن میسج سوزِو';
  }

  @override
  String get trackingDeliveringTo => 'ڈیلیوری پتہٕ';

  @override
  String get trackingOrderDetails => 'آرڈر تفصیل';

  @override
  String get dispatchSearching => 'ریستورانس نزدیٚک ڈیلیوری پارٹنر ژھانڈان…';

  @override
  String get dispatchNoRider =>
      'ناوُ چھُ نہ کانہہ ڈیلیوری پارٹنر میلیومُت۔ ساني ٹیم چھےٚ وُنی اکھ مقرر کران۔';

  @override
  String get vehicleBike => 'بائیک';

  @override
  String get vehicleScooter => 'سکوٹر';

  @override
  String get vehicleBicycle => 'سائیکل';

  @override
  String get vehicleElectric => 'الیکٹرک سکوٹر';

  @override
  String get exitTitle => 'Nexmile بند کرٕو؟';

  @override
  String get exitBody => 'کیٚاہ توہہِ چھِوٕ واقعی ایپ بند کرُن یژھان؟';

  @override
  String get exitConfirm => 'بند کرِو';

  @override
  String cartSavedBanner(String amount) {
    return 'امہِ آرڈرس پؠٹھ توہنٛز $amount بچت';
  }

  @override
  String get cartAddMoreItems => 'بیٚیہ چیٖز شٲمِل کرِو';

  @override
  String get cartAddNote => 'ریستورانس خٲطرٕ نوٹ شٲمِل کرِو';

  @override
  String get cartOrderNoteHint =>
      'مثلاً: کُنہِ تِ چیزس منٛز گَندٕ یا روہُن مَہ تراوِو';

  @override
  String get cartNoteSave => 'محفوظ کرِو';

  @override
  String get cartNoCutlery => 'چمچہٕ کانٛٹہٕ مہ سوزِو';

  @override
  String get cartNoCutleryThanks =>
      'پلاسٹک فضلہٕ کم کرنس منٛز مدد کرنہٕ خٲطرٕ شکریہ';

  @override
  String get cartSavingsCorner => 'بچت کونہٕ';

  @override
  String get cartDeliveryInstructions => 'ڈیلیوری ہدایژ';

  @override
  String get cartInstructionsRider => 'یِم وُچھِ صرف توٚہنٛد ڈیلیوری پارٹنر';

  @override
  String get instructionLeaveAtDoor => 'دَروازس پؠٹھ ٹھٲوِو';

  @override
  String get instructionNoBell => 'گھنٹی مہ بجٲوِو';

  @override
  String get instructionNoCall => 'کال مہ کرِو';

  @override
  String get instructionSecurity => 'سیکیورٹی گارڈس دِیِو';

  @override
  String get instructionPet => 'گَرس منٛز چھُ پالتو جانور';

  @override
  String get cartInclTaxes => 'ٹیکس تہٕ چارجہٕ شٲمِل';

  @override
  String cartSavedTag(String amount) {
    return '$amount بچت';
  }

  @override
  String get cartPayUsing => 'أدایگی طریقہٕ';

  @override
  String get cartWalletAndCash => 'والیٹ + نقد';

  @override
  String cartCashRest(String amount) {
    return 'واتنہٕ وقتہٕ $amount أدا کرِو';
  }

  @override
  String get cartCashFull => 'آرڈر واتنہٕ وقتہٕ أدا کرِو';

  @override
  String get cartCashNothing => 'ڈیلیوری وقتہٕ چھُ نہ کینٛہہ أدا کرُن';

  @override
  String get cartTotal => 'کُل';

  @override
  String get cartPlaceOrder => 'آرڈر کرِو';

  @override
  String cartDeliverTo(String place) {
    return '$place تام ڈیلیوری';
  }

  @override
  String get cartChange => 'بدلاوِو';

  @override
  String get cartNoAddress => 'ڈیلیوری کۄتہٕ کرٕو؟';

  @override
  String get cartNoAddressHint => 'آرڈر کرنہٕ خٲطرٕ پتہٕ شٲمِل کرِو';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant پؠٹھٕ پانہٕ ہیون';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'تخمیناً $minutes مِنٹن منٛز تیار';
  }

  @override
  String get cartChooseAddress => 'ڈیلیوری پتہٕ ژارٕو';

  @override
  String get cartDone => 'مکمل';

  @override
  String get supportTitle => 'Nexmile سپورٹ';

  @override
  String get supportBubble => 'مدد';

  @override
  String get supportAiLabel => 'AI اسسٹنٹ';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ٹیم';
  }

  @override
  String get supportDemoBanner =>
      'ڈیمو: یِم جواب چھِ نمونہٕ۔ اصلی اسسٹنٹ چھُ نہ ناوُ کنکٹ کرنہٕ آمُت۔';

  @override
  String get supportEmptyTitle => 'أسؠ کِتھ کٔنؠ ہیٚکو توہہِ مدد کٔرِتھ؟';

  @override
  String get supportEmptyBody =>
      'آرڈر، ادایگی یا بیٚیہ کُنہِ تِ چیزس متعلق پرٛژھِو۔ گوڈٕ چھُ سون AI اسسٹنٹ جواب دِوان، تہٕ ییلہِ سُہ مدد ہیٚکہِ نہ کٔرِتھ، تیلہِ چھُ سانِس ٹیمہِ ہُند اکھ انسان کتھ سنبالان۔';

  @override
  String get supportSuggestWhere => 'میون آرڈر کۄتہٕ چھُ؟';

  @override
  String get supportSuggestMissing => 'کینٛہہ چیز چھُ غائب';

  @override
  String get supportSuggestRefund => 'مےٚ چھُ رِفنڈ متعلق اکھ سوال';

  @override
  String get supportComposerHint => 'میسج لیٚکھِو';

  @override
  String get supportSend => 'سوزِو';

  @override
  String get supportTyping => 'AI اسسٹنٹ چھُ لیٚکھان…';

  @override
  String get supportNotSent => 'سوزنہٕ آو نہ';

  @override
  String get supportTookTooLong => 'واریاہ وقت لوگ۔';

  @override
  String get supportSlowDown =>
      'بیٚیہ میسج سوزنہٕ برونٛہہ کرِو کینٛہہ لمحہٕ انتظار۔';

  @override
  String get supportUnreachable =>
      'وُنی چھُ نہ چیٹس سٕتؠ رابطہٕ سپدان۔ اسہِ کال کرِو، یا کینٛہہ مِنٹ پتہٕ دوبارٕ کوشش کرِو۔';

  @override
  String get supportOffline =>
      'توہہِ چھِوٕ آف لائن۔ یہ چھےٚ توہنٛز آخری محفوظ چیٹ۔';

  @override
  String get supportClosed => 'یہ چیٹ چھےٚ بند۔';

  @override
  String get supportStartNew => 'نٔو چیٹ شُروع کرِو';

  @override
  String get supportTalkToPerson => 'کُنہِ انسانس سٕتؠ کتھ کرِو';

  @override
  String get supportMarkSolved => 'حل گو';

  @override
  String get supportHelpful => 'مددگار';

  @override
  String get supportNotHelpful => 'مددگار نہ';

  @override
  String get supportNeedHelp => 'مددٕچ ضرورت چھا؟';

  @override
  String get supportChatWithUs => 'اسہِ سٕتؠ چیٹ کرِو';

  @override
  String get supportChatWithUsBody =>
      'سون AI اسسٹنٹ چھُ سیکنڈن منٛز جواب دِوان، تہٕ ضرورتس پؠٹھ چھُ اکھ انسان کتھ سنبالان۔';

  @override
  String get supportActionFailed => 'یہ آو نہ کرنہٕ۔ دوبارٕ کوشش کرِو۔';

  @override
  String get supportOrderNotFound =>
      'یہ آرڈر چھُنہٕ تُہٕنٛدِس اکاؤنٹس مَنٛز میلان۔';

  @override
  String get supportOrderLookupDown =>
      'وۄنۍ ہیٚکو نہٕ یہ آرڈر وُچِتھ۔ توٚہۍ ہیٚکِو پنُن سوال لیٚکھِتھ۔';

  @override
  String get restaurantNew => 'نوٚو';

  @override
  String get walletHideBalance => 'بیلنس کھٹاوِو';

  @override
  String get walletShowBalance => 'بیلنس ہاوِو';

  @override
  String get walletBalanceHiddenLabel => 'بیلنس آو کھٹاونہٕ';

  @override
  String walletUpdatedAt(String time) {
    return '$time آو اپ ڈیٹ کرنہٕ';
  }

  @override
  String walletBelowMin(String amount) {
    return 'کم از کم $amount شٲمِل کرِو';
  }

  @override
  String walletAboveMax(String amount) {
    return 'زیادٕ کھۄتہ زیادٕ $amount ہیٚکِو شٲمِل کٔرِتھ';
  }

  @override
  String get walletOpeningPayment => 'أدایگی شُروع گژھان…';

  @override
  String get walletConfirmingPayment => 'أدایگی تصدیق گژھان…';

  @override
  String get walletTransactions => 'لین دین';

  @override
  String get walletFilterAll => 'سٲرؠ';

  @override
  String get walletFilterAdded => 'پونسہٕ شٲمِل';

  @override
  String get walletFilterSpent => 'پونسہٕ خرچ';

  @override
  String get walletSearch => 'ژھانڈٕو';

  @override
  String get walletSearchHint => 'آرڈر نمبر یا ID ژھانڈٕو';

  @override
  String get walletDateFilter => 'تاریخ مطابق فلٹر کرِو';

  @override
  String get walletClearFilters => 'فلٹر ہٹاوِو';

  @override
  String get walletNoMatches =>
      'توہنٛدِن فلٹرن مطابق کانہہ لین دین نہ لبنہٕ آو';

  @override
  String get walletEmptyTitle => 'ناوُ کانہہ لین دین نہ';

  @override
  String get walletEmptyBody =>
      'یِم پونسہٕ توہہِ شٲمِل کرِو، آرڈرن پؠٹھ خرچ کرِو یا رِفنڈ سٕتؠ واپس حٲصل کرِو، تِم ییٚنہٕ یَتہِ ہاونہٕ۔';

  @override
  String get walletToday => 'اَز';

  @override
  String get walletYesterday => 'راتھ';

  @override
  String walletLatestOnly(int count) {
    return 'توہنٛدؠ تازٕ $count لین دین چھِ ہاونہٕ یِوان';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'آرڈر $number خٲطرٕ رِفنڈ';
  }

  @override
  String get walletDetailsTitle => 'لین دین تفصیل';

  @override
  String get walletDetailDate => 'تاریخ تہٕ وَکھ';

  @override
  String get walletDetailId => 'لین دین ID';

  @override
  String get walletDetailType => 'قِسم';

  @override
  String get walletDetailMethod => 'أدایگی طریقہٕ';

  @override
  String get walletDetailStatus => 'حالت';

  @override
  String get walletDetailOrder => 'آرڈر';

  @override
  String get walletDetailReference => 'أدایگی ریفرنس';

  @override
  String get walletDetailBalanceAfter => 'لین دین پتہٕ بیلنس';

  @override
  String get walletCredit => 'کریڈٹ';

  @override
  String get walletDebit => 'ڈیبٹ';

  @override
  String get walletStatusSuccess => 'کامیاب';

  @override
  String get walletStatusPending => 'زیرِ التوا';

  @override
  String get walletStatusFailed => 'ناکام';

  @override
  String get walletMethodOnline => 'آن لائن أدایگی';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'کارڈ';

  @override
  String get walletMethodNetbanking => 'نیٹ بینکنگ';

  @override
  String get walletMethodRefund => 'والیٹس منٛز رِفنڈ';

  @override
  String get walletCopyId => 'ID کاپی کرِو';

  @override
  String get walletIdCopied => 'لین دین ID آیہ کاپی کرنہٕ';

  @override
  String get walletShareDetails => 'تفصیل شیئر کرِو';
}
