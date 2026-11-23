import 'dart:math' as math;
import 'dart:ui' show PathMetric;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/motion/app_motion.dart';
import '../../../core/motion/haptics.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../data/order_models.dart';

/// The moment after checkout: a tick, a burst of confetti, and who is cooking.
///
/// Placing an order is the best moment in the app, and a snack bar on top of
/// a tracking screen let it pass unmarked. This takes under three seconds and
/// then moves on to tracking by itself; "Track your order" or back goes there
/// straight away. One animation drives all of it, so nothing is left running
/// once it has finished.
class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({super.key, required this.args});

  final OrderPlacedArgs args;

  /// From the tick landing to tracking, long enough to read both lines.
  static const Duration duration = Duration(milliseconds: 2800);

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: OrderPlacedScreen.duration,
  );

  /// Seeded by the order, so a given order always bursts the same way.
  late final List<_Piece> _pieces = _Piece.burst(widget.args.order.id);

  bool _leaving = false;

  @override
  void initState() {
    super.initState();
    Haptics.success();
    _controller
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) _track();
      })
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _track() {
    if (_leaving || !mounted) return;
    _leaving = true;
    Navigator.of(context).pushReplacementNamed(
      AppRoutes.orderStatus,
      arguments: OrderArgs(orderId: widget.args.order.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Order order = widget.args.order;
    final bool still = AppMotion.reduced(context);
    final String? restaurant = order.restaurantName?.trim();
    final int? minutes = order.estimatedPrepMinutes;

    // Stages of the one animation, as fractions of [OrderPlacedScreen.duration].
    final Animation<double> badge = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0, 0.22, curve: AppMotion.spring),
    );
    final Animation<double> tick = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.14, 0.34, curve: Curves.easeOutCubic),
    );
    final Animation<double> words = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.24, 0.44, curve: AppMotion.enter),
    );

    return PopScope(
      // Back goes forward, to tracking: the cart this came from is gone.
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? _) {
        if (!didPop) _track();
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          backgroundColor: AppColors.greenDeep,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0, -0.25),
                    radius: 1.1,
                    colors: <Color>[AppColors.green, AppColors.greenDeep],
                  ),
                ),
              ),
              if (!still)
                IgnorePointer(
                  child: CustomPaint(
                    painter: _ConfettiPainter(
                      progress: _controller,
                      pieces: _pieces,
                    ),
                  ),
                ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    children: <Widget>[
                      const Spacer(flex: 3),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (BuildContext context, Widget? _) {
                          final double grow = still ? 1 : badge.value;
                          return Transform.scale(
                            scale: 0.4 + 0.6 * grow,
                            child: Opacity(
                              opacity: grow.clamp(0.0, 1.0),
                              child: _TickBadge(progress: still ? 1 : tick.value),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                      FadeTransition(
                        opacity: still ? kAlwaysCompleteAnimation : words,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 0.35),
                            end: Offset.zero,
                          ).animate(still ? kAlwaysCompleteAnimation : words),
                          child: Column(
                            children: <Widget>[
                              Text(
                                l10n.orderPlacedTitle,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineMedium?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              if (restaurant != null && restaurant.isNotEmpty) ...<Widget>[
                                const SizedBox(height: 10),
                                Text(
                                  l10n.orderPlacedWith(restaurant),
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                              if (minutes != null && minutes > 0) ...<Widget>[
                                const SizedBox(height: 6),
                                Text(
                                  l10n.orderPlacedPrep(minutes),
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    color: Colors.white.withValues(alpha: 0.82),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const Spacer(flex: 4),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: _track,
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: AppColors.greenDeep,
                            minimumSize: const Size.fromHeight(54),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            textStyle: theme.textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          child: Text(l10n.trackYourOrder),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A white disc with the tick drawn into it.
class _TickBadge extends StatelessWidget {
  const _TickBadge({required this.progress});

  /// How much of the tick is drawn, 0 to 1.
  final double progress;

  static const double size = 112;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.18),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
          // A soft ring of light around the disc.
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.22),
            spreadRadius: 14,
          ),
        ],
      ),
      child: CustomPaint(painter: _TickPainter(progress)),
    );
  }
}

class _TickPainter extends CustomPainter {
  _TickPainter(this.progress);

  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    if (progress <= 0) return;
    final Path tick = Path()
      ..moveTo(size.width * 0.28, size.height * 0.53)
      ..lineTo(size.width * 0.44, size.height * 0.68)
      ..lineTo(size.width * 0.73, size.height * 0.37);
    final Paint paint = Paint()
      ..color = AppColors.greenDeep
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.09
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    for (final PathMetric metric in tick.computeMetrics()) {
      canvas.drawPath(
        metric.extractPath(0, metric.length * progress.clamp(0.0, 1.0)),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_TickPainter old) => old.progress != progress;
}

/// One piece of confetti: where it goes, how fast, and what it looks like.
class _Piece {
  const _Piece({
    required this.angle,
    required this.speed,
    required this.size,
    required this.spin,
    required this.color,
    required this.round,
  });

  final double angle;
  final double speed;
  final double size;
  final double spin;
  final Color color;
  final bool round;

  static const List<Color> _palette = <Color>[
    AppColors.orange,
    AppColors.orangeLight,
    AppColors.greenLight,
    Colors.white,
    Color(0xFFFFD23F),
  ];

  static List<_Piece> burst(int seed) {
    final math.Random random = math.Random(seed);
    return <_Piece>[
      for (int i = 0; i < 56; i++)
        _Piece(
          // Mostly upwards, fanned to the sides, like a popper.
          angle: -math.pi / 2 + (random.nextDouble() - 0.5) * math.pi * 1.5,
          speed: 300 + random.nextDouble() * 420,
          size: 6 + random.nextDouble() * 7,
          spin: (random.nextDouble() - 0.5) * 14,
          color: _palette[random.nextInt(_palette.length)],
          round: random.nextInt(3) == 0,
        ),
    ];
  }
}

class _ConfettiPainter extends CustomPainter {
  _ConfettiPainter({required this.progress, required this.pieces})
      : super(repaint: progress);

  final Animation<double> progress;
  final List<_Piece> pieces;

  /// The burst starts as the tick lands and is gone before the screen leaves.
  static const double _start = 0.14;
  static const double _end = 0.9;

  /// Seconds of flight the burst covers, and the pull back down.
  static const double _flight = 2.1;
  static const double _gravity = 620;

  @override
  void paint(Canvas canvas, Size size) {
    final double b =
        ((progress.value - _start) / (_end - _start)).clamp(0.0, 1.0);
    if (b <= 0 || b >= 1) return;
    final double time = b * _flight;
    final double fade = b < 0.65 ? 1 : 1 - (b - 0.65) / 0.35;
    // From behind the tick, which sits a little above the middle.
    final Offset origin = Offset(size.width / 2, size.height * 0.36);
    final Paint paint = Paint();

    for (final _Piece piece in pieces) {
      final double dx = math.cos(piece.angle) * piece.speed * time;
      final double dy = math.sin(piece.angle) * piece.speed * time +
          0.5 * _gravity * time * time;
      paint.color = piece.color.withValues(alpha: fade.clamp(0.0, 1.0));
      canvas
        ..save()
        ..translate(origin.dx + dx, origin.dy + dy)
        ..rotate(piece.spin * time);
      if (piece.round) {
        canvas.drawCircle(Offset.zero, piece.size * 0.42, paint);
      } else {
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromCenter(
              center: Offset.zero,
              width: piece.size,
              height: piece.size * 0.45,
            ),
            const Radius.circular(1.5),
          ),
          paint,
        );
      }
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(_ConfettiPainter old) => false;
}
