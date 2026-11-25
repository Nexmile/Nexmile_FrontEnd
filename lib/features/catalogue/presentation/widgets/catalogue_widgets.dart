import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/motion/app_motion.dart';
import '../../../../core/motion/haptics.dart';
import '../../../../core/motion/pressable.dart';
import '../../../../core/network/image_disk_cache.dart';
import '../../../../core/widgets/empty_illustration.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/delivery_instruction.dart';
import '../../data/storefront_models.dart';

/// Formats rupees the way a bill does: no decimals when the amount is whole,
/// two when it is not. `₹249` and `₹249.50` both read correctly; `₹249.00`
/// looks like a spreadsheet.
String formatRupees(double amount) {
  final bool isWhole = amount == amount.roundToDouble();
  return '₹${isWhole ? amount.round() : amount.toStringAsFixed(2)}';
}

/// The photo tag shared by a restaurant card and the banner of the page it
/// opens, so the photo grows from one into the other.
///
/// [scope] names the list the card sits in. The same restaurant can be on
/// screen twice (a home rail and the list under it), and two photos with one
/// tag in the same screen is an error.
Object restaurantPhotoTag(String scope, String restaurantId) =>
    'restaurant-photo:$scope:$restaurantId';

/// A price that counts to its new value instead of jumping, so the cart bar
/// visibly adds up as dishes go in.
class AnimatedRupees extends StatelessWidget {
  const AnimatedRupees(this.amount, {super.key, this.style});

  final double amount;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    if (AppMotion.reduced(context)) return Rupees(amount, style: style);
    // A tween's begin is wherever the last one got to, so a second tap mid-
    // count carries on from the number on screen rather than restarting.
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(end: amount),
      duration: AppMotion.settled,
      curve: AppMotion.enter,
      builder: (BuildContext context, double value, Widget? _) => Rupees(
        // Whole rupees while moving, the exact amount once it lands.
        value == amount ? amount : value.roundToDouble(),
        style: style,
      ),
    );
  }
}

/// Always left-to-right — a price reads the same way in every language, and
/// mirroring "₹249" would be wrong in Urdu.
class Rupees extends StatelessWidget {
  const Rupees(this.amount, {super.key, this.style, this.struck = false});

  final double amount;
  final TextStyle? style;

  /// Renders struck through, for a compare-at price.
  final bool struck;

  @override
  Widget build(BuildContext context) {
    return Text(
      formatRupees(amount),
      textDirection: TextDirection.ltr,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: (style ?? const TextStyle()).copyWith(
        decoration: struck ? TextDecoration.lineThrough : null,
      ),
    );
  }
}

/// The mark Indian menus are required to show: a green square with a dot
/// for veg, a brown square with a triangle for non-veg. The shapes differ,
/// not only the colours, so the marks still read for a colour-blind eye.
class VegMark extends StatelessWidget {
  const VegMark({super.key, required this.isVeg, this.size = 16});

  final bool isVeg;
  final double size;

  @override
  Widget build(BuildContext context) {
    final Color color =
        isVeg ? const Color(0xFF0F8A0F) : const Color(0xFFA6461C);
    return Semantics(
      label: isVeg ? 'Veg' : 'Non-veg',
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 1.6),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Center(
          child: isVeg
              ? Container(
                  width: size * 0.45,
                  height: size * 0.45,
                  decoration:
                      BoxDecoration(color: color, shape: BoxShape.circle),
                )
              : CustomPaint(
                  size: Size(size * 0.52, size * 0.46),
                  painter: _TrianglePainter(color),
                ),
        ),
      ),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  const _TrianglePainter(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, Paint()..color = color);
  }

  @override
  bool shouldRepaint(_TrianglePainter old) => old.color != color;
}

