import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../auth/data/auth_failure.dart';
import '../../catalogue/data/storefront_models.dart';
import '../../catalogue/data/storefront_repository.dart';
import '../../catalogue/presentation/orders_tab.dart';
import '../../catalogue/presentation/widgets/catalogue_widgets.dart';
import '../../catalogue/state/storefront_controller.dart';
import '../data/account_models.dart';
import '../state/account_controller.dart';
import 'account_sheets.dart';
import 'profile_widgets.dart';

// ---------------------------------------------------------------------------
// Coupons
// ---------------------------------------------------------------------------

/// The coupons this customer can use, as `GET /v1/coupons`.
class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<AccountController>().loadCoupons(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AccountController account = context.watch<AccountController>();
    final List<Coupon>? coupons = account.coupons;

    Widget body;
    if (coupons == null && account.couponsLoading) {
      body = const Center(child: CircularProgressIndicator());
    } else if (coupons == null && account.couponsFailure != null) {
      body = AccountEmptyState(
        icon: Icons.cloud_off_rounded,
        alert: true,
        title: account.couponsFailure!.message(l10n),
        body: '',
        action: OutlinedButton(
          onPressed: account.loadCoupons,
          child: Text(l10n.retry),
        ),
      );
    } else if (coupons == null || coupons.isEmpty) {
      body = ListView(
        children: <Widget>[
          AccountEmptyState(
            icon: Icons.local_offer_outlined,
            title: l10n.couponsEmptyTitle,
            body: l10n.couponsEmptyBody,
          ),
        ],
      );
    } else {
      body = ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        itemCount: coupons.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (BuildContext context, int i) =>
            _CouponCard(coupon: coupons[i]),
      );
    }

    return Scaffold(
      backgroundColor: profilePageColour(theme),
      appBar: AppBar(
        backgroundColor: profilePageColour(theme),
        surfaceTintColor: Colors.transparent,
        title: Text(l10n.profileCoupons),
      ),
      body: RefreshIndicator(onRefresh: account.loadCoupons, child: body),
    );
  }
}

class _CouponCard extends StatelessWidget {
  const _CouponCard({required this.coupon});

  final Coupon coupon;

