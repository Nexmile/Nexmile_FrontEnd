import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/router/app_router.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/order_models.dart';
import '../../state/rated_orders.dart';
import 'catalogue_widgets.dart';
import 'rating_stars.dart';

/// Opens the rating screen for [order], with [stars] already given when the
/// customer tapped them on a prompt.
Future<void> openRating(BuildContext context, Order order, {int? stars}) =>
    Navigator.of(context).pushNamed(
      AppRoutes.rateOrder,
      arguments: RateOrderArgs(order: order, initialRating: stars),
    );

/// "How was your order from …?" with five stars to tap, the way the big apps
/// ask once the food has arrived. A tap opens the full rating with that many
/// stars already given. Once rated, it is a quiet "You rated this order".
class RatePromptCard extends StatelessWidget {
  const RatePromptCard({super.key, required this.order, this.onDismiss});

  final Order order;

  /// Shows a close button. The home screen's card can be waved away; the
  /// order's own screen keeps it.
  final VoidCallback? onDismiss;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final RatedOrders ratings = context.watch<RatedOrders>();
    final int? rated = ratings.ratingOf(order);
    final bool isDark = theme.brightness == Brightness.dark;

    // Outside the 7-day window, or not delivered: the server would refuse,
    // so nothing is asked.
    if (rated == null && !ratings.needsRating(order)) {
      return const SizedBox.shrink();
    }

    if (rated != null) {
      return Row(
        children: <Widget>[
          Flexible(
            child: Text(
              l10n.rateYouRated,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(width: 8),
          RatedStars(value: rated),
        ],
      );
    }

    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 14, 6, 14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: starGold.withValues(alpha: isDark ? 0.5 : 0.45),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            starGold.withValues(alpha: isDark ? 0.14 : 0.10),
            theme.colorScheme.surfaceContainerLowest,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              FoodImage(
                seed: order.restaurantId ?? '${order.id}',
                url: order.restaurantLogoUrl,
                emoji: '🍛',
                size: 44,
                radius: 12,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  l10n.ratePromptTitle(order.restaurantName ?? l10n.appName),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
              ),
              if (onDismiss != null)
                IconButton(
                  tooltip: l10n.ratePromptLater,
                  onPressed: onDismiss,
                  icon: const Icon(Icons.close_rounded, size: 20),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Center(
            child: RatingStars(
              key: Key('prompt-stars-${order.id}'),
              value: 0,
              size: 36,
              onChanged: (int stars) => openRating(context, order, stars: stars),
            ),
          ),
        ],
      ),
    );
  }
}
