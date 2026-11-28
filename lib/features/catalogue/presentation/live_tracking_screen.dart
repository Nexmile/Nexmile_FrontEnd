import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/motion/nexmile_loader.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../data/order_models.dart';
import '../state/orders_controller.dart';
import 'order_status_screen.dart' show dispatchMessage;
import 'widgets/rider_map.dart';
import 'widgets/tracking/order_progress.dart';
import 'widgets/tracking/route_geometry.dart';
import '../../support/presentation/support_bubble.dart';

/// The rider, full screen, for as long as the customer wants to watch.
///
/// Reads the same poll the order screen started — it does not open a second
/// one — so opening and closing this screen costs nothing beyond the frames.
/// When the order finishes, polling stops upstream and this screen stops with
/// it rather than holding a dead timer open.
///
/// Laid out the way ride and delivery apps do it: the map edge to edge with
/// the bike moving on it, and a sheet that leads with the one number people
/// open the screen for, then who is coming and on what.
class LiveTrackingScreen extends StatefulWidget {
  const LiveTrackingScreen({super.key, required this.orderId});

  final int orderId;

  @override
  State<LiveTrackingScreen> createState() => _LiveTrackingScreenState();
}

class _LiveTrackingScreenState extends State<LiveTrackingScreen> {
  /// Fractions of the screen the sheet rests at.
  static const double _sheetMin = 0.30;
  static const double _sheetStart = 0.42;
  static const double _sheetMax = 0.82;

  /// False once the customer drags the map: following them around after they
  /// have deliberately looked somewhere else is a fight over the viewport.
  bool _follow = true;

  /// How much of the screen the sheet covers right now, so the recentre
  /// button can ride just above it.
  double _sheetExtent = _sheetStart;