/// Remote image with a branded fallback.
///
/// Image URLs from the API are signed and expiring, so a broken link is a
/// normal event rather than a bug — it falls back to an emoji on a brand
/// gradient, keyed off the id so the same shop always looks the same.
///
/// Photos are kept on the phone ([CachedNetworkImage]), so a second launch
/// shows them at once. While one is on its way the gradient shows on its own
/// and the photo fades in over it; the emoji is kept for a link that failed,
/// so it never flashes up just before a photo that was coming anyway.
class FoodImage extends StatelessWidget {
  const FoodImage({
    super.key,
    required this.seed,
    this.url,
    this.emoji = '🍽️',
    this.size = 96,
    this.radius = 16,
  });

  final String seed;
  final String? url;
  final String emoji;
  final double size;
  final double radius;

  static const List<List<Color>> _light = <List<Color>>[
    <Color>[Color(0xFFE8F5D8), Color(0xFFCDE9A8)],
    <Color>[Color(0xFFFFE9D6), Color(0xFFFFD0A8)],
    <Color>[Color(0xFFE4F1E1), Color(0xFFBFE0C4)],
    <Color>[Color(0xFFFFF1D6), Color(0xFFFFE0A3)],
  ];
  static const List<List<Color>> _dark = <List<Color>>[
    <Color>[Color(0xFF1E2A14), Color(0xFF2C3D1B)],
    <Color>[Color(0xFF2E2013), Color(0xFF3E2A16)],
    <Color>[Color(0xFF17251A), Color(0xFF213525)],
    <Color>[Color(0xFF2C2413), Color(0xFF3A301A)],
  ];

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final List<Color> colors =
        (isDark ? _dark : _light)[seed.hashCode.abs() % _light.length];

    Widget backdrop({required bool withEmoji}) => Container(
          width: size.isFinite ? size : null,
          height: size.isFinite ? size : null,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          // The banner passes an infinite size to fill its slot, which would
          // make the emoji's font size infinite too.
          child: withEmoji
              ? Text(
                  emoji,
                  style: TextStyle(fontSize: size.isFinite ? size * 0.42 : 48),
                )
              : null,
        );

    final String? src = url;
    if (src == null || src.isEmpty) return backdrop(withEmoji: true);

    // An infinite `size` means "fill whatever box you are given". Passing that
    // straight to the image makes it lay out square against the smaller axis
    // instead of filling, so the fill case drops the explicit dimensions and
    // expands instead.
    final bool fills = !size.isFinite;
    final bool still = AppMotion.reduced(context);

    final Widget image = Image(
      image: CachedNetworkImage(src),
      width: fills ? null : size,
      height: fills ? null : size,
      fit: BoxFit.cover,
      // Keeps the old photo up while a re-signed link for it loads.
      gaplessPlayback: true,
      errorBuilder: (_, __, ___) => backdrop(withEmoji: true),
      frameBuilder: (
        BuildContext context,
        Widget child,
        int? frame,
        bool wasSynchronouslyLoaded,
      ) {
        // Already in memory: no fade, or every scroll back up would flicker.
        if (wasSynchronouslyLoaded || still) return child;
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: AppMotion.quick,
          curve: AppMotion.enter,
          child: child,
        );
      },
    );

    final Widget layered = Stack(
      fit: StackFit.expand,
      children: <Widget>[backdrop(withEmoji: false), image],
    );

    if (fills) {
      return radius == 0
          ? SizedBox.expand(child: layered)
          : ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: SizedBox.expand(child: layered),
            );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(width: size, height: size, child: layered),
    );
  }
}

/// One line of a bill, on both the cart and the order screens.
class BillRow extends StatelessWidget {
  const BillRow({
    super.key,
    required this.label,
    required this.amount,
    this.freeLabel,
    this.highlight = false,
    this.emphasis = false,
  });

  final String label;
  final double amount;

  /// Shown instead of the amount when the charge was waived — "₹0" hides the
  /// fact that free delivery was earned.
  final String? freeLabel;

  /// Green, for a discount.
  final bool highlight;

