import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/motion/haptics.dart';
import '../../../core/motion/pressable.dart';
import '../../../core/motion/reveal.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../address/data/address.dart';
import '../../address/state/address_controller.dart';
import '../../auth/data/auth_failure.dart';
import '../../auth/state/auth_controller.dart';
import '../data/order_models.dart';
import '../state/orders_controller.dart';
import '../state/rated_orders.dart';
import 'reorder_flow.dart';
import 'widgets/catalogue_widgets.dart';
import 'widgets/rate_prompt.dart';
import 'widgets/rating_stars.dart';
import '../../../core/motion/nexmile_loader.dart';

/// Order history, newest first, with the in-flight ones lifted to the top.
///
/// Laid out the way the big delivery apps lay out a history: where you are
/// at the top, a search over your own orders, and one card per order with
/// the restaurant, the dishes, when and what it cost, and the next thing to
/// do (track it, or order it again).
class OrdersTab extends StatefulWidget {
  const OrdersTab({super.key, required this.onBrowse, this.asPage = false});

  /// Switches the shell back to the home tab — the only useful thing to do
  /// from an empty order list.
  final VoidCallback onBrowse;

  /// Opened from the profile rather than the bottom bar: a title bar with a
  /// way back, instead of the location and avatar row the tab carries.
  final bool asPage;

  @override
  State<OrdersTab> createState() => _OrdersTabState();
}

