import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../account/presentation/profile_widgets.dart';
import '../../auth/data/auth_failure.dart';
import '../data/cart_models.dart';
import '../data/order_models.dart';
import '../data/review_tags.dart';
import '../data/storefront_repository.dart';
import '../state/rated_orders.dart';
import 'widgets/catalogue_widgets.dart';
import 'widgets/rating_stars.dart';

/// Rate a finished order, the way the big apps ask: the delivery, then the
/// food. Each is a row of stars with quick answers under it, and the food
/// can go further — stars for single dishes and a written review.
///
/// Only the food is required, because it is what the restaurant's public
/// rating is made of. The delivery is optional, and absent for a pickup.
class RateOrderScreen extends StatefulWidget {
  const RateOrderScreen({super.key, required this.args});

  final RateOrderArgs args;

  @override
  State<RateOrderScreen> createState() => _RateOrderScreenState();
}

class _RateOrderScreenState extends State<RateOrderScreen> {
  final TextEditingController _review = TextEditingController();
  final TextEditingController _riderNote = TextEditingController();

  late int _food = widget.args.initialRating ?? 0;
  final Set<String> _foodTags = <String>{};

  int _rider = 0;
  final Set<String> _riderTags = <String>{};

  /// Menu item id to stars. Only what the customer actually rated is sent —
  /// an untouched dish is not a one-star dish.
  final Map<int, int> _dishes = <int, int>{};

  bool _isSending = false;

  Order get _order => widget.args.order;

  bool get _hasRider => _order.fulfilmentType == FulfilmentType.delivery;

  @override
  void dispose() {
    _review.dispose();
    _riderNote.dispose();
    super.dispose();
  }

  /// The lines that can carry a rating: those with their menu item's id.
  /// Rather than guess from the line id — which would rate whatever dish
  /// happened to share the number — a line without one offers no stars.
  List<OrderItem> get _rateable => _order.items
      .where((OrderItem i) => i.menuItemId != null)
      .toList(growable: false);

  /// Praise and complaints are different lists; moving across four stars
  /// swaps one for the other, so answers from the old list go.
  void _setFood(int stars) => setState(() {
        if ((stars >= 4) != (_food >= 4)) _foodTags.clear();
        _food = stars;
      });

  void _setRider(int stars) => setState(() {
        if ((stars >= 4) != (_rider >= 4)) _riderTags.clear();
        _rider = stars;
      });

  Future<void> _submit() async {
    if (_food == 0 || _isSending) return;
    setState(() => _isSending = true);

    final AppLocalizations l10n = AppLocalizations.of(context);
    final NavigatorState navigator = Navigator.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final RatedOrders rated = context.read<RatedOrders>();

    try {
      await context.read<StorefrontRepository>().reviewOrder(
            _order.id,
            rating: _food,
            comment: _review.text,
            dishes: _dishes,
            tags: _foodTags.toList(),
            rider: _hasRider && _rider > 0
                ? RiderReview(
                    rating: _rider,
                    tags: _riderTags.toList(),
                    comment: _riderNote.text,
                  )
                : null,
          );
      await rated.remember(_order.id, _food);
      if (!mounted) return;
      Haptics.success();
      messenger.showSnackBar(SnackBar(content: Text(l10n.reviewThanks)));
      navigator.pop(true);
    } on ApiException catch (error) {
      if (!mounted) return;
      setState(() => _isSending = false);
      messenger.showSnackBar(
        SnackBar(
          content: Text(
            error.errors.values.expand((List<String> m) => m).firstOrNull ??
                authFailureFrom(error, validationFailure: AuthFailure.unknown)
                    .message(l10n),
          ),
        ),
      );
    } catch (_) {
      if (!mounted) return;
      setState(() => _isSending = false);
      messenger.showSnackBar(
        SnackBar(content: Text(AuthFailure.unknown.message(l10n))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<OrderItem> rateable = _rateable;
    final String? rider = _order.riderName;
    final String? restaurant = _order.restaurantName;

    return Scaffold(
      backgroundColor: profilePageColour(theme),
      appBar: AppBar(
        backgroundColor: profilePageColour(theme),
        title: Text(l10n.rateOrderTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: <Widget>[
          if (_hasRider) ...<Widget>[
            _RateCard(
              key: const Key('rate-delivery'),
              leading: _Face(
                initial: rider == null || rider.isEmpty
                    ? null
                    : rider.characters.first.toUpperCase(),
                icon: Icons.delivery_dining_rounded,
              ),
              title: l10n.rateHowWasDelivery,
              subtitle:
                  rider == null || rider.isEmpty ? null : l10n.rateDeliveredBy(rider),
              stars: _rider,
              starsKey: const Key('rider-stars'),
              onStars: _setRider,
              tags: _rider == 0 ? const <String>[] : ReviewTags.rider(_rider),
              chosen: _riderTags,
              onTag: (String code) => setState(() {
                if (!_riderTags.remove(code)) _riderTags.add(code);
              }),
              children: <Widget>[
                if (_rider > 0)
                  TextField(
                    controller: _riderNote,
                    minLines: 1,
                    maxLines: 3,
                    maxLength: 300,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(hintText: l10n.rateRiderNoteHint),
                  ),
              ],
            ),
            const SizedBox(height: 14),
          ],
          _RateCard(
            key: const Key('rate-food'),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: FoodImage(
                seed: _order.restaurantId ?? '${_order.id}',
                url: _order.restaurantLogoUrl,
                emoji: '🍛',
                size: 48,
                radius: 14,
              ),
            ),
            title: l10n.rateHowWasFood,
            subtitle: restaurant == null ? null : l10n.rateFoodFrom(restaurant),
            stars: _food,
            starsKey: const Key('food-stars'),
            onStars: _setFood,
            tags: _food == 0 ? const <String>[] : ReviewTags.food(_food),
            chosen: _foodTags,
            onTag: (String code) => setState(() {
              if (!_foodTags.remove(code)) _foodTags.add(code);
            }),
            children: <Widget>[
              if (rateable.isNotEmpty) ...<Widget>[
                const Divider(height: 28),
                Text(
                  l10n.rateDishesTitle,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 4),
                for (final OrderItem item in rateable)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      children: <Widget>[
                        VegMark(isVeg: item.isVeg),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            item.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                        RatingStars(
                          value: _dishes[item.menuItemId!] ?? 0,
                          size: 24,
                          onChanged: (int value) => setState(() {
                            if (value == 0) {
                              _dishes.remove(item.menuItemId!);
                            } else {
                              _dishes[item.menuItemId!] = value;
                            }
                          }),
                        ),
                      ],
                    ),
                  ),
              ],
              const Divider(height: 28),
              Text(
                l10n.rateReviewHeading,
                style: theme.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _review,
                minLines: 3,
                maxLines: 5,
                maxLength: 500,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(hintText: l10n.reviewHint),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: FilledButton(
            key: const Key('rate-submit'),
            // The food is the one thing the review needs, so the button
            // says so rather than failing at the server.
            onPressed: _food == 0 || _isSending ? null : _submit,
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.greenDeep,
              foregroundColor: Colors.white,
              minimumSize: const Size.fromHeight(54),
            ),
            child: _isSending
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.4,
                      color: Colors.white,
                    ),
                  )
                : Text(_food == 0 ? l10n.rateFoodFirst : l10n.submitRating),
          ),
        ),
      ),
    );
  }
}

/// One thing to rate: a picture and a question, the stars with their word,
/// the quick answers once there is a rating, and whatever else follows.
class _RateCard extends StatelessWidget {
  const _RateCard({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.stars,
    required this.starsKey,
    required this.onStars,
    required this.tags,
    required this.chosen,
    required this.onTag,
    this.children = const <Widget>[],
  });