  /// The total row.
  final bool emphasis;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // The deep green that reads on white sinks into a dark page.
    final Color saving = theme.brightness == Brightness.dark
        ? AppColors.greenLight
        : const Color(0xFF0F8A0F);
    final TextStyle? style = emphasis
        ? theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800)
        : theme.textTheme.bodyMedium?.copyWith(
            color: highlight ? saving : null,
          );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: <Widget>[
          Expanded(child: Text(label, style: style)),
          const SizedBox(width: 12),
          if (freeLabel != null)
            Text(
              freeLabel!,
              style: style?.copyWith(
                color: saving,
                fontWeight: FontWeight.w700,
              ),
            )
          else
            Rupees(amount, style: style),
        ],
      ),
    );
  }
}

/// Says *why* a shop is shut. "Closed for the night" and "not taking orders"
/// are different messages, and only one of them is worth waiting for.
class ClosedNotice extends StatelessWidget {
  const ClosedNotice({super.key, required this.restaurant, this.compact = false});

  final Restaurant restaurant;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    if (restaurant.isOpen) return const SizedBox.shrink();

    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String message = restaurant.withinOperatingHours
        ? l10n.notTakingOrders
        : l10n.closedRightNow;

    if (compact) {
      // Solid rather than tinted: the compact badge sits over a photograph on
      // the restaurant card, where a 12%-alpha wash would disappear.
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
        decoration: BoxDecoration(
          color: theme.colorScheme.error,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onError,
            fontWeight: FontWeight.w800,
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.error.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.error.withValues(alpha: 0.35),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.schedule_rounded,
              size: 18, color: theme.colorScheme.error),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: theme.colorScheme.error),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.trailing,
    this.caps = false,
    this.padding,
  });

  final String title;
  final Widget? trailing;

  /// Replaces the capitals heading's page gutter, for a heading inside a
  /// list that already has its own.
  final EdgeInsetsGeometry? padding;

  /// Small spaced capitals in a quiet grey ("EXPLORE MORE"), the way the big
  /// apps title the sections of a home feed: the content below is the
  /// headline, and the title only names it.
  final bool caps;

  /// Wide tracking suits Latin capitals; Indic scripts have no capitals and
  /// their clusters must not be pulled apart, so they get a touch only.
  static bool _isLatin(String text) =>
      text.runes.every((int rune) => rune < 0x0250);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    if (caps) {
      return Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(20, 24, 20, 12),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                title.toUpperCase(),
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w700,
                  letterSpacing: _isLatin(title) ? 2.0 : 0.3,
                ),
              ),
            ),
            if (trailing != null) ...<Widget>[
              const SizedBox(width: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.4,
                ),
                child: trailing!,
              ),
            ],
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    // Heavier and tighter than the body scale it sits above:
                    // a heading should read as a different voice, not as the
                    // same sentence in bold.
                    fontWeight: FontWeight.w900,
                    letterSpacing: -0.7,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 5),
                // A short brand rule under the first word's worth of title.
                // Cheaper than a bigger type size and it does not push the
                // content it introduces further down the page.
                Container(
                  width: 26,
                  height: 3,
                  decoration: BoxDecoration(
                    color: AppColors.orangeDeep,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
          ),
          if (trailing != null) ...<Widget>[
            const SizedBox(width: 10),
            // A count or a link wraps rather than pushing the heading off a
            // small screen at large text.
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width * 0.4,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: trailing!,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// Restaurant card on the home and search tabs, laid out the way the big
/// delivery apps lay theirs: the food first and large, then the name and
/// rating, how soon it comes, and the offer.
///
/// A closed shop is dimmed rather than hidden — customers look for a
/// favourite by name even when it is shut.
class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.restaurant,
    required this.onTap,
    this.onFavourite,
    this.compact = false,
    this.heroTag,
  });

  final Restaurant restaurant;
  final VoidCallback onTap;

  /// Shows the bookmark when given. Absent on search results, where the row is
  /// about finding a shop rather than keeping it.
  final VoidCallback? onFavourite;

  /// Two-across grid form: shorter photo, and only the name, rating and time
  /// under it, to fit the grid's fixed cell.
  final bool compact;

  /// From [restaurantPhotoTag]. Given, the photo grows into the banner of
  /// the restaurant page; the caller passes the same tag to that page.
  final Object? heroTag;

  /// The offers' own word for a delivery offer, shown as a strip on the photo.
  static const String _freeDelivery = 'free_delivery';

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final BorderRadius radius = BorderRadius.circular(20);
    final bool isOpen = restaurant.isOpen;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;

    RestaurantOffer? firstWhere(bool Function(RestaurantOffer) test) {
      for (final RestaurantOffer offer in restaurant.offers) {
        if (test(offer)) return offer;
      }
      return null;
    }

    final RestaurantOffer? strip = compact
        ? null
        : firstWhere((RestaurantOffer o) => o.type == _freeDelivery);
    final RestaurantOffer? deal =
        firstWhere((RestaurantOffer o) => o.type != _freeDelivery);
    final FeaturedDish? dish = compact ? null : restaurant.featuredDish;

    final String eta = restaurant.hasEtaRange
        ? l10n.etaRange(restaurant.etaMinMinutes!, restaurant.etaMaxMinutes!)
        : l10n.minutesAway(restaurant.avgPrepTimeMinutes);
    final bool nearAndFast = restaurant.isNearAndFast;
    final String? after = nearAndFast
        ? eta
        : (restaurant.distanceKmLabel == null
            ? null
            : l10n.kilometresAway(restaurant.distanceKmLabel!));

    return Pressable(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerLowest,
          borderRadius: radius,
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.6),
          ),
          // A single soft shadow lifts the card off the page. Dark themes get
          // none — a shadow on a dark ground reads as mud.
          boxShadow: isDark
              ? null
              : <BoxShadow>[
                  BoxShadow(
                    color: AppColors.inkStrong.withValues(alpha: 0.08),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: compact ? 4 / 3 : 16 / 10,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  ColorFiltered(
                    colorFilter: isOpen
                        ? const ColorFilter.mode(
                            Colors.transparent,
                            BlendMode.multiply,
                          )
                        : const ColorFilter.matrix(_greyscale),
                    child: _CardPhotos(restaurant: restaurant, heroTag: heroTag),
                  ),
                  // Scrim only along the bottom, where the labels sit, so
                  // they stay legible on a bright photo without dulling it.
                  if (dish != null)
                    const IgnorePointer(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: <Color>[Colors.black54, Colors.transparent],
                          ),
                        ),
                      ),
                    ),
                  if (!isOpen)
                    PositionedDirectional(
                      top: 10,
                      start: 12,
                      end: onFavourite != null ? 48 : 12,
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child:
                            ClosedNotice(restaurant: restaurant, compact: true),
                      ),
                    ),
                  if (dish != null)
                    PositionedDirectional(
                      start: 12,
                      end: 12,
                      bottom: strip != null ? 40 : 12,
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: _DishHighlight(dish: dish),
                      ),
                    ),
                  if (strip != null)
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: _OfferStrip(label: strip.label),
                    ),
                  if (restaurant.isPureVeg && onFavourite == null)
                    const PositionedDirectional(
                      top: 10,
                      end: 12,
                      child: VegMark(isVeg: true, size: 20),
                    ),
                  if (onFavourite != null)
                    PositionedDirectional(
                      top: 4,
                      end: 4,
                      child: _FavouriteButton(
                        isFavourite: restaurant.isFavourite,
                        onTap: onFavourite!,
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: compact
                  ? const EdgeInsets.fromLTRB(12, 10, 12, 10)
                  : const EdgeInsets.fromLTRB(16, 12, 16, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          restaurant.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: (compact
                                  ? theme.textTheme.titleMedium
                                  : theme.textTheme.titleLarge)
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                      ),
                      // Hidden entirely until the API sends a rating. A "0.0"
                      // badge reads as *bad*, where an unrated shop is merely
                      // new.
                      if (restaurant.hasRating) ...<Widget>[
                        const SizedBox(width: 8),
                        RatingBadge(rating: restaurant.rating!),
                      ] else if (restaurant.isNew) ...<Widget>[
                        const SizedBox(width: 8),
                        const NewBadge(),
                      ],
                    ],
                  ),
                  if (!compact && restaurant.subtitle().isNotEmpty) ...<Widget>[
                    const SizedBox(height: 2),
                    Text(
                      restaurant.subtitle(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                  SizedBox(height: compact ? 4 : 6),
                  // How soon: "Near & Fast" for a close, quick kitchen, the
                  // window otherwise, and the distance after it.
                  Row(
                    children: <Widget>[
                      Icon(Icons.bolt_rounded, size: 17, color: green),
                      const SizedBox(width: 3),
                      Flexible(
                        child: Text(
                          nearAndFast ? l10n.nearAndFast : eta,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: green,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      if (after != null)
                        Flexible(
                          child: Text(
                            ' · $after',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                    ],
                  ),
                  if (!compact && deal != null) ...<Widget>[
                    const SizedBox(height: 6),
                    Row(
                      children: <Widget>[
                        const OfferBadge(size: 20),
                        const SizedBox(width: 8),
                        // Worded and translated by the server: shown as sent.
                        Expanded(
                          child: Text(
                            deal.label,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Luminance-weighted greyscale, for a shop that is shut.
  static const List<double> _greyscale = <double>[
    0.2126, 0.7152, 0.0722, 0, 0, //
    0.2126, 0.7152, 0.0722, 0, 0, //
    0.2126, 0.7152, 0.0722, 0, 0, //
    0, 0, 0, 1, 0, //
  ];
}

/// The blue disc with a per-cent sign that marks an offer.
class OfferBadge extends StatelessWidget {
  const OfferBadge({super.key, this.size = 26});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color(0xFF3D7BF7),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.percent_rounded,
        size: size * 0.62,
        color: Colors.white,
      ),
    );
  }
}

/// The card's photos: one, or several to swipe through with dots. The first
/// carries the hero tag, so it is the one that grows into the page.
class _CardPhotos extends StatefulWidget {
  const _CardPhotos({required this.restaurant, this.heroTag});

  final Restaurant restaurant;
  final Object? heroTag;

  @override
  State<_CardPhotos> createState() => _CardPhotosState();
}

class _CardPhotosState extends State<_CardPhotos> {
  final PageController _pages = PageController();
  int _index = 0;

  @override
  void dispose() {
    _pages.dispose();
    super.dispose();
  }

  Widget _withHero(Widget photo) {
    final Object? tag = widget.heroTag;
    return tag == null ? photo : Hero(tag: tag, child: photo);
  }

  @override
  Widget build(BuildContext context) {
    final Restaurant restaurant = widget.restaurant;
    // Lists send no gallery today, only the banner; with one photo there is
    // nothing to swipe, so it is the single picture the card always had.
    final List<RestaurantPhoto> photos = restaurant.gallery;
    if (photos.length < 2) {
      return _withHero(
        FoodImage(
          seed: restaurant.id,
          url: photos.isEmpty
              ? (restaurant.bannerUrl.isEmpty
                  ? restaurant.logoUrl
                  : restaurant.bannerUrl)
              : photos.first.url,
          size: double.infinity,
          radius: 0,
        ),
      );
    }

    final int shown = photos.length.clamp(0, 5);
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        PageView.builder(
          controller: _pages,
          itemCount: shown,
          onPageChanged: (int i) => setState(() => _index = i),
          itemBuilder: (BuildContext context, int i) {
            final Widget photo = FoodImage(
              seed: '${restaurant.id}-${photos[i].id}',
              url: photos[i].url,
              size: double.infinity,
              radius: 0,
            );
            return i == 0 ? _withHero(photo) : photo;
          },
        ),
        PositionedDirectional(
          end: 12,
          bottom: 12,
          child: IgnorePointer(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                for (int i = 0; i < shown; i++)
                  AnimatedContainer(
                    duration: AppMotion.quick,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: i == _index ? 16 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.white
                          .withValues(alpha: i == _index ? 1 : 0.6),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// "Paneer Tikka · ₹220" on a card's photo, with its veg mark.
class _DishHighlight extends StatelessWidget {
  const _DishHighlight({required this.dish});

  final FeaturedDish dish;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(6, 4, 10, 4),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // On white, so the mark reads on a dark pill.
          Container(
            padding: const EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
            ),
            child: VegMark(isVeg: dish.isVeg, size: 13),
          ),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              '${dish.name} · ${formatRupees(dish.price)}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A delivery offer as a blue strip along the bottom of a card's photo.
class _OfferStrip extends StatelessWidget {
  const _OfferStrip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      color: const Color(0xFF2F6BE6),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}

/// ADD button that morphs into a quantity stepper.
///
/// The swap is animated rather than instant: adding the first item is the
/// moment the app most needs to feel responsive, and a control that pops from
/// one shape to another makes a fast action feel like a page reload.
class QuantityControl extends StatelessWidget {
  const QuantityControl({
    super.key,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
    this.enabled = true,
  });

  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color accent = isDark ? AppColors.greenLight : AppColors.greenDeep;
    final Color onAccent = isDark ? AppColors.black : Colors.white;
    final bool isEmpty = quantity == 0;

    // A tap for adding, a lighter tick for taking away: the hand learns which
    // way the count went without looking.
    void add() {
      Haptics.tap();
      onAdd();
    }

    void remove() {
      Haptics.select();
      onRemove();
    }

    return _PopOnIncrease(
      quantity: quantity,
      child: AnimatedContainer(
        duration: AppMotion.quick,
        curve: AppMotion.enter,
        width: 104,
        height: 38,
        decoration: BoxDecoration(
          // Solid while empty, so it reads where it sits over a dish photo;
          // filled with the accent once something is in the cart, which is
          // what makes a chosen dish scannable down a long menu.
          color: isEmpty ? theme.colorScheme.surface : accent,
          border: Border.all(color: accent, width: 1.4),
          borderRadius: BorderRadius.circular(10),
          boxShadow: isEmpty && !isDark
              ? <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.12),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ]
              : null,
        ),
        child: AnimatedSwitcher(
          duration: AppMotion.quick,
          switchInCurve: AppMotion.enter,
          switchOutCurve: AppMotion.exit,
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.82, end: 1).animate(animation),
                child: child,
              ),
            );
          },
          child: isEmpty
              ? _AddButton(
                  key: const ValueKey<String>('add'),
                  label: l10n.addLabel,
                  accent: accent,
                  onTap: enabled ? add : null,
                )
              : _Stepper(
                  key: const ValueKey<String>('stepper'),
                  quantity: quantity,
                  enabled: enabled,
                  foreground: onAccent,
                  onAdd: add,
                  onRemove: remove,
                ),
        ),
      ),
    );
  }
}

/// A quick swell and settle each time the count goes up: the button
/// answering the finger, which is most of what makes adding feel quick.
class _PopOnIncrease extends StatefulWidget {
  const _PopOnIncrease({required this.quantity, required this.child});

  final int quantity;
  final Widget child;

  @override
  State<_PopOnIncrease> createState() => _PopOnIncreaseState();
}

class _PopOnIncreaseState extends State<_PopOnIncrease>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: AppMotion.quick,
  );

  late final Animation<double> _scale = TweenSequence<double>(
    <TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1, end: 1.09)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 40,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1.09, end: 1)
            .chain(CurveTween(curve: AppMotion.spring)),
        weight: 60,
      ),
    ],
  ).animate(_controller);

  @override
  void didUpdateWidget(_PopOnIncrease oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.quantity > oldWidget.quantity && !AppMotion.reduced(context)) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      ScaleTransition(scale: _scale, child: widget.child);
}

