// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'इदं क्षेत्रम् आवश्यकम्';

  @override
  String get tagline => 'शीघ्रं वितरणम्। नवीनं स्मितम्।';

  @override
  String get chooseLanguageTitle => 'स्वभाषां चिनोतु';

  @override
  String get chooseLanguageSubtitle =>
      'यस्यां भाषायां भवान् सुखं अनुभवति तां चिनोतु। कदापि सेटिंग्स् इत्यत्र परिवर्तयितुं शक्नोति।';

  @override
  String get searchLanguageHint => 'भाषाम् अन्विष्यतु';

  @override
  String get noLanguageFound => 'काचिदपि भाषा न प्राप्ता';

  @override
  String languagesAvailable(int count) {
    return '$count भाषाः उपलब्धाः';
  }

  @override
  String get continueLabel => 'अग्रे गच्छतु';

  @override
  String get selectedLabel => 'चितम्';

  @override
  String get defaultLabel => 'पूर्वनिर्धारितम्';

  @override
  String get homeTitle => 'Nexmile इत्यत्र स्वागतम्';

  @override
  String get homeSubtitle =>
      'नवीनं किराणं, उष्णम् अन्नं, दैनन्दिनानि आवश्यकवस्तूनि च समीपस्थेभ्यः आपणेभ्यः।';

  @override
  String get changeLanguage => 'भाषां परिवर्तयतु';

  @override
  String get languageUpdated => 'भाषा परिवर्तिता';

  @override
  String get appLanguageLabel => 'अनुप्रयोगभाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्ते, $name';
  }

  @override
  String get loginTitle => 'Nexmile इत्यत्र प्रविशतु';

  @override
  String get loginSubtitle =>
      'स्वस्य विद्युत्पत्रं चलभाषसङ्ख्यां वा लिखतु, वयं सत्यापनसङ्केतं प्रेषयिष्यामः।';

  @override
  String get emailOrPhoneLabel => 'विद्युत्पत्रं चलभाषसङ्ख्या वा';

  @override
  String get emailOrPhoneHint => 'name@example.com अथवा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सम्यक् विद्युत्पत्रसङ्केतं दशाङ्कीयां चलभाषसङ्ख्यां वा लिखतु';

  @override
  String get loginHeadline =>
      'समीपस्थेभ्यः आपणेभ्यः उष्णम् अन्नम्, शीघ्रं गृहप्रापणम्';

  @override
  String get loginOrSignUp => 'प्रविशतु अथवा पञ्जीकरणं करोतु';

  @override
  String get loginEmailHint => 'स्वस्य विद्युत्पत्रसङ्केतं लिखतु';

  @override
  String get invalidEmail => 'सम्यक् विद्युत्पत्रसङ्केतं लिखतु';

  @override
  String get sendCode => 'सङ्केतं प्रेषयतु';

  @override
  String get agreeToTermsOnContinue =>
      'अग्रे गच्छन् भवान् अस्माकं सेवानियमान् गोपनीयतानीतिं च स्वीकरोति।';

  @override
  String get otpTitle => 'भवान् एव इति निश्चिनोतु';

  @override
  String otpSubtitle(String target) {
    return '$target प्रति प्रेषितं षडङ्कीयं सङ्केतं लिखतु';
  }

  @override
  String get verifyCode => 'सत्यापयतु';

  @override
  String get resendCode => 'सङ्केतं पुनः प्रेषयतु';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds क्षणेषु पुनः प्रेषयतु';
  }

  @override
  String get codeResent => 'नवीनः सङ्केतः प्रेषितः';

  @override
  String get incorrectCode =>
      'अयं सङ्केतः अशुद्धः कालातीतो वा। नवीनं सङ्केतं याचतु।';

  @override
  String get enterFullCode => 'सर्वाणि षट् अङ्कानि लिखतु';

  @override
  String get accountSuspended =>
      'इयं लेखा स्थगिता। कृपया सहायकैः सह सम्पर्कं करोतु।';

  @override
  String get tooManyAttempts =>
      'अतीव प्रयत्नाः कृताः। कृपया किञ्चित्कालानन्तरं पुनः प्रयत्नं करोतु।';

  @override
  String get sessionExpired => 'भवतः सत्रं समाप्तम्। कृपया पुनः प्रविशतु।';

  @override
  String get networkError =>
      'अन्तर्जालसम्बन्धः नास्ति। सम्बन्धं परीक्ष्य पुनः प्रयत्नं करोतु।';

  @override
  String get developmentCode => 'विकाससङ्केतः';

  @override
  String get signOut => 'निर्गच्छतु';

  @override
  String get signedOut => 'भवान् निर्गतः';

  @override
  String get somethingWentWrong =>
      'किमपि दोषः अभवत्। कृपया पुनः प्रयत्नं करोतु।';

  @override
  String get profileTitle => 'परिचयपत्रम्';

  @override
  String get viewProfile => 'परिचयपत्रं पश्यतु';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'विद्युत्पत्रम्';

  @override
  String get mobileLabel => 'चलभाषसङ्ख्या';

  @override
  String get accountStatusLabel => 'लेखायाः स्थितिः';

  @override
  String get statusActive => 'सक्रियम्';

  @override
  String get statusPending => 'प्रतीक्षमाणम्';

  @override
  String get statusSuspended => 'स्थगितम्';

  @override
  String get verifiedLabel => 'सत्यापितम्';

  @override
  String get notProvided => 'न योजितम्';

  @override
  String get retry => 'पुनः प्रयत्नं करोतु';

  @override
  String get navHome => 'गृहम्';

  @override
  String get navSearch => 'अन्वेषणम्';

  @override
  String get navOrders => 'आदेशाः';

  @override
  String get cancelLabel => 'निरसयतु';

  @override
  String get deliverTo => 'वितरणस्थानम्';

  @override
  String get searchDishesHint => 'व्यञ्जनं भोजनालयं वा अन्विष्यतु';

  @override
  String get searchTitle => 'अन्वेषणम्';

  @override
  String get searchNoResultsTitle => 'किमपि न प्राप्तम्';

  @override
  String get searchNoResultsSubtitle =>
      'अन्यत् व्यञ्जनं, पाकशैलीं वा भोजनालयनाम प्रयत्नं करोतु।';

  @override
  String get cravingTitle => 'अद्य किं खादितुम् इच्छति?';

  @override
  String get offersTitle => 'भवदर्थं विशेषप्रस्तावाः';

  @override
  String get restaurantsNearby => 'समीपस्थानि भोजनालयानि';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count भोजनालयाः',
      one: '1 भोजनालयः',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'अत्र अद्यापि किमपि नास्ति';

  @override
  String get noRestaurantsSubtitle =>
      'अन्यं वर्गं पश्यतु अथवा छाननं निष्कासयतु।';

  @override
  String minutesAway(int minutes) {
    return '$minutes निमेषाः';
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
      other: '$count मूल्याङ्कनानि',
      one: '1 मूल्याङ्कनम्',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return 'द्वयोः कृते ₹$amount';
  }

  @override
  String get freeDelivery => 'निःशुल्कं वितरणम्';

  @override
  String percentOff(int percent) {
    return '$percent% छूटः';
  }

  @override
  String percentOffOnOrder(int percent) {
    return 'भवतः आदेशे $percent% छूटः';
  }

  @override
  String get vegOnly => 'केवलं शाकाहारम्';

  @override
  String get bestseller => 'सर्वाधिकविक्रीतम्';

  @override
  String get addLabel => 'योजयतु';

  @override
  String get noVegDishesTitle => 'अत्र शाकाहारव्यञ्जनानि न सन्ति';

  @override
  String get noVegDishesSubtitle =>
      'पूर्णं सूचीपत्रं द्रष्टुं शाकाहारछाननं निष्क्रियं करोतु।';

  @override
  String get replaceCartTitle => 'नवीनं शकटं आरभताम्?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'भवतः शकटे $restaurant तः वस्तूनि सन्ति। एतत् योजयित्वा तानि निष्कासितानि भविष्यन्ति।';
  }

  @override
  String get replaceCartConfirm => 'निष्कास्य योजयतु';

  @override
  String get cartTitle => 'भवतः शकटम्';

  @override
  String get cartEmptyTitle => 'भवतः शकटं रिक्तम् अस्ति';

  @override
  String get cartEmptySubtitle =>
      'आरम्भार्थं कस्मादपि भोजनालयात् व्यञ्जनानि योजयतु।';

  @override
  String get browseRestaurants => 'भोजनालयानि पश्यतु';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वस्तूनि',
      one: '1 वस्तु',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'शकटं पश्यतु';

  @override
  String get itemTotal => 'वस्तूनां योगः';

  @override
  String get deliveryFeeLabel => 'वितरणशुल्कम्';

  @override
  String get taxesAndCharges => 'कराः शुल्कानि च';

  @override
  String get freeLabel => 'निःशुल्कम्';

  @override
  String get toPay => 'देयम्';

  @override
  String placeOrderFor(String amount) {
    return 'आदेशं ददातु · $amount';
  }

  @override
  String get ordersTitle => 'भवतः आदेशाः';

  @override
  String get ordersEmptyTitle => 'अद्यापि आदेशाः न सन्ति';

  @override
  String get ordersEmptySubtitle => 'भवतः पूर्वादेशाः अत्र दृश्यन्ते।';

  @override
  String get reorder => 'पुनः आदेशः';

  @override
  String orderTitle(String id) {
    return 'आदेशः $id';
  }

  @override
  String get orderPlacedTitle => 'आदेशः दत्तः';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'प्रायः $minutes निमेषेषु आगमिष्यति।';
  }

  @override
  String orderPlacedWith(String restaurant) {
    return 'भवतः आदेशः $restaurant इत्यत्र प्राप्तः।';
  }

  @override
  String orderPlacedPrep(int minutes) {
    return 'प्रायः $minutes निमेषेषु सज्जं भविष्यति।';
  }

  @override
  String get trackYourOrder => 'आदेशम् अनुसरतु';

  @override
  String get couponApplyTitle => 'छूटपत्रं प्रयुङ्क्ताम्';

  @override
  String get couponCodeLabel => 'छूटपत्रसङ्केतः';

  @override
  String get couponApply => 'प्रयुङ्क्ताम्';

  @override
  String couponAppliedTitle(String code) {
    return '$code प्रयुक्तम्';
  }

  @override
  String couponSaving(String amount) {
    return 'भवतः $amount लाभः';
  }

  @override
  String get couponRemove => 'निष्कासयतु';

  @override
  String searchFor(String term) {
    return '\"$term\" अन्विष्यतु';
  }

  @override
  String get vegModeBadge => 'शुद्धशाकाहारम्';

  @override
  String trackingExpectedBy(String time) {
    return '$time पर्यन्तम् अपेक्षितम्';
  }

  @override
  String get orderAgainTitle => 'पुनः आदेशं ददातु';

  @override
  String orderAgainItems(String first, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$first + $count अन्यानि',
      one: '$first + 1 अन्यत्',
      zero: '$first',
    );
    return '$_temp0';
  }

  @override
  String etaRange(int min, int max) {
    return '$min–$max निमेषाः';
  }

  @override
  String riderRatingLabel(String rating) {
    return '5 मध्ये $rating मूल्याङ्कनम्';
  }

  @override
  String get reorderReplaceTitle => 'भवतः शकटं प्रतिस्थाप्यताम्?';

  @override
  String reorderReplaceBody(String restaurant) {
    return '$restaurant तः भवतः शकटम् अस्य आदेशस्य व्यञ्जनैः प्रतिस्थापितं भविष्यति।';
  }

  @override
  String get reorderReplace => 'प्रतिस्थापयतु';

  @override
  String reorderSkipped(String dishes, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$dishes अधुना न उपलभ्यन्ते, अतः तानि न योजितानि।',
      one: '$dishes अधुना न उपलभ्यते, अतः तत् न योजितम्।',
    );
    return '$_temp0';
  }

  @override
  String get reorderNothingAvailable =>
      'एतेषु व्यञ्जनेषु किमपि अधुना न उपलभ्यते।';

  @override
  String get searchShort => 'अन्विष्यतु';

  @override
  String get favouriteSave => 'प्रियेषु रक्षतु';

  @override
  String get restaurantAbout => 'अस्य भोजनालयस्य विषये';

  @override
  String ratingByCount(String count) {
    return '$count जनैः';
  }

  @override
  String offersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count प्रस्तावाः',
      one: '1 प्रस्तावः',
    );
    return '$_temp0';
  }

  @override
  String shareRestaurantText(String restaurant) {
    return 'Nexmile इत्यत्र $restaurant तः आदेशं ददातु';
  }

  @override
  String get ordersSearchHint => 'भोजनालयेन व्यञ्जनेन वा अन्विष्यतु…';

  @override
  String get ordersNoMatch =>
      'तेन नाम्ना कस्यापि भोजनालयस्य व्यञ्जनस्य वा आदेशः नास्ति।';

  @override
  String orderPlacedOn(String date) {
    return '$date दिनाङ्के आदेशः दत्तः';
  }

  @override
  String get viewMenu => 'सूचीपत्रं पश्यतु';

  @override
  String get navHistory => 'इतिहासः';

  @override
  String get exploreMore => 'अधिकं पश्यतु';

  @override
  String get exploreTopRated => 'उच्चमूल्याङ्किताः';

  @override
  String restaurantsDelivering(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count भोजनालयाः भवते गृहप्रापणं कुर्वन्ति',
      one: '1 भोजनालयः भवते गृहप्रापणं करोति',
    );
    return '$_temp0';
  }

  @override
  String get rateHowWasDelivery => 'भवतः गृहप्रापणं कथम् आसीत्?';

  @override
  String get rateHowWasFood => 'भोजनं कथम् आसीत्?';

  @override
  String get rateWordTerrible => 'अतिनिकृष्टम्';

  @override
  String get rateWordBad => 'निकृष्टम्';

  @override
  String get rateWordOkay => 'सामान्यम्';

  @override
  String get rateWordGood => 'शोभनम्';

  @override
  String get rateWordLoved => 'अतीव प्रियम्!';

  @override
  String get rateWhatWentWrong => 'कः दोषः अभवत्?';

  @override
  String get rateWhatYouLiked => 'भवते किम् अरोचत?';

  @override
  String get rateRiderNoteHint => 'गृहप्रापणविषये टिप्पणी (वैकल्पिकम्)';

  @override
  String get rateReviewHeading => 'समीक्षां लिखतु';

  @override
  String get rateFoodFirst => 'प्रेषयितुं भोजनस्य मूल्याङ्कनं करोतु';

  @override
  String get rateYouRated => 'भवता अस्य आदेशस्य मूल्याङ्कनं कृतम्';

  @override
  String get ratePromptLater => 'इदानीं न';

  @override
  String get tagTasty => 'स्वादिष्टम्';

  @override
  String get tagFreshHot => 'उष्णं नवीनं च';

  @override
  String get tagGoodPortion => 'पर्याप्तं परिमाणम्';

  @override
  String get tagGoodPackaging => 'उत्तमं वेष्टनम्';

  @override
  String get tagValueForMoney => 'मूल्यानुरूपम्';

  @override
  String get tagHygienic => 'स्वच्छम्';

  @override
  String get tagColdFood => 'शीतम् अन्नम्';

  @override
  String get tagPoorTaste => 'स्वादः सम्यक् न आसीत्';

  @override
  String get tagSmallPortion => 'अल्पं परिमाणम्';

  @override
  String get tagWrongItems => 'अशुद्धानि वस्तूनि';

  @override
  String get tagMissingItems => 'न्यूनानि वस्तूनि';

  @override
  String get tagPoorPackaging => 'दुर्बलं वेष्टनम्';

  @override
  String get tagTooOily => 'अतितैलम् अतिकटु वा';

  @override
  String get tagOnTime => 'यथासमयम्';

  @override
  String get tagPolite => 'विनम्रव्यवहारः';

  @override
  String get tagFollowedInstructions => 'निर्देशाः पालिताः';

  @override
  String get tagCarefulHandling => 'भोजनं सावधानं नीतम्';

  @override
  String get tagGoodCommunication => 'निरन्तरं सूचना दत्ता';

  @override
  String get tagLate => 'विलम्बितं गृहप्रापणम्';

  @override
  String get tagRude => 'अशिष्टव्यवहारः';

  @override
  String get tagIgnoredInstructions => 'निर्देशाः न पालिताः';

  @override
  String get tagFoodSpilled => 'भोजनं विकीर्णम्';

  @override
  String get tagAskedExtraMoney => 'अधिकं धनं याचितम्';

  @override
  String get tagUnprofessional => 'अव्यावसायिकव्यवहारः';

  @override
  String rateDeliveredBy(String name) {
    return '$name इत्यनेन प्रापितम्';
  }

  @override
  String rateFoodFrom(String restaurant) {
    return '$restaurant तः';
  }

  @override
  String ratePromptTitle(String restaurant) {
    return '$restaurant तः भवतः आदेशः कथम् आसीत्?';
  }

  @override
  String get orderDeliveredTitle => 'वितरितम्';

  @override
  String get orderDeliveredSubtitle => 'भोजनम् आस्वादयतु।';

  @override
  String get statusOrderPlaced => 'आदेशः दत्तः';

  @override
  String get statusPreparing => 'भोजनं सज्जीक्रियते';

  @override
  String get statusOnTheWay => 'मार्गे अस्ति';

  @override
  String get statusDelivered => 'वितरितम्';

  @override
  String get keepBrowsing => 'पश्यन् तिष्ठतु';

  @override
  String get backToHome => 'गृहं प्रत्यागच्छतु';

  @override
  String get prototypeNotice =>
      'नमूनासङ्ग्रहः — वास्तविकापणाः सूचीपत्र-API सह आगमिष्यन्ति।';

  @override
  String get prototypeCheckoutNotice =>
      'इदं प्रतिरूपम् अस्ति। किमपि धनं न गृह्यते, वास्तविकः आदेशः अपि न भवति।';

  @override
  String get prototypeTrackingNotice =>
      'प्रतिरूपार्थं अनुसरणं कृत्रिमम् अस्ति।';

  @override
  String get locationTitle => 'कुत्र वितरणं करणीयम्?';

  @override
  String get locationSubtitle =>
      'Nexmile एककिलोमीटर-अन्तः स्थितेभ्यः आपणेभ्यः एव वितरणं करोति, अतः भवतः सम्यक् स्थानम् आवश्यकम्।';

  @override
  String get locationReasonRadiusTitle => 'एककिलोमीटर-अन्तः आपणाः';

  @override
  String get locationReasonRadiusBody =>
      'यतः अन्नम् उष्णं प्राप्नोति, तानि एव पाकशालानि दर्शयामः।';

  @override
  String get locationReasonAccuracyTitle => 'सम्यक् द्वारपर्यन्तम्';

  @override
  String get locationReasonAccuracyBody =>
      'यथार्थस्थानेन वितरकः दूरवाणीं विना एव भवन्तं प्राप्नोति।';

  @override
  String get locationReasonPrivacyTitle => 'अनुप्रयोगप्रयोगकाले एव';

  @override
  String get locationReasonPrivacyBody =>
      'वयं पृष्ठभूमौ भवन्तं न अनुसरामः, सङ्केतं भवान् स्वयम् अपि लिखितुं शक्नोति।';

  @override
  String get allowLocation => 'स्थानानुमतिं ददातु';

  @override
  String get enterAddressManually => 'अहं स्वयं सङ्केतं लिखामि';

  @override
  String get locationDenied =>
      'स्थानानुमतिः निराकृता। भवान् स्वयं चिह्नं स्थापयितुं शक्नोति।';

  @override
  String get locationDeniedForever =>
      'Nexmile कृते स्थानं निषिद्धम्। सेटिंग्स् इत्यत्र सक्रियं करोतु अथवा चिह्नं स्वयं स्थापयतु।';

  @override
  String get locationServiceOff => 'अस्मिन् यन्त्रे स्थानं निष्क्रियम् अस्ति।';

  @override
  String get locationUnavailable =>
      'स्थानं न प्राप्तम्। कृपया चिह्नं स्वयं स्थापयतु।';

  @override
  String permStepCount(int step, int total) {
    return '$total मध्ये $step';
  }

  @override
  String get permNotNow => 'इदानीं न';

  @override
  String get permLocationTitle => 'समीपस्थं भोजनम् अन्विष्यतु';

  @override
  String get permNotifyTitle => 'आदेशस्य प्रत्येकां सूचनां प्राप्नोतु';

  @override
  String get permNotifyBody =>
      'भवतः आदेशः कदा स्वीकृतः, कदा गृहीतः, कदा भवतः द्वारं प्राप्तः इति ज्ञातुं सूचनाः सक्रियाः करोतु।';

  @override
  String get permNotifyLiveTitle => 'आदेशस्य सद्यःसूचनाः';

  @override
  String get permNotifyLiveBody => 'स्वीकृतम्, पच्यते, गृहीतम्, वितरितम्।';

  @override
  String get permNotifyRiderTitle => 'वाहकः भवतः द्वारे';

  @override
  String get permNotifyRiderBody =>
      'अनुप्रयोगम् अपश्यन् अपि कदा बहिः गन्तव्यम् इति जानातु।';

  @override
  String get permNotifyControlTitle => 'नियन्त्रणं भवतः हस्ते';

  @override
  String get permNotifyControlBody =>
      'चलभाषस्य सेटिंग्स् इत्यत्र कदापि सूचनाः निष्क्रियाः करोतु।';

  @override
  String get permNotifyAllow => 'सूचनाः सक्रियाः करोतु';

  @override
  String get openSettings => 'सेटिंग्स्';

  @override
  String get pinLocationTitle => 'स्ववितरणचिह्नं स्थापयतु';

  @override
  String get deliveryRadiusHint =>
      'वृत्तं तत् एकं किलोमीटरं दर्शयति यस्मिन् Nexmile वितरणं करोति।';

  @override
  String get useMyLocation => 'मम स्थानं प्रयुङ्क्ताम्';

  @override
  String get deliveringHere => 'अत्र वितरणम्';

  @override
  String get dragToAdjust => 'चिह्नं समायोजयितुं मानचित्रं चालयतु';

  @override
  String get confirmLocation => 'स्थानं निश्चिनोतु';

  @override
  String get addressDetailsTitle => 'सङ्केतविवरणम्';

  @override
  String get addressDetailsSubtitle =>
      'सम्यक् द्वारं प्राप्तुं गृहसङ्ख्यां चिह्नं च योजयतु।';

  @override
  String get pinnedLocation => 'चिह्नितं स्थानम्';

  @override
  String get changePin => 'परिवर्तयतु';

  @override
  String get saveAddressAs => 'एनं सङ्केतम् एवं रक्षतु';

  @override
  String get labelHome => 'गृहम्';

  @override
  String get labelWork => 'कार्यालयः';

  @override
  String get labelOther => 'अन्यत्';

  @override
  String get addressLine1Label => 'गृहं, सदनं वा भवनम्';

  @override
  String get addressLine1Hint => '12A, ग्रीन् रेसिडेन्सी';

  @override
  String get addressLine2Label => 'मार्गः वा प्रदेशः';

  @override
  String get addressLine2Hint => 'द्वितीयः मार्गः, अण्णानगरम्';

  @override
  String get landmarkLabel => 'चिह्नस्थलम्';

  @override
  String get landmarkHint => 'बस्-स्थानकस्य सम्मुखम्';

  @override
  String get cityLabel => 'नगरम्';

  @override
  String get stateLabel => 'राज्यम्';

  @override
  String get pincodeLabel => 'पिन्-सङ्केतः';

  @override
  String get invalidPincode => 'सम्यक् षडङ्कीयं पिन्-सङ्केतं लिखतु';

  @override
  String get contactNameLabel => 'सम्पर्कनाम';

  @override
  String get contactPhoneLabel => 'सम्पर्कसङ्ख्या';

  @override
  String get invalidMobileNumber => 'सम्यक् दशाङ्कीयां चलभाषसङ्ख्यां लिखतु';

  @override
  String get makeDefaultAddress => 'पूर्वनिर्धारितरूपेण अत्रैव वितरणम्';

  @override
  String get saveAddress => 'सङ्केतं रक्षतु';

  @override
  String get addressSaved => 'सङ्केतः रक्षितः';

  @override
  String get addressBookTitle => 'वितरणसङ्केताः';

  @override
  String get manageAddresses => 'रक्षितसङ्केतान् प्रबन्धयतु';

  @override
  String get noAddressesTitle => 'अद्यापि सङ्केताः न सन्ति';

  @override
  String get noAddressesSubtitle =>
      'भवतः समीपं वितरणं कुर्वतः आपणान् दर्शयितुम् एकं सङ्केतं योजयतु।';

  @override
  String get addAddress => 'सङ्केतं योजयतु';

  @override
  String get setAsDefault => 'पूर्वनिर्धारितं करोतु';

  @override
  String get editLabel => 'सम्पादयतु';

  @override
  String get addressUpdated => 'सङ्केतः नवीकृतः';

  @override
  String get deleteLabel => 'अपाकरोतु';

  @override
  String get deleteAddressTitle => 'एनं सङ्केतम् अपाकरोतु?';

  @override
  String get deleteAddressMessage => 'भवान् पश्चात् पुनः योजयितुं शक्नोति।';

  @override
  String get rescueDealsTitle => 'अन्नरक्षणम्';

  @override
  String get notTakingOrders => 'आदेशाः न स्वीक्रियन्ते';

  @override
  String get closedRightNow => 'सम्प्रति पिहितम्';

  @override
  String minimumOrder(String amount) {
    return 'न्यूनातिन्यूनं $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count अवशिष्टम्';
  }

  @override
  String get soldOut => 'समाप्तम्';

  @override
  String get menuEmptyTitle => 'अद्यापि व्यञ्जनानि न सन्ति';

  @override
  String get menuEmptySubtitle => 'अस्य भोजनालयस्य सूची न योजिता।';

  @override
  String get moreDishesTitle => 'अधिकानि व्यञ्जनानि';

  @override
  String get menuSearchHint => 'व्यञ्जनानि अन्विष्यतु';

  @override
  String get filtersShort => 'छाननानि';

  @override
  String get dietVeg => 'शाकाहारम्';

  @override
  String get dietEgg => 'अण्डम्';

  @override
  String get dietNonVeg => 'मांसाहारम्';

  @override
  String get menuBestsellerChip => 'सर्वाधिकविक्रीतम्';

  @override
  String get menuFoodType => 'भोजनप्रकारः';

  @override
  String get menuShowOnly => 'केवलं दर्शयतु';

  @override
  String menuMatchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यञ्जनानि',
      one: '1 व्यञ्जनम्',
    );
    return '$_temp0';
  }

  @override
  String menuShowDishes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यञ्जनानि दर्शयतु',
      one: '1 व्यञ्जनं दर्शयतु',
      zero: 'व्यञ्जनानि न सन्ति',
    );
    return '$_temp0';
  }

  @override
  String get menuNoMatchSubtitle =>
      'अन्यत् व्यञ्जननाम प्रयत्नं करोतु, अथवा छाननं निष्कासयतु।';

  @override
  String get menuBrowse => 'सूची';

  @override
  String get customisable => 'रुच्यनुसारम्';

  @override
  String get requiredLabel => 'आवश्यकम्';

  @override
  String get optionalLabel => 'वैकल्पिकम्';

  @override
  String get chooseOne => 'एकं चिनोतु';

  @override
  String chooseUpTo(int count) {
    return 'अधिकतमं $count चिनोतु';
  }

  @override
  String chooseAtLeast(int count) {
    return 'न्यूनातिन्यूनं $count चिनोतु';
  }

  @override
  String chooseBetween(int min, int max) {
    return '$min तः $max पर्यन्तं चिनोतु';
  }

  @override
  String get specialInstructions => 'विशेषनिर्देशाः';

  @override
  String get specialInstructionsHint => 'अल्पकटु, पलाण्डुः न…';

  @override
  String addForAmount(String amount) {
    return 'योजयतु · $amount';
  }

  @override
  String get deliveryLabel => 'गृहप्रापणम्';

  @override
  String get pickupLabel => 'स्वयं ग्रहणम्';

  @override
  String get packagingLabel => 'वेष्टनम्';

  @override
  String get discountLabel => 'छूटः';

  @override
  String get billDetailsTitle => 'देयविवरणम्';

  @override
  String get clearCart => 'शकटं रिक्तं करोतु';

  @override
  String get clearCartTitle => 'इदं शकटं रिक्तं क्रियताम्?';

  @override
  String get clearCartMessage => 'अस्मिन् स्थितं सर्वं निष्कासयिष्यते।';

  @override
  String unavailableItemsNotice(String items) {
    return 'अधुना न उपलभ्यते: $items';
  }

  @override
  String get removeUnavailable => 'तानि निष्कासयतु';

  @override
  String minimumNotMet(String amount) {
    return 'न्यूनतमः आदेशः $amount';
  }

  @override
  String get checkoutTitle => 'निष्क्रमणम्';

  @override
  String get deliveryAddressLabel => 'प्रापणस्थानम्';

  @override
  String get noAddressSelected => 'स्थानं न चितम्';

  @override
  String get paymentMethodLabel => 'शुल्कदानम्';

  @override
  String get payOnDelivery => 'प्रापणसमये नगदम्';

  @override
  String get noteToRestaurant => 'भोजनालयाय टिप्पणी';

  @override
  String get noteToRestaurantHint => 'घण्टां द्विवारं वादयतु…';

  @override
  String get activeOrdersTitle => 'प्रचलन्तः आदेशाः';

  @override
  String get pastOrdersTitle => 'पूर्वादेशाः';

  @override
  String get orderItemsTitle => 'व्यञ्जनानि';

  @override
  String get orderProgressTitle => 'प्रगतिः';

  @override
  String get arrivingIn => 'आगमनकालः';

  @override
  String get pickupCodeLabel => 'ग्रहणसङ्केतः';

  @override
  String get cancellationReasonLabel => 'निरसनकारणम्';

  @override
  String get riderLabel => 'प्रापणसहभागी';

  @override
  String get callRider => 'आह्वयतु';

  @override
  String get trackRider => 'वाहकं अनुसरतु';

  @override
  String get riderLocationSoon =>
      'आदेशं गृहीत्वा वाहकस्य स्थानम् अत्र दृश्यते।';

  @override
  String get riderLocationStale => 'वाहकस्य स्थानं नवीक्रियते…';

  @override
  String get recentreOnRider => 'वाहके केन्द्रीकरणम्';

  @override
  String get viewInvoice => 'करपत्रम्';

  @override
  String get cancelOrder => 'आदेशं निरस्यतु';

  @override
  String get cancelOrderTitle => 'अयम् आदेशः निरस्यताम्?';

  @override
  String get cancelOrderMessage =>
      'भोजनालयस्य स्वीकारात् पूर्वमेव निरसनं शक्यते।';

  @override
  String get cancelReasonLabel => 'कारणम्';

  @override
  String get cancelReasonFallback => 'ग्राहकेण निरस्तम्';

  @override
  String get orderCancelled => 'आदेशः निरस्तः';

  @override
  String get currentLocationLabel => 'वर्तमानस्थानम्';

  @override
  String get onLabel => 'सक्रियम्';

  @override
  String get offLabel => 'निष्क्रियम्';

  @override
  String get profileCoupons => 'भवतः छूटपत्राणि';

  @override
  String profileCouponsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count प्रयोज्यानि',
      one: '1 प्रयोज्यम्',
      zero: 'अद्यापि न सन्ति',
    );
    return '$_temp0';
  }

  @override
  String get profilePreferences => 'भवतः अभिरुचयः';

  @override
  String get profileVegMode => 'शाकाहारविधिः';

  @override
  String get profileVegModeHint => 'केवलं शाकाहारभोजनालयाः व्यञ्जनानि च';

  @override
  String get profileAppearance => 'दृश्यरूपम्';

  @override
  String get appearanceSystem => 'चलभाषवत्';

  @override
  String get appearanceLight => 'उज्ज्वलम्';

  @override
  String get appearanceDark => 'श्यामम्';

  @override
  String get profileNotifications => 'सूचनाः';

  @override
  String get profileFoodDelivery => 'भोजनस्य गृहप्रापणम्';

  @override
  String get profileFavourites => 'भवतः प्रियाणि';

  @override
  String get profileHelp => 'सहायता समर्थनं च';

  @override
  String get profileMore => 'अधिकम्';

  @override
  String get profileFeedback => 'प्रतिक्रियां प्रेषयतु';

  @override
  String get profileSafety => 'सुरक्षा-आपत्तिं सूचयतु';

  @override
  String get profileAbout => 'Nexmile विषये';

  @override
  String get couponsEmptyTitle => 'सम्प्रति छूटपत्राणि न सन्ति';

  @override
  String get couponsEmptyBody =>
      'यदा भवतः कृते प्रयोज्यं छूटपत्रं भविष्यति, तदा तत् अत्र दृश्यते।';

  @override
  String couponFlatOff(String amount) {
    return '$amount छूटः';
  }

  @override
  String couponPercentOff(String percent) {
    return '$percent% छूटः';
  }

  @override
  String couponUpTo(String amount) {
    return 'अधिकतमं $amount';
  }

  @override
  String couponMinOrder(String amount) {
    return '$amount तः अधिके आदेशे';
  }

  @override
  String couponValidTill(String date) {
    return '$date पर्यन्तं मान्यम्';
  }

  @override
  String get couponAllRestaurants => 'सर्वेषु भोजनालयेषु';

  @override
  String couponAtRestaurant(String restaurant) {
    return '$restaurant इत्यत्र';
  }

  @override
  String couponCopied(String code) {
    return 'सङ्केतः $code प्रतिलिखितः';
  }

  @override
  String get favouritesEmptyTitle => 'अद्यापि प्रियाणि न सन्ति';

  @override
  String get favouritesEmptyBody =>
      'भोजनालयम् अत्र रक्षितुं तस्य हृदयचिह्नं स्पृशतु।';

  @override
  String get helpCall => 'अस्मान् आह्वयतु';

  @override
  String get helpWhatsApp => 'WhatsApp';

  @override
  String get helpEmail => 'अस्मभ्यं विद्युत्पत्रं प्रेषयतु';

  @override
  String helpHours(String hours) {
    return 'वयं $hours उपलब्धाः स्मः';
  }

  @override
  String get helpFaqs => 'सामान्यप्रश्नाः';

  @override
  String get helpNothing =>
      'सहायताविवरणम् अधुना न उपलभ्यते। कृपया किञ्चित्कालानन्तरं पुनः प्रयत्नं करोतु।';

  @override
  String get feedbackPrompt => 'भवतः कृते Nexmile कथं कार्यं करोति?';

  @override
  String get feedbackHint =>
      'भवते किम् अरोचत, वयं किं सुष्ठुतरं कर्तुं शक्नुमः इति वदतु';

  @override
  String get feedbackNeedRating => 'प्रथमं मूल्याङ्कनं चिनोतु';

  @override
  String get feedbackThanks =>
      'धन्यवादः! भवतः प्रतिक्रिया अस्माकं दलं प्राप्ता।';

  @override
  String get safetyIntro =>
      'यदि भवान् अन्यः कश्चित् वा सङ्कटे अस्ति, तर्हि प्रथमम् आपात्कालीनसेवाम् आह्वयतु।';

  @override
  String get safetyCallEmergency => '112 आह्वयतु';

  @override
  String get safetyCallEmergencyBody => 'आरक्षकाः, अग्निशमनं, रुग्णवाहिका च';

  @override
  String get safetyCallNexmile => 'Nexmile सुरक्षासेवाम् आह्वयतु';

  @override
  String get safetyCallNexmileBody => 'अहर्निशम् उत्तरं दीयते';

  @override
  String aboutVersion(String version) {
    return 'संस्करणम् $version';
  }

  @override
  String get aboutTerms => 'सेवानियमाः';

  @override
  String get aboutPrivacy => 'गोपनीयतानीतिः';

  @override
  String get aboutLicences => 'मुक्तस्रोत-अनुज्ञापत्राणि';

  @override
  String get notifyOrderUpdates => 'आदेशसूचनाः';

  @override
  String get notifyOrderUpdatesBody =>
      'सर्वदा सक्रियम्, येन भवतः भोजनं कुत्र अस्ति इति भवान् जानाति।';

  @override
  String get notifyPromotions => 'प्रस्तावाः प्रचाराः च';

  @override
  String get notifyPromotionsBody =>
      'भवतः समीपे विशेषप्रस्तावाः, छूटपत्राणि, नवीनाः भोजनालयाः च।';

  @override
  String get notifyPhoneOff =>
      'अस्मिन् चलभाषे Nexmile कृते सूचनाः निष्क्रियाः सन्ति।';

  @override
  String get notifyTurnOn => 'सक्रियं करोतु';

  @override
  String get linkOpenFailed => 'अस्मिन् चलभाषे तत् उद्घाटयितुं न अशक्यत।';

  @override
  String get editProfileTitle => 'विवरणं परिवर्तयतु';

  @override
  String get editProfileSubtitle =>
      'भोजनालयः प्रापणसहभागी च भवतः नाम एव पश्यतः।';

  @override
  String get saveChanges => 'परिवर्तनानि रक्षतु';

  @override
  String get profileUpdated => 'विवरणं नवीकृतम्';

  @override
  String get deleteAccount => 'खातं लोपयतु';

  @override
  String get deleteAccountTitle => 'भवतः खातं लोप्यताम्?';

  @override
  String get deleteAccountMessage =>
      'सर्वेभ्यः उपकरणेभ्यः निर्गमनं भविष्यति। प्राक्तनाः आदेशाः पत्राणि च करलेखार्थं रक्ष्यन्ते।';

  @override
  String get accountDeleted => 'भवतः खातं लोपितम्';

  @override
  String get devicesTitle => 'प्रविष्टानि उपकरणानि';

  @override
  String get devicesSubtitle => 'भवान् कुत्र प्रविष्टः';

  @override
  String get devicesEmptyTitle => 'अन्यत् किमपि उपकरणं नास्ति';

  @override
  String get devicesEmptySubtitle => 'भवान् अस्मिन् एव उपकरणे प्रविष्टः।';

  @override
  String get signOutDevice => 'निर्गच्छतु';

  @override
  String get signOutDeviceTitle => 'इदम् उपकरणं निष्कास्यताम्?';

  @override
  String get signOutDeviceMessage =>
      'यदि भवान् इदमेव उपकरणं प्रयुङ्क्ते तर्हि पुनः प्रवेशः करणीयः।';

  @override
  String get deviceSignedOut => 'उपकरणं निष्कासितम्';

  @override
  String get signOutEverywhere => 'सर्वत्र निर्गमनम्';

  @override
  String get signOutEverywhereTitle => 'सर्वत्र निर्गम्यताम्?';

  @override
  String get signOutEverywhereMessage =>
      'अनेन उपकरणेन सह सर्वाणि उपकरणानि निष्कासितानि भविष्यन्ति।';

  @override
  String get unknownDevice => 'अज्ञातम् उपकरणम्';

  @override
  String get activeNow => 'इदानीं सक्रियम्';

  @override
  String minutesAgo(int count) {
    return '$count निमेषेभ्यः पूर्वम्';
  }

  @override
  String hoursAgo(int count) {
    return '$count होरेभ्यः पूर्वम्';
  }

  @override
  String daysAgo(int count) {
    return '$count दिनेभ्यः पूर्वम्';
  }

  @override
  String get filtersAndSorting => 'चयनं क्रमश्च';

  @override
  String get clearAll => 'सर्वं निष्कासयतु';

  @override
  String get showResults => 'फलानि दर्शयतु';

  @override
  String get closeLabel => 'पिदधातु';

  @override
  String get sortByTitle => 'क्रमः';

  @override
  String get sortRelevance => 'सम्बद्धता';

  @override
  String get sortRating => 'मूल्याङ्कनम्';

  @override
  String get sortDeliveryTime => 'प्रापणकालः';

  @override
  String get sortCostLowHigh => 'मूल्यम्: अल्पात् अधिकम्';

  @override
  String get sortCostHighLow => 'मूल्यम्: अधिकात् अल्पम्';

  @override
  String get timeSection => 'कालः';

  @override
  String get nearAndFast => 'समीपं शीघ्रं च';

  @override
  String get openNow => 'अधुना उद्घाटितम्';

  @override
  String get ratingSection => 'भोजनालयमूल्याङ्कनम्';

  @override
  String ratedAbove(String rating) {
    return '$rating+ मूल्याङ्कनम्';
  }

  @override
  String get offersSection => 'प्रस्तावाः';

  @override
  String get hasOffersLabel => 'प्रस्तावयुक्ताः';

  @override
  String get dishPriceSection => 'व्यञ्जनमूल्यम्';

  @override
  String costUnder(String amount) {
    return '$amount तः न्यूनम्';
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
  String get moreSection => 'अधिकम्';

  @override
  String get noPackagingCharges => 'वेष्टनशुल्कं नास्ति';

  @override
  String get allRestaurantsTitle => 'सर्वे भोजनालयाः';

  @override
  String get whatsOnYourMind => 'किं भोक्तुम् इच्छा?';

  @override
  String get listeningNow => 'शृण्मः…';

  @override
  String get speakNowHint => 'किमपि व्यञ्जनं भोजनालयं वा वदतु';

  @override
  String get voiceUnavailable => 'ध्वनिअन्वेषणं न उपलभ्यते';

  @override
  String get voiceUnavailableBody => 'भवान् टङ्कयित्वा अपि अन्वेष्टुं शक्नोति।';

  @override
  String get microphoneDenied => 'ध्वनिग्राहकस्य अनुमतिः नास्ति';

  @override
  String get voiceSearchLabel => 'ध्वनिना अन्विष्यतु';

  @override
  String get ratingsAndReviews => 'मूल्याङ्कनानि समीक्षाश्च';

  @override
  String get reviewsWithTextOnly => 'समीक्षायुक्तानि';

  @override
  String get noReviewsTitle => 'अद्यापि किमपि मूल्याङ्कनं नास्ति';

  @override
  String get noReviewsSubtitle => 'आदेशानन्तरं प्रथमं मूल्याङ्कनं भवान् ददातु।';

  @override
  String get rateOrderTitle => 'स्वस्य आदेशस्य मूल्याङ्कनं करोतु';

  @override
  String get rateDishesTitle => 'व्यञ्जनानां मूल्याङ्कनं करोतु';

  @override
  String get reviewHint => 'अन्यत् किमपि वक्तुम् इच्छति? (वैकल्पिकम्)';

  @override
  String get submitRating => 'मूल्याङ्कनं प्रेषयतु';

  @override
  String get reviewThanks => 'धन्यवादः — भवतः मूल्याङ्कनं प्राप्तम्।';

  @override
  String get rateThisOrder => 'अस्य आदेशस्य मूल्याङ्कनं करोतु';

  @override
  String get walletTitle => 'Nexmile धनकोशः';

  @override
  String get walletBalance => 'धनकोशस्य शेषः';

  @override
  String get walletBalanceHint =>
      'कस्यापि आदेशस्य शुल्कदानार्थं प्रयुङ्क्ताम्।';

  @override
  String get walletAddMoney => 'धनं योजयतु';

  @override
  String get walletEnterAmount => 'राशिं लिखतु';

  @override
  String walletAmountRange(String min, String max) {
    return '$min तः $max पर्यन्तम्';
  }

  @override
  String walletAddAmount(String amount) {
    return '$amount योजयतु';
  }

  @override
  String get walletSecuredBy => 'शुल्कदानानि Razorpay इत्यनेन सुरक्षितानि';

  @override
  String get walletHistory => 'इतिहासः';

  @override
  String get walletNoHistory =>
      'अद्यापि व्यवहाराः न सन्ति। भवता योजितं व्ययितं वा धनम् अत्र दृश्यते।';

  @override
  String get walletEntryTopUp => 'धनं योजितम्';

  @override
  String get walletEntryOrder => 'आदेशार्थं दत्तम्';

  @override
  String walletEntryOrderNumber(String number) {
    return 'आदेशः $number इत्यर्थं दत्तम्';
  }

  @override
  String get walletEntryRefund => 'प्रतिदानम्';

  @override
  String walletMoneyAdded(String amount) {
    return '$amount भवतः धनकोशे योजितम्';
  }

  @override
  String get walletPaymentFailed =>
      'शुल्कदानं विफलम्। भवतः खातात् किमपि धनं न गृहीतम्।';

  @override
  String get walletPaymentConfirming =>
      'शुल्कं प्राप्तम्। कतिपयनिमेषेषु भवतः शेषः नवीकृतः भविष्यति।';

  @override
  String get walletUseBalance => 'धनकोशस्य शेषं प्रयुङ्क्ताम्';

  @override
  String walletAvailable(String amount) {
    return 'उपलब्धम्: $amount';
  }

  @override
  String get walletPaidFromWallet => 'धनकोशात् दत्तम्';

  @override
  String get walletPayOnDelivery => 'प्रापणसमये देयम्';

  @override
  String get walletCoversOrder => 'पूर्णतया धनकोशात् दत्तम्';

  @override
  String walletRestOnDelivery(String wallet, String rest) {
    return '$wallet धनकोशात्, $rest प्रापणसमये';
  }

  @override
  String get walletTopUpUnavailable =>
      'धनयोजनम् अधुना न उपलभ्यते। कृपया किञ्चित्कालानन्तरं पुनः प्रयत्नं करोतु।';

  @override
  String walletFull(String limit) {
    return 'भवतः धनकोशः $limit इति सीमां प्राप्तः।';
  }

  @override
  String get searchAddressHint => 'प्रदेशं, मार्गं, चिह्नस्थलं वा अन्विष्यतु';

  @override
  String get selectLocationTitle => 'स्थानं चिनोतु';

  @override
  String get useCurrentLocation => 'वर्तमानस्थानं प्रयुङ्क्ताम्';

  @override
  String get locatingYou => 'भवतः स्थानम् अन्विष्यते…';

  @override
  String get locationOffHint => 'एतत् प्रयोक्तुं स्थानानुमतिं ददातु';

  @override
  String get savedAddressesHeading => 'रक्षिताः सङ्केताः';

  @override
  String get recentLocationsHeading => 'सद्यः अन्विष्टानि स्थानानि';

  @override
  String get poweredBy => 'powered by';

  @override
  String get selectDeliveryLocationTitle => 'प्रापणस्थानं चिनोतु';

  @override
  String get movePinTooltip => 'चिह्नं स्वस्य यथार्थप्रापणस्थानं प्रति चालयतु';

  @override
  String get locatingPin => 'सङ्केतः अन्विष्यते…';

  @override
  String get deliveryDetailsHeading => 'प्रापणविवरणम्';

  @override
  String get addressDetailsLabel => 'सङ्केतविवरणम्*';

  @override
  String get addressDetailsHint => 'यथा तलम्, गृहसङ्ख्या';

  @override
  String get missingAreaHint =>
      'अस्य चिह्नस्य पूर्णः सङ्केतः न पठितः। कृपया अवशिष्टं पूरयतु।';

  @override
  String get whoToContact => 'अस्य प्रापणार्थं केन सह सम्पर्कः करणीयः?';

  @override
  String get contactMyself => 'अहम् एव';

  @override
  String get contactSomeoneElse => 'अन्यः कश्चित्';

  @override
  String get receiverDetailsHeading => 'अस्य सङ्केतस्य स्वीकर्तुः विवरणम्';

  @override
  String get receiverAddPrompt => 'स्वीकर्तुः नाम सङ्ख्यां च योजयतु';

  @override
  String get receiverSheetTitle => 'स्वीकर्तुः विवरणम्';

  @override
  String get doorPhotoHeading => 'द्वारस्य भवनस्य वा चित्रम् (वैकल्पिकम्)';

  @override
  String get doorPhotoAdd => 'चित्रं योजयतु';

  @override
  String get doorPhotoBody =>
      'अनेन अस्माकं प्रापणसहभागिनः भवतः यथार्थस्थानं शीघ्रं प्राप्नुवन्ति';

  @override
  String get doorPhotoChange => 'परिवर्तयतु';

  @override
  String get doorPhotoRemove => 'निष्कासयतु';

  @override
  String get photoFromCamera => 'छायाचित्रं गृह्णातु';

  @override
  String get photoFromGallery => 'चित्रसङ्ग्रहात् चिनोतु';

  @override
  String get photoUploaded => 'चित्रं योजितम्';

  @override
  String get photoUploadFailed =>
      'चित्रम् आरोपयितुं न अशक्यत। कृपया किञ्चित्कालानन्तरं पुनः प्रयत्नं करोतु।';

  @override
  String get addressSavedPhotoFailed =>
      'सङ्केतः रक्षितः। चित्रम् आरोपयितुं न अशक्यत।';

  @override
  String get removePhotoLabel => 'चित्रं निष्कासयतु';

  @override
  String get photoRemoved => 'चित्रं निष्कासितम्';

  @override
  String get shareLabel => 'सम्प्रेषयतु';

  @override
  String get addDoorPhotoLabel => 'द्वारस्य चित्रं योजयतु';

  @override
  String get searchAddressNoResults =>
      'किमपि स्थानं न प्राप्तम्। समीपस्थं चिह्नस्थलं, प्रदेशनाम पिन्-सङ्केतं वा प्रयत्नं करोतु।';

  @override
  String get clearLabel => 'रिक्तं करोतु';

  @override
  String get trackingArrivingNow => 'इदानीम् आगच्छति';

  @override
  String get trackingLive => 'सजीवम्';

  @override
  String get trackingStepConfirmed => 'निश्चितम्';

  @override
  String get trackingStepPreparing => 'सज्जीकरणम्';

  @override
  String get trackingStepOnTheWay => 'मार्गे';

  @override
  String get trackingStepDelivered => 'वितरितम्';

  @override
  String get trackingFindingRider => 'प्रापणसहभागी नियुज्यते…';

  @override
  String get trackingPinYou => 'भवान्';

  @override
  String trackingRiderAway(String name, String distance) {
    return '$name $distance दूरे अस्ति';
  }

  @override
  String trackingMessageRider(String name) {
    return '$name इत्यस्मै सन्देशं प्रेषयतु';
  }

  @override
  String get trackingDeliveringTo => 'प्रापणस्थानम्';

  @override
  String get trackingOrderDetails => 'आदेशविवरणम्';

  @override
  String get dispatchSearching => 'भोजनालयस्य समीपे प्रापणसहभागी अन्विष्यते…';

  @override
  String get dispatchNoRider =>
      'अद्यापि कोऽपि प्रापणसहभागी आदेशं न स्वीकृतवान्। अस्माकं दलम् इदानीम् एकं नियोजयति।';

  @override
  String get vehicleBike => 'यन्त्रद्विचक्रिका';

  @override
  String get vehicleScooter => 'स्कूटर्';

  @override
  String get vehicleBicycle => 'द्विचक्रिका';

  @override
  String get vehicleElectric => 'विद्युत्-स्कूटर्';

  @override
  String get exitTitle => 'Nexmile तः निर्गम्यताम्?';

  @override
  String get exitBody => 'किं भवान् निश्चयेन अनुप्रयोगात् निर्गन्तुम् इच्छति?';

  @override
  String get exitConfirm => 'निर्गच्छतु';

  @override
  String cartSavedBanner(String amount) {
    return 'अस्मिन् आदेशे भवतः $amount लाभः अभवत्';
  }

  @override
  String get cartAddMoreItems => 'अधिकानि वस्तूनि योजयतु';

  @override
  String get cartAddNote => 'भोजनालयाय टिप्पणीं योजयतु';

  @override
  String get cartOrderNoteHint =>
      'यथा: कस्मिन्नपि व्यञ्जने पलाण्डुः लशुनं वा न स्यात्';

  @override
  String get cartNoteSave => 'रक्षतु';

  @override
  String get cartNoCutlery => 'भोजनोपकरणानि न प्रेषयतु';

  @override
  String get cartNoCutleryThanks =>
      'प्लास्टिक्-अपशिष्टं न्यूनीकर्तुं साहाय्याय धन्यवादः';

  @override
  String get cartSavingsCorner => 'लाभकोणः';

  @override
  String get cartDeliveryInstructions => 'प्रापणनिर्देशाः';

  @override
  String get cartInstructionsRider => 'एतानि केवलं भवतः प्रापणसहभागी पश्यति';

  @override
  String get instructionLeaveAtDoor => 'द्वारे स्थापयतु';

  @override
  String get instructionNoBell => 'घण्टां न वादयतु';

  @override
  String get instructionNoCall => 'आह्वानं न करोतु';

  @override
  String get instructionSecurity => 'द्वाररक्षकाय ददातु';

  @override
  String get instructionPet => 'गृहे पालितपशुः अस्ति';

  @override
  String get cartInclTaxes => 'करशुल्कसहितम्';

  @override
  String cartSavedTag(String amount) {
    return '$amount लाभः';
  }

  @override
  String get cartPayUsing => 'शुल्कदानविधिः';

  @override
  String get cartWalletAndCash => 'धनकोशः + नगदम्';

  @override
  String cartCashRest(String amount) {
    return 'आगमनसमये $amount ददातु';
  }

  @override
  String get cartCashFull => 'आदेशस्य आगमनसमये ददातु';

  @override
  String get cartCashNothing => 'प्रापणसमये किमपि न देयम्';

  @override
  String get cartTotal => 'योगः';

  @override
  String get cartPlaceOrder => 'आदेशं ददातु';

  @override
  String cartDeliverTo(String place) {
    return '$place इत्यत्र प्रापणम्';
  }

  @override
  String get cartChange => 'परिवर्तयतु';

  @override
  String get cartNoAddress => 'कुत्र प्रापणं करणीयम्?';

  @override
  String get cartNoAddressHint => 'आदेशं दातुं सङ्केतं योजयतु';

  @override
  String cartPickupFrom(String restaurant) {
    return '$restaurant तः स्वयं गृह्णातु';
  }

  @override
  String cartReadyIn(int minutes) {
    return 'प्रायः $minutes निमेषेषु सज्जम्';
  }

  @override
  String get cartChooseAddress => 'प्रापणसङ्केतं चिनोतु';

  @override
  String get cartDone => 'सम्पन्नम्';

  @override
  String get supportTitle => 'Nexmile सहायता';

  @override
  String get supportBubble => 'सहायता';

  @override
  String get supportAiLabel => 'AI-सहायकः';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile दलम्';
  }

  @override
  String get supportDemoBanner =>
      'प्रदर्शनम्: एतानि उत्तराणि नमूनारूपाणि। वास्तविकः सहायकः अद्यापि न सम्बद्धः।';

  @override
  String get supportEmptyTitle => 'कथं साहाय्यं करवाम?';

  @override
  String get supportEmptyBody =>
      'आदेशविषये, शुल्कदानविषये, अन्यविषये वा पृच्छतु। प्रथमम् अस्माकं AI-सहायकः उत्तरं ददाति, यदा सः साहाय्यं कर्तुं न शक्नोति तदा अस्माकं दलस्य कश्चन जनः उत्तरदायित्वं स्वीकरोति।';

  @override
  String get supportSuggestWhere => 'मम आदेशः कुत्र अस्ति?';

  @override
  String get supportSuggestMissing => 'किञ्चित् वस्तु न्यूनम् अस्ति';

  @override
  String get supportSuggestRefund => 'प्रतिदानविषये मम एकः प्रश्नः अस्ति';

  @override
  String get supportComposerHint => 'सन्देशं लिखतु';

  @override
  String get supportSend => 'प्रेषयतु';

  @override
  String get supportTyping => 'AI-सहायकः लिखति…';

  @override
  String get supportNotSent => 'न प्रेषितम्';

  @override
  String get supportTookTooLong => 'अतीव विलम्बः अभवत्।';

  @override
  String get supportSlowDown =>
      'अधिकसन्देशप्रेषणात् पूर्वं किञ्चित् प्रतीक्षताम्।';

  @override
  String get supportUnreachable =>
      'अधुना वार्तालापेन सह सम्पर्कः कर्तुं न शक्यते। अस्मान् आह्वयतु, अथवा कतिपयनिमेषानन्तरं पुनः प्रयत्नं करोतु।';

  @override
  String get supportOffline =>
      'भवान् अन्तर्जालेन असम्बद्धः अस्ति। एषः भवतः अन्तिमः रक्षितः वार्तालापः।';

  @override
  String get supportClosed => 'अयं वार्तालापः समापितः।';

  @override
  String get supportStartNew => 'नवीनं वार्तालापम् आरभताम्';

  @override
  String get supportTalkToPerson => 'मनुष्येण सह वदतु';

  @override
  String get supportMarkSolved => 'समाधानं जातम्';

  @override
  String get supportHelpful => 'उपकारकम्';

  @override
  String get supportNotHelpful => 'न उपकारकम्';

  @override
  String get supportNeedHelp => 'सहायता अपेक्षिता?';

  @override
  String get supportChatWithUs => 'अस्माभिः सह वार्तालापं करोतु';

  @override
  String get supportChatWithUsBody =>
      'अस्माकं AI-सहायकः क्षणेषु उत्तरं ददाति, आवश्यकतायां च कश्चन जनः उत्तरदायित्वं स्वीकरोति।';

  @override
  String get supportActionFailed => 'तत् न सम्पन्नम्। पुनः प्रयत्नं करोतु।';

  @override
  String get supportOrderNotFound => 'एषः आदेशः भवतः खाते न लब्धः।';

  @override
  String get supportOrderLookupDown =>
      'इदानीम् एषः आदेशः द्रष्टुं न शक्यते। भवान् स्वप्रश्नं लेखितुं शक्नोति।';

  @override
  String get restaurantNew => 'नूतनम्';

  @override
  String get walletHideBalance => 'शेषं गोपयतु';

  @override
  String get walletShowBalance => 'शेषं दर्शयतु';

  @override
  String get walletBalanceHiddenLabel => 'शेषः गोपितः';

  @override
  String walletUpdatedAt(String time) {
    return 'नवीकृतम्: $time';
  }

  @override
  String walletBelowMin(String amount) {
    return 'न्यूनातिन्यूनं $amount योजयतु';
  }

  @override
  String walletAboveMax(String amount) {
    return 'भवान् अधिकतमं $amount योजयितुं शक्नोति';
  }

  @override
  String get walletOpeningPayment => 'शुल्कदानम् उद्घाट्यते…';

  @override
  String get walletConfirmingPayment => 'शुल्कदानं निश्चीयते…';

  @override
  String get walletTransactions => 'व्यवहाराः';

  @override
  String get walletFilterAll => 'सर्वे';

  @override
  String get walletFilterAdded => 'योजितं धनम्';

  @override
  String get walletFilterSpent => 'व्ययितं धनम्';

  @override
  String get walletSearch => 'अन्विष्यतु';

  @override
  String get walletSearchHint => 'आदेशसङ्ख्यां परिचयाङ्कं वा अन्विष्यतु';

  @override
  String get walletDateFilter => 'दिनाङ्केन छाननं करोतु';

  @override
  String get walletClearFilters => 'छाननानि निष्कासयतु';

  @override
  String get walletNoMatches => 'भवतः छाननानुसारं कोऽपि व्यवहारः न प्राप्तः';

  @override
  String get walletEmptyTitle => 'अद्यापि व्यवहाराः न सन्ति';

  @override
  String get walletEmptyBody =>
      'भवता योजितं, आदेशेषु व्ययितं, प्रतिदानरूपेण प्राप्तं वा धनम् अत्र दृश्यते।';

  @override
  String get walletToday => 'अद्य';

  @override
  String get walletYesterday => 'ह्यः';

  @override
  String walletLatestOnly(int count) {
    return 'भवतः नवीनतमाः $count व्यवहाराः दर्श्यन्ते';
  }

  @override
  String walletEntryRefundNumber(String number) {
    return 'आदेशः $number इत्यर्थं प्रतिदानम्';
  }

  @override
  String get walletDetailsTitle => 'व्यवहारविवरणम्';

  @override
  String get walletDetailDate => 'दिनाङ्कः समयश्च';

  @override
  String get walletDetailId => 'व्यवहारपरिचयाङ्कः';

  @override
  String get walletDetailType => 'प्रकारः';

  @override
  String get walletDetailMethod => 'शुल्कदानविधिः';

  @override
  String get walletDetailStatus => 'स्थितिः';

  @override
  String get walletDetailOrder => 'आदेशः';

  @override
  String get walletDetailReference => 'शुल्कदानसन्दर्भः';

  @override
  String get walletDetailBalanceAfter => 'व्यवहारानन्तरं शेषः';

  @override
  String get walletCredit => 'प्राप्तिः';

  @override
  String get walletDebit => 'व्ययः';

  @override
  String get walletStatusSuccess => 'सफलम्';

  @override
  String get walletStatusPending => 'प्रतीक्षमाणम्';

  @override
  String get walletStatusFailed => 'विफलम्';

  @override
  String get walletMethodOnline => 'अन्तर्जालशुल्कदानम्';

  @override
  String get walletMethodUpi => 'UPI';

  @override
  String get walletMethodCard => 'पत्रकम्';

  @override
  String get walletMethodNetbanking => 'अन्तर्जाल-अधिकोषणम्';

  @override
  String get walletMethodRefund => 'धनकोशे प्रतिदानम्';

  @override
  String get walletCopyId => 'परिचयाङ्कं प्रतिलिखतु';

  @override
  String get walletIdCopied => 'व्यवहारपरिचयाङ्कः प्रतिलिखितः';

  @override
  String get walletShareDetails => 'विवरणं सम्प्रेषयतु';
}