  static String _date(DateTime date) {
    const List<String> months = <String>[
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return '${date.day} ${months[date.month - 1]}';
  }

  String _headline(AppLocalizations l10n) {
    if (coupon.kind == CouponKind.flat) {
      return l10n.couponFlatOff(formatRupees(coupon.value));
    }
    final String percent = coupon.value == coupon.value.roundToDouble()
        ? '${coupon.value.round()}'
        : coupon.value.toStringAsFixed(1);
    return l10n.couponPercentOff(percent);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<String> conditions = <String>[
      if (coupon.kind == CouponKind.percent && coupon.maxDiscount != null)
        l10n.couponUpTo(formatRupees(coupon.maxDiscount!)),
      if (coupon.minOrderValue != null && coupon.minOrderValue! > 0)
        l10n.couponMinOrder(formatRupees(coupon.minOrderValue!)),
      coupon.restaurantName == null
          ? l10n.couponAllRestaurants
          : l10n.couponAtRestaurant(coupon.restaurantName!),
      if (coupon.validUntil != null) l10n.couponValidTill(_date(coupon.validUntil!)),
    ];

    return Container(
      decoration: BoxDecoration(
        color: profileCardColour(theme),
        borderRadius: BorderRadius.circular(18),
      ),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // The discount, on a coloured stub like a ticket's.
            Container(
              width: 92,
              padding: const EdgeInsets.all(10),
              color: AppColors.orangeDeep,
              alignment: Alignment.center,
              child: Text(
                _headline(l10n),
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  height: 1.15,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      coupon.title,
                      style: theme.textTheme.titleSmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    if (coupon.description != null) ...<Widget>[
                      const SizedBox(height: 2),
                      Text(
                        coupon.description!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                    const SizedBox(height: 8),
                    Text(
                      conditions.join(' · '),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // The code, dashed like a cut-out; a tap copies it.
                    InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () async {
                        final ScaffoldMessengerState messenger =
                            ScaffoldMessenger.of(context);
                        await Clipboard.setData(ClipboardData(text: coupon.code));
                        messenger
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(content: Text(l10n.couponCopied(coupon.code))),
                          );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.orangeDeep.withValues(alpha: 0.6),
                          ),
                          color: AppColors.orangeDeep.withValues(alpha: 0.06),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              coupon.code,
                              textDirection: TextDirection.ltr,
                              style: theme.textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.2,
                                color: AppColors.orangeDeep,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.copy_rounded,
                              size: 15,
                              color: AppColors.orangeDeep,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Favourites
// ---------------------------------------------------------------------------

/// The restaurants the customer saved with the heart, as `GET /v1/favourites`.
class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  List<Restaurant>? _restaurants;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final StorefrontRepository repository = context.read<StorefrontRepository>();
    try {
      final List<Restaurant> found = await repository.favourites();
      if (!mounted) return;
      setState(() {
        _restaurants = found;
        _failed = false;
      });
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  /// The heart again: unsaved, so off this list.
  Future<void> _unsave(Restaurant restaurant) async {
    setState(() {
      _restaurants =
          _restaurants?.where((Restaurant r) => r.id != restaurant.id).toList();
    });
    await context.read<StorefrontController>().toggleFavourite(restaurant);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<Restaurant>? restaurants = _restaurants;

    Widget body;
    if (restaurants == null && !_failed) {
      body = const Center(child: CircularProgressIndicator());
    } else if (restaurants == null) {
      body = ListView(
        children: <Widget>[
          AccountEmptyState(
            icon: Icons.cloud_off_rounded,
            alert: true,
            title: l10n.somethingWentWrong,
            body: '',
            action: OutlinedButton(onPressed: _load, child: Text(l10n.retry)),
          ),
        ],
      );
    } else if (restaurants.isEmpty) {
      body = ListView(
        children: <Widget>[
          AccountEmptyState(
            icon: Icons.favorite_border_rounded,
            title: l10n.favouritesEmptyTitle,
            body: l10n.favouritesEmptyBody,
          ),
        ],
      );
    } else {
      body = ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        itemCount: restaurants.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (BuildContext context, int i) {
          // Everything here is saved, so the heart always reads as filled.
          final Restaurant restaurant = restaurants[i].withFavourite(true);
          final Object photo = restaurantPhotoTag('favourites', restaurant.id);
          return RestaurantCard(
            restaurant: restaurant,
            heroTag: photo,
            onTap: () => Navigator.of(context).pushNamed(
              AppRoutes.restaurant,
              arguments: RestaurantArgs.fromCard(restaurant, heroTag: photo),
            ),
            onFavourite: () => _unsave(restaurant),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: profilePageColour(theme),
      appBar: AppBar(
        backgroundColor: profilePageColour(theme),
        surfaceTintColor: Colors.transparent,
        title: Text(l10n.profileFavourites),
      ),
      body: RefreshIndicator(onRefresh: _load, child: body),
    );
  }
}

// ---------------------------------------------------------------------------
// Help
// ---------------------------------------------------------------------------

/// How to reach Nexmile, and the common questions, as `GET /v1/app/config`.
class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<AccountController>().loadSupport(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AccountController account = context.watch<AccountController>();
    final SupportInfo? support = account.support;

    Widget body;
    if (support == null && account.supportLoading) {
      body = const Center(child: CircularProgressIndicator());
    } else if (support == null ||
        (!support.hasContact && support.faqs.isEmpty)) {
      body = ListView(
        children: <Widget>[
          AccountEmptyState(
            icon: Icons.support_agent_rounded,
            title: l10n.profileHelp,
            body: l10n.helpNothing,
            action: OutlinedButton(
              onPressed: account.loadSupport,
              child: Text(l10n.retry),
            ),
          ),
        ],
      );
    } else {
      body = ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        children: <Widget>[
          if (support.hasContact)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: profileCardColour(theme),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  if (support.hours != null) ...<Widget>[
                    Text(
                      l10n.helpHours(support.hours!),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      if (support.phone != null)
                        _ContactButton(
                          icon: Icons.call_rounded,
                          label: l10n.helpCall,
                          onTap: () => openLink(
                            context,
                            Uri(scheme: 'tel', path: support.phone),
                          ),
                        ),
                      if (support.whatsapp != null)
                        _ContactButton(
                          icon: Icons.chat_rounded,
                          label: l10n.helpWhatsApp,
                          onTap: () => openLink(
                            context,
                            Uri.parse(
                              'https://wa.me/'
                              '${support.whatsapp!.replaceAll(RegExp(r'[^0-9]'), '')}',
                            ),
                          ),
                        ),
                      if (support.email != null)
                        _ContactButton(
                          icon: Icons.mail_outline_rounded,
                          label: l10n.helpEmail,
                          onTap: () => openLink(
                            context,
                            Uri(scheme: 'mailto', path: support.email),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          if (support.faqs.isNotEmpty) ...<Widget>[
            const SizedBox(height: 14),
            ProfileSection(
              title: l10n.helpFaqs,
              children: <Widget>[
                for (final Faq faq in support.faqs)
                  ExpansionTile(
                    title: Text(
                      faq.question,
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    shape: const Border(),
                    collapsedShape: const Border(),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
                    children: <Widget>[
                      Text(faq.answer, style: theme.textTheme.bodyMedium),
                    ],
                  ),
              ],
            ),
          ],
        ],
      );
    }

    return Scaffold(
      backgroundColor: profilePageColour(theme),
      appBar: AppBar(
        backgroundColor: profilePageColour(theme),
        surfaceTintColor: Colors.transparent,
        title: Text(l10n.profileHelp),
      ),
      body: RefreshIndicator(onRefresh: account.loadSupport, child: body),
    );
  }
}

class _ContactButton extends StatelessWidget {
  const _ContactButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 18, color: AppColors.greenDeep),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 44),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Orders, from the profile
// ---------------------------------------------------------------------------

/// The orders tab as a page of its own, for "Your orders" on the profile.
class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrdersTab(
      // "Browse restaurants" from an empty history goes home.
      onBrowse: () =>
          Navigator.of(context).popUntil((Route<void> route) => route.isFirst),
    );
  }
}