  final Widget leading;
  final String title;
  final String? subtitle;
  final int stars;
  final Key starsKey;
  final ValueChanged<int> onStars;
  final List<String> tags;
  final Set<String> chosen;
  final ValueChanged<String> onTag;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
      decoration: BoxDecoration(
        color: profileCardColour(theme),
        borderRadius: BorderRadius.circular(20),
      ),
      child: AnimatedSize(
        duration: AppMotion.quick,
        curve: AppMotion.enter,
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                leading,
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: theme.textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: RatingStars(
                key: starsKey,
                value: stars,
                onChanged: onStars,
                size: 42,
                showWord: true,
              ),
            ),
            if (tags.isNotEmpty) ...<Widget>[
              const SizedBox(height: 14),
              Text(
                stars >= 4 ? l10n.rateWhatYouLiked : l10n.rateWhatWentWrong,
                style: theme.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: <Widget>[
                  for (final String code in tags)
                    _TagChip(
                      label: ReviewTags.label(l10n, code),
                      selected: chosen.contains(code),
                      onTap: () {
                        Haptics.select();
                        onTag(code);
                      },
                    ),
                ],
              ),
              const SizedBox(height: 6),
            ],
            ...children,
          ],
        ),
      ),
    );
  }
}

/// A quick answer. Picked, it turns green with a tick.
class _TagChip extends StatelessWidget {
  const _TagChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color green = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : AppColors.greenDeep;
    return Semantics(
      button: true,
      selected: selected,
      child: Material(
        color: selected
            ? green.withValues(alpha: 0.12)
            : theme.colorScheme.surface,
        shape: StadiumBorder(
          side: BorderSide(
            color: selected ? green : theme.colorScheme.outlineVariant,
          ),
        ),
        child: InkWell(
          customBorder: const StadiumBorder(),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (selected) ...<Widget>[
                  Icon(Icons.check_rounded, size: 16, color: green),
                  const SizedBox(width: 4),
                ],
                Flexible(
                  child: Text(
                    label,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: selected ? green : theme.colorScheme.onSurface,
                      fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The rider's initial in an orange ring, or a scooter when there is no name.
class _Face extends StatelessWidget {
  const _Face({required this.initial, required this.icon});

  final String? initial;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      width: 48,
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.orangeDeep.withValues(alpha: 0.12),
      ),
      child: initial == null
          ? Icon(icon, color: AppColors.orangeDeep)
          : Text(
              initial!,
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.orangeDeep,
                fontWeight: FontWeight.w800,
              ),
            ),
    );
  }
}
