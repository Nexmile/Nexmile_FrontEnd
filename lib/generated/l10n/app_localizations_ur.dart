// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'یہ خانہ ضروری ہے';

  @override
  String get tagline => 'تیز ڈیلیوری۔ تازہ مسکراہٹیں۔';

  @override
  String get chooseLanguageTitle => 'اپنی زبان منتخب کریں';

  @override
  String get chooseLanguageSubtitle =>
      'وہ زبان منتخب کریں جس میں آپ آسانی محسوس کرتے ہیں۔ آپ اسے کسی بھی وقت ترتیبات میں تبدیل کر سکتے ہیں۔';

  @override
  String get searchLanguageHint => 'زبان تلاش کریں';

  @override
  String get noLanguageFound => 'کوئی زبان نہیں ملی';

  @override
  String languagesAvailable(int count) {
    return '$count زبانیں دستیاب ہیں';
  }

  @override
  String get continueLabel => 'جاری رکھیں';

  @override
  String get selectedLabel => 'منتخب شدہ';

  @override
  String get defaultLabel => 'ڈیفالٹ';

  @override
  String get homeTitle => 'Nexmile میں خوش آمدید';

  @override
  String get homeSubtitle =>
      'تازہ گروسری، گرم کھانا اور روزمرہ کی ضروریات آپ کے قریبی دکانوں سے۔';

  @override
  String get changeLanguage => 'زبان تبدیل کریں';

  @override
  String get languageUpdated => 'زبان تبدیل ہو گئی';

  @override
  String get appLanguageLabel => 'ایپ کی زبان';

  @override
  String greetingNamed(String name) {
    return 'خوش آمدید، $name';
  }

  @override
  String get loginTitle => 'Nexmile میں سائن ان کریں';

  @override
  String get loginSubtitle =>
      'اپنا ای میل یا موبائل نمبر درج کریں، ہم آپ کو تصدیقی کوڈ بھیجیں گے۔';

  @override
  String get emailOrPhoneLabel => 'ای میل یا موبائل نمبر';

  @override
  String get emailOrPhoneHint => 'name@example.com یا 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'درست ای میل پتہ یا 10 ہندسوں کا موبائل نمبر درج کریں';

  @override
  String get loginHeadline =>
      'آپ کے قریب کی دکانوں سے گرم کھانا، تیزی سے آپ تک';

  @override
  String get loginOrSignUp => 'لاگ ان یا سائن اپ کریں';

  @override
  String get loginEmailHint => 'اپنا ای میل پتہ درج کریں';

  @override
  String get invalidEmail => 'درست ای میل پتہ درج کریں';

  @override
  String get sendCode => 'کوڈ بھیجیں';

  @override
  String get agreeToTermsOnContinue =>
      'جاری رکھنے سے آپ ہماری سروس کی شرائط اور رازداری کی پالیسی سے اتفاق کرتے ہیں۔';

  @override
  String get otpTitle => 'تصدیق کریں کہ یہ آپ ہی ہیں';

  @override
  String otpSubtitle(String target) {
    return '$target پر بھیجا گیا 6 ہندسوں کا کوڈ درج کریں';
  }

  @override
  String get verifyCode => 'تصدیق کریں';

  @override
  String get resendCode => 'کوڈ دوبارہ بھیجیں';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds سیکنڈ میں دوبارہ بھیجیں';
  }

  @override
  String get codeResent => 'نیا کوڈ بھیج دیا گیا ہے';

  @override
  String get incorrectCode =>
      'یہ کوڈ غلط ہے یا اس کی میعاد ختم ہو چکی ہے۔ نیا کوڈ منگوائیں۔';

  @override
  String get enterFullCode => 'پورے 6 ہندسے درج کریں';

  @override
  String get accountSuspended =>
      'یہ اکاؤنٹ معطل کر دیا گیا ہے۔ براہ کرم سپورٹ سے رابطہ کریں۔';

  @override
  String get tooManyAttempts =>
      'بہت زیادہ کوششیں ہو گئیں۔ براہ کرم کچھ دیر بعد دوبارہ کوشش کریں۔';

  @override
  String get sessionExpired =>
      'آپ کا سیشن ختم ہو گیا ہے۔ براہ کرم دوبارہ سائن ان کریں۔';

  @override
  String get networkError =>
      'انٹرنیٹ کنکشن نہیں ہے۔ اپنا کنکشن دیکھیں اور دوبارہ کوشش کریں۔';

  @override
  String get developmentCode => 'ڈیویلپمنٹ کوڈ';

  @override
  String get signOut => 'سائن آؤٹ';

  @override
  String get signedOut => 'آپ سائن آؤٹ ہو گئے ہیں';

  @override
  String get somethingWentWrong => 'کچھ غلط ہو گیا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get profileTitle => 'پروفائل';

  @override
  String get viewProfile => 'پروفائل دیکھیں';

  @override
  String get nameLabel => 'نام';

  @override
  String get emailLabel => 'ای میل';

  @override
  String get mobileLabel => 'موبائل نمبر';

  @override
  String get accountStatusLabel => 'اکاؤنٹ کی حالت';

  @override
  String get statusActive => 'فعال';

  @override
  String get statusPending => 'زیر التوا';

  @override
  String get statusSuspended => 'معطل';

  @override
  String get verifiedLabel => 'تصدیق شدہ';

  @override
  String get notProvided => 'شامل نہیں کیا گیا';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get navHome => 'ہوم';

  @override
  String get navSearch => 'تلاش';

  @override
  String get navOrders => 'آرڈرز';

  @override
  String get cancelLabel => 'منسوخ کریں';

  @override
  String get deliverTo => 'ڈیلیوری کا پتہ';

  @override
  String get searchDishesHint => 'کھانا یا ریستوران تلاش کریں';

  @override
  String get searchTitle => 'تلاش';

  @override
  String get searchNoResultsTitle => 'کچھ نہیں ملا';

  @override
  String get searchNoResultsSubtitle =>
      'کوئی اور کھانا، کھانے کا انداز یا ریستوران کا نام آزمائیں۔';

  @override
  String get cravingTitle => 'آج کیا کھانے کا دل ہے؟';

  @override
  String get offersTitle => 'آپ کے لیے آفرز';

  @override
  String get restaurantsNearby => 'آپ کے قریبی ریستوران';

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
  String get noRestaurantsTitle => 'یہاں ابھی کچھ نہیں ہے';

  @override
  String get noRestaurantsSubtitle => 'کوئی اور قسم دیکھیں یا فلٹر ہٹا دیں۔';

  @override
  String minutesAway(int minutes) {
    return '$minutes منٹ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance کلومیٹر';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ریٹنگز',
      one: '1 ریٹنگ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'دو افراد کے لیے ₹$amount';
  }

  @override
  String get freeDelivery => 'مفت ڈیلیوری';

  @override
  String percentOff(int percent) {
    return '$percent% رعایت';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'آپ کے آرڈر پر $percent% رعایت';
  }

  @override
  String get vegOnly => 'صرف سبزی';

  @override
  String get bestseller => 'سب سے زیادہ فروخت';

  @override
  String get addLabel => 'شامل';

  @override
  String get noVegDishesTitle => 'یہاں سبزی کھانے نہیں ہیں';

  @override
  String get noVegDishesSubtitle =>
      'پورا مینو دیکھنے کے لیے سبزی فلٹر بند کریں۔';

  @override
  String get replaceCartTitle => 'نئی کارٹ شروع کریں؟';

  @override
  String replaceCartMessage(String restaurant) {
    return 'آپ کی کارٹ میں $restaurant کی چیزیں ہیں۔ یہ شامل کرنے پر وہ ہٹ جائیں گی۔';
  }

  @override
  String get replaceCartConfirm => 'ہٹا کر شامل کریں';

  @override
  String get cartTitle => 'آپ کی کارٹ';

  @override
  String get cartEmptyTitle => 'آپ کی کارٹ خالی ہے';

  @override
  String get cartEmptySubtitle =>
      'شروع کرنے کے لیے کسی ریستوران سے کھانا شامل کریں۔';

  @override
  String get browseRestaurants => 'ریستوران دیکھیں';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count چیزیں',
      one: '1 چیز',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'کارٹ دیکھیں';

  @override
  String get itemTotal => 'اشیاء کا کل';

  @override
  String get deliveryFeeLabel => 'ڈیلیوری فیس';

  @override
  String get taxesAndCharges => 'ٹیکس اور چارجز';

  @override
  String get freeLabel => 'مفت';

  @override
  String get toPay => 'قابل ادائیگی';

  @override
  String placeOrderFor(String amount) {
    return 'آرڈر کریں · $amount';
  }

  @override
  String get ordersTitle => 'آپ کے آرڈرز';

  @override
  String get ordersEmptyTitle => 'ابھی کوئی آرڈر نہیں';

  @override
  String get ordersEmptySubtitle => 'آپ کے پچھلے آرڈرز یہاں دکھائی دیں گے۔';

  @override
  String get reorder => 'دوبارہ آرڈر';

  @override
  String orderTitle(String id) {
    return 'آرڈر $id';
  }

  @override
  String get orderPlacedTitle => 'آرڈر ہو گیا';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'تقریباً $minutes منٹ میں پہنچ جائے گا۔';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant کو آپ کا آرڈر مل گیا ہے۔';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'تقریباً $minutes منٹ میں تیار ہو جائے گا۔';
  }

  @override
  String get trackYourOrder => 'اپنا آرڈر ٹریک کریں';

  @override
  String get couponApplyTitle => 'کوپن لگائیں';

  @override
  String get couponCodeLabel => 'کوپن کوڈ';

  @override
  String get couponApply => 'لگائیں';

  @override
  String couponAppliedTitle(String code) {
    return '$code لگ گیا';
  }

  @override
  String couponSaving(String amount) {
    return 'آپ کو $amount کی بچت';
  }

  @override
  String get couponRemove => 'ہٹائیں';

  @override
  String searchFor(String term) {
    return '\"$term\" تلاش کریں';
  }

  @override
  String get vegModeBadge => 'خالص سبزی';

  @override
  String trackingExpectedBy(String time) {
    return '$time تک متوقع';
  }

  @override
  String get orderAgainTitle => 'دوبارہ آرڈر کریں';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count مزید',
      one: '$first + 1 مزید',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max منٹ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 میں سے $rating ریٹنگ';
  }

  @override
  String get reorderReplaceTitle => 'اپنی کارٹ بدل دیں؟';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant والی آپ کی کارٹ کی جگہ اس آرڈر کے پکوان رکھ دیے جائیں گے۔';
  }

  @override
  String get reorderReplace => 'بدل دیں';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes ابھی دستیاب نہیں، اس لیے شامل نہیں کیے گئے۔',
      one: '$dishes ابھی دستیاب نہیں، اس لیے شامل نہیں کیا گیا۔',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'ان میں سے کوئی بھی پکوان ابھی دستیاب نہیں۔';

  @override
  String get searchShort => 'تلاش';

  @override
  String get favouriteSave => 'پسندیدہ میں محفوظ کریں';

  @override
  String get restaurantAbout => 'اس ریستوران کے بارے میں';

  @override
  String ratingByCount(String count) {
    return '$count ریٹنگز';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آفرز',
      one: '1 آفر',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile پر $restaurant سے آرڈر کریں';
  }

  @override
  String get ordersSearchHint => 'ریستوران یا پکوان سے تلاش کریں…';

  @override
  String get ordersNoMatch =>
      'اس نام کے کسی ریستوران یا پکوان کا کوئی آرڈر نہیں ملا۔';

  @override
  String orderPlacedOn(String date) {
    return 'آرڈر $date کو کیا گیا';
  }

  @override
  String get viewMenu => 'مینو دیکھیں';

  @override
  String get navHistory => 'ہسٹری';

  @override
  String get exploreMore => 'مزید دیکھیں';

  @override
  String get exploreTopRated => 'بہترین ریٹنگ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ریستوران آپ تک ڈیلیوری کر رہے ہیں',
      one: '1 ریستوران آپ تک ڈیلیوری کر رہا ہے',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ڈیلیوری کیسی رہی؟';

  @override
  String get rateHowWasFood => 'کھانا کیسا تھا؟';

  @override
  String get rateWordTerrible => 'بہت برا';

  @override
  String get rateWordBad => 'برا';

  @override
  String get rateWordOkay => 'ٹھیک ہے';

  @override
  String get rateWordGood => 'اچھا';

  @override
  String get rateWordLoved => 'بہت پسند آیا!';

  @override
  String get rateWhatWentWrong => 'کیا غلط ہوا؟';

  @override
  String get rateWhatYouLiked => 'آپ کو کیا پسند آیا؟';

  @override
  String get rateRiderNoteHint => 'ڈیلیوری کے بارے میں نوٹ (اختیاری)';

  @override
  String get rateReviewHeading => 'جائزہ لکھیں';

  @override
  String get rateFoodFirst => 'بھیجنے کے لیے کھانے کو ریٹ کریں';

  @override
  String get rateYouRated => 'آپ نے اس آرڈر کو ریٹ کیا';

  @override
  String get ratePromptLater => 'ابھی نہیں';

  @override
  String get tagTasty => 'مزیدار';

  @override
  String get tagFreshHot => 'گرم اور تازہ';

  @override
  String get tagGoodPortion => 'اچھی مقدار';

  @override
  String get tagGoodPackaging => 'اچھی پیکنگ';

  @override
  String get tagValueForMoney => 'پیسہ وصول';

  @override
  String get tagHygienic => 'صاف ستھرا';

  @override
  String get tagColdFood => 'ٹھنڈا کھانا';

  @override
  String get tagPoorTaste => 'ذائقہ اچھا نہیں تھا';

  @override
  String get tagSmallPortion => 'کم مقدار';

  @override
  String get tagWrongItems => 'غلط چیزیں';

  @override
  String get tagMissingItems => 'کچھ چیزیں غائب';

  @override
  String get tagPoorPackaging => 'خراب پیکنگ';

  @override
  String get tagTooOily => 'بہت زیادہ تیل یا مرچ';

  @override
  String get tagOnTime => 'وقت پر';

  @override
  String get tagPolite => 'خوش اخلاق';

  @override
  String get tagFollowedInstructions => 'ہدایات پر عمل کیا';

  @override
  String get tagCarefulHandling => 'کھانا احتیاط سے لائے';

  @override
  String get tagGoodCommunication => 'مجھے باخبر رکھا';

  @override
  String get tagLate => 'دیر سے ڈیلیوری';

  @override
  String get tagRude => 'بدتمیزی';

  @override
  String get tagIgnoredInstructions => 'ہدایات پر عمل نہیں کیا';

  @override
  String get tagFoodSpilled => 'کھانا گر گیا';

  @override
  String get tagAskedExtraMoney => 'زیادہ پیسے مانگے';

  @override
  String get tagUnprofessional => 'غیر پیشہ ورانہ رویہ';

  @override
  String rateDeliveredBy(String name) {
    return '$name نے ڈیلیور کیا';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant سے';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant سے آپ کا آرڈر کیسا رہا؟';
  }

  @override
  String get orderDeliveredTitle => 'ڈیلیور ہو گیا';

  @override
  String get orderDeliveredSubtitle => 'کھانے سے لطف اٹھائیں۔';

  @override
  String get statusOrderPlaced => 'آرڈر ہو گیا';

  @override
  String get statusPreparing => 'کھانا تیار ہو رہا ہے';

  @override
  String get statusOnTheWay => 'راستے میں ہے';

  @override
  String get statusDelivered => 'ڈیلیور ہو گیا';

  @override
  String get keepBrowsing => 'دیکھتے رہیں';

  @override
  String get backToHome => 'ہوم پر واپس';

  @override
  String get prototypeNotice =>
      'نمونہ اسٹور فرنٹ — اصلی دکانیں کیٹلاگ API کے ساتھ آئیں گی۔';

  @override
  String get prototypeCheckoutNotice =>
      'یہ ایک پروٹوٹائپ ہے۔ کوئی ادائیگی نہیں لی جاتی اور نہ ہی کوئی حقیقی آرڈر ہوتا ہے۔';

  @override
  String get prototypeTrackingNotice => 'پروٹوٹائپ کے لیے ٹریکنگ مصنوعی ہے۔';

  @override
  String get locationTitle => 'ڈیلیوری کہاں کرنی ہے؟';

  @override
  String get locationSubtitle =>
      'Nexmile صرف 1 کلومیٹر کے اندر کی دکانوں سے ڈیلیوری کرتا ہے، اس لیے ہمیں آپ کی درست جگہ چاہیے۔';

  @override
  String get locationReasonRadiusTitle => '1 کلومیٹر کے اندر کی دکانیں';

  @override
  String get locationReasonRadiusBody =>
      'ہم صرف وہی باورچی خانے دکھاتے ہیں جہاں سے کھانا گرم پہنچے۔';

  @override
  String get locationReasonAccuracyTitle => 'بالکل صحیح دروازے تک';

  @override
  String get locationReasonAccuracyBody =>
      'درست پن ہو تو ڈیلیوری پارٹنر فون کیے بغیر آپ تک پہنچ جاتا ہے۔';

  @override
  String get locationReasonPrivacyTitle => 'صرف ایپ استعمال کرتے وقت';

  @override
  String get locationReasonPrivacyBody =>
      'ہم پس منظر میں آپ کو ٹریک نہیں کرتے، اور پتہ آپ خود بھی لکھ سکتے ہیں۔';

  @override
  String get allowLocation => 'مقام کی اجازت دیں';

  @override
  String get enterAddressManually => 'میں پتہ خود لکھوں گا';

  @override
  String get locationDenied =>
      'مقام کی اجازت نہیں ملی۔ آپ پن خود بھی لگا سکتے ہیں۔';

  @override
  String get locationDeniedForever =>
      'Nexmile کے لیے مقام بند ہے۔ ترتیبات میں آن کریں یا پن خود لگائیں۔';

  @override
  String get locationServiceOff => 'اس ڈیوائس پر مقام بند ہے۔';

  @override
  String get locationUnavailable =>
      'مقام حاصل نہیں ہو سکا۔ براہ کرم پن خود لگائیں۔';

  @override
  String permStepCount(int step, int total) {
    return '$total میں سے $step';
  }

  @override
  String get permNotNow => 'ابھی نہیں';

  @override
  String get permLocationTitle => 'اپنے قریب کھانا تلاش کریں';

  @override
  String get permNotifyTitle => 'آرڈر کی کوئی اپ ڈیٹ نہ چھوٹے';

  @override
  String get permNotifyBody =>
      'نوٹیفکیشن آن کریں تاکہ پتہ چلے کہ آپ کا آرڈر کب قبول ہوا، کب اٹھایا گیا اور کب آپ کے دروازے پر پہنچا۔';

  @override
  String get permNotifyLiveTitle => 'آرڈر کی لائیو اپ ڈیٹس';

  @override
  String get permNotifyLiveBody =>
      'قبول ہوا، تیار ہو رہا ہے، اٹھا لیا گیا، ڈیلیور ہو گیا۔';

  @override
  String get permNotifyRiderTitle => 'رائیڈر آپ کے دروازے پر';

  @override
  String get permNotifyRiderBody => 'ایپ دیکھے بغیر جانیں کہ کب باہر آنا ہے۔';

  @override
  String get permNotifyControlTitle => 'کنٹرول آپ کے ہاتھ میں';

  @override
  String get permNotifyControlBody =>
      'اپنے فون کی ترتیبات میں کسی بھی وقت نوٹیفکیشن بند کریں۔';

  @override
  String get permNotifyAllow => 'نوٹیفکیشن آن کریں';

  @override
  String get openSettings => 'ترتیبات';

  @override
  String get pinLocationTitle => 'اپنا ڈیلیوری پن لگائیں';

  @override
  String get deliveryRadiusHint =>
      'دائرہ وہ 1 کلومیٹر دکھاتا ہے جس میں Nexmile ڈیلیوری کرتا ہے۔';

  @override
  String get useMyLocation => 'میرا مقام استعمال کریں';

  @override
  String get deliveringHere => 'یہاں ڈیلیوری';

  @override
  String get dragToAdjust => 'پن بدلنے کے لیے نقشہ کھسکائیں';

  @override
  String get confirmLocation => 'مقام کی تصدیق کریں';

  @override
  String get addressDetailsTitle => 'پتے کی تفصیلات';

  @override
  String get addressDetailsSubtitle =>
      'صحیح دروازے تک پہنچنے کے لیے مکان نمبر اور نشانی شامل کریں۔';

  @override
  String get pinnedLocation => 'منتخب مقام';

  @override
  String get changePin => 'تبدیل کریں';

  @override
  String get saveAddressAs => 'یہ پتہ ایسے محفوظ کریں';

  @override
  String get labelHome => 'گھر';

  @override
  String get labelWork => 'دفتر';

  @override
  String get labelOther => 'دیگر';

  @override
  String get addressLine1Label => 'مکان، فلیٹ یا عمارت';

  @override
  String get addressLine1Hint => '12A، گرین ریزیڈنسی';

  @override
  String get addressLine2Label => 'گلی یا علاقہ';

  @override
  String get addressLine2Hint => 'دوسری ایونیو، انا نگر';

  @override
  String get landmarkLabel => 'نشانی';

  @override
  String get landmarkHint => 'بس اسٹاپ کے سامنے';

  @override
  String get cityLabel => 'شہر';

  @override
  String get stateLabel => 'ریاست';

  @override
  String get pincodeLabel => 'پن کوڈ';

  @override
  String get invalidPincode => 'درست 6 ہندسوں کا پن کوڈ درج کریں';

  @override
  String get contactNameLabel => 'رابطہ نام';

  @override
  String get contactPhoneLabel => 'رابطہ نمبر';

  @override
  String get invalidMobileNumber => 'درست 10 ہندسوں کا موبائل نمبر درج کریں';

  @override
  String get makeDefaultAddress => 'بطور ڈیفالٹ یہیں ڈیلیوری';

  @override
  String get saveAddress => 'پتہ محفوظ کریں';

  @override
  String get addressSaved => 'پتہ محفوظ ہو گیا';

  @override
  String get addressBookTitle => 'ڈیلیوری کے پتے';

  @override
  String get manageAddresses => 'محفوظ پتے سنبھالیں';

  @override
  String get noAddressesTitle => 'ابھی کوئی پتہ نہیں';

  @override
  String get noAddressesSubtitle =>
      'ایک پتہ شامل کریں تاکہ ہم آپ تک ڈیلیوری کرنے والی دکانیں دکھا سکیں۔';

  @override
  String get addAddress => 'پتہ شامل کریں';

  @override
  String get setAsDefault => 'ڈیفالٹ بنائیں';

  @override
  String get editLabel => 'ترمیم';

  @override
  String get addressUpdated => 'پتہ اپ ڈیٹ ہو گیا';

  @override
  String get deleteLabel => 'حذف کریں';

  @override
  String get deleteAddressTitle => 'یہ پتہ حذف کریں؟';

  @override
  String get deleteAddressMessage => 'آپ اسے بعد میں دوبارہ شامل کر سکتے ہیں۔';

  @override
  String get rescueDealsTitle => 'فوڈ ریسکیو';

  @override
  String get notTakingOrders => 'آرڈر نہیں لیے جا رہے';

  @override
  String get closedRightNow => 'ابھی بند ہے';

  @override
  String minimumOrder(String amount) {
    return 'کم از کم $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count باقی';
  }

  @override
  String get soldOut => 'ختم ہو گیا';

  @override
  String get menuEmptyTitle => 'ابھی کوئی پکوان نہیں';

  @override
  String get menuEmptySubtitle => 'اس ریستوران نے اپنا مینو شامل نہیں کیا۔';

  @override
  String get moreDishesTitle => 'مزید پکوان';

  @override
  String get menuSearchHint => 'پکوان تلاش کریں';

  @override
  String get filtersShort => 'فلٹر';

  @override
  String get dietVeg => 'سبزی';

  @override
  String get dietEgg => 'انڈا';

  @override
  String get dietNonVeg => 'نان ویج';

  @override
  String get menuBestsellerChip => 'سب سے زیادہ فروخت';

  @override
  String get menuFoodType => 'کھانے کی قسم';

  @override
  String get menuShowOnly => 'صرف یہ دکھائیں';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پکوان',
      one: '1 پکوان',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پکوان دکھائیں',
      one: '1 پکوان دکھائیں',
      zero: 'کوئی پکوان نہیں',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'کسی اور پکوان کا نام آزمائیں، یا کوئی فلٹر ہٹا دیں۔';

  @override
  String get menuBrowse => 'مینو';

  @override
  String get customisable => 'اپنی پسند کے مطابق';

  @override
  String get requiredLabel => 'لازمی';

  @override
  String get optionalLabel => 'اختیاری';

  @override
  String get chooseOne => 'ایک منتخب کریں';

  @override
  String chooseUpTo(int count) {
    return 'زیادہ سے زیادہ $count منتخب کریں';
  }

  @override
  String chooseAtLeast(int count) {
    return 'کم از کم $count منتخب کریں';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min سے $max منتخب کریں';
  }

  @override
  String get specialInstructions => 'خاص ہدایات';

  @override
  String get specialInstructionsHint => 'کم مرچ، پیاز نہیں…';

  @override
  String addForAmount(String amount) {
    return 'شامل کریں · $amount';
  }

  @override
  String get deliveryLabel => 'ڈیلیوری';

  @override
  String get pickupLabel => 'خود لے جانا';

  @override
  String get packagingLabel => 'پیکنگ';

  @override
  String get discountLabel => 'رعایت';

  @override
  String get billDetailsTitle => 'بل کی تفصیل';

  @override
  String get clearCart => 'کارٹ خالی کریں';

  @override
  String get clearCartTitle => 'یہ کارٹ خالی کریں؟';

  @override
  String get clearCartMessage => 'اس میں موجود ہر چیز ہٹا دی جائے گی۔';

  @override
  String unavailableItemsNotice(String items) {
    return 'اب دستیاب نہیں: $items';
  }

  @override
  String get removeUnavailable => 'انہیں ہٹا دیں';

  @override
  String minimumNotMet(String amount) {
    return 'کم از کم آرڈر $amount ہے';
  }

  @override
  String get checkoutTitle => 'چیک آؤٹ';

  @override
  String get deliveryAddressLabel => 'ڈیلیوری کا پتہ';

  @override
  String get noAddressSelected => 'کوئی پتہ منتخب نہیں';

  @override
  String get paymentMethodLabel => 'ادائیگی';

  @override
  String get payOnDelivery => 'ڈیلیوری پر نقد';

  @override
  String get noteToRestaurant => 'ریستوران کے لیے نوٹ';

  @override
  String get noteToRestaurantHint => 'گھنٹی دو بار بجائیں…';

  @override
  String get activeOrdersTitle => 'جاری آرڈر';

  @override
  String get pastOrdersTitle => 'پرانے آرڈر';

  @override
  String get orderItemsTitle => 'پکوان';

  @override
  String get orderProgressTitle => 'پیش رفت';

  @override
  String get arrivingIn => 'پہنچنے میں';

  @override
  String get pickupCodeLabel => 'پک اپ کوڈ';

  @override
  String get cancellationReasonLabel => 'منسوخی کی وجہ';

  @override
  String get riderLabel => 'ڈیلیوری پارٹنر';

  @override
  String get callRider => 'کال کریں';

  @override
  String get trackRider => 'رائیڈر ٹریک کریں';

  @override
  String get riderLocationSoon =>
      'آرڈر اٹھانے کے بعد رائیڈر کا مقام یہاں دکھائی دے گا۔';

  @override
  String get riderLocationStale => 'رائیڈر کا مقام اپ ڈیٹ ہو رہا ہے…';

  @override
  String get recentreOnRider => 'رائیڈر پر مرکوز کریں';

  @override
  String get viewInvoice => 'ٹیکس انوائس';

  @override
  String get cancelOrder => 'آرڈر منسوخ کریں';

  @override
  String get cancelOrderTitle => 'یہ آرڈر منسوخ کریں؟';

  @override
  String get cancelOrderMessage =>
      'ریستوران کے قبول کرنے سے پہلے ہی منسوخ کیا جا سکتا ہے۔';

  @override
  String get cancelReasonLabel => 'وجہ';

  @override
  String get cancelReasonFallback => 'گاہک نے منسوخ کیا';

  @override
  String get orderCancelled => 'آرڈر منسوخ ہو گیا';

  @override
  String get currentLocationLabel => 'موجودہ مقام';

  @override
  String get onLabel => 'آن';

  @override
  String get offLabel => 'آف';

  @override
  String get profileCoupons => 'آپ کے کوپن';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count استعمال کے لیے',
      one: '1 استعمال کے لیے',
      zero: 'ابھی کوئی نہیں',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'آپ کی ترجیحات';

  @override
  String get profileVegMode => 'سبزی موڈ';

  @override
  String get profileVegModeHint => 'صرف سبزی والے ریستوران اور پکوان';

  @override
  String get profileAppearance => 'ظاہری شکل';

  @override
  String get appearanceSystem => 'فون کے مطابق';

  @override
  String get appearanceLight => 'لائٹ';

  @override
  String get appearanceDark => 'ڈارک';

  @override
  String get profileNotifications => 'نوٹیفکیشنز';

  @override
  String get profileFoodDelivery => 'کھانے کی ڈیلیوری';

  @override
  String get profileFavourites => 'آپ کے پسندیدہ';

  @override
  String get profileHelp => 'مدد اور سپورٹ';

  @override
  String get profileMore => 'مزید';

  @override
  String get profileFeedback => 'رائے بھیجیں';

  @override
  String get profileSafety => 'حفاظتی ایمرجنسی کی اطلاع دیں';

  @override
  String get profileAbout => 'Nexmile کے بارے میں';

  @override
  String get couponsEmptyTitle => 'ابھی کوئی کوپن نہیں';

  @override
  String get couponsEmptyBody =>
      'جب کوئی کوپن آپ کے استعمال کے لیے ہوگا، وہ یہاں دکھائی دے گا۔';

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
    return 'زیادہ سے زیادہ $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount سے زیادہ کے آرڈر پر';
  }

  @override
  String couponValidTill(String date) {
    return '$date تک کارآمد';
  }

  @override
  String get couponAllRestaurants => 'تمام ریستوران پر';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant پر';
  }

  @override
  String couponCopied(String code) {
    return 'کوڈ $code کاپی ہو گیا';
  }

  @override
  String get favouritesEmptyTitle => 'ابھی کوئی پسندیدہ نہیں';

  @override
  String get favouritesEmptyBody =>
      'کسی ریستوران کو یہاں محفوظ کرنے کے لیے اس پر دل کا نشان دبائیں۔';

  @override
  String get helpCall => 'ہمیں کال کریں';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'ہمیں ای میل کریں';

  @override
  String helpHours(String hours) {
    return 'ہم $hours دستیاب ہیں';
  }

  @override
  String get helpFaqs => 'عام سوالات';

  @override
  String get helpNothing =>
      'مدد کی تفصیلات ابھی دستیاب نہیں۔ براہ کرم کچھ دیر بعد دوبارہ کوشش کریں۔';

  @override
  String get feedbackPrompt => 'Nexmile آپ کے لیے کیسا چل رہا ہے؟';

  @override
  String get feedbackHint =>
      'بتائیں آپ کو کیا پسند آیا، یا ہم کیا بہتر کر سکتے ہیں';

  @override
  String get feedbackNeedRating => 'پہلے ریٹنگ منتخب کریں';

  @override
  String get feedbackThanks => 'شکریہ! آپ کی رائے ہماری ٹیم تک پہنچ گئی۔';

  @override
  String get safetyIntro =>
      'اگر آپ یا کوئی اور خطرے میں ہے تو پہلے ایمرجنسی سروسز کو کال کریں۔';

  @override
  String get safetyCallEmergency => '112 پر کال کریں';

  @override
  String get safetyCallEmergencyBody => 'پولیس، فائر بریگیڈ اور ایمبولینس';

  @override
  String get safetyCallNexmile => 'Nexmile سیفٹی لائن پر کال کریں';

  @override
  String get safetyCallNexmileBody => 'ہر وقت دستیاب';

  @override
  String aboutVersion(String version) {
    return 'ورژن $version';
  }

  @override
  String get aboutTerms => 'سروس کی شرائط';

  @override
  String get aboutPrivacy => 'رازداری کی پالیسی';

  @override
  String get aboutLicences => 'اوپن سورس لائسنس';

  @override
  String get notifyOrderUpdates => 'آرڈر اپ ڈیٹس';

  @override
  String get notifyOrderUpdatesBody =>
      'ہمیشہ آن، تاکہ آپ جانیں کہ آپ کا کھانا کہاں ہے۔';

  @override
  String get notifyPromotions => 'آفرز اور پروموشنز';

  @override
  String get notifyPromotionsBody => 'آپ کے قریب ڈیلز، کوپن اور نئے ریستوران۔';

  @override
  String get notifyPhoneOff => 'اس فون پر Nexmile کے نوٹیفکیشن بند ہیں۔';

  @override
  String get notifyTurnOn => 'آن کریں';

  @override
  String get linkOpenFailed => 'یہ اس فون پر نہیں کھل سکا۔';

  @override
  String get editProfileTitle => 'پروفائل میں تبدیلی';

  @override
  String get editProfileSubtitle =>
      'ریستوران اور ڈیلیوری پارٹنر کو آپ کا نام ہی نظر آتا ہے۔';

  @override
  String get saveChanges => 'تبدیلیاں محفوظ کریں';

  @override
  String get profileUpdated => 'پروفائل اپ ڈیٹ ہو گئی';

  @override
  String get deleteAccount => 'اکاؤنٹ حذف کریں';

  @override
  String get deleteAccountTitle => 'اپنا اکاؤنٹ حذف کریں؟';

  @override
  String get deleteAccountMessage =>
      'ہر ڈیوائس سے سائن آؤٹ ہو جائیں گے۔ پرانے آرڈر اور بل ٹیکس ریکارڈ کے لیے رکھے جاتے ہیں۔';

  @override
  String get accountDeleted => 'آپ کا اکاؤنٹ حذف کر دیا گیا';

  @override
  String get devicesTitle => 'سائن ان ڈیوائسز';

  @override
  String get devicesSubtitle => 'آپ کہاں سائن ان ہیں';

  @override
  String get devicesEmptyTitle => 'کوئی اور ڈیوائس نہیں';

  @override
  String get devicesEmptySubtitle => 'آپ صرف اسی ڈیوائس پر سائن ان ہیں۔';

  @override
  String get signOutDevice => 'سائن آؤٹ';

  @override
  String get signOutDeviceTitle => 'یہ ڈیوائس سائن آؤٹ کریں؟';

  @override
  String get signOutDeviceMessage =>
      'اگر آپ یہی ڈیوائس استعمال کر رہے ہیں تو دوبارہ سائن ان کرنا ہوگا۔';

  @override
  String get deviceSignedOut => 'ڈیوائس سائن آؤٹ ہو گئی';

  @override
  String get signOutEverywhere => 'ہر جگہ سے سائن آؤٹ';

  @override
  String get signOutEverywhereTitle => 'ہر جگہ سے سائن آؤٹ کریں؟';

  @override
  String get signOutEverywhereMessage =>
      'اس ڈیوائس سمیت ہر ڈیوائس سائن آؤٹ ہو جائے گی۔';

  @override
  String get unknownDevice => 'نامعلوم ڈیوائس';

  @override
  String get activeNow => 'ابھی فعال';

  @override
  String minutesAgo(int count) {
    return '$count منٹ پہلے';
  }

  @override
  String hoursAgo(int count) {
    return '$count گھنٹے پہلے';
  }

  @override
  String daysAgo(int count) {
    return '$count دن پہلے';
  }

  @override
  String get filtersAndSorting => 'فلٹر اور ترتیب';

  @override
  String get clearAll => 'سب ہٹا دیں';

  @override
  String get showResults => 'نتائج دیکھیں';

  @override
  String get closeLabel => 'بند کریں';

  @override
  String get sortByTitle => 'ترتیب دیں';

  @override
  String get sortRelevance => 'مطابقت';

  @override
  String get sortRating => 'ریٹنگ';

  @override
  String get sortDeliveryTime => 'ڈیلیوری وقت';

  @override
  String get sortCostLowHigh => 'قیمت: کم سے زیادہ';

  @override
  String get sortCostHighLow => 'قیمت: زیادہ سے کم';

  @override
  String get timeSection => 'وقت';

  @override
  String get nearAndFast => 'قریب اور تیز';

  @override
  String get openNow => 'ابھی کھلا';

  @override
  String get ratingSection => 'ریستوران ریٹنگ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ریٹنگ';
  }

  @override
  String get offersSection => 'آفرز';

  @override
  String get hasOffersLabel => 'آفر والے';

  @override
  String get dishPriceSection => 'پکوان کی قیمت';

  @override
  String costUnder(String amount) {
    return '$amount سے کم';
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
  String get moreSection => 'مزید';

  @override
  String get noPackagingCharges => 'پیکنگ چارج نہیں';

  @override
  String get allRestaurantsTitle => 'تمام ریستوران';

  @override
  String get whatsOnYourMind => 'کیا کھانے کا دل ہے؟';

  @override
  String get listeningNow => 'سن رہے ہیں…';

  @override
  String get speakNowHint => 'کوئی پکوان یا ریستوران بولیں';

  @override
  String get voiceUnavailable => 'وائس سرچ دستیاب نہیں';

  @override
  String get voiceUnavailableBody => 'آپ ٹائپ کر کے بھی تلاش کر سکتے ہیں۔';

  @override
  String get microphoneDenied => 'مائیکروفون کی اجازت بند ہے';

  @override
  String get voiceSearchLabel => 'آواز سے تلاش کریں';

  @override
  String get ratingsAndReviews => 'ریٹنگ اور جائزے';

  @override
  String get reviewsWithTextOnly => 'جائزے والے';

  @override
  String get noReviewsTitle => 'ابھی کوئی ریٹنگ نہیں';

  @override
  String get noReviewsSubtitle => 'آرڈر کے بعد پہلی ریٹنگ آپ دیں۔';

  @override
  String get rateOrderTitle => 'اپنے آرڈر کو ریٹ کریں';

  @override
  String get rateDishesTitle => 'کھانوں کو ریٹ کریں';

  @override
  String get reviewHint => 'کچھ اور کہنا چاہیں گے؟ (اختیاری)';

  @override
  String get submitRating => 'ریٹنگ بھیجیں';

  @override
  String get reviewThanks => 'شکریہ — آپ کی ریٹنگ موصول ہو گئی۔';

  @override
  String get rateThisOrder => 'اس آرڈر کو ریٹ کریں';

  @override
  String get walletTitle => 'Nexmile والیٹ';

  @override
  String get walletBalance => 'والیٹ بیلنس';

  @override
  String get walletBalanceHint =>
      'اسے کسی بھی آرڈر کی ادائیگی کے لیے استعمال کریں۔';

  @override
  String get walletAddMoney => 'پیسے شامل کریں';

  @override
  String get walletEnterAmount => 'رقم درج کریں';

  @override
  String walletAmountRange(String min, String max) {
    return '$min سے $max کے درمیان';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount شامل کریں';
  }

  @override
  String get walletSecuredBy => 'ادائیگیاں Razorpay کے ذریعے محفوظ ہیں';

  @override
  String get walletHistory => 'ہسٹری';

  @override
  String get walletNoHistory =>
      'ابھی کوئی لین دین نہیں۔ آپ جو پیسے شامل یا خرچ کریں گے وہ یہاں دکھائی دیں گے۔';

  @override
  String get walletEntryTopUp => 'پیسے شامل کیے گئے';

  @override
  String get walletEntryOrder => 'آرڈر کی ادائیگی';

  @override
  String walletEntryOrderNumber(String number) {
    return 'آرڈر $number کی ادائیگی';
  }

  @override
  String get walletEntryRefund => 'ریفنڈ';

  @override
  String walletMoneyAdded(String amount) {
    return '$amount آپ کے والیٹ میں شامل ہو گئے';
  }

  @override
  String get walletPaymentFailed =>
      'ادائیگی ناکام ہو گئی۔ آپ کے اکاؤنٹ سے کوئی پیسہ نہیں کٹا۔';

  @override
  String get walletPaymentConfirming =>
      'ادائیگی موصول ہو گئی۔ آپ کا بیلنس چند منٹ میں اپ ڈیٹ ہو جائے گا۔';

  @override
  String get walletUseBalance => 'والیٹ بیلنس استعمال کریں';

  @override
  String walletAvailable(String amount) {
    return 'دستیاب: $amount';
  }

  @override
  String get walletPaidFromWallet => 'والیٹ سے ادا کیا';

  @override
  String get walletPayOnDelivery => 'ڈیلیوری پر ادائیگی';

  @override
  String get walletCoversOrder => 'پوری ادائیگی آپ کے والیٹ سے';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet والیٹ سے، $rest ڈیلیوری پر';
  }

  @override
  String get walletTopUpUnavailable =>
      'پیسے شامل کرنے کی سہولت ابھی دستیاب نہیں۔ براہ کرم کچھ دیر بعد دوبارہ کوشش کریں۔';

  @override
  String walletFull(String limit) {
    return 'آپ کا والیٹ $limit کی حد تک پہنچ گیا ہے۔';
  }

  @override
  String get searchAddressHint => 'علاقہ، گلی یا نشانی تلاش کریں';

  @override
  String get selectLocationTitle => 'مقام منتخب کریں';

  @override
  String get useCurrentLocation => 'موجودہ مقام استعمال کریں';

  @override
  String get locatingYou => 'آپ کا مقام معلوم کیا جا رہا ہے…';

  @override
  String get locationOffHint => 'اسے استعمال کرنے کے لیے مقام کی اجازت دیں';

  @override
  String get savedAddressesHeading => 'محفوظ پتے';

  @override
  String get recentLocationsHeading => 'حالیہ مقامات';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ڈیلیوری کا مقام منتخب کریں';

  @override
  String get movePinTooltip => 'پن کو اپنے درست ڈیلیوری مقام پر لے جائیں';

  @override
  String get locatingPin => 'پتہ معلوم کیا جا رہا ہے…';

  @override
  String get deliveryDetailsHeading => 'ڈیلیوری کی تفصیلات';

  @override
  String get addressDetailsLabel => 'پتے کی تفصیلات*';

  @override
  String get addressDetailsHint => 'مثلاً منزل، مکان نمبر';

  @override
  String get missingAreaHint =>
      'ہم اس پن کا پورا پتہ نہیں پڑھ سکے۔ براہ کرم باقی تفصیل خود بھریں۔';

  @override
  String get whoToContact => 'اس ڈیلیوری کے لیے ہم کس سے رابطہ کریں؟';

  @override
  String get contactMyself => 'میں خود';

  @override
  String get contactSomeoneElse => 'کوئی اور';

  @override
  String get receiverDetailsHeading => 'اس پتے پر وصول کنندہ کی تفصیلات';

  @override
  String get receiverAddPrompt => 'وصول کنندہ کا نام اور نمبر شامل کریں';

  @override
  String get receiverSheetTitle => 'وصول کنندہ کی تفصیلات';

  @override
  String get doorPhotoHeading => 'دروازے/عمارت کی تصویر (اختیاری)';

  @override
  String get doorPhotoAdd => 'تصویر شامل کریں';

  @override
  String get doorPhotoBody =>
      'اس سے ہمارے ڈیلیوری پارٹنرز آپ کا درست مقام جلدی ڈھونڈ لیتے ہیں';

  @override
  String get doorPhotoChange => 'تبدیل کریں';

  @override
  String get doorPhotoRemove => 'ہٹائیں';

  @override
  String get photoFromCamera => 'تصویر کھینچیں';

  @override
  String get photoFromGallery => 'گیلری سے منتخب کریں';

  @override
  String get photoUploaded => 'تصویر شامل ہو گئی';

  @override
  String get photoUploadFailed =>
      'تصویر اپ لوڈ نہیں ہو سکی۔ براہ کرم کچھ دیر بعد دوبارہ کوشش کریں۔';

  @override
  String get addressSavedPhotoFailed =>
      'پتہ محفوظ ہو گیا۔ تصویر اپ لوڈ نہیں ہو سکی۔';

  @override
  String get removePhotoLabel => 'تصویر ہٹائیں';

  @override
  String get photoRemoved => 'تصویر ہٹا دی گئی';

  @override
  String get shareLabel => 'شیئر کریں';

  @override
  String get addDoorPhotoLabel => 'دروازے کی تصویر شامل کریں';

  @override
  String get searchAddressNoResults =>
      'کوئی جگہ نہیں ملی۔ قریبی نشانی، علاقے کا نام یا پن کوڈ آزمائیں۔';

  @override
  String get clearLabel => 'صاف کریں';

  @override
  String get trackingArrivingNow => 'بس پہنچ رہا ہے';

  @override
  String get trackingLive => 'لائیو';

  @override
  String get trackingStepConfirmed => 'تصدیق ہو گئی';

  @override
  String get trackingStepPreparing => 'تیار ہو رہا ہے';

  @override
  String get trackingStepOnTheWay => 'راستے میں';

  @override
  String get trackingStepDelivered => 'ڈیلیور ہو گیا';

  @override
  String get trackingFindingRider => 'ڈیلیوری پارٹنر مقرر کیا جا رہا ہے…';

  @override
  String get trackingPinYou => 'آپ';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance دور ہیں';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name کو میسج کریں';
  }

  @override
  String get trackingDeliveringTo => 'ڈیلیوری کا پتہ';

  @override
  String get trackingOrderDetails => 'آرڈر کی تفصیلات';

  @override
  String get dispatchSearching =>
      'ریستوران کے قریب ڈیلیوری پارٹنر تلاش کیا جا رہا ہے…';

  @override
  String get dispatchNoRider =>
      'ابھی تک کسی ڈیلیوری پارٹنر نے یہ آرڈر نہیں لیا۔ ہماری ٹیم ابھی ایک پارٹنر مقرر کر رہی ہے۔';

  @override
  String get vehicleBike => 'بائیک';

  @override
  String get vehicleScooter => 'اسکوٹر';

  @override
  String get vehicleBicycle => 'سائیکل';

  @override
  String get vehicleElectric => 'الیکٹرک اسکوٹر';

  @override
  String get exitTitle => 'Nexmile سے باہر نکلیں؟';

  @override
  String get exitBody => 'کیا آپ واقعی ایپ سے باہر نکلنا چاہتے ہیں؟';

  @override
  String get exitConfirm => 'باہر نکلیں';

  @override
  String cartSavedBanner(String amount) {
    return 'آپ نے اس آرڈر پر $amount بچائے';
  }

  @override
  String get cartAddMoreItems => 'مزید چیزیں شامل کریں';

  @override
  String get cartAddNote => 'ریستوران کے لیے نوٹ شامل کریں';

  @override
  String get cartOrderNoteHint => 'مثلاً کسی بھی چیز میں پیاز یا لہسن نہ ڈالیں';

  @override
  String get cartNoteSave => 'محفوظ کریں';

  @override
  String get cartNoCutlery => 'چمچ کانٹے نہ بھیجیں';

  @override
  String get cartNoCutleryThanks => 'پلاسٹک کا کچرا کم کرنے میں مدد کا شکریہ';

  @override
  String get cartSavingsCorner => 'بچت کارنر';

  @override
  String get cartDeliveryInstructions => 'ڈیلیوری کی ہدایات';

  @override
  String get cartInstructionsRider =>
      'یہ ہدایات صرف آپ کے ڈیلیوری پارٹنر کو نظر آتی ہیں';

  @override
  String get instructionLeaveAtDoor => 'دروازے پر چھوڑ دیں';

  @override
  String get instructionNoBell => 'گھنٹی نہ بجائیں';

  @override
  String get instructionNoCall => 'کال نہ کریں';

  @override
  String get instructionSecurity => 'سکیورٹی گارڈ کو دیں';

  @override
  String get instructionPet => 'گھر میں پالتو جانور ہے';

  @override
  String get cartInclTaxes => 'ٹیکس اور چارجز شامل';

  @override
  String cartSavedTag(String amount) {
    return '$amount کی بچت';
  }

  @override
  String get cartPayUsing => 'ادائیگی کا طریقہ';

  @override
  String get cartWalletAndCash => 'والیٹ + نقد';

  @override
  String cartCashRest(String amount) {
    return 'پہنچنے پر $amount ادا کریں';
  }

  @override
  String get cartCashFull => 'آرڈر پہنچنے پر ادائیگی کریں';

  @override
  String get cartCashNothing => 'ڈیلیوری پر کچھ ادا نہیں کرنا';

  @override
  String get cartTotal => 'کل';

  @override
  String get cartPlaceOrder => 'آرڈر کریں';

  @override
  String cartDeliverTo(String place) {
    return '$place پر ڈیلیوری';
  }

  @override
  String get cartChange => 'تبدیل کریں';

  @override
  String get cartNoAddress => 'ڈیلیوری کہاں کرنی ہے؟';

  @override
  String get cartNoAddressHint => 'آرڈر کرنے کے لیے پتہ شامل کریں';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant سے خود لیں';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'تقریباً $minutes منٹ میں تیار';
  }

  @override
  String get cartChooseAddress => 'ڈیلیوری کا پتہ منتخب کریں';

  @override
  String get cartDone => 'ہو گیا';

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
      'ڈیمو: یہ جوابات نمونے ہیں۔ اصلی اسسٹنٹ ابھی منسلک نہیں ہوا۔';

  @override
  String get supportEmptyTitle => 'ہم آپ کی کیسے مدد کر سکتے ہیں؟';

  @override
  String get supportEmptyBody =>
      'کسی آرڈر، ادائیگی یا کسی بھی اور چیز کے بارے میں پوچھیں۔ پہلے ہمارا AI اسسٹنٹ جواب دیتا ہے، اور جب وہ مدد نہ کر سکے تو ہماری ٹیم کا کوئی فرد بات سنبھال لیتا ہے۔';

  @override
  String get supportSuggestWhere => 'میرا آرڈر کہاں ہے؟';

  @override
  String get supportSuggestMissing => 'کوئی چیز غائب ہے';

  @override
  String get supportSuggestRefund => 'ریفنڈ کے بارے میں میرا ایک سوال ہے';

  @override
  String get supportComposerHint => 'میسج لکھیں';

  @override
  String get supportSend => 'بھیجیں';

  @override
  String get supportTyping => 'AI اسسٹنٹ لکھ رہا ہے…';

  @override
  String get supportNotSent => 'نہیں بھیجا گیا';

  @override
  String get supportTookTooLong => 'بہت زیادہ وقت لگ گیا۔';

  @override
  String get supportSlowDown => 'مزید بھیجنے سے پہلے تھوڑا رکیں۔';

  @override
  String get supportUnreachable =>
      'ابھی چیٹ سے رابطہ نہیں ہو پا رہا۔ ہمیں کال کریں، یا چند منٹ بعد دوبارہ کوشش کریں۔';

  @override
  String get supportOffline => 'آپ آف لائن ہیں۔ یہ آپ کی آخری محفوظ چیٹ ہے۔';

  @override
  String get supportClosed => 'یہ چیٹ بند ہو چکی ہے۔';

  @override
  String get supportStartNew => 'نئی چیٹ شروع کریں';

  @override
  String get supportTalkToPerson => 'کسی انسان سے بات کریں';

  @override
  String get supportMarkSolved => 'حل ہو گیا';

  @override
  String get supportHelpful => 'مددگار';

  @override
  String get supportNotHelpful => 'مددگار نہیں';

  @override
  String get supportNeedHelp => 'مدد چاہیے؟';

  @override
  String get supportChatWithUs => 'ہم سے چیٹ کریں';

  @override
  String get supportChatWithUsBody =>
      'ہمارا AI اسسٹنٹ چند سیکنڈ میں جواب دیتا ہے، اور ضرورت ہو تو کوئی انسان بات سنبھال لیتا ہے۔';

  @override
  String get supportActionFailed => 'یہ نہیں ہو سکا۔ دوبارہ کوشش کریں۔';

  @override
  String get supportOrderNotFound => 'یہ آرڈر آپ کے اکاؤنٹ میں نہیں ملا۔';

  @override
  String get supportOrderLookupDown =>
      'ابھی یہ آرڈر دیکھا نہیں جا سکا۔ آپ اپنا سوال لکھ سکتے ہیں۔';

  @override
  String get supportHandedOverNote => 'ٹیم کا ایک رکن جواب دے گا';

  @override
  String get restaurantNew => 'نیا';

  @override
  String get walletHideBalance => 'بیلنس چھپائیں';

  @override
  String get walletShowBalance => 'بیلنس دکھائیں';

  @override
  String get walletBalanceHiddenLabel => 'بیلنس چھپا ہوا ہے';

  @override
  String walletUpdatedAt(String time) {
    return '$time کو اپ ڈیٹ ہوا';
  }

  @override
  String walletBelowMin(String amount) {
    return 'کم از کم $amount شامل کریں';
  }

  @override
  String walletAboveMax(String amount) {
    return 'آپ زیادہ سے زیادہ $amount شامل کر سکتے ہیں';
  }

  @override
  String get walletOpeningPayment => 'ادائیگی کھل رہی ہے…';

  @override
  String get walletConfirmingPayment => 'ادائیگی کی تصدیق ہو رہی ہے…';

  @override
  String get walletTransactions => 'لین دین';

  @override
  String get walletFilterAll => 'سب';

  @override
  String get walletFilterAdded => 'شامل کردہ رقم';

  @override
  String get walletFilterSpent => 'خرچ کردہ رقم';

  @override
  String get walletSearch => 'تلاش';

  @override
  String get walletSearchHint => 'آرڈر نمبر یا ID تلاش کریں';

  @override
  String get walletDateFilter => 'تاریخ کے لحاظ سے فلٹر کریں';

  @override
  String get walletClearFilters => 'فلٹر ہٹا دیں';

  @override
  String get walletNoMatches => 'آپ کے فلٹرز سے کوئی لین دین نہیں ملا';

  @override
  String get walletEmptyTitle => 'ابھی کوئی لین دین نہیں';

  @override
  String get walletEmptyBody =>
      'آپ جو پیسے شامل کریں گے، آرڈرز پر خرچ کریں گے یا ریفنڈ کے طور پر واپس پائیں گے، وہ یہاں دکھائی دیں گے۔';

  @override
  String get walletToday => 'آج';

  @override
  String get walletYesterday => 'کل';

  @override
  String walletLatestOnly(int count) {
    return 'آپ کے تازہ ترین $count لین دین دکھائے جا رہے ہیں';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'آرڈر $number کا ریفنڈ';
  }

  @override
  String get walletDetailsTitle => 'لین دین کی تفصیلات';

  @override
  String get walletDetailDate => 'تاریخ اور وقت';

  @override
  String get walletDetailId => 'لین دین ID';

  @override
  String get walletDetailType => 'قسم';

  @override
  String get walletDetailMethod => 'ادائیگی کا طریقہ';

  @override
  String get walletDetailStatus => 'حالت';

  @override
  String get walletDetailOrder => 'آرڈر';

  @override
  String get walletDetailReference => 'ادائیگی ریفرنس';

  @override
  String get walletDetailBalanceAfter => 'لین دین کے بعد بیلنس';

  @override
  String get walletCredit => 'کریڈٹ';

  @override
  String get walletDebit => 'ڈیبٹ';

  @override
  String get walletStatusSuccess => 'کامیاب';

  @override
  String get walletStatusPending => 'زیر التوا';

  @override
  String get walletStatusFailed => 'ناکام';

  @override
  String get walletMethodOnline => 'آن لائن ادائیگی';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'کارڈ';

  @override
  String get walletMethodNetbanking => 'نیٹ بینکنگ';

  @override
  String get walletMethodRefund => 'والیٹ میں ریفنڈ';

  @override
  String get walletCopyId => 'ID کاپی کریں';

  @override
  String get walletIdCopied => 'لین دین ID کاپی ہو گئی';

  @override
  String get walletShareDetails => 'تفصیلات شیئر کریں';
}