  Future<void> _launch(Uri uri) async {
    final bool opened = await launchUrl(uri);
    if (!opened && mounted) {
      final AppLocalizations l10n = AppLocalizations.of(context);
      ScaffoldMessenger.of(context)
        ..clearSnackBars()
        ..showSnackBar(SnackBar(content: Text(l10n.somethingWentWrong)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrdersController controller = context.watch<OrdersController>();
    final OrderTracking? tracking = controller.tracking;
    // The order carries the two fixed ends of the journey; the tracker carries
    // the one that moves.
    final Order? order = controller.current;

    final LatLng? rider = tracking != null && tracking.hasRiderPosition
        ? LatLng(tracking.riderLatitude!, tracking.riderLongitude!)
        : null;
    // The two pins come with every tracking response, so the map has its
    // ends from the first poll, rider or no rider; the order's own copy is
    // the fallback for an older server.
    final LatLng? destination =
        (tracking?.destinationPin ?? order?.deliveryLocation)?.toLatLng();
    final LatLng? restaurant =
        (tracking?.restaurantPin ?? order?.restaurantLocation)?.toLatLng();
    final List<LatLng> serverRoute = tracking == null
        ? const <LatLng>[]
        : tracking.route
            .map((GeoPoint p) => p.toLatLng())
            .toList(growable: false);
    // What the server's route joins. Before pickup it is the food's journey,
    // restaurant to customer: drawn whole, as a road, with the rider placed
    // on their own. Otherwise it is the rider's road, and used only when
    // they are actually on it; one that starts somewhere else would be drawn
    // as a straight line to its far end with "0.0 km away" under it.
    final bool foodsJourney =
        tracking?.routeStartsAt == RouteStart.restaurant;
    final List<LatLng> route = foodsJourney
        ? const <LatLng>[]
        : _routeFromRider(serverRoute, rider);
    final List<LatLng> foodRoute =
        foodsJourney ? serverRoute : const <LatLng>[];
    // The rider's next stop, which the dotted line points at and the
    // distance is measured to. The server says so; an older one is read
    // from the status instead.
    final bool beforePickup = switch (tracking?.nextStop) {
      NextStop.restaurant => true,
      NextStop.customer => false,
      _ => tracking != null && _beforePickup.contains(tracking.status),
    };
    final LatLng? nextStop =
        beforePickup ? (restaurant ?? destination) : destination;

    final MediaQueryData media = MediaQuery.of(context);
    final double screen = media.size.height;

    // Nothing to put on a map yet: no rider and neither end known.
    final bool hasMap =
        rider != null || destination != null || restaurant != null;

    return Scaffold(
      body: NotificationListener<DraggableScrollableNotification>(
        onNotification: (DraggableScrollableNotification n) {
          setState(() => _sheetExtent = n.extent);
          return false;
        },
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: hasMap
                  ? Listener(
                      onPointerDown: (_) {
                        if (_follow) setState(() => _follow = false);
                      },
                      child: RiderMap(
                        rider: rider,
                        destination: destination,
                        restaurant: restaurant,
                        route: route,
                        foodRoute: foodRoute,
                        lineTo: nextStop,
                        heading: tracking?.riderHeading,
                        destinationLabel: l10n.trackingPinYou,
                        restaurantLabel:
                            tracking?.restaurantName ?? order?.restaurantName,
                        interactive: true,
                        follow: _follow,
                        padding: EdgeInsets.only(
                          top: media.padding.top + 56,
                          bottom: screen * _sheetStart,
                        ),
                      ),
                    )
                  : const NexmileLoader(),
            ),
            // Back, and the stale notice, clear of the status bar.
            Positioned(
              top: media.padding.top + 8,
              left: 12,
              right: 12,
              child: Row(
                children: <Widget>[
                  _MapButton(
                    icon: Icons.arrow_back_rounded,
                    tooltip:
                        MaterialLocalizations.of(context).backButtonTooltip,
                    onPressed: () => Navigator.of(context).maybePop(),
                  ),
                  // Takes whatever the button leaves, so a long translation
                  // ellipsizes instead of pushing anything off screen.
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 56),
                      child: Center(
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: tracking != null &&
                                  tracking.isStale(DateTime.now())
                              ? _StaleNotice(
                                  message: l10n.riderLocationStale,
                                )
                              : const SizedBox.shrink(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Recentre rides just above the sheet, where the thumb already is.
            Positioned(
              right: 16,
              bottom: screen * _sheetExtent + 14,
              child: _MapButton(
                icon: _follow
                    ? Icons.my_location_rounded
                    : Icons.location_searching_rounded,
                tooltip: l10n.recentreOnRider,
                highlighted: !_follow,
                onPressed: () => setState(() => _follow = true),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: _sheetStart,
              minChildSize: _sheetMin,
              maxChildSize: _sheetMax,
              snap: true,
              snapSizes: const <double>[_sheetStart],
              builder: (BuildContext context, ScrollController scroll) =>
                  _TrackingSheet(
                scroll: scroll,
                tracking: tracking,
                order: order,
                distanceToGo: _distanceToGo(rider, nextStop, route),
                onCall: (String phone) =>
                    _launch(Uri(scheme: 'tel', path: phone)),
                onMessage: (String phone) =>
                    _launch(Uri(scheme: 'sms', path: phone)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// The statuses in which the rider has not collected the food yet.
  static const Set<OrderStatus> _beforePickup = <OrderStatus>{
    OrderStatus.placed,
    OrderStatus.accepted,
    OrderStatus.preparing,
    OrderStatus.readyForPickup,
    OrderStatus.riderAssigned,
    OrderStatus.reachedRestaurant,
  };

  /// Further than this from every point of the route, the route is not the
  /// rider's: wider than GPS drift, narrower than a wrong neighbourhood.
  static const double _onRouteMetres = 150;

  /// [route] when the rider is on it, otherwise nothing, so the map falls
  /// back to the dashed direction line and the distance to a straight line.
  /// With no rider position yet there is nothing to check against, and the
  /// map does not draw a line anyway.
  static List<LatLng> _routeFromRider(List<LatLng> route, LatLng? rider) {
    if (route.length < 2 || rider == null) return route;
    final RoutePath path = RoutePath(route);
    if (!path.isUsable) return const <LatLng>[];
    return path.project(rider).offRouteMetres <= _onRouteMetres
        ? route
        : const <LatLng>[];
  }

  /// How far the rider is from their next stop: along their road when they
  /// are on one, as the crow flies when they are not (including before
  /// pickup, when the road drawn is the food's and not theirs).
  static double? _distanceToGo(
    LatLng? rider,
    LatLng? destination,
    List<LatLng> route,
  ) {
    if (rider == null || destination == null) return null;
    if (route.length >= 2) {
      final RoutePath path = RoutePath(route);
      if (path.isUsable) return path.length - path.project(rider).along;
    }
    return distanceMetres(rider, destination);
  }
}

class _MapButton extends StatelessWidget {
  const _MapButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    this.highlighted = false,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onPressed;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.surface,
      shape: const CircleBorder(),
      elevation: 4,
      shadowColor: Colors.black.withValues(alpha: 0.3),
      child: IconButton(
        tooltip: tooltip,
        onPressed: onPressed,
        iconSize: 24,
        padding: const EdgeInsets.all(12),
        icon: Icon(
          icon,
          color: highlighted
              ? const Color(0xFF1967D2)
              : theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}

class _StaleNotice extends StatelessWidget {
  const _StaleNotice({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surface,
      elevation: 4,
      shadowColor: Colors.black.withValues(alpha: 0.3),
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox.square(
              dimension: 12,
              child: CircularProgressIndicator(
                strokeWidth: 1.8,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                message,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// The sheet: arrival, progress, the rider, and where it is going.
class _TrackingSheet extends StatelessWidget {
  const _TrackingSheet({
    required this.scroll,
    required this.tracking,
    required this.order,
    required this.distanceToGo,
    required this.onCall,
    required this.onMessage,
  });

  final ScrollController scroll;
  final OrderTracking? tracking;
  final Order? order;
  final double? distanceToGo;
  final ValueChanged<String> onCall;
  final ValueChanged<String> onMessage;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderTracking? t = tracking;
    final Order? o = order;
    final OrderStatus status = t?.status ?? o?.status ?? OrderStatus.placed;
    final bool hasRider = t?.riderName?.trim().isNotEmpty ?? false;
    // No rider yet on an order still in flight: a partner is being found.
    final bool finding = !hasRider && status.isActive;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.16),
            blurRadius: 24,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: ListView(
        controller: scroll,
        padding: EdgeInsets.fromLTRB(
          16,
          10,
          16,
          20 + MediaQuery.paddingOf(context).bottom,
        ),
        children: <Widget>[
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: theme.colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 14),
          _EtaCard(
            tracking: t,
            distanceToGo: distanceToGo,
            finding: finding,
            waiting: o != null && o.dispatchStatus.isNews
                ? dispatchMessage(o, l10n)
                : null,
          ),
          const SizedBox(height: 18),
          OrderProgress(status: status, shimmer: true),
          // Only once there is someone to show. Before that the card above
          // says a partner is being found, rather than an empty card here.
          if (hasRider) ...<Widget>[
            const SizedBox(height: 18),
            _RiderCard(
              key: const ValueKey<String>('tracking-rider-card'),
              tracking: t!,
              onCall: onCall,
              onMessage: onMessage,
            ),
          ],
          if (o != null) ...<Widget>[
            const SizedBox(height: 18),
            _OrderBlock(
              order: o,
              restaurantName: t?.restaurantName ?? o.restaurantName,
            ),
          ],
        ],
      ),
    );
  }
}

/// "Arriving in 12 min", on a soft green wash, with how far the rider is.
class _EtaCard extends StatelessWidget {
  const _EtaCard({
    required this.tracking,
    required this.distanceToGo,
    this.finding = false,
    this.waiting,
  });

  final OrderTracking? tracking;
  final double? distanceToGo;

  /// No rider assigned yet: the card says a partner is being found, with
  /// a searching mark, instead of a rider line it has nothing to fill with.
  final bool finding;

  /// The server's own words about the search, when it has news.
  final String? waiting;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderTracking? t = tracking;
    final int? eta = t?.estimatedMinutes;
    final bool dark = theme.brightness == Brightness.dark;
    final bool live =
        t != null && t.hasRiderPosition && !t.isStale(DateTime.now());

    final TextStyle? big = theme.textTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.w800,
      height: 1.2,
    );

    final Widget headline = eta == null
        ? Text(t?.statusLabel ?? '', style: big)
        : eta <= 1
            ? Text(
                l10n.trackingArrivingNow,
                style: big?.copyWith(color: AppColors.greenDeep),
              )
            : Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(text: '${l10n.arrivingIn} '),
                    TextSpan(
                      text: l10n.minutesAway(eta),
                      style: const TextStyle(color: AppColors.greenDeep),
                    ),
                  ],
                ),
                style: big,
              );

    final String? name = t?.riderName?.trim();
    final double? metres = distanceToGo;
    final String? subtitle = name != null && name.isNotEmpty && metres != null
        ? l10n.trackingRiderAway(
            name.split(' ').first,
            l10n.kilometresAway((metres / 1000).toStringAsFixed(1)),
          )
        : eta == null
            ? null
            : t?.statusLabel;

    return Container(
      padding: const EdgeInsets.fromLTRB(18, 16, 14, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.greenDeep.withValues(alpha: dark ? 0.35 : 0.18),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            theme.colorScheme.surface,
            AppColors.greenDeep.withValues(alpha: dark ? 0.22 : 0.10),
          ],
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Rolls up when the minutes change, so a new estimate is
                // noticed without being shouted.
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 380),
                  transitionBuilder: (Widget child, Animation<double> a) =>
                      FadeTransition(
                    opacity: a,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.4),
                        end: Offset.zero,
                      ).animate(
                        CurvedAnimation(parent: a, curve: Curves.easeOutCubic),
                      ),
                      child: child,
                    ),
                  ),
                  child: KeyedSubtree(
                    key: ValueKey<String>('${eta ?? t?.statusLabel}'),
                    child: headline,
                  ),
                ),
                if (eta != null && eta > 1) ...<Widget>[
                  const SizedBox(height: 2),
                  Text(
                    l10n.trackingExpectedBy(arrivalClock(context, eta)),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                if (finding) ...<Widget>[
                  const SizedBox(height: 6),
                  Row(
                    key: const ValueKey<String>('tracking-finding'),
                    children: <Widget>[
                      const SizedBox.square(
                        dimension: 14,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColors.greenDeep,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          waiting ?? l10n.trackingFindingRider,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ] else if (subtitle != null && subtitle.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      if (live) ...<Widget>[
                        const _LiveDot(),
                        const SizedBox(width: 6),
                      ],
                      Flexible(
                        child: Text(
                          subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 12),
          finding
              ? const _SearchingMark()
              : Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.orangeDeep.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(
                    Icons.delivery_dining_rounded,
                    size: 40,
                    color: AppColors.orangeDeep,
                  ),
                ),
        ],
      ),
    );
  }
}

/// A small breathing dot: the position is live.
class _LiveDot extends StatefulWidget {
  const _LiveDot();

  @override
  State<_LiveDot> createState() => _LiveDotState();
}

class _LiveDotState extends State<_LiveDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _breath = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _breath.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool animate = !MediaQuery.disableAnimationsOf(context);
    return Semantics(
      label: AppLocalizations.of(context).trackingLive,
      child: FadeTransition(
        opacity: animate
            ? Tween<double>(begin: 0.35, end: 1).animate(_breath)
            : const AlwaysStoppedAnimation<double>(1),
        child: Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: AppColors.greenDeep,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

/// Who is coming: the plate first, the way people spot their bike in a
/// street, then the name, a face, and the two ways to reach them.
class _RiderCard extends StatelessWidget {
  const _RiderCard({
    super.key,
    required this.tracking,
    required this.onCall,
    required this.onMessage,
  });

  /// Only drawn with a rider assigned: [OrderTracking.riderName] is set.
  final OrderTracking tracking;
  final ValueChanged<String> onCall;
  final ValueChanged<String> onMessage;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String name = tracking.riderName!.trim();

    final String? phone = tracking.riderPhone;
    final String? plate = tracking.riderVehicleNumber;
    final String first = name.split(' ').first;
    final bool hasPhone = phone != null && phone.isNotEmpty;

    return Container(
      padding: const EdgeInsets.fromLTRB(18, 16, 16, 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (plate != null && plate.isNotEmpty)
                      Text(
                        plate.toUpperCase().replaceAll(' ', ''),
                        // A plate reads left to right in every language.
                        textDirection: TextDirection.ltr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.6,
                        ),
                      ),
                    const SizedBox(height: 4),
                    Text(
                      <String>[
                        l10n.riderLabel,
                        if (_vehicle(tracking.riderVehicleType, l10n)
                            case final String vehicle)
                          vehicle,
                      ].join(' · '),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      name.toUpperCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              _Avatar(
                initial: first.characters.first.toUpperCase(),
                photoUrl: tracking.riderPhotoUrl,
                rating: tracking.riderRating,
              ),
            ],
          ),
          if (hasPhone) ...<Widget>[
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Material(
                  shape: CircleBorder(
                    side: BorderSide(color: theme.colorScheme.outlineVariant),
                  ),
                  color: theme.colorScheme.surface,
                  child: IconButton(
                    tooltip: l10n.callRider,
                    onPressed: () => onCall(phone),
                    padding: const EdgeInsets.all(14),
                    icon: const Icon(Icons.call_rounded),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Material(
                    color: theme.colorScheme.surface,
                    shape: StadiumBorder(
                      side: BorderSide(color: theme.colorScheme.outlineVariant),
                    ),
                    child: InkWell(
                      customBorder: const StadiumBorder(),
                      onTap: () => onMessage(phone),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 14,
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.chat_rounded,
                              size: 22,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                l10n.trackingMessageRider(first),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

/// Where the order comes from and where it goes, then the two things to do
/// about it, side by side: the order's details, and help.
class _OrderBlock extends StatelessWidget {
  const _OrderBlock({required this.order, this.restaurantName});

  final Order order;
  final String? restaurantName;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool dark = theme.brightness == Brightness.dark;
    final Color green = dark ? AppColors.greenLight : AppColors.greenDeep;
    final String? shop = restaurantName?.trim();
    final bool help = supportChatOn(context);

    final Widget details = FilledButton.icon(
      key: const ValueKey<String>('tracking-order-details'),
      onPressed: () => Navigator.of(context).maybePop(),
      style: FilledButton.styleFrom(
        backgroundColor: green.withValues(alpha: dark ? 0.22 : 0.12),
        foregroundColor: green,
        minimumSize: const Size.fromHeight(46),
        shape: const StadiumBorder(),
      ),
      icon: const Icon(Icons.receipt_long_rounded, size: 19),
      label: Text(
        l10n.trackingOrderDetails,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );

    return Container(
      key: const ValueKey<String>('tracking-order-block'),
      padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (shop != null && shop.isNotEmpty) ...<Widget>[
            _PlaceRow(
              icon: Icons.storefront_rounded,
              colour: AppColors.orangeDeep,
              title: shop,
              detail: '#${order.orderNumber}',
              detailLtr: true,
            ),
            // The two stops joined, the way the map joins them.
            // Aligned rather than stretched, so it stays a 2 px line under
            // the icon well instead of a rule across the card.
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 19),
                child: Container(
                  width: 2,
                  height: 14,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  color: theme.colorScheme.outlineVariant,
                ),
              ),
            ),
          ],
          _PlaceRow(
            icon: Icons.home_rounded,
            colour: green,
            title: l10n.trackingDeliveringTo,
            detail: order.deliveryAddress.isNotEmpty
                ? order.deliveryAddress
                : '#${order.orderNumber}',
            titleIsLabel: true,
          ),
          const SizedBox(height: 14),
          if (help)
            Row(
              children: <Widget>[
                Expanded(child: details),
                const SizedBox(width: 10),
                // The question people actually have, at the moment they
                // have it.
                Expanded(
                  child: NeedHelpButton(orderId: order.id, outlined: true),
                ),
              ],
            )
          else
            details,
        ],
      ),
    );
  }
}

/// One end of the journey: a coloured icon well, then what it is.
class _PlaceRow extends StatelessWidget {
  const _PlaceRow({
    required this.icon,
    required this.colour,
    required this.title,
    required this.detail,
    this.titleIsLabel = false,
    this.detailLtr = false,
  });

  final IconData icon;
  final Color colour;
  final String title;
  final String detail;

  /// True when [title] is a small label ("Delivering to") over the detail
  /// as the main line; false when it is the name, with the detail under it.
  final bool titleIsLabel;
  final bool detailLtr;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle? small = theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    );
    final TextStyle? main = theme.textTheme.titleSmall?.copyWith(
      fontWeight: FontWeight.w800,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colour.withValues(alpha: 0.14),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 21, color: colour),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: titleIsLabel ? small : main,
              ),
              const SizedBox(height: 2),
              Text(
                detail,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textDirection: detailLtr ? TextDirection.ltr : null,
                style: titleIsLabel
                    ? main?.copyWith(fontWeight: FontWeight.w700)
                    : small,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// The scooter with rings spreading from it: a partner is being looked
/// for. Still, rings at rest, when the platform asks for less motion.
class _SearchingMark extends StatefulWidget {
  const _SearchingMark();

  @override
  State<_SearchingMark> createState() => _SearchingMarkState();
}

class _SearchingMarkState extends State<_SearchingMark>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1800),
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _c.stop();
    } else if (!_c.isAnimating) {
      _c.repeat();
    }
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      key: const ValueKey<String>('tracking-searching'),
      dimension: 64,
      child: AnimatedBuilder(
        animation: _c,
        builder: (BuildContext context, Widget? child) => Stack(
          alignment: Alignment.center,
          children: <Widget>[
            for (final double offset in <double>[0, 0.5])
              () {
                final double t = (_c.value + offset) % 1;
                return Container(
                  width: 34 + 30 * t,
                  height: 34 + 30 * t,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.orangeDeep
                        .withValues(alpha: 0.18 * (1 - t)),
                  ),
                );
              }(),
            child!,
          ],
        ),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.orangeDeep.withValues(alpha: 0.14),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.delivery_dining_rounded,
            size: 24,
            color: AppColors.orangeDeep,
          ),
        ),
      ),
    );
  }
}

/// The vehicle in the customer's language, or the server's word for one this
/// build does not know.
String? _vehicle(String? type, AppLocalizations l10n) {
  if (type == null) return null;
  return switch (type.toLowerCase()) {
    'bike' || 'motorcycle' || 'motorbike' => l10n.vehicleBike,
    'scooter' => l10n.vehicleScooter,
    'bicycle' || 'cycle' => l10n.vehicleBicycle,
    'ev' || 'electric' || 'electric_scooter' || 'e_scooter' =>
      l10n.vehicleElectric,
    _ => type[0].toUpperCase() + type.substring(1).replaceAll('_', ' '),
  };
}

/// The rider's face in a ring, or their initial until the API sends a
/// photo (or the photo will not load), with their rating under it once there
/// is one.
class _Avatar extends StatelessWidget {
  const _Avatar({required this.initial, this.photoUrl, this.rating});

  final String initial;
  final String? photoUrl;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    final Widget letter = Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.orangeDeep.withValues(alpha: 0.12),
      ),
      child: Text(
        initial,
        style: theme.textTheme.titleLarge?.copyWith(
          color: AppColors.orangeDeep,
          fontWeight: FontWeight.w800,
        ),
      ),
    );

    final String? url = photoUrl;
    final Widget face = url == null
        ? letter
        // Memory only, not kept on the phone: it is a person's face, and the
        // link is signed to expire.
        : ClipOval(
            child: Image.network(
              url,
              fit: BoxFit.cover,
              width: 54,
              height: 54,
              errorBuilder: (_, __, ___) => letter,
              loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? progress) =>
                  progress == null ? child : letter,
            ),
          );

    final Widget ring = Container(
      width: 64,
      height: 64,
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: AppColors.orangeGradient,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.colorScheme.surface,
        ),
        padding: const EdgeInsets.all(2),
        child: face,
      ),
    );

    final double? stars = rating;
    if (stars == null || stars <= 0) return ring;

    final String shown = stars.toStringAsFixed(1);
    return SizedBox(
      width: 64,
      height: 74,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          ring,
          Positioned(
            bottom: 0,
            child: Semantics(
              label: l10n.riderRatingLabel(shown),
              excludeSemantics: true,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: theme.colorScheme.outlineVariant),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Icon(
                      Icons.star_rounded,
                      size: 13,
                      color: Color(0xFFF5A623),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      shown,
                      textDirection: TextDirection.ltr,
                      style: theme.textTheme.labelSmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
