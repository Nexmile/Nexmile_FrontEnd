// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'هي خانو ضروري آهي';

  @override
  String get tagline => 'تيز ڊليوري. تازا مرڪون.';

  @override
  String get chooseLanguageTitle => 'پنهنجي ٻولي چونڊيو';

  @override
  String get chooseLanguageSubtitle =>
      'اها ٻولي چونڊيو جنهن ۾ توهان کي آساني ٿئي. توهان ان کي ڪنهن به وقت سيٽنگون ۾ تبديل ڪري سگهو ٿا.';

  @override
  String get searchLanguageHint => 'ٻولي ڳوليو';

  @override
  String get noLanguageFound => 'ڪا به ٻولي نه ملي';

  @override
  String languagesAvailable(int count) {
    return '$count ٻوليون موجود آهن';
  }

  @override
  String get continueLabel => 'اڳتي وڌو';

  @override
  String get selectedLabel => 'چونڊيل';

  @override
  String get defaultLabel => 'ڊفالٽ';

  @override
  String get homeTitle => 'Nexmile ۾ ڀلي ڪري آيا';

  @override
  String get homeSubtitle =>
      'تازو راشن، گرم کاڌو ۽ روزمره جون ضرورتون توهان جي ويجهن دڪانن مان.';

  @override
  String get changeLanguage => 'ٻولي تبديل ڪريو';

  @override
  String get languageUpdated => 'ٻولي تبديل ٿي وئي';

  @override
  String get appLanguageLabel => 'ايپ جي ٻولي';

  @override
  String greetingNamed(String name) {
    return 'ڀلي ڪري آيا، $name';
  }

  @override
  String get loginTitle => 'Nexmile ۾ سائن ان ڪريو';

  @override
  String get loginSubtitle =>
      'پنهنجو اي ميل يا موبائل نمبر داخل ڪريو، اسان توهان کي تصديقي ڪوڊ موڪلينداسين.';

  @override
  String get emailOrPhoneLabel => 'اي ميل يا موبائل نمبر';

  @override
  String get emailOrPhoneHint => 'name@example.com يا 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'صحيح اي ميل پتو يا 10 عددن جو موبائل نمبر داخل ڪريو';

  @override
  String get loginHeadline =>
      'توهان جي ويجهن دڪانن مان گرم کاڌو، تيزيءَ سان توهان تائين';

  @override
  String get loginOrSignUp => 'لاگ ان يا سائن اپ ڪريو';

  @override
  String get loginEmailHint => 'پنهنجو اي ميل پتو داخل ڪريو';

  @override
  String get invalidEmail => 'صحيح اي ميل پتو داخل ڪريو';

  @override
  String get sendCode => 'ڪوڊ موڪليو';

  @override
  String get agreeToTermsOnContinue =>
      'اڳتي وڌڻ سان توهان اسان جي خدمت جي شرطن ۽ رازداري پاليسي سان متفق ٿيو ٿا.';

  @override
  String get otpTitle => 'تصديق ڪريو ته هي توهان ئي آهيو';

  @override
  String otpSubtitle(String target) {
    return '$target تي موڪليل 6 عددن جو ڪوڊ داخل ڪريو';
  }

  @override
  String get verifyCode => 'تصديق ڪريو';

  @override
  String get resendCode => 'ڪوڊ ٻيهر موڪليو';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds سيڪنڊن ۾ ٻيهر موڪليو';
  }

  @override
  String get codeResent => 'نئون ڪوڊ موڪليو ويو آهي';

  @override
  String get incorrectCode =>
      'هي ڪوڊ غلط آهي يا ان جي مدت ختم ٿي وئي. نئون ڪوڊ گهرو.';

  @override
  String get enterFullCode => 'پورا 6 عدد داخل ڪريو';

  @override
  String get accountSuspended =>
      'هي اڪائونٽ معطل ڪيو ويو آهي. مهرباني ڪري سپورٽ سان رابطو ڪريو.';

  @override
  String get tooManyAttempts =>
      'تمام گهڻيون ڪوششون ٿي ويون. مهرباني ڪري ٿوري دير کان پوءِ ٻيهر ڪوشش ڪريو.';

  @override
  String get sessionExpired =>
      'توهان جو سيشن ختم ٿي ويو آهي. مهرباني ڪري ٻيهر سائن ان ڪريو.';

  @override
  String get networkError =>
      'انٽرنيٽ ڪنيڪشن ناهي. پنهنجو ڪنيڪشن چيڪ ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get developmentCode => 'ڊولپمينٽ ڪوڊ';

  @override
  String get signOut => 'سائن آئوٽ';

  @override
  String get signedOut => 'توهان سائن آئوٽ ٿي ويا آهيو';

  @override
  String get somethingWentWrong =>
      'ڪجهه غلط ٿي ويو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get profileTitle => 'پروفائل';

  @override
  String get viewProfile => 'پروفائل ڏسو';

  @override
  String get nameLabel => 'نالو';

  @override
  String get emailLabel => 'اي ميل';

  @override
  String get mobileLabel => 'موبائل نمبر';

  @override
  String get accountStatusLabel => 'اڪائونٽ جي حالت';

  @override
  String get statusActive => 'فعال';

  @override
  String get statusPending => 'زير التوا';

  @override
  String get statusSuspended => 'معطل';

  @override
  String get verifiedLabel => 'تصديق ٿيل';

  @override
  String get notProvided => 'شامل نه ڪيو ويو';

  @override
  String get retry => 'ٻيهر ڪوشش ڪريو';

  @override
  String get navHome => 'هوم';

  @override
  String get navSearch => 'ڳوليو';

  @override
  String get navOrders => 'آرڊر';

  @override
  String get cancelLabel => 'منسوخ ڪريو';

  @override
  String get deliverTo => 'ڊليوري جو پتو';

  @override
  String get searchDishesHint => 'کاڌو يا ريسٽورنٽ ڳوليو';

  @override
  String get searchTitle => 'ڳوليو';

  @override
  String get searchNoResultsTitle => 'ڪجهه نه مليو';

  @override
  String get searchNoResultsSubtitle =>
      'ٻيو ڪو کاڌو، پچائڻ جو انداز يا ريسٽورنٽ جو نالو آزمايو.';

  @override
  String get cravingTitle => 'اڄ ڇا کائڻ جو دل آهي؟';

  @override
  String get offersTitle => 'توهان لاءِ آفرون';

  @override
  String get restaurantsNearby => 'توهان جي ويجهو ريسٽورنٽ';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ريسٽورنٽ',
      one: '1 ريسٽورنٽ',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'هتي اڃا ڪجهه ناهي';

  @override
  String get noRestaurantsSubtitle => 'ٻيو ڪو قسم ڏسو يا فلٽر هٽايو.';

  @override
  String minutesAway(int minutes) {
    return '$minutes منٽ';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance ڪلوميٽر';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ريٽنگون',
      one: '1 ريٽنگ',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'ٻن لاءِ ₹$amount';
  }

  @override
  String get freeDelivery => 'مفت ڊليوري';

  @override
  String percentOff(int percent) {
    return '$percent% رعايت';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'توهان جي آرڊر تي $percent% رعايت';
  }

  @override
  String get vegOnly => 'رڳو ڀاڄيون';

  @override
  String get bestseller => 'سڀ کان وڌيڪ وڪرو';

  @override
  String get addLabel => 'شامل';

  @override
  String get noVegDishesTitle => 'هتي ڀاڄين وارو کاڌو ناهي';

  @override
  String get noVegDishesSubtitle =>
      'پورو مينيو ڏسڻ لاءِ ڀاڄين وارو فلٽر بند ڪريو.';

  @override
  String get replaceCartTitle => 'نئين ڪارٽ شروع ڪجي؟';

  @override
  String replaceCartMessage(String restaurant) {
    return 'توهان جي ڪارٽ ۾ $restaurant جون شيون آهن. هي شامل ڪرڻ سان اهي هٽي وينديون.';
  }

  @override
  String get replaceCartConfirm => 'هٽائي شامل ڪريو';

  @override
  String get cartTitle => 'توهان جي ڪارٽ';

  @override
  String get cartEmptyTitle => 'توهان جي ڪارٽ خالي آهي';

  @override
  String get cartEmptySubtitle =>
      'شروع ڪرڻ لاءِ ڪنهن ريسٽورنٽ مان کاڌو شامل ڪريو.';

  @override
  String get browseRestaurants => 'ريسٽورنٽ ڏسو';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شيون',
      one: '1 شيء',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'ڪارٽ ڏسو';

  @override
  String get itemTotal => 'شين جو ڪل';

  @override
  String get deliveryFeeLabel => 'ڊليوري فيس';

  @override
  String get taxesAndCharges => 'ٽيڪس ۽ چارج';

  @override
  String get freeLabel => 'مفت';

  @override
  String get toPay => 'ادا ڪرڻو';

  @override
  String placeOrderFor(String amount) {
    return 'آرڊر ڪريو · $amount';
  }

  @override
  String get ordersTitle => 'توهان جا آرڊر';

  @override
  String get ordersEmptyTitle => 'اڃا ڪو آرڊر ناهي';

  @override
  String get ordersEmptySubtitle => 'توهان جا اڳيان آرڊر هتي نظر ايندا.';

  @override
  String get reorder => 'ٻيهر آرڊر';

  @override
  String orderTitle(String id) {
    return 'آرڊر $id';
  }

  @override
  String get orderPlacedTitle => 'آرڊر ٿي ويو';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'لڳ ڀڳ $minutes منٽن ۾ پهچندو.';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return '$restaurant کي توهان جو آرڊر ملي ويو آهي.';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'لڳ ڀڳ $minutes منٽن ۾ تيار ٿي ويندو.';
  }

  @override
  String get trackYourOrder => 'پنهنجو آرڊر ٽريڪ ڪريو';

  @override
  String get couponApplyTitle => 'ڪوپن لڳايو';

  @override
  String get couponCodeLabel => 'ڪوپن ڪوڊ';

  @override
  String get couponApply => 'لڳايو';

  @override
  String couponAppliedTitle(String code) {
    return '$code لڳي ويو';
  }

  @override
  String couponSaving(String amount) {
    return 'توهان کي $amount جي بچت';
  }

  @override
  String get couponRemove => 'هٽايو';

  @override
  String searchFor(String term) {
    return '\"$term\" ڳوليو';
  }

  @override
  String get vegModeBadge => 'خالص ڀاڄيون';

  @override
  String trackingExpectedBy(String time) {
    return '$time تائين متوقع';
  }

  @override
  String get orderAgainTitle => 'ٻيهر آرڊر ڪريو';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count وڌيڪ',
      one: '$first + 1 وڌيڪ',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max منٽ';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 مان $rating ريٽنگ';
  }

  @override
  String get reorderReplaceTitle => 'پنهنجي ڪارٽ بدلائجي؟';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant واري توهان جي ڪارٽ جي جاءِ تي هن آرڊر جا کاڌا رکيا ويندا.';
  }

  @override
  String get reorderReplace => 'بدلايو';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes هن وقت دستياب ناهن، تنهنڪري شامل نه ڪيا ويا.',
      one: '$dishes هن وقت دستياب ناهي، تنهنڪري شامل نه ڪيو ويو.',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'انهن مان ڪوبه کاڌو هن وقت دستياب ناهي.';

  @override
  String get searchShort => 'ڳوليو';

  @override
  String get favouriteSave => 'پسنديده ۾ محفوظ ڪريو';

  @override
  String get restaurantAbout => 'هن ريسٽورنٽ بابت';

  @override
  String ratingByCount(String count) {
    return '$count ريٽنگون';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آفرون',
      one: '1 آفر',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile تي $restaurant مان آرڊر ڪريو';
  }

  @override
  String get ordersSearchHint => 'ريسٽورنٽ يا کاڌي سان ڳوليو…';

  @override
  String get ordersNoMatch =>
      'انهي نالي جي ڪنهن ريسٽورنٽ يا کاڌي جو ڪو آرڊر نه مليو.';

  @override
  String orderPlacedOn(String date) {
    return 'آرڊر $date تي ڪيو ويو';
  }

  @override
  String get viewMenu => 'مينيو ڏسو';

  @override
  String get navHistory => 'هسٽري';

  @override
  String get exploreMore => 'وڌيڪ ڏسو';

  @override
  String get exploreTopRated => 'بهترين ريٽنگ';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ريسٽورنٽ توهان تائين ڊليوري ڪري رهيا آهن',
      one: '1 ريسٽورنٽ توهان تائين ڊليوري ڪري رهيو آهي',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'ڊليوري ڪيئن رهي؟';

  @override
  String get rateHowWasFood => 'کاڌو ڪيئن هو؟';

  @override
  String get rateWordTerrible => 'تمام خراب';

  @override
  String get rateWordBad => 'خراب';

  @override
  String get rateWordOkay => 'ٺيڪ';

  @override
  String get rateWordGood => 'سٺو';

  @override
  String get rateWordLoved => 'ڏاڍو پسند آيو!';

  @override
  String get rateWhatWentWrong => 'ڇا غلط ٿيو؟';

  @override
  String get rateWhatYouLiked => 'توهان کي ڇا پسند آيو؟';

  @override
  String get rateRiderNoteHint => 'ڊليوري بابت نوٽ (اختياري)';

  @override
  String get rateReviewHeading => 'جائزو لکو';

  @override
  String get rateFoodFirst => 'موڪلڻ لاءِ کاڌي کي ريٽ ڪريو';

  @override
  String get rateYouRated => 'توهان هن آرڊر کي ريٽ ڪيو';

  @override
  String get ratePromptLater => 'هينئر نه';

  @override
  String get tagTasty => 'مزيدار';

  @override
  String get tagFreshHot => 'گرم ۽ تازو';

  @override
  String get tagGoodPortion => 'سٺي مقدار';

  @override
  String get tagGoodPackaging => 'سٺي پيڪنگ';

  @override
  String get tagValueForMoney => 'پئسا وصول';

  @override
  String get tagHygienic => 'صاف سٿرو';

  @override
  String get tagColdFood => 'ٿڌو کاڌو';

  @override
  String get tagPoorTaste => 'ذائقو سٺو نه هو';

  @override
  String get tagSmallPortion => 'گھٽ مقدار';

  @override
  String get tagWrongItems => 'غلط شيون';

  @override
  String get tagMissingItems => 'ڪجهه شيون غائب';

  @override
  String get tagPoorPackaging => 'خراب پيڪنگ';

  @override
  String get tagTooOily => 'تمام گهڻو تيل يا تکو';

  @override
  String get tagOnTime => 'وقت تي';

  @override
  String get tagPolite => 'خوش اخلاق';

  @override
  String get tagFollowedInstructions => 'هدايتن تي عمل ڪيو';

  @override
  String get tagCarefulHandling => 'کاڌو احتياط سان آندو';

  @override
  String get tagGoodCommunication => 'مون کي باخبر رکيو';

  @override
  String get tagLate => 'دير سان ڊليوري';

  @override
  String get tagRude => 'بدتميزي';

  @override
  String get tagIgnoredInstructions => 'هدايتن تي عمل نه ڪيو';

  @override
  String get tagFoodSpilled => 'کاڌو هارجي ويو';

  @override
  String get tagAskedExtraMoney => 'وڌيڪ پئسا گهريا';

  @override
  String get tagUnprofessional => 'غير پيشه ورانه رويو';

  @override
  String rateDeliveredBy(String name) {
    return '$name ڊليور ڪيو';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant مان';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant مان توهان جو آرڊر ڪيئن رهيو؟';
  }

  @override
  String get orderDeliveredTitle => 'ڊليور ٿي ويو';

  @override
  String get orderDeliveredSubtitle => 'کاڌي جو مزو وٺو.';

  @override
  String get statusOrderPlaced => 'آرڊر ٿي ويو';

  @override
  String get statusPreparing => 'کاڌو تيار ٿي رهيو آهي';

  @override
  String get statusOnTheWay => 'رستي ۾ آهي';

  @override
  String get statusDelivered => 'ڊليور ٿي ويو';

  @override
  String get keepBrowsing => 'ڏسندا رهو';

  @override
  String get backToHome => 'هوم تي واپس';

  @override
  String get prototypeNotice =>
      'نمونو اسٽور فرنٽ — اصل دڪان ڪيٽلاگ API سان گڏ ايندا.';

  @override
  String get prototypeCheckoutNotice =>
      'هي هڪ پروٽوٽائپ آهي. ڪا ادائگي نه ورتي ويندي آهي ۽ نه ئي ڪو حقيقي آرڊر ٿيندو آهي.';

  @override
  String get prototypeTrackingNotice => 'پروٽوٽائپ لاءِ ٽريڪنگ مصنوعي آهي.';

  @override
  String get locationTitle => 'ڊليوري ڪٿي ڪجي؟';

  @override
  String get locationSubtitle =>
      'Nexmile رڳو 1 ڪلوميٽر اندر جي دڪانن مان ڊليوري ڪري ٿو، تنهنڪري اسان کي توهان جي صحيح جاءِ گهرجي.';

  @override
  String get locationReasonRadiusTitle => '1 ڪلوميٽر اندر جا دڪان';

  @override
  String get locationReasonRadiusBody =>
      'اسان رڳو اهي باورچي خانا ڏيکاريون ٿا جتان کاڌو گرم پهچي.';

  @override
  String get locationReasonAccuracyTitle => 'بلڪل صحيح دروازي تائين';

  @override
  String get locationReasonAccuracyBody =>
      'صحيح پن هجي ته ڊليوري پارٽنر فون ڪرڻ کان سواءِ توهان تائين پهچي وڃي ٿو.';

  @override
  String get locationReasonPrivacyTitle => 'رڳو ايپ استعمال ڪرڻ وقت';

  @override
  String get locationReasonPrivacyBody =>
      'اسان پس منظر ۾ توهان کي ٽريڪ نه ڪندا آهيون، ۽ پتو توهان پاڻ به لکي سگهو ٿا.';

  @override
  String get allowLocation => 'مقام جي اجازت ڏيو';

  @override
  String get enterAddressManually => 'مان پتو پاڻ لکندس';

  @override
  String get locationDenied =>
      'مقام جي اجازت نه ملي. توهان پن پاڻ رکي سگهو ٿا.';

  @override
  String get locationDeniedForever =>
      'Nexmile لاءِ مقام بند آهي. سيٽنگن ۾ آن ڪريو يا پن پاڻ رکو.';

  @override
  String get locationServiceOff => 'هن ڊوائيس تي مقام بند آهي.';

  @override
  String get locationUnavailable =>
      'مقام حاصل نه ٿي سگهيو. مهرباني ڪري پن پاڻ رکو.';

  @override
  String permStepCount(int step, int total) {
    return '$total مان $step';
  }

  @override
  String get permNotNow => 'هينئر نه';

  @override
  String get permLocationTitle => 'پنهنجي ويجهو کاڌو ڳوليو';

  @override
  String get permNotifyTitle => 'آرڊر جي ڪا به اپڊيٽ نه وڃايو';

  @override
  String get permNotifyBody =>
      'نوٽيفڪيشن آن ڪريو ته جيئن خبر پوي ته توهان جو آرڊر ڪڏهن قبول ٿيو، ڪڏهن کنيو ويو ۽ ڪڏهن توهان جي دروازي تي پهتو.';

  @override
  String get permNotifyLiveTitle => 'آرڊر جون لائيو اپڊيٽون';

  @override
  String get permNotifyLiveBody =>
      'قبول ٿيو، تيار ٿي رهيو آهي، کنيو ويو، ڊليور ٿي ويو.';

  @override
  String get permNotifyRiderTitle => 'رائيڊر توهان جي دروازي تي';

  @override
  String get permNotifyRiderBody =>
      'ايپ ڏسڻ کان سواءِ ڄاڻو ته ڪڏهن ٻاهر اچڻو آهي.';

  @override
  String get permNotifyControlTitle => 'ڪنٽرول توهان جي هٿ ۾';

  @override
  String get permNotifyControlBody =>
      'پنهنجي فون جي سيٽنگن ۾ ڪنهن به وقت نوٽيفڪيشن بند ڪريو.';

  @override
  String get permNotifyAllow => 'نوٽيفڪيشن آن ڪريو';

  @override
  String get openSettings => 'سيٽنگون';

  @override
  String get pinLocationTitle => 'پنهنجو ڊليوري پن رکو';

  @override
  String get deliveryRadiusHint =>
      'دائرو اهو 1 ڪلوميٽر ڏيکاري ٿو جنهن ۾ Nexmile ڊليوري ڪري ٿو.';

  @override
  String get useMyLocation => 'منهنجو مقام استعمال ڪريو';

  @override
  String get deliveringHere => 'هتي ڊليوري';

  @override
  String get dragToAdjust => 'پن تبديل ڪرڻ لاءِ نقشو ڇڪيو';

  @override
  String get confirmLocation => 'مقام جي تصديق ڪريو';

  @override
  String get addressDetailsTitle => 'پتي جا تفصيل';

  @override
  String get addressDetailsSubtitle =>
      'صحيح دروازي تائين پهچڻ لاءِ گهر نمبر ۽ نشاني شامل ڪريو.';

  @override
  String get pinnedLocation => 'چونڊيل جاءِ';

  @override
  String get changePin => 'تبديل ڪريو';

  @override
  String get saveAddressAs => 'هي پتو هينئن محفوظ ڪريو';

  @override
  String get labelHome => 'گهر';

  @override
  String get labelWork => 'آفيس';

  @override
  String get labelOther => 'ٻيو';

  @override
  String get addressLine1Label => 'گهر، فليٽ يا عمارت';

  @override
  String get addressLine1Hint => '12A، گرين ريزيڊنسي';

  @override
  String get addressLine2Label => 'گلي يا علائقو';

  @override
  String get addressLine2Hint => 'ٻي ايونيو، انا نگر';

  @override
  String get landmarkLabel => 'نشاني';

  @override
  String get landmarkHint => 'بس اسٽاپ جي سامهون';

  @override
  String get cityLabel => 'شهر';

  @override
  String get stateLabel => 'رياست';

  @override
  String get pincodeLabel => 'پن ڪوڊ';

  @override
  String get invalidPincode => 'صحيح 6 عددن جو پن ڪوڊ داخل ڪريو';

  @override
  String get contactNameLabel => 'رابطي جو نالو';

  @override
  String get contactPhoneLabel => 'رابطي جو نمبر';

  @override
  String get invalidMobileNumber => 'صحيح 10 عددن جو موبائل نمبر داخل ڪريو';

  @override
  String get makeDefaultAddress => 'ڊفالٽ طور هتي ئي ڊليوري';

  @override
  String get saveAddress => 'پتو محفوظ ڪريو';

  @override
  String get addressSaved => 'پتو محفوظ ٿي ويو';

  @override
  String get addressBookTitle => 'ڊليوري جا پتا';

  @override
  String get manageAddresses => 'محفوظ ٿيل پتا سنڀاليو';

  @override
  String get noAddressesTitle => 'اڃا ڪو پتو ناهي';

  @override
  String get noAddressesSubtitle =>
      'هڪ پتو شامل ڪريو ته جيئن اسان توهان تائين ڊليوري ڪندڙ دڪان ڏيکاري سگهون.';

  @override
  String get addAddress => 'پتو شامل ڪريو';

  @override
  String get setAsDefault => 'ڊفالٽ بڻايو';

  @override
  String get editLabel => 'تبديل ڪريو';

  @override
  String get addressUpdated => 'پتو اپ ڊيٽ ٿي ويو';

  @override
  String get deleteLabel => 'ڊاهيو';

  @override
  String get deleteAddressTitle => 'هي پتو ڊاهجي؟';

  @override
  String get deleteAddressMessage => 'توهان ان کي پوءِ ٻيهر شامل ڪري سگهو ٿا.';

  @override
  String get rescueDealsTitle => 'فوڊ ريسڪيو';

  @override
  String get notTakingOrders => 'آرڊر نه ورتا پيا وڃن';

  @override
  String get closedRightNow => 'هاڻي بند آهي';

  @override
  String minimumOrder(String amount) {
    return 'گھٽ ۾ گھٽ $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count باقي';
  }

  @override
  String get soldOut => 'ختم ٿي ويو';

  @override
  String get menuEmptyTitle => 'اڃا ڪوبه کاڌو ناهي';

  @override
  String get menuEmptySubtitle => 'هن ريسٽورنٽ پنهنجو مينيو شامل نه ڪيو آهي.';

  @override
  String get moreDishesTitle => 'وڌيڪ کاڌا';

  @override
  String get menuSearchHint => 'کاڌا ڳوليو';

  @override
  String get filtersShort => 'فلٽر';

  @override
  String get dietVeg => 'ڀاڄي';

  @override
  String get dietEgg => 'آنو';

  @override
  String get dietNonVeg => 'نان ويج';

  @override
  String get menuBestsellerChip => 'سڀ کان وڌيڪ وڪرو';

  @override
  String get menuFoodType => 'کاڌي جو قسم';

  @override
  String get menuShowOnly => 'رڳو اهي ڏيکاريو';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کاڌا',
      one: '1 کاڌو',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کاڌا ڏيکاريو',
      one: '1 کاڌو ڏيکاريو',
      zero: 'ڪوبه کاڌو ناهي',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'ٻيو ڪو کاڌي جو نالو آزمايو، يا ڪو فلٽر هٽايو.';

  @override
  String get menuBrowse => 'مينيو';

  @override
  String get customisable => 'پنهنجي پسند مطابق';

  @override
  String get requiredLabel => 'لازمي';

  @override
  String get optionalLabel => 'اختياري';

  @override
  String get chooseOne => 'هڪ چونڊيو';

  @override
  String chooseUpTo(int count) {
    return 'وڌ ۾ وڌ $count چونڊيو';
  }

  @override
  String chooseAtLeast(int count) {
    return 'گھٽ ۾ گھٽ $count چونڊيو';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min کان $max تائين چونڊيو';
  }

  @override
  String get specialInstructions => 'خاص هدايتون';

  @override
  String get specialInstructionsHint => 'گھٽ تکو، بصر نه…';

  @override
  String addForAmount(String amount) {
    return 'شامل ڪريو · $amount';
  }

  @override
  String get deliveryLabel => 'ڊليوري';

  @override
  String get pickupLabel => 'پاڻ کڻڻ';

  @override
  String get packagingLabel => 'پيڪنگ';

  @override
  String get discountLabel => 'رعايت';

  @override
  String get billDetailsTitle => 'بل جي تفصيل';

  @override
  String get clearCart => 'ڪارٽ خالي ڪريو';

  @override
  String get clearCartTitle => 'هي ڪارٽ خالي ڪجي؟';

  @override
  String get clearCartMessage => 'ان ۾ رکيل هر شيءِ هٽائي ويندي.';

  @override
  String unavailableItemsNotice(String items) {
    return 'هاڻي دستياب ناهي: $items';
  }

  @override
  String get removeUnavailable => 'اهي هٽايو';

  @override
  String minimumNotMet(String amount) {
    return 'گھٽ ۾ گھٽ آرڊر $amount آهي';
  }

  @override
  String get checkoutTitle => 'چيڪ آئوٽ';

  @override
  String get deliveryAddressLabel => 'ڊليوري جو پتو';

  @override
  String get noAddressSelected => 'ڪوبه پتو نه چونڊيو ويو';

  @override
  String get paymentMethodLabel => 'ادائيگي';

  @override
  String get payOnDelivery => 'ڊليوري تي نقد';

  @override
  String get noteToRestaurant => 'ريسٽورنٽ لاءِ نوٽ';

  @override
  String get noteToRestaurantHint => 'گھنٽي ٻه ڀيرا وڄايو…';

  @override
  String get activeOrdersTitle => 'هلندڙ آرڊر';

  @override
  String get pastOrdersTitle => 'پراڻا آرڊر';

  @override
  String get orderItemsTitle => 'کاڌا';

  @override
  String get orderProgressTitle => 'پيش رفت';

  @override
  String get arrivingIn => 'پهچڻ ۾';

  @override
  String get pickupCodeLabel => 'پڪ اپ ڪوڊ';

  @override
  String get cancellationReasonLabel => 'رد ٿيڻ جو سبب';

  @override
  String get riderLabel => 'ڊليوري پارٽنر';

  @override
  String get callRider => 'ڪال ڪريو';

  @override
  String get trackRider => 'رائيڊر ٽريڪ ڪريو';

  @override
  String get riderLocationSoon =>
      'آرڊر کڻڻ کان پوءِ رائيڊر جو مقام هتي ڏيکاريو ويندو.';

  @override
  String get riderLocationStale => 'رائيڊر جو مقام اپڊيٽ ٿي رهيو آهي…';

  @override
  String get recentreOnRider => 'رائيڊر تي مرڪوز ڪريو';

  @override
  String get viewInvoice => 'ٽيڪس انوائس';

  @override
  String get cancelOrder => 'آرڊر رد ڪريو';

  @override
  String get cancelOrderTitle => 'هي آرڊر رد ڪجي؟';

  @override
  String get cancelOrderMessage =>
      'ريسٽورنٽ قبول ڪرڻ کان اڳ ئي رد ڪري سگهجي ٿو.';

  @override
  String get cancelReasonLabel => 'سبب';

  @override
  String get cancelReasonFallback => 'گراهڪ رد ڪيو';

  @override
  String get orderCancelled => 'آرڊر رد ٿي ويو';

  @override
  String get currentLocationLabel => 'موجوده هنڌ';

  @override
  String get onLabel => 'آن';

  @override
  String get offLabel => 'آف';

  @override
  String get profileCoupons => 'توهان جا ڪوپن';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count استعمال لاءِ',
      one: '1 استعمال لاءِ',
      zero: 'اڃا ڪوبه ناهي',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'توهان جون ترجيحون';

  @override
  String get profileVegMode => 'ڀاڄي موڊ';

  @override
  String get profileVegModeHint => 'رڳو ڀاڄين وارا ريسٽورنٽ ۽ کاڌا';

  @override
  String get profileAppearance => 'ڏيک';

  @override
  String get appearanceSystem => 'فون مطابق';

  @override
  String get appearanceLight => 'لائيٽ';

  @override
  String get appearanceDark => 'ڊارڪ';

  @override
  String get profileNotifications => 'نوٽيفڪيشن';

  @override
  String get profileFoodDelivery => 'کاڌي جي ڊليوري';

  @override
  String get profileFavourites => 'توهان جا پسنديده';

  @override
  String get profileHelp => 'مدد ۽ سپورٽ';

  @override
  String get profileMore => 'وڌيڪ';

  @override
  String get profileFeedback => 'راءِ موڪليو';

  @override
  String get profileSafety => 'حفاظتي ايمرجنسي جي خبر ڏيو';

  @override
  String get profileAbout => 'Nexmile بابت';

  @override
  String get couponsEmptyTitle => 'هن وقت ڪو ڪوپن ناهي';

  @override
  String get couponsEmptyBody =>
      'جڏهن ڪو ڪوپن توهان جي استعمال لاءِ هوندو، اهو هتي نظر ايندو.';

  @override
  String couponFlatOff(String amount) {
    return '$amount رعايت';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% رعايت';
  }

  @override
  String couponUpTo(String amount) {
    return 'وڌ ۾ وڌ $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount کان وڌيڪ جي آرڊر تي';
  }

  @override
  String couponValidTill(String date) {
    return '$date تائين لاڳو';
  }

  @override
  String get couponAllRestaurants => 'سڀني ريسٽورنٽن تي';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant تي';
  }

  @override
  String couponCopied(String code) {
    return 'ڪوڊ $code ڪاپي ٿي ويو';
  }

  @override
  String get favouritesEmptyTitle => 'اڃا ڪو پسنديده ناهي';

  @override
  String get favouritesEmptyBody =>
      'ڪنهن ريسٽورنٽ کي هتي محفوظ ڪرڻ لاءِ ان تي دل جو نشان دٻايو.';

  @override
  String get helpCall => 'اسان کي ڪال ڪريو';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'اسان کي اي ميل ڪريو';

  @override
  String helpHours(String hours) {
    return 'اسان $hours دستياب آهيون';
  }

  @override
  String get helpFaqs => 'عام سوال';

  @override
  String get helpNothing =>
      'مدد جا تفصيل هن وقت دستياب ناهن. مهرباني ڪري ٿوري دير کان پوءِ ٻيهر ڪوشش ڪريو.';

  @override
  String get feedbackPrompt => 'Nexmile توهان لاءِ ڪيئن ڪم ڪري رهيو آهي؟';

  @override
  String get feedbackHint =>
      'ٻڌايو توهان کي ڇا پسند آيو، يا اسان ڇا بهتر ڪري سگهون ٿا';

  @override
  String get feedbackNeedRating => 'پهرين ريٽنگ چونڊيو';

  @override
  String get feedbackThanks =>
      'مهرباني! توهان جي راءِ اسان جي ٽيم تائين پهچي وئي.';

  @override
  String get safetyIntro =>
      'جيڪڏهن توهان يا ڪو ٻيو خطري ۾ آهي ته پهرين ايمرجنسي سروسز کي ڪال ڪريو.';

  @override
  String get safetyCallEmergency => '112 تي ڪال ڪريو';

  @override
  String get safetyCallEmergencyBody => 'پوليس، فائر برگيڊ ۽ ايمبولينس';

  @override
  String get safetyCallNexmile => 'Nexmile سيفٽي لائن تي ڪال ڪريو';

  @override
  String get safetyCallNexmileBody => 'هر وقت دستياب';

  @override
  String aboutVersion(String version) {
    return 'ورزن $version';
  }

  @override
  String get aboutTerms => 'خدمت جا شرط';

  @override
  String get aboutPrivacy => 'رازداري پاليسي';

  @override
  String get aboutLicences => 'اوپن سورس لائسنس';

  @override
  String get notifyOrderUpdates => 'آرڊر اپڊيٽون';

  @override
  String get notifyOrderUpdatesBody =>
      'هميشه آن، ته جيئن توهان کي خبر هجي ته توهان جو کاڌو ڪٿي آهي.';

  @override
  String get notifyPromotions => 'آفرون ۽ پروموشن';

  @override
  String get notifyPromotionsBody =>
      'توهان جي ويجهو ڊيلون، ڪوپن ۽ نوان ريسٽورنٽ.';

  @override
  String get notifyPhoneOff => 'هن فون تي Nexmile جا نوٽيفڪيشن بند آهن.';

  @override
  String get notifyTurnOn => 'آن ڪريو';

  @override
  String get linkOpenFailed => 'اهو هن فون تي کلي نه سگهيو.';

  @override
  String get editProfileTitle => 'پروفائل تبديل ڪريو';

  @override
  String get editProfileSubtitle =>
      'ريسٽورنٽ ۽ ڊليوري پارٽنر کي توهانجو نالو ئي نظر ايندو آهي.';

  @override
  String get saveChanges => 'تبديليون محفوظ ڪريو';

  @override
  String get profileUpdated => 'پروفائل اپڊيٽ ٿي وئي';

  @override
  String get deleteAccount => 'کاتو ختم ڪريو';

  @override
  String get deleteAccountTitle => 'پنهنجو کاتو ختم ڪجي؟';

  @override
  String get deleteAccountMessage =>
      'هر ڊوائس تان سائن آئوٽ ٿي ويندؤ. پراڻا آرڊر ۽ بل ٽيڪس رڪارڊ لاءِ رکيا ويندا آهن.';

  @override
  String get accountDeleted => 'توهانجو کاتو ختم ڪيو ويو';

  @override
  String get devicesTitle => 'سائن ان ڊوائسز';

  @override
  String get devicesSubtitle => 'توهان ڪٿي سائن ان آهيو';

  @override
  String get devicesEmptyTitle => 'ٻي ڪا ڊوائس ناهي';

  @override
  String get devicesEmptySubtitle => 'توهان رڳو هن ڊوائس تي سائن ان آهيو.';

  @override
  String get signOutDevice => 'سائن آئوٽ';

  @override
  String get signOutDeviceTitle => 'هيءَ ڊوائس سائن آئوٽ ڪجي؟';

  @override
  String get signOutDeviceMessage =>
      'جيڪڏهن توهان اها ئي ڊوائس استعمال ڪري رهيا آهيو ته وري سائن ان ڪرڻو پوندو.';

  @override
  String get deviceSignedOut => 'ڊوائس سائن آئوٽ ٿي وئي';

  @override
  String get signOutEverywhere => 'هر هنڌ کان سائن آئوٽ';

  @override
  String get signOutEverywhereTitle => 'هر هنڌ کان سائن آئوٽ ڪجي؟';

  @override
  String get signOutEverywhereMessage =>
      'هن ڊوائس سميت هر ڊوائس سائن آئوٽ ٿي ويندي.';

  @override
  String get unknownDevice => 'اڻڄاتل ڊوائس';

  @override
  String get activeNow => 'هينئر سرگرم';

  @override
  String minutesAgo(int count) {
    return '$count منٽ اڳ';
  }

  @override
  String hoursAgo(int count) {
    return '$count ڪلاڪ اڳ';
  }

  @override
  String daysAgo(int count) {
    return '$count ڏينهن اڳ';
  }

  @override
  String get filtersAndSorting => 'فلٽر ۽ ترتيب';

  @override
  String get clearAll => 'سڀ هٽايو';

  @override
  String get showResults => 'نتيجا ڏيکاريو';

  @override
  String get closeLabel => 'بند ڪريو';

  @override
  String get sortByTitle => 'ترتيب';

  @override
  String get sortRelevance => 'لاڳاپو';

  @override
  String get sortRating => 'ريٽنگ';

  @override
  String get sortDeliveryTime => 'ڊليوري وقت';

  @override
  String get sortCostLowHigh => 'قيمت: گھٽ کان وڌ';

  @override
  String get sortCostHighLow => 'قيمت: وڌ کان گھٽ';

  @override
  String get timeSection => 'وقت';

  @override
  String get nearAndFast => 'ويجھو ۽ تيز';

  @override
  String get openNow => 'هينئر کليل';

  @override
  String get ratingSection => 'ريسٽورنٽ ريٽنگ';

  @override
  String ratedAbove(String rating) {
    return '$rating+ ريٽنگ';
  }

  @override
  String get offersSection => 'آڇون';

  @override
  String get hasOffersLabel => 'آڇن وارا';

  @override
  String get dishPriceSection => 'کاڌي جي قيمت';

  @override
  String costUnder(String amount) {
    return '$amount کان گھٽ';
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
  String get moreSection => 'وڌيڪ';

  @override
  String get noPackagingCharges => 'پيڪنگ خرچ ناهي';

  @override
  String get allRestaurantsTitle => 'سڀ ريسٽورنٽ';

  @override
  String get whatsOnYourMind => 'ڇا کائڻ جو دل آهي؟';

  @override
  String get listeningNow => 'ٻڌي رهيا آهيون…';

  @override
  String get speakNowHint => 'ڪو کاڌو يا ريسٽورنٽ چئو';

  @override
  String get voiceUnavailable => 'وائس ڳولا دستياب ناهي';

  @override
  String get voiceUnavailableBody => 'توهان ٽائيپ ڪري به ڳولي سگهو ٿا.';

  @override
  String get microphoneDenied => 'مائڪروفون جي اجازت بند';

  @override
  String get voiceSearchLabel => 'آواز سان ڳوليو';

  @override
  String get ratingsAndReviews => 'ريٽنگ ۽ جائزا';

  @override
  String get reviewsWithTextOnly => 'جائزي وارا';

  @override
  String get noReviewsTitle => 'اڃا ڪا ريٽنگ ناهي';

  @override
  String get noReviewsSubtitle => 'آرڊر کان پوءِ پهرين ريٽنگ توهان ڏيو.';

  @override
  String get rateOrderTitle => 'پنهنجي آرڊر کي ريٽ ڪريو';

  @override
  String get rateDishesTitle => 'کاڌن کي ريٽ ڪريو';

  @override
  String get reviewHint => 'ٻيو ڪجهه چوڻو آهي؟ (اختياري)';

  @override
  String get submitRating => 'ريٽنگ موڪليو';

  @override
  String get reviewThanks => 'مهرباني — توهان جي ريٽنگ ملي وئي.';

  @override
  String get rateThisOrder => 'هن آرڊر کي ريٽ ڪريو';

  @override
  String get walletTitle => 'Nexmile والٽ';

  @override
  String get walletBalance => 'والٽ بيلنس';

  @override
  String get walletBalanceHint =>
      'ان کي ڪنهن به آرڊر جي ادائيگي لاءِ استعمال ڪريو.';

  @override
  String get walletAddMoney => 'پئسا شامل ڪريو';

  @override
  String get walletEnterAmount => 'رقم داخل ڪريو';

  @override
  String walletAmountRange(String min, String max) {
    return '$min ۽ $max جي وچ ۾';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount شامل ڪريو';
  }

  @override
  String get walletSecuredBy => 'ادائيگيون Razorpay ذريعي محفوظ آهن';

  @override
  String get walletHistory => 'هسٽري';

  @override
  String get walletNoHistory =>
      'اڃا ڪا به ڏيتي ليتي ناهي. جيڪي پئسا توهان شامل يا خرچ ڪندا اهي هتي نظر ايندا.';

  @override
  String get walletEntryTopUp => 'پئسا شامل ڪيا ويا';

  @override
  String get walletEntryOrder => 'آرڊر جي ادائيگي';

  @override
  String walletEntryOrderNumber(String number) {
    return 'آرڊر $number جي ادائيگي';
  }

  @override
  String get walletEntryRefund => 'ريفنڊ';

  @override
  String walletMoneyAdded(String amount) {
    return '$amount توهان جي والٽ ۾ شامل ٿي ويا';
  }

  @override
  String get walletPaymentFailed =>
      'ادائيگي ناڪام ٿي وئي. توهان جي اڪائونٽ مان ڪو به پئسو نه ڪٽيو ويو.';

  @override
  String get walletPaymentConfirming =>
      'ادائيگي ملي وئي. توهان جو بيلنس ڪجهه منٽن ۾ اپڊيٽ ٿي ويندو.';

  @override
  String get walletUseBalance => 'والٽ بيلنس استعمال ڪريو';

  @override
  String walletAvailable(String amount) {
    return 'دستياب: $amount';
  }

  @override
  String get walletPaidFromWallet => 'والٽ مان ادا ٿيل';

  @override
  String get walletPayOnDelivery => 'ڊليوري تي ادائيگي';

  @override
  String get walletCoversOrder => 'پوري ادائيگي توهان جي والٽ مان';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet والٽ مان، $rest ڊليوري تي';
  }

  @override
  String get walletTopUpUnavailable =>
      'پئسا شامل ڪرڻ جي سهولت هن وقت دستياب ناهي. مهرباني ڪري ٿوري دير کان پوءِ ٻيهر ڪوشش ڪريو.';

  @override
  String walletFull(String limit) {
    return 'توهان جي والٽ $limit جي حد تائين پهچي وئي آهي.';
  }

  @override
  String get searchAddressHint => 'علائقو، گلي يا نشاني ڳوليو';

  @override
  String get selectLocationTitle => 'مقام چونڊيو';

  @override
  String get useCurrentLocation => 'موجوده مقام استعمال ڪريو';

  @override
  String get locatingYou => 'توهان جو مقام ڳولي رهيا آهيون…';

  @override
  String get locationOffHint => 'هي استعمال ڪرڻ لاءِ مقام جي اجازت ڏيو';

  @override
  String get savedAddressesHeading => 'محفوظ ٿيل پتا';

  @override
  String get recentLocationsHeading => 'تازا مقام';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'ڊليوري جو مقام چونڊيو';

  @override
  String get movePinTooltip => 'پن کي پنهنجي صحيح ڊليوري مقام تي آڻيو';

  @override
  String get locatingPin => 'پتو ڳولي رهيا آهيون…';

  @override
  String get deliveryDetailsHeading => 'ڊليوري جا تفصيل';

  @override
  String get addressDetailsLabel => 'پتي جا تفصيل*';

  @override
  String get addressDetailsHint => 'مثال طور منزل، گهر نمبر';

  @override
  String get missingAreaHint =>
      'اسان هن پن جو پورو پتو پڙهي نه سگهياسين. مهرباني ڪري باقي تفصيل پاڻ ڀريو.';

  @override
  String get whoToContact => 'هن ڊليوري لاءِ اسان ڪنهن سان رابطو ڪريون؟';

  @override
  String get contactMyself => 'مان پاڻ';

  @override
  String get contactSomeoneElse => 'ڪو ٻيو';

  @override
  String get receiverDetailsHeading => 'هن پتي تي وصول ڪندڙ جا تفصيل';

  @override
  String get receiverAddPrompt => 'وصول ڪندڙ جو نالو ۽ نمبر شامل ڪريو';

  @override
  String get receiverSheetTitle => 'وصول ڪندڙ جا تفصيل';

  @override
  String get doorPhotoHeading => 'دروازي/عمارت جي تصوير (اختياري)';

  @override
  String get doorPhotoAdd => 'تصوير شامل ڪريو';

  @override
  String get doorPhotoBody =>
      'ان سان اسان جا ڊليوري پارٽنر توهان جو صحيح مقام جلدي ڳولي سگهن ٿا';

  @override
  String get doorPhotoChange => 'تبديل ڪريو';

  @override
  String get doorPhotoRemove => 'هٽايو';

  @override
  String get photoFromCamera => 'تصوير ڪڍو';

  @override
  String get photoFromGallery => 'گيلري مان چونڊيو';

  @override
  String get photoUploaded => 'تصوير شامل ٿي وئي';

  @override
  String get photoUploadFailed =>
      'تصوير اپلوڊ نه ٿي سگهي. مهرباني ڪري ٿوري دير کان پوءِ ٻيهر ڪوشش ڪريو.';

  @override
  String get addressSavedPhotoFailed =>
      'پتو محفوظ ٿي ويو. تصوير اپلوڊ نه ٿي سگهي.';

  @override
  String get removePhotoLabel => 'تصوير هٽايو';

  @override
  String get photoRemoved => 'تصوير هٽائي وئي';

  @override
  String get shareLabel => 'شيئر ڪريو';

  @override
  String get addDoorPhotoLabel => 'دروازي جي تصوير شامل ڪريو';

  @override
  String get searchAddressNoResults =>
      'ڪا جاءِ نه ملي. ويجهي نشاني، علائقي جو نالو يا پن ڪوڊ آزمايو.';

  @override
  String get clearLabel => 'صاف ڪريو';

  @override
  String get trackingArrivingNow => 'بس پهچي رهيو آهي';

  @override
  String get trackingLive => 'لائيو';

  @override
  String get trackingStepConfirmed => 'تصديق ٿي وئي';

  @override
  String get trackingStepPreparing => 'تيار ٿي رهيو آهي';

  @override
  String get trackingStepOnTheWay => 'رستي ۾';

  @override
  String get trackingStepDelivered => 'ڊليور ٿي ويو';

  @override
  String get trackingFindingRider => 'ڊليوري پارٽنر مقرر ڪيو پيو وڃي…';

  @override
  String get trackingPinYou => 'توهان';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance پري آهي';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name کي ميسيج ڪريو';
  }

  @override
  String get trackingDeliveringTo => 'ڊليوري جو پتو';

  @override
  String get trackingOrderDetails => 'آرڊر جا تفصيل';

  @override
  String get dispatchSearching =>
      'ريسٽورنٽ جي ويجهو ڊليوري پارٽنر ڳولي رهيا آهيون…';

  @override
  String get dispatchNoRider =>
      'اڃا ڪنهن به ڊليوري پارٽنر هي آرڊر نه ورتو آهي. اسان جي ٽيم هينئر هڪ پارٽنر مقرر ڪري رهي آهي.';

  @override
  String get vehicleBike => 'بائيڪ';

  @override
  String get vehicleScooter => 'اسڪوٽر';

  @override
  String get vehicleBicycle => 'سائيڪل';

  @override
  String get vehicleElectric => 'اليڪٽرڪ اسڪوٽر';

  @override
  String get exitTitle => 'Nexmile مان نڪرجي؟';

  @override
  String get exitBody => 'ڇا توهان واقعي ايپ مان نڪرڻ چاهيو ٿا؟';

  @override
  String get exitConfirm => 'نڪرو';

  @override
  String cartSavedBanner(String amount) {
    return 'توهان هن آرڊر تي $amount بچايا';
  }

  @override
  String get cartAddMoreItems => 'وڌيڪ شيون شامل ڪريو';

  @override
  String get cartAddNote => 'ريسٽورنٽ لاءِ نوٽ شامل ڪريو';

  @override
  String get cartOrderNoteHint => 'مثال طور ڪنهن به شيءِ ۾ بصر يا ٿوم نه وجهو';

  @override
  String get cartNoteSave => 'محفوظ ڪريو';

  @override
  String get cartNoCutlery => 'چمچا ڪانٽا نه موڪليو';

  @override
  String get cartNoCutleryThanks => 'پلاسٽڪ جو ڪچرو گھٽائڻ ۾ مدد لاءِ مهرباني';

  @override
  String get cartSavingsCorner => 'بچت ڪارنر';

  @override
  String get cartDeliveryInstructions => 'ڊليوري جون هدايتون';

  @override
  String get cartInstructionsRider =>
      'اهي هدايتون رڳو توهان جي ڊليوري پارٽنر کي نظر اينديون';

  @override
  String get instructionLeaveAtDoor => 'دروازي تي ڇڏي ڏيو';

  @override
  String get instructionNoBell => 'گھنٽي نه وڄايو';

  @override
  String get instructionNoCall => 'ڪال نه ڪريو';

  @override
  String get instructionSecurity => 'سيڪيورٽي گارڊ کي ڏيو';

  @override
  String get instructionPet => 'گهر ۾ پالتو جانور آهي';

  @override
  String get cartInclTaxes => 'ٽيڪس ۽ چارج شامل';

  @override
  String cartSavedTag(String amount) {
    return '$amount جي بچت';
  }

  @override
  String get cartPayUsing => 'ادائيگي جو طريقو';

  @override
  String get cartWalletAndCash => 'والٽ + نقد';

  @override
  String cartCashRest(String amount) {
    return 'پهچڻ تي $amount ادا ڪريو';
  }

  @override
  String get cartCashFull => 'آرڊر پهچڻ تي ادائيگي ڪريو';

  @override
  String get cartCashNothing => 'ڊليوري تي ڪجهه ادا نه ڪرڻو';

  @override
  String get cartTotal => 'ڪل';

  @override
  String get cartPlaceOrder => 'آرڊر ڪريو';

  @override
  String cartDeliverTo(String place) {
    return '$place تي ڊليوري';
  }

  @override
  String get cartChange => 'تبديل ڪريو';

  @override
  String get cartNoAddress => 'ڊليوري ڪٿي ڪجي؟';

  @override
  String get cartNoAddressHint => 'آرڊر ڪرڻ لاءِ پتو شامل ڪريو';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant مان پاڻ کڻو';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'لڳ ڀڳ $minutes منٽن ۾ تيار';
  }

  @override
  String get cartChooseAddress => 'ڊليوري جو پتو چونڊيو';

  @override
  String get cartDone => 'ٿي ويو';

  @override
  String get supportTitle => 'Nexmile سپورٽ';

  @override
  String get supportBubble => 'مدد';

  @override
  String get supportAiLabel => 'AI اسسٽنٽ';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile ٽيم';
  }

  @override
  String get supportDemoBanner =>
      'ڊيمو: اهي جواب نمونا آهن. اصل اسسٽنٽ اڃا ڳنڍيل ناهي.';

  @override
  String get supportEmptyTitle => 'اسان توهان جي ڪيئن مدد ڪري سگهون ٿا؟';

  @override
  String get supportEmptyBody =>
      'ڪنهن آرڊر، ادائيگي يا ٻي ڪنهن به ڳالهه بابت پڇو. پهريان اسان جو AI اسسٽنٽ جواب ڏئي ٿو، ۽ جڏهن اهو مدد نه ڪري سگهي ته اسان جي ٽيم جو ڪو ماڻهو ڳالهه سنڀالي ٿو.';

  @override
  String get supportSuggestWhere => 'منهنجو آرڊر ڪٿي آهي؟';

  @override
  String get supportSuggestMissing => 'ڪا شيءِ غائب آهي';

  @override
  String get supportSuggestRefund => 'مون کي ريفنڊ بابت هڪ سوال آهي';

  @override
  String get supportComposerHint => 'ميسيج لکو';

  @override
  String get supportSend => 'موڪليو';

  @override
  String get supportTyping => 'AI اسسٽنٽ لکي رهيو آهي…';

  @override
  String get supportNotSent => 'نه موڪليو ويو';

  @override
  String get supportTookTooLong => 'تمام گهڻي دير لڳي وئي.';

  @override
  String get supportSlowDown => 'وڌيڪ موڪلڻ کان اڳ ٿورو ترسو.';

  @override
  String get supportUnreachable =>
      'هن وقت چيٽ سان رابطو نٿو ٿي سگهي. اسان کي ڪال ڪريو، يا ڪجهه منٽن کان پوءِ ٻيهر ڪوشش ڪريو.';

  @override
  String get supportOffline =>
      'توهان آف لائن آهيو. هي توهان جي آخري محفوظ ٿيل چيٽ آهي.';

  @override
  String get supportClosed => 'هي چيٽ بند ٿي چڪي آهي.';

  @override
  String get supportStartNew => 'نئين چيٽ شروع ڪريو';

  @override
  String get supportTalkToPerson => 'ڪنهن ماڻهوءَ سان ڳالهايو';

  @override
  String get supportMarkSolved => 'حل ٿي ويو';

  @override
  String get supportHelpful => 'مددگار';

  @override
  String get supportNotHelpful => 'مددگار ناهي';

  @override
  String get supportNeedHelp => 'مدد گهرجي؟';

  @override
  String get supportChatWithUs => 'اسان سان چيٽ ڪريو';

  @override
  String get supportChatWithUsBody =>
      'اسان جو AI اسسٽنٽ سيڪنڊن ۾ جواب ڏئي ٿو، ۽ ضرورت پوڻ تي ڪو ماڻهو ڳالهه سنڀالي ٿو.';

  @override
  String get supportActionFailed => 'اهو نه ٿي سگهيو. ٻيهر ڪوشش ڪريو.';

  @override
  String get supportOrderNotFound => 'اهو آرڊر توهان جي کاتي ۾ نه مليو.';

  @override
  String get supportOrderLookupDown =>
      'هن وقت اهو آرڊر ڏسي نه سگهياسين. توهان پنهنجو سوال لکي سگهو ٿا.';

  @override
  String get supportHandedOverNote => 'ٽيم جو هڪ ميمبر جواب ڏيندو';

  @override
  String get supportVoiceSpeak => 'ڳالهايو';

  @override
  String get supportVoiceListening => 'ٻڌي رهيا آهيون…';

  @override
  String get supportVoiceHint =>
      'پنهنجو سوال پڇو. ڳالهائڻ بند ڪندي ئي اهو موڪليو ويندو.';

  @override
  String get supportVoiceNotHeard =>
      'صحيح ٻڌي نه سگهياسين. ٻيهر ڪوشش ڪريو، يا ميسيج لکو.';

  @override
  String get supportVoiceMicDenied =>
      'اسان سان ڳالهائڻ لاءِ مائڪروفون جي اجازت ڏيو. توهان اڃا به ٽائيپ ڪري سگهو ٿا.';

  @override
  String get supportVoiceReadAloud => 'پڙهي ٻڌايو';

  @override
  String get supportVoiceStop => 'روڪيو';

  @override
  String get restaurantNew => 'نئون';

  @override
  String get walletHideBalance => 'بيلنس لڪايو';

  @override
  String get walletShowBalance => 'بيلنس ڏيکاريو';

  @override
  String get walletBalanceHiddenLabel => 'بيلنس لڪيل آهي';

  @override
  String walletUpdatedAt(String time) {
    return '$time تي اپڊيٽ ٿيو';
  }

  @override
  String walletBelowMin(String amount) {
    return 'گھٽ ۾ گھٽ $amount شامل ڪريو';
  }

  @override
  String walletAboveMax(String amount) {
    return 'توهان وڌ ۾ وڌ $amount شامل ڪري سگهو ٿا';
  }

  @override
  String get walletOpeningPayment => 'ادائيگي کلي رهي آهي…';

  @override
  String get walletConfirmingPayment => 'ادائيگي جي تصديق ٿي رهي آهي…';

  @override
  String get walletTransactions => 'ڏيتي ليتي';

  @override
  String get walletFilterAll => 'سڀ';

  @override
  String get walletFilterAdded => 'شامل ڪيل پئسا';

  @override
  String get walletFilterSpent => 'خرچ ڪيل پئسا';

  @override
  String get walletSearch => 'ڳوليو';

  @override
  String get walletSearchHint => 'آرڊر نمبر يا ID ڳوليو';

  @override
  String get walletDateFilter => 'تاريخ سان فلٽر ڪريو';

  @override
  String get walletClearFilters => 'فلٽر هٽايو';

  @override
  String get walletNoMatches => 'توهان جي فلٽرن سان ڪا به ڏيتي ليتي نه ملي';

  @override
  String get walletEmptyTitle => 'اڃا ڪا به ڏيتي ليتي ناهي';

  @override
  String get walletEmptyBody =>
      'جيڪي پئسا توهان شامل ڪندا، آرڊرن تي خرچ ڪندا يا ريفنڊ طور واپس وٺندا، اهي هتي نظر ايندا.';

  @override
  String get walletToday => 'اڄ';

  @override
  String get walletYesterday => 'ڪالهه';

  @override
  String walletLatestOnly(int count) {
    return 'توهان جون تازيون $count ڏيتيون ليتيون ڏيکاريل آهن';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'آرڊر $number جو ريفنڊ';
  }

  @override
  String get walletDetailsTitle => 'ڏيتي ليتي جا تفصيل';

  @override
  String get walletDetailDate => 'تاريخ ۽ وقت';

  @override
  String get walletDetailId => 'ڏيتي ليتي ID';

  @override
  String get walletDetailType => 'قسم';

  @override
  String get walletDetailMethod => 'ادائيگي جو طريقو';

  @override
  String get walletDetailStatus => 'حالت';

  @override
  String get walletDetailOrder => 'آرڊر';

  @override
  String get walletDetailReference => 'ادائيگي ريفرنس';

  @override
  String get walletDetailBalanceAfter => 'ڏيتي ليتي کان پوءِ بيلنس';

  @override
  String get walletCredit => 'ڪريڊٽ';

  @override
  String get walletDebit => 'ڊيبٽ';

  @override
  String get walletStatusSuccess => 'ڪامياب';

  @override
  String get walletStatusPending => 'زير التوا';

  @override
  String get walletStatusFailed => 'ناڪام';

  @override
  String get walletMethodOnline => 'آن لائن ادائيگي';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'ڪارڊ';

  @override
  String get walletMethodNetbanking => 'نيٽ بينڪنگ';

  @override
  String get walletMethodRefund => 'والٽ ۾ ريفنڊ';

  @override
  String get walletCopyId => 'ID ڪاپي ڪريو';

  @override
  String get walletIdCopied => 'ڏيتي ليتي ID ڪاپي ٿي وئي';

  @override
  String get walletShareDetails => 'تفصيل شيئر ڪريو';
}