class _OrdersTabState extends State<OrdersTab> {
  final TextEditingController _search = TextEditingController();
  String _query = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    if (!mounted) return;
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AuthFailure? failure = await context.read<OrdersController>().load();
    if (failure != null && mounted) {
      ScaffoldMessenger.of(context)
        ..clearSnackBars()
        ..showSnackBar(SnackBar(content: Text(failure.message(l10n))));
    }
  }

  /// By restaurant or by dish, the two things anyone remembers an order by.
  bool _matches(Order order) {
    final String q = _query.trim().toLowerCase();
    if (q.isEmpty) return true;
    if ((order.restaurantName ?? '').toLowerCase().contains(q)) return true;
    return order.items.any((OrderItem i) => i.name.toLowerCase().contains(q));
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrdersController controller = context.watch<OrdersController>();

    // In flight first: the one order the customer is most likely here for.
    final List<Order> shown = <Order>[
      ...controller.active,
      ...controller.orders.where((Order o) => !o.status.isActive),
    ].where(_matches).toList(growable: false);

    Widget body;
    if (controller.isLoading && !controller.hasLoaded) {
      body = const NexmileLoader();
    } else if (controller.orders.isEmpty) {
      body = ListView(
        children: <Widget>[
          EmptyState(
            emoji: '🧾',
            title: l10n.ordersEmptyTitle,
            subtitle: l10n.ordersEmptySubtitle,
            action: FilledButton(
              onPressed: widget.onBrowse,
              child: Text(l10n.browseRestaurants),
            ),
          ),
        ],
      );
    } else if (shown.isEmpty) {
      body = ListView(
        children: <Widget>[
          EmptyState(
            emoji: '🔍',
            title: l10n.searchNoResultsTitle,
            subtitle: l10n.ordersNoMatch,
          ),
        ],
      );
    } else {
      body = ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 110),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: shown.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (BuildContext context, int i) => Reveal(
          index: i,
          child: _OrderCard(order: shown[i]),
        ),
      );
    }

    return Scaffold(
      appBar: widget.asPage ? AppBar(title: Text(l10n.ordersTitle)) : null,
      body: SafeArea(
        bottom: false,
        top: !widget.asPage,
        child: Column(
          children: <Widget>[
            if (!widget.asPage) const _OrdersHeader(),
            if (controller.orders.isNotEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 10),
                child: _OrderSearch(
                  controller: _search,
                  onChanged: (String value) => setState(() => _query = value),
                ),
              ),
            Expanded(
              child: RefreshIndicator(
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface,
                displacement: 28,
                onRefresh: () {
                  Haptics.tap();
                  return _load();
                },
                child: body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Where the food goes, the wallet, and the customer: the same three things
/// the storefront opens with, so the history feels part of the same app.
class _OrdersHeader extends StatelessWidget {
  const _OrdersHeader();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Address? address = context.watch<AddressController>().deliveryAddress;
    final String? name = context.watch<AuthController>().user?.firstName;
    final String letter =
        (name ?? '').trim().isEmpty ? '' : name!.trim()[0].toUpperCase();

    String? place(String? value) =>
        value == null || value.trim().isEmpty ? null : value.trim();
    final String title = address == null
        ? l10n.addAddress
        : (place(address.landmark) ?? place(address.line2) ?? address.line1);
    final String? subtitle = address == null
        ? null
        : <String>[address.city, address.state]
            .where((String part) => part.trim().isNotEmpty)
            .join(', ');

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => Navigator.of(context).pushNamed(AppRoutes.addressBook),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Icon(
                      Icons.location_on_rounded,
                      color: AppColors.orangeDeep,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Text(
                                title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                        if (subtitle != null && subtitle.isNotEmpty)
                          Text(
                            subtitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          _RoundButton(
            tooltip: l10n.walletTitle,
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.wallet),
            child: Icon(
              Icons.account_balance_wallet_outlined,
              size: 21,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(width: 10),
          _RoundButton(
            tooltip: l10n.profileTitle,
            filled: true,
            onTap: () => Navigator.of(context).pushNamed(AppRoutes.profile),
            child: letter.isEmpty
                ? const Icon(Icons.person_outline_rounded, size: 21)
                : Text(
                    letter,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: theme.brightness == Brightness.dark
                          ? AppColors.greenLight
                          : AppColors.greenDeep,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class _RoundButton extends StatelessWidget {
  const _RoundButton({
    required this.tooltip,
    required this.onTap,
    required this.child,
    this.filled = false,
  });

  final String tooltip;
  final VoidCallback onTap;
  final Widget child;

  /// The avatar: a tinted disc rather than an outlined one.
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color tint = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : AppColors.greenDeep;
    return Tooltip(
      message: tooltip,
      child: Material(
        color: filled ? tint.withValues(alpha: 0.14) : theme.colorScheme.surface,
        shape: CircleBorder(
          side: filled
              ? BorderSide.none
              : BorderSide(color: theme.colorScheme.outlineVariant),
        ),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: SizedBox.square(dimension: 46, child: Center(child: child)),
        ),
      ),
    );
  }
}

/// Searches the customer's own orders, on the phone: by restaurant or dish.
class _OrderSearch extends StatelessWidget {
  const _OrderSearch({required this.controller, required this.onChanged});

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final BorderRadius radius = BorderRadius.circular(16);
    return Material(
      color: theme.colorScheme.surfaceContainerLowest,
      borderRadius: radius,
      elevation: isDark ? 0 : 3,
      shadowColor: Colors.black.withValues(alpha: 0.18),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context).ordersSearchHint,
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: AppColors.orangeDeep,
          ),
          suffixIcon: controller.text.isEmpty
              ? null
              : IconButton(
                  tooltip: AppLocalizations.of(context).clearLabel,
                  icon: const Icon(Icons.close_rounded),
                  onPressed: () {
                    controller.clear();
                    onChanged('');
                  },
                ),
          filled: false,
          border: OutlineInputBorder(
            borderRadius: radius,
            borderSide: BorderSide(color: theme.colorScheme.outlineVariant),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: radius,
            borderSide: BorderSide(color: theme.colorScheme.outlineVariant),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}

/// One past or current order: the restaurant, what was in it, when and what
/// it cost, and what to do next.
class _OrderCard extends StatelessWidget {
  const _OrderCard({required this.order});

  final Order order;

  /// Enough lines to recognise an order; the rest is one tap away.
  static const int _shownLines = 3;

  void _open(BuildContext context) => Navigator.of(context).pushNamed(
        AppRoutes.orderStatus,
        arguments: OrderArgs(orderId: order.id),
      );

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final MaterialLocalizations clock = MaterialLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final DateTime? placed = order.placedAt?.toLocal();
    final List<OrderItem> items = order.items;
    final String? restaurantId = order.restaurantId;

    final Widget divider = Divider(
      height: 1,
      thickness: 1,
      color: theme.colorScheme.outlineVariant.withValues(alpha: 0.6),
    );

    return Pressable(
      onTap: () => _open(context),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.7),
          ),
          boxShadow: isDark
              ? null
              : <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Who.
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 4, 14),
              child: Row(
                children: <Widget>[
                  FoodImage(
                    seed: restaurantId ?? '${order.id}',
                    url: order.restaurantLogoUrl,
                    emoji: '🍛',
                    size: 58,
                    radius: 14,
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          order.restaurantName ?? l10n.appName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          order.restaurantArea ??
                              l10n.orderTitle(order.orderNumber),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        if (restaurantId != null) ...<Widget>[
                          const SizedBox(height: 2),
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(
                              AppRoutes.restaurant,
                              arguments: RestaurantArgs(restaurantId: restaurantId),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    l10n.viewMenu,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: AppColors.orangeDeep,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_right_rounded,
                                    color: AppColors.orangeDeep,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  _MoreMenu(order: order, onOpen: () => _open(context)),
                ],
              ),
            ),
            divider,
            // What.
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (final OrderItem item in items.take(_shownLines))
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          VegMark(isVeg: item.isVeg, size: 17),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              '${item.quantity} x ${item.name}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (items.length > _shownLines)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        l10n.orderAgainItems('', items.length - _shownLines)
                            .trim(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  const _DashedLine(),
                ],
              ),
            ),
            // When, and how much.
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 8, 14),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        if (placed != null)
                          Text(
                            l10n.orderPlacedOn(
                              '${clock.formatShortMonthDay(placed)}, '
                              '${clock.formatTimeOfDay(TimeOfDay.fromDateTime(placed))}',
                            ),
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        const SizedBox(height: 4),
                        Text(
                          order.statusLabel,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: order.status.isActive
                                ? statusColour(context, order.status)
                                : theme.colorScheme.onSurfaceVariant,
                            fontWeight: order.status.isActive
                                ? FontWeight.w700
                                : FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Rupees(
                    order.grandTotal,
                    style: theme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ],
              ),
            ),
            // What next: rate it, and track it or order it again.
            if (order.status.isActive ||
                canReorder(order) ||
                order.status == OrderStatus.delivered) ...<Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: divider,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: order.status == OrderStatus.delivered
                          ? _CardRating(order: order)
                          : const SizedBox.shrink(),
                    ),
                    if (order.status.isActive || canReorder(order))
                      order.status.isActive
                        ? FilledButton.icon(
                            onPressed: () => _open(context),
                            icon: const Icon(Icons.delivery_dining_rounded),
                            label: Text(l10n.trackYourOrder),
                            style: FilledButton.styleFrom(
                              backgroundColor: AppColors.greenDeep,
                              foregroundColor: Colors.white,
                              // Sized to its words, at the card's end, rather
                              // than the theme's full width.
                              minimumSize: const Size(0, 44),
                            ),
                          )
                        : FilledButton.icon(
                            onPressed: () => reorder(context, order),
                            icon: const Icon(Icons.replay_rounded, size: 18),
                            label: Text(l10n.reorder),
                            style: FilledButton.styleFrom(
                              backgroundColor: AppColors.orangeDeep,
                              foregroundColor: Colors.white,
                              // Sized to its words, at the card's end, rather
                              // than the theme's full width.
                              minimumSize: const Size(0, 44),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// A delivered order's rating on its card: stars to tap if it has none yet,
/// the stars given once it has.
class _CardRating extends StatelessWidget {
  const _CardRating({required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final RatedOrders rated = context.watch<RatedOrders>();
    final int? given = rated.ratingOf(order);
    if (given != null) {
      return Align(
        alignment: AlignmentDirectional.centerStart,
        child: RatedStars(value: given, size: 18),
      );
    }
    if (!rated.needsRating(order)) return const SizedBox.shrink();
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: RatingStars(
        key: Key('card-stars-${order.id}'),
        value: 0,
        size: 24,
        onChanged: (int stars) => openRating(context, order, stars: stars),
      ),
    );
  }
}

/// The ⋮ on a card: the order's details, ordering it again, rating it.
class _MoreMenu extends StatelessWidget {
  const _MoreMenu({required this.order, required this.onOpen});

  final Order order;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (String choice) {
        switch (choice) {
          case 'details':
            onOpen();
          case 'reorder':
            reorder(context, order);
          case 'rate':
            Navigator.of(context).pushNamed(
              AppRoutes.rateOrder,
              arguments: RateOrderArgs(order: order),
            );
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'details',
          child: Text(l10n.trackingOrderDetails),
        ),
        if (canReorder(order))
          PopupMenuItem<String>(value: 'reorder', child: Text(l10n.reorder)),
        if (order.status == OrderStatus.delivered)
          PopupMenuItem<String>(value: 'rate', child: Text(l10n.rateThisOrder)),
      ],
    );
  }
}

/// The dashed rule between the dishes and the bill line, like a receipt.
class _DashedLine extends StatelessWidget {
  const _DashedLine();

  @override
  Widget build(BuildContext context) {
    final Color colour =
        Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.9);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        const double dash = 5;
        const double gap = 4;
        final int count =
            (constraints.maxWidth / (dash + gap)).floor().clamp(1, 400);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            for (int i = 0; i < count; i++)
              SizedBox(
                width: dash,
                height: 1,
                child: ColoredBox(color: colour),
              ),
          ],
        );
      },
    );
  }
}

/// Colour for an order state. Shared by the history cards and the pill, so
/// the two can never disagree about what "in progress" looks like.
Color statusColour(BuildContext context, OrderStatus status) {
  final ThemeData theme = Theme.of(context);
  return switch (status) {
    OrderStatus.delivered => const Color(0xFF0F8A0F),
    OrderStatus.cancelled || OrderStatus.rejected => theme.colorScheme.error,
    OrderStatus.unknown => theme.colorScheme.onSurfaceVariant,
    _ => AppColors.orangeDeep,
  };
}

/// Status pill. The label is the server's — it knows about statuses this build
/// may not — but the colour is derived locally so an unknown one stays neutral.
class OrderStatusChip extends StatelessWidget {
  const OrderStatusChip({
    super.key,
    required this.label,
    required this.status,
  });

  final String label;
  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color color = statusColour(context, status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.labelSmall
            ?.copyWith(color: color, fontWeight: FontWeight.w800),
      ),
    );
  }
}
