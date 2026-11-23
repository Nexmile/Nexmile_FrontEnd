import 'package:flutter/material.dart';

import '../../../../../core/motion/app_motion.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../generated/l10n/app_localizations.dart';
import '../../../data/order_models.dart';

/// The clock time [minutes] from now, in the phone's own format ("7:42 PM",
/// or "19:42" where that is the habit).
String arrivalClock(BuildContext context, int minutes) =>
    MaterialLocalizations.of(context).formatTimeOfDay(
      TimeOfDay.fromDateTime(DateTime.now().add(Duration(minutes: minutes))),
      alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context),
    );

/// Four steps joined by bars: confirmed, preparing, on the way, delivered.
///
/// Finished bars are solid. On the live map ([shimmer]) the current one fills
/// with a moving sheen, which is how the order shows it is in progress rather
/// than stuck. Elsewhere the current bar fills halfway, once, as the step
/// arrives, and then holds still: the order screen already has its own pulse
/// on the estimate, and two endless animations on one screen is noise.
class OrderProgress extends StatefulWidget {
  const OrderProgress({super.key, required this.status, this.shimmer = false});

  final OrderStatus status;
  final bool shimmer;

  @override
  State<OrderProgress> createState() => _OrderProgressState();
}

class _OrderProgressState extends State<OrderProgress>
    with SingleTickerProviderStateMixin {
  AnimationController? _sheen;

  @override
  void initState() {
    super.initState();
    if (widget.shimmer) {
      _sheen = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1600),
      )..repeat();
    }
  }

  @override
  void dispose() {
    _sheen?.dispose();
    super.dispose();
  }

  /// Which step is under way: 0 confirmed … 3 delivered.
  static int _stepOf(OrderStatus status) => switch (status) {
        OrderStatus.pendingPayment ||
        OrderStatus.placed ||
        OrderStatus.accepted =>
          0,
        OrderStatus.preparing ||
        OrderStatus.readyForPickup ||
        OrderStatus.riderAssigned ||
        OrderStatus.reachedRestaurant =>
          1,
        OrderStatus.pickedUp || OrderStatus.reachedCustomer => 2,
        OrderStatus.delivered => 3,
        _ => 0,
      };

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final int step = _stepOf(widget.status);
    final bool animate = !MediaQuery.disableAnimationsOf(context);
    final AnimationController? sheen = animate ? _sheen : null;

    final List<(IconData, String)> steps = <(IconData, String)>[
      (Icons.check_rounded, l10n.trackingStepConfirmed),
      (Icons.soup_kitchen_rounded, l10n.trackingStepPreparing),
      (Icons.delivery_dining_rounded, l10n.trackingStepOnTheWay),
      (Icons.home_rounded, l10n.trackingStepDelivered),
    ];

    Widget dot(int i) {
      final bool done = i < step || step == 3;
      final bool current = i == step && step != 3;
      return AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: done || current
              ? AppColors.greenDeep
              : theme.colorScheme.surfaceContainerHighest,
          // An outline for the steps still to come: on a dark page their
          // fill is almost the page itself.
          border: done || current
              ? null
              : Border.all(color: theme.colorScheme.outlineVariant),
          boxShadow: current
              ? <BoxShadow>[
                  BoxShadow(
                    color: AppColors.greenDeep.withValues(alpha: 0.35),
                    blurRadius: 10,
                  ),
                ]
              : null,
        ),
        child: Icon(
          steps[i].$1,
          size: 16,
          color: done || current
              ? Colors.white
              : theme.colorScheme.onSurfaceVariant,
        ),
      );
    }

    Widget bar(int i) {
      // Bar i joins step i and step i + 1.
      final bool filled = i < step;
      final bool active = i == step && step < 3;
      return Expanded(
        child: Container(
          height: 4,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: filled
                ? AppColors.greenDeep
                : theme.colorScheme.outlineVariant,
            borderRadius: BorderRadius.circular(2),
          ),
          child: !active
              ? null
              : ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: sheen != null
                      ? AnimatedBuilder(
                          animation: sheen,
                          builder: (BuildContext context, _) =>
                              _fill(Curves.easeInOut.transform(sheen.value)),
                        )
                      // Fills to halfway as the step arrives, then holds.
                      : TweenAnimationBuilder<double>(
                          key: ValueKey<int>(step),
                          tween: Tween<double>(begin: 0, end: 0.5),
                          duration: animate ? AppMotion.settled : Duration.zero,
                          curve: AppMotion.enter,
                          builder: (BuildContext context, double t, _) =>
                              _fill(t),
                        ),
                ),
        ),
      );
    }

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            dot(0),
            bar(0),
            dot(1),
            bar(1),
            dot(2),
            bar(2),
            dot(3),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: <Widget>[
            for (int i = 0; i < steps.length; i++)
              Expanded(
                child: Text(
                  steps[i].$2,
                  textAlign: i == 0
                      ? TextAlign.start
                      : i == steps.length - 1
                          ? TextAlign.end
                          : TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: i == step ? FontWeight.w800 : FontWeight.w500,
                    color: i <= step
                        ? theme.colorScheme.onSurface
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  static Widget _fill(double fraction) => FractionallySizedBox(
        alignment: AlignmentDirectional.centerStart,
        widthFactor: fraction,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                AppColors.greenDeep.withValues(alpha: 0.15),
                AppColors.greenDeep,
              ],
            ),
          ),
        ),
      );
}
