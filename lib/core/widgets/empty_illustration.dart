import 'package:flutter/material.dart';

import '../motion/app_motion.dart';
import '../theme/app_colors.dart';

/// The picture above every "nothing here yet" and "that didn't work".
///
/// A plate on a soft glow with a few flecks around it, the subject in the
/// middle: an emoji where the screen has one, otherwise an icon. Calm states
/// glow green; [alert] states (offline, failed) glow orange, so a customer
/// can tell "empty" from "broken" before reading a word.
///
/// Settles in once with a small spring and then stays still: a picture that
/// keeps moving pulls the eye away from the button under it.
class EmptyIllustration extends StatelessWidget {
  const EmptyIllustration({
    super.key,
    this.emoji,
    this.icon,
    this.alert = false,
    this.size = 136,
  }) : assert(emoji != null || icon != null);

  final String? emoji;
  final IconData? icon;
  final bool alert;
  final double size;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color tone = alert
        ? AppColors.orangeDeep
        : (isDark ? AppColors.greenLight : AppColors.greenDeep);
    final Color fleck = alert
        ? (isDark ? AppColors.greenLight : AppColors.greenDeep)
        : AppColors.orange;
    final double plate = size * 0.66;

    final Widget picture = SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // The glow.
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: <Color>[
                  tone.withValues(alpha: isDark ? 0.26 : 0.18),
                  tone.withValues(alpha: 0),
                ],
              ),
            ),
          ),
          // The plate.
          Container(
            width: plate,
            height: plate,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isDark
                  ? theme.colorScheme.surfaceContainerHigh
                  : theme.colorScheme.surface,
              border: Border.all(
                color: tone.withValues(alpha: 0.28),
                width: 1.5,
              ),
              boxShadow: isDark
                  ? null
                  : <BoxShadow>[
                      BoxShadow(
                        color: tone.withValues(alpha: 0.16),
                        blurRadius: 22,
                        offset: const Offset(0, 8),
                      ),
                    ],
            ),
            child: emoji != null
                ? Text(
                    emoji!,
                    style: TextStyle(fontSize: plate * 0.44, height: 1.1),
                  )
                : Icon(icon, size: plate * 0.42, color: tone),
          ),
          // The flecks: three, in fixed places, so the same screen always
          // looks the same.
          _Fleck(at: const Alignment(0.74, -0.70), size: size * 0.075, color: fleck),
          _Fleck(
            at: const Alignment(-0.80, 0.56),
            size: size * 0.055,
            color: tone,
          ),
          _Fleck(
            at: const Alignment(-0.58, -0.82),
            size: size * 0.035,
            color: fleck.withValues(alpha: 0.7),
          ),
          _Fleck(
            at: const Alignment(0.86, 0.46),
            size: size * 0.03,
            color: tone.withValues(alpha: 0.6),
          ),
        ],
      ),
    );

    return ExcludeSemantics(
      child: AppMotion.reduced(context)
          ? picture
          : TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: 1),
              duration: AppMotion.settled,
              curve: AppMotion.spring,
              builder: (BuildContext context, double t, Widget? child) {
                return Opacity(
                  opacity: t.clamp(0.0, 1.0),
                  child: Transform.scale(scale: 0.86 + 0.14 * t, child: child),
                );
              },
              child: picture,
            ),
    );
  }
}

class _Fleck extends StatelessWidget {
  const _Fleck({required this.at, required this.size, required this.color});

  final Alignment at;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: at,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