class _AddButton extends StatelessWidget {
  const _AddButton({
    super.key,
    required this.label,
    required this.accent,
    required this.onTap,
  });

  final String label;
  final Color accent;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Opacity(
      opacity: onTap == null ? 0.45 : 1,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  label,
                  maxLines: 1,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: accent,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Stepper extends StatelessWidget {
  const _Stepper({
    super.key,
    required this.quantity,
    required this.enabled,
    required this.foreground,
    required this.onAdd,
    required this.onRemove,
  });

  final int quantity;
  final bool enabled;
  final Color foreground;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Opacity(
      opacity: enabled ? 1 : 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _StepperButton(
            icon: quantity == 1
                ? Icons.delete_outline_rounded
                : Icons.remove_rounded,
            onTap: enabled ? onRemove : null,
            foreground: foreground,
          ),
          // The count slides rather than cutting, so a rapid tap-tap-tap reads
          // as one continuous change.
          AnimatedSwitcher(
            duration: AppMotion.instant,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.4),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: Text(
              '$quantity',
              key: ValueKey<int>(quantity),
              textDirection: TextDirection.ltr,
              style: theme.textTheme.titleMedium?.copyWith(
                color: foreground,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          _StepperButton(
            icon: Icons.add_rounded,
            onTap: enabled ? onAdd : null,
            foreground: foreground,
          ),
        ],
      ),
    );
  }
}

class _StepperButton extends StatelessWidget {
  const _StepperButton({
    required this.icon,
    required this.onTap,
    required this.foreground,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      radius: 22,
      child: SizedBox(
        width: 34,
        height: 38,
        child: Icon(icon, size: 18, color: foreground),
      ),
    );
  }
}

/// "Nothing here yet" or "that didn't work": a picture, a line saying so,
/// and the way forward.
class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.emoji,
    required this.title,
    required this.subtitle,
    this.action,
    this.alert = false,
  });

  final String emoji;
  final String title;
  final String subtitle;
  final Widget? action;

  /// Something failed (offline, a server error) rather than simply being
  /// empty. Glows orange instead of green.
  final bool alert;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 40, 32, 48),
      child: Center(
        child: ConstrainedBox(
          // Short lines read as a sentence; full-width ones as a paragraph.
          constraints: const BoxConstraints(maxWidth: 340),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              EmptyIllustration(emoji: emoji, alert: alert),
              const SizedBox(height: 18),
              Text(
                title,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.45,
                ),
              ),
              if (action != null) ...<Widget>[
                const SizedBox(height: 22),
                action!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Food Rescue card: surplus food, discounted, and racing a clock.
class RescueDealCard extends StatelessWidget {
  const RescueDealCard({super.key, required this.deal, required this.onTap});

  final RescueDeal deal;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return SizedBox(
      width: 230,
      child: Material(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
              border: Border.all(color: theme.colorScheme.outline),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FoodImage(
                        seed: deal.id,
                        url: deal.imageUrl,
                        emoji: '♻️',
                        size: 46,
                        radius: 12,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          deal.itemName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    deal.restaurantName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Rupees(
                        deal.price,
                        style: theme.textTheme.titleSmall
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                      if (deal.compareAtPrice != null) ...<Widget>[
                        const SizedBox(width: 6),
                        Flexible(
                          child: Rupees(
                            deal.compareAtPrice!,
                            struck: true,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 6),
                  // A rescue deal is a race; the count is the whole point.
                  Text(
                    l10n.portionsLeft(deal.portionsLeft),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: AppColors.orangeDeep,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Five stars, filled to a rating. Read-only — the tappable version lives on
/// the rate-your-order screen, where a half star would be meaningless.
class StarRow extends StatelessWidget {
  const StarRow({super.key, required this.rating, this.size = 16});

  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      // Stars run left to right even in Urdu: they are a scale, not text.
      textDirection: TextDirection.ltr,
      children: <Widget>[
        for (int star = 1; star <= 5; star++)
          Icon(
            // Rounds to the nearer half, which is what the eye reads anyway.
            rating >= star - 0.25
                ? Icons.star_rounded
                : rating >= star - 0.75
                    ? Icons.star_half_rounded
                    : Icons.star_outline_rounded,
            size: size,
            color: const Color(0xFFF5A623),
          ),
      ],
    );
  }
}

/// "New", where a rating would be, for a shop with too few ratings for a
/// score: a fresh kitchen, not a bad one.
class NewBadge extends StatelessWidget {
  const NewBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final String label = AppLocalizations.of(context).restaurantNew;
    final bool latin = label.runes.every((int r) => r < 0x0250);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: AppColors.orangeDeep.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.orangeDeep.withValues(alpha: 0.45)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.auto_awesome_rounded,
            size: 12,
            color: AppColors.orangeDeep,
          ),
          const SizedBox(width: 3),
          Text(
            latin ? label.toUpperCase() : label,
            maxLines: 1,
            style: theme.textTheme.labelSmall?.copyWith(
              color: AppColors.orangeDeep,
              fontWeight: FontWeight.w800,
              letterSpacing: latin ? 0.6 : 0,
            ),
          ),
        ],
      ),
    );
  }
}

/// The green rating badge. Only ever built when a rating exists — an unrated
/// restaurant shows nothing rather than a zero.
class RatingBadge extends StatelessWidget {
  const RatingBadge({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // Below 4.0 the badge goes amber rather than green — a colour that says
    // "good" on a 3.2 is a small lie told on every card.
    final Color base =
        rating >= 4.0 ? const Color(0xFF0F8A0F) : AppColors.orangeDeep;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: base,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.star_rounded, size: 13, color: Colors.white),
          const SizedBox(width: 2),
          Text(
            rating.toStringAsFixed(1),
            // A rating reads left to right in every language.
            textDirection: TextDirection.ltr,
            style: theme.textTheme.labelMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

/// The bookmark on a card. Sits over a photograph, so it carries its own
/// scrim rather than relying on the image behind it being dark.
class _FavouriteButton extends StatelessWidget {
  const _FavouriteButton({required this.isFavourite, required this.onTap});

  final bool isFavourite;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      toggled: isFavourite,
      child: InkResponse(
        onTap: () {
          Haptics.tap();
          onTap();
        },
        radius: 22,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: AnimatedSwitcher(
            duration: AppMotion.quick,
            transitionBuilder: (Widget child, Animation<double> animation) =>
                ScaleTransition(scale: animation, child: child),
            child: Icon(
              isFavourite
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_border_rounded,
              key: ValueKey<bool>(isFavourite),
              size: 24,
              color: Colors.white,
              shadows: const <Shadow>[
                Shadow(color: Colors.black54, blurRadius: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The picture on a doorstep chip, in the cart and on the order.
IconData instructionIcon(DeliveryInstruction instruction) =>
    switch (instruction) {
      DeliveryInstruction.leaveAtDoor => Icons.door_front_door_outlined,
      DeliveryInstruction.noBell => Icons.notifications_off_outlined,
      DeliveryInstruction.noCall => Icons.phone_disabled_outlined,
      DeliveryInstruction.security => Icons.shield_outlined,
      DeliveryInstruction.pet => Icons.pets_rounded,
    };

/// What the customer asked for beyond the dishes, as saved on the order:
/// the doorstep chips and "Don't send cutlery".
class OrderRequests extends StatelessWidget {
  const OrderRequests({
    super.key,
    required this.instructions,
    required this.noCutlery,
  });

  final List<DeliveryInstruction> instructions;
  final bool noCutlery;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    Widget chip(IconData icon, String label) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: theme.colorScheme.outline),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 15, color: theme.colorScheme.onSurfaceVariant),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  style: theme.textTheme.labelMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        );

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        for (final DeliveryInstruction instruction in instructions)
          chip(instructionIcon(instruction), instruction.label(l10n)),
        if (noCutlery) chip(Icons.no_meals_outlined, l10n.cartNoCutlery),
      ],
    );
  }
}
