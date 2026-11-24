// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Nexmile';

  @override
  String get fieldRequired => 'This field is required';

  @override
  String get tagline => 'Fast Delivery. Fresh Smiles.';

  @override
  String get chooseLanguageTitle => 'Choose your language';

  @override
  String get chooseLanguageSubtitle =>
      'Pick the language you are most comfortable with. You can change it anytime from Settings.';

  @override
  String get searchLanguageHint => 'Search language';

  @override
  String get noLanguageFound => 'No language found';

  @override
  String languagesAvailable(int count) {
    return '$count languages available';
  }

  @override
  String get continueLabel => 'Continue';

  @override
  String get selectedLabel => 'Selected';

  @override
  String get defaultLabel => 'Default';

  @override
  String get homeTitle => 'Welcome to Nexmile';

  @override
  String get homeSubtitle =>
      'Fresh groceries, hot food and daily essentials delivered from shops near you.';

  @override
  String get changeLanguage => 'Change language';

  @override
  String get languageUpdated => 'Language updated';

  @override
  String get appLanguageLabel => 'App language';

  @override
  String greetingNamed(String name) {
    return 'Hello, $name';
  }

  @override
  String get loginTitle => 'Sign in to Nexmile';

  @override
  String get loginSubtitle =>
      'Enter your email or mobile number and we will send you a verification code.';

  @override
  String get emailOrPhoneLabel => 'Email or mobile number';

  @override
  String get emailOrPhoneHint => 'name@example.com or 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'Enter a valid email address or 10-digit mobile number';

  @override
  String get loginHeadline => 'Hot food from shops near you, delivered fast';

  @override
  String get loginOrSignUp => 'Log in or sign up';

  @override
  String get loginEmailHint => 'Enter your email address';

  @override
  String get invalidEmail => 'Enter a valid email address';

  @override
  String get sendCode => 'Send code';

  @override
  String get agreeToTermsOnContinue =>
      'By continuing you agree to our Terms of Service and Privacy Policy.';

  @override
  String get otpTitle => 'Verify it is you';

  @override
  String otpSubtitle(String target) {
    return 'Enter the 6-digit code we sent to $target';
  }

  @override
  String get verifyCode => 'Verify';

  @override
  String get resendCode => 'Resend code';

  @override
  String resendCodeIn(int seconds) {
    return 'Resend code in ${seconds}s';
  }

  @override
  String get codeResent => 'A new code has been sent';

  @override
  String get incorrectCode =>
      'That code is not correct or has expired. Request a new one.';

  @override
  String get enterFullCode => 'Enter all 6 digits';

  @override
  String get accountSuspended =>
      'This account has been suspended. Please contact support.';

  @override
  String get tooManyAttempts =>
      'Too many attempts. Please wait a while and try again.';

  @override
  String get sessionExpired =>
      'Your session has expired. Please sign in again.';

  @override
  String get networkError =>
      'No internet connection. Check your connection and try again.';

  @override
  String get developmentCode => 'Development code';

  @override
  String get signOut => 'Sign out';

  @override
  String get signedOut => 'You have been signed out';

  @override
  String get somethingWentWrong => 'Something went wrong. Please try again.';

  @override
  String get profileTitle => 'Profile';

  @override
  String get viewProfile => 'View profile';

  @override
  String get nameLabel => 'Name';

  @override
  String get emailLabel => 'Email';

  @override
  String get mobileLabel => 'Mobile number';

  @override
  String get accountStatusLabel => 'Account status';

  @override
  String get statusActive => 'Active';

  @override
  String get statusPending => 'Pending';

  @override
  String get statusSuspended => 'Suspended';

  @override
  String get verifiedLabel => 'Verified';

  @override
  String get notProvided => 'Not added';

  @override
  String get retry => 'Try again';

  @override
  String get navHome => 'Home';

  @override
  String get navSearch => 'Search';

  @override
  String get navOrders => 'Orders';

  @override
  String get cancelLabel => 'Cancel';

  @override
  String get deliverTo => 'DELIVER TO';

  @override
  String get searchDishesHint => 'Search for dishes or restaurants';

  @override
  String get searchTitle => 'Search';

  @override
  String get searchNoResultsTitle => 'Nothing matched';

  @override
  String get searchNoResultsSubtitle =>
      'Try a different dish, cuisine or restaurant name.';

  @override
  String get cravingTitle => 'What are you craving?';

  @override
  String get offersTitle => 'Offers for you';

  @override
  String get restaurantsNearby => 'Restaurants near you';

  @override
  String restaurantsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count restaurants',
      one: '1 restaurant',
    );
    return '$_temp0';
  }

  @override
  String get noRestaurantsTitle => 'Nothing here yet';

  @override
  String get noRestaurantsSubtitle =>
      'Try another category, or clear the filter.';

  @override
  String minutesAway(int minutes) {
    return '$minutes min';
  }

  @override
  String kilometresAway(String distance) {
    return '$distance km';
  }

  @override
  String ratingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ratings',
      one: '1 rating',
    );
    return '$_temp0';
  }

  @override
  String priceForTwo(int amount) {
    return '₹$amount for two';
  }

  @override
  String get freeDelivery => 'Free delivery';

  @override
  String percentOff(int percent) {
    return '$percent% OFF';
  }

  @override
  String percentOffOnOrder(int percent) {
    return '$percent% off on your order';
  }

  @override
  String get vegOnly => 'Veg only';

  @override
  String get bestseller => 'BESTSELLER';

  @override
  String get addLabel => 'ADD';

  @override
  String get noVegDishesTitle => 'No veg dishes here';

  @override
  String get noVegDishesSubtitle =>
      'Turn off the veg filter to see the full menu.';

  @override
  String get replaceCartTitle => 'Start a new cart?';

  @override
  String replaceCartMessage(String restaurant) {
    return 'Your cart has items from $restaurant. Adding this will clear it.';
  }

  @override
  String get replaceCartConfirm => 'Clear and add';

  @override
  String get cartTitle => 'Your cart';

  @override
  String get cartEmptyTitle => 'Your cart is empty';

  @override
  String get cartEmptySubtitle =>
      'Add dishes from a restaurant to get started.';

  @override
  String get browseRestaurants => 'Browse restaurants';

  @override
  String itemsInCart(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }

  @override
  String get viewCart => 'View cart';

  @override
  String get itemTotal => 'Item total';

  @override
  String get deliveryFeeLabel => 'Delivery fee';

  @override
  String get taxesAndCharges => 'Taxes and charges';

  @override
  String get freeLabel => 'FREE';

  @override
  String get toPay => 'To pay';

  @override
  String placeOrderFor(String amount) {
    return 'Place order · $amount';
  }

  @override
  String get ordersTitle => 'Your orders';

  @override
  String get ordersEmptyTitle => 'No orders yet';

  @override
  String get ordersEmptySubtitle => 'Your past orders will show up here.';

  @override
  String get reorder => 'Reorder';

  @override
  String orderTitle(String id) {
    return 'Order $id';
  }

  @override
  String get orderPlacedTitle => 'Order placed';

  @override
  String orderPlacedSubtitle(int minutes) {
    return 'Arriving in about $minutes minutes.';
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
  String get orderDeliveredTitle => 'Delivered';

  @override
  String get orderDeliveredSubtitle => 'Enjoy your food.';

  @override
  String get statusOrderPlaced => 'Order placed';

  @override
  String get statusPreparing => 'Preparing your food';

  @override
  String get statusOnTheWay => 'On the way';

  @override
  String get statusDelivered => 'Delivered';

  @override
  String get keepBrowsing => 'Keep browsing';

  @override
  String get backToHome => 'Back to home';

  @override
  String get prototypeNotice =>
      'Sample storefront — real shops arrive with the catalogue API.';

  @override
  String get prototypeCheckoutNotice =>
      'This is a prototype. No payment is taken and no order is really placed.';

  @override
  String get prototypeTrackingNotice =>
      'Tracking is simulated for the prototype.';

  @override
  String get locationTitle => 'Where should we deliver?';

  @override
  String get locationSubtitle =>
      'Nexmile delivers from shops within 1 km, so we need your exact spot to show what can reach you.';

  @override
  String get locationReasonRadiusTitle => 'Shops within 1 km';

  @override
  String get locationReasonRadiusBody =>
      'We only list kitchens close enough to arrive hot.';

  @override
  String get locationReasonAccuracyTitle => 'No missed doorsteps';

  @override
  String get locationReasonAccuracyBody =>
      'An exact pin means your rider finds you without calling.';

  @override
  String get locationReasonPrivacyTitle => 'Only while you use the app';

  @override
  String get locationReasonPrivacyBody =>
      'We never track you in the background, and you can type the address instead.';

  @override
  String get allowLocation => 'Allow location';

  @override
  String get enterAddressManually => 'I\'ll enter my address instead';

  @override
  String get locationDenied =>
      'Location permission was declined. You can still drop the pin yourself.';

  @override
  String get locationDeniedForever =>
      'Location is blocked for Nexmile. Turn it on in Settings, or place the pin by hand.';

  @override
  String get locationServiceOff => 'Location is switched off on this device.';

  @override
  String get locationUnavailable =>
      'We could not get a location fix. Please place the pin yourself.';

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
  String get openSettings => 'Settings';

  @override
  String get pinLocationTitle => 'Set your delivery pin';

  @override
  String get deliveryRadiusHint =>
      'The circle shows the 1 km Nexmile delivers within.';

  @override
  String get useMyLocation => 'Use my location';

  @override
  String get deliveringHere => 'DELIVERING HERE';

  @override
  String get dragToAdjust => 'Drag the map to adjust the pin';

  @override
  String get confirmLocation => 'Confirm location';

  @override
  String get addressDetailsTitle => 'Address details';

  @override
  String get addressDetailsSubtitle =>
      'Add the flat and landmark so your rider reaches the right door.';

  @override
  String get pinnedLocation => 'Pinned location';

  @override
  String get changePin => 'Change';

  @override
  String get saveAddressAs => 'Save this address as';

  @override
  String get labelHome => 'Home';

  @override
  String get labelWork => 'Work';

  @override
  String get labelOther => 'Other';

  @override
  String get addressLine1Label => 'Flat, house or building';

  @override
  String get addressLine1Hint => '12A, Green Residency';

  @override
  String get addressLine2Label => 'Street or area';

  @override
  String get addressLine2Hint => '2nd Avenue, Anna Nagar';

  @override
  String get landmarkLabel => 'Landmark';

  @override
  String get landmarkHint => 'Opposite the bus stop';

  @override
  String get cityLabel => 'City';

  @override
  String get stateLabel => 'State';

  @override
  String get pincodeLabel => 'PIN code';

  @override
  String get invalidPincode => 'Enter a valid 6-digit PIN code';

  @override
  String get contactNameLabel => 'Contact name';

  @override
  String get contactPhoneLabel => 'Contact number';

  @override
  String get invalidMobileNumber => 'Enter a valid 10-digit mobile number';

  @override
  String get makeDefaultAddress => 'Deliver here by default';

  @override
  String get saveAddress => 'Save address';

  @override
  String get addressSaved => 'Address saved';

  @override
  String get addressBookTitle => 'Delivery addresses';

  @override
  String get manageAddresses => 'Manage saved addresses';

  @override
  String get noAddressesTitle => 'No addresses yet';

  @override
  String get noAddressesSubtitle =>
      'Add one so we can show the shops that deliver to you.';

  @override
  String get addAddress => 'Add address';

  @override
  String get setAsDefault => 'Set as default';

  @override
  String get editLabel => 'Edit';

  @override
  String get addressUpdated => 'Address updated';

  @override
  String get deleteLabel => 'Delete';

  @override
  String get deleteAddressTitle => 'Delete this address?';

  @override
  String get deleteAddressMessage => 'You can always add it again later.';

  @override
  String get rescueDealsTitle => 'Food Rescue';

  @override
  String get notTakingOrders => 'Not taking orders';

  @override
  String get closedRightNow => 'Closed right now';

  @override
  String minimumOrder(String amount) {
    return 'Min $amount';
  }

  @override
  String portionsLeft(int count) {
    return '$count left';
  }

  @override
  String get soldOut => 'Sold out';

  @override
  String get menuEmptyTitle => 'No dishes yet';

  @override
  String get menuEmptySubtitle => 'This restaurant has not added its menu.';

  @override
  String get moreDishesTitle => 'More dishes';

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
  String get customisable => 'Customisable';

  @override
  String get requiredLabel => 'Required';

  @override
  String get optionalLabel => 'Optional';

  @override
  String get chooseOne => 'Choose one';

  @override
  String chooseUpTo(int count) {
    return 'Choose up to $count';
  }

  @override
  String chooseAtLeast(int count) {
    return 'Choose at least $count';
  }

  @override
  String chooseBetween(int min, int max) {
    return 'Choose $min to $max';
  }

  @override
  String get specialInstructions => 'Special instructions';

  @override
  String get specialInstructionsHint => 'Less spicy, no onion…';

  @override
  String addForAmount(String amount) {
    return 'Add · $amount';
  }

  @override
  String get deliveryLabel => 'Delivery';

  @override
  String get pickupLabel => 'Pickup';

  @override
  String get packagingLabel => 'Packaging';

  @override
  String get discountLabel => 'Discount';

  @override
  String get billDetailsTitle => 'Bill details';

  @override
  String get clearCart => 'Clear cart';

  @override
  String get clearCartTitle => 'Clear this cart?';

  @override
  String get clearCartMessage => 'Everything in it will be removed.';

  @override
  String unavailableItemsNotice(String items) {
    return 'No longer available: $items';
  }

  @override
  String get removeUnavailable => 'Remove them';

  @override
  String minimumNotMet(String amount) {
    return 'Minimum order is $amount';
  }

  @override
  String get checkoutTitle => 'Checkout';

  @override
  String get deliveryAddressLabel => 'Delivery address';

  @override
  String get noAddressSelected => 'No address chosen';

  @override
  String get paymentMethodLabel => 'Payment';

  @override
  String get payOnDelivery => 'Cash on delivery';

  @override
  String get noteToRestaurant => 'Note for the restaurant';

  @override
  String get noteToRestaurantHint => 'Ring the bell twice…';

  @override
  String get activeOrdersTitle => 'In progress';

  @override
  String get pastOrdersTitle => 'Earlier';

  @override
  String get orderItemsTitle => 'Items';

  @override
  String get orderProgressTitle => 'Progress';

  @override
  String get arrivingIn => 'Arriving in';

  @override
  String get pickupCodeLabel => 'Pickup code';

  @override
  String get cancellationReasonLabel => 'Why it was cancelled';

  @override
  String get riderLabel => 'Delivery partner';

  @override
  String get callRider => 'Call';

  @override
  String get trackRider => 'Track rider';

  @override
  String get riderLocationSoon =>
      'Your rider\'s location will appear here once they pick up your order.';

  @override
  String get riderLocationStale => 'Updating rider\'s location…';

  @override
  String get recentreOnRider => 'Recentre on rider';

  @override
  String get viewInvoice => 'Tax invoice';

  @override
  String get cancelOrder => 'Cancel order';

  @override
  String get cancelOrderTitle => 'Cancel this order?';

  @override
  String get cancelOrderMessage =>
      'You can only cancel before the restaurant accepts it.';

  @override
  String get cancelReasonLabel => 'Reason';

  @override
  String get cancelReasonFallback => 'Cancelled by the customer';

  @override
  String get orderCancelled => 'Order cancelled';

  @override
  String get currentLocationLabel => 'Current location';

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
  String get editProfileTitle => 'Edit profile';

  @override
  String get editProfileSubtitle =>
      'Your name is what the restaurant and the delivery partner see.';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get profileUpdated => 'Profile updated';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteAccountTitle => 'Delete your account?';

  @override
  String get deleteAccountMessage =>
      'You will be signed out everywhere. Past orders and invoices are kept for tax records.';

  @override
  String get accountDeleted => 'Your account has been deleted';

  @override
  String get devicesTitle => 'Signed-in devices';

  @override
  String get devicesSubtitle => 'Where you are signed in';

  @override
  String get devicesEmptyTitle => 'No other devices';

  @override
  String get devicesEmptySubtitle => 'You are signed in on this device only.';

  @override
  String get signOutDevice => 'Sign out';

  @override
  String get signOutDeviceTitle => 'Sign out this device?';

  @override
  String get signOutDeviceMessage =>
      'If this is the device you are using, you will have to sign in again.';

  @override
  String get deviceSignedOut => 'Device signed out';

  @override
  String get signOutEverywhere => 'Sign out everywhere';

  @override
  String get signOutEverywhereTitle => 'Sign out everywhere?';

  @override
  String get signOutEverywhereMessage =>
      'Every device, including this one, will be signed out.';

  @override
  String get unknownDevice => 'Unknown device';

  @override
  String get activeNow => 'Active now';

  @override
  String minutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String hoursAgo(int count) {
    return '$count h ago';
  }

  @override
  String daysAgo(int count) {
    return '$count d ago';
  }

  @override
  String get filtersAndSorting => 'Filters and sorting';

  @override
  String get clearAll => 'Clear all';

  @override
  String get showResults => 'Show results';

  @override
  String get closeLabel => 'Close';

  @override
  String get sortByTitle => 'Sort by';

  @override
  String get sortRelevance => 'Relevance';

  @override
  String get sortRating => 'Rating';

  @override
  String get sortDeliveryTime => 'Delivery time';

  @override
  String get sortCostLowHigh => 'Cost: low to high';

  @override
  String get sortCostHighLow => 'Cost: high to low';

  @override
  String get timeSection => 'Time';

  @override
  String get nearAndFast => 'Near & Fast';

  @override
  String get openNow => 'Open now';

  @override
  String get ratingSection => 'Restaurant rating';

  @override
  String ratedAbove(String rating) {
    return 'Rated $rating+';
  }

  @override
  String get offersSection => 'Offers';

  @override
  String get hasOffersLabel => 'Has offers';

  @override
  String get dishPriceSection => 'Dish price';

  @override
  String costUnder(String amount) {
    return 'Under $amount';
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
  String get moreSection => 'More';

  @override
  String get noPackagingCharges => 'No packaging charges';

  @override
  String get allRestaurantsTitle => 'All restaurants';

  @override
  String get whatsOnYourMind => 'What\'s on your mind?';

  @override
  String get listeningNow => 'Listening…';

  @override
  String get speakNowHint => 'Say a dish or a restaurant';

  @override
  String get voiceUnavailable => 'Voice search is unavailable';

  @override
  String get voiceUnavailableBody => 'You can still type your search.';

  @override
  String get microphoneDenied => 'Microphone access is off';

  @override
  String get voiceSearchLabel => 'Search by voice';

  @override
  String get ratingsAndReviews => 'Ratings & reviews';

  @override
  String get reviewsWithTextOnly => 'With reviews';

  @override
  String get noReviewsTitle => 'No ratings yet';

  @override
  String get noReviewsSubtitle =>
      'Be the first to rate this place after your order.';

  @override
  String get rateOrderTitle => 'Rate your order';

  @override
  String get rateDishesTitle => 'Rate the dishes';

  @override
  String get reviewHint => 'Anything you would like to add? (optional)';

  @override
  String get submitRating => 'Submit rating';

  @override
  String get reviewThanks => 'Thanks — your rating is in.';

  @override
  String get rateThisOrder => 'Rate this order';

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
  String get cartOrderNoteHint => 'E.g. No onion or garlic in anything';

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
  String get cartInstructionsRider => 'Only your delivery partner sees these';

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

  @override
  String get supportTitle => 'Nexmile Support';

  @override
  String get supportBubble => 'Help';

  @override
  String get supportAiLabel => 'AI assistant';

  @override
  String supportAgentLabel(String name) {
    return '$name · Nexmile team';
  }

  @override
  String get supportDemoBanner =>
      'Demo: these answers are samples. The real assistant isn\'t connected yet.';

  @override
  String get supportEmptyTitle => 'How can we help?';

  @override
  String get supportEmptyBody =>
      'Ask about an order, a payment or anything else. Our AI assistant answers first, and a person from our team takes over when it can\'t help.';

  @override
  String get supportSuggestWhere => 'Where is my order?';

  @override
  String get supportSuggestMissing => 'Something is missing';

  @override
  String get supportSuggestRefund => 'I have a refund question';

  @override
  String get supportComposerHint => 'Type a message';

  @override
  String get supportSend => 'Send';

  @override
  String get supportTyping => 'AI assistant is typing…';

  @override
  String get supportNotSent => 'Not sent';

  @override
  String get supportTookTooLong => 'That took too long.';

  @override
  String get supportSlowDown => 'Give it a moment before sending more.';

  @override
  String get supportUnreachable =>
      'Chat can\'t be reached right now. Call us, or try again in a few minutes.';

  @override
  String get supportOffline => 'You\'re offline. This is your last saved chat.';

  @override
  String get supportClosed => 'This chat is closed.';

  @override
  String get supportStartNew => 'Start a new chat';

  @override
  String get supportTalkToPerson => 'Talk to a person';

  @override
  String get supportMarkSolved => 'Mark as solved';

  @override
  String get supportHelpful => 'Helpful';

  @override
  String get supportNotHelpful => 'Not helpful';

  @override
  String get supportNeedHelp => 'Need help?';

  @override
  String get supportChatWithUs => 'Chat with us';

  @override
  String get supportChatWithUsBody =>
      'Our AI assistant answers in seconds, and a person takes over when you need one.';

  @override
  String get supportActionFailed => 'That didn\'t go through. Try again.';
}
