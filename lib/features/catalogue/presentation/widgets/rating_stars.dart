import 'package:flutter/material.dart';

import '../../../../core/motion/app_motion.dart';
import '../../../../core/motion/haptics.dart';
import '../../../../generated/l10n/app_localizations.dart';

/// The gold of a given star.
const Color starGold = Color(0xFFF5A623);

/// What a star count means, in a word and a face.
(String, String) ratingWord(AppLocalizations l10n, int stars) =>
    switch (stars) {
      1 => ('😣', l10n.rateWordTerrible),
      2 => ('🙁', l10n.rateWordBad),
      3 => ('😐', l10n.rateWordOkay),
      4 => ('🙂', l10n.rateWordGood),
      _ => ('😍', l10n.rateWordLoved),
    };

/// Five stars to tap. Each lands with a small pop; tapping the star already
/// chosen clears it, so an accidental rating is not one the customer is
/// stuck with. With [showWord], the meaning appears above: "🙂 Good".
class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 40,
    this.showWord = false,
  });

  final int value;
  final ValueChanged<int> onChanged;
  final double size;
  final bool showWord;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final (String face, String word) = ratingWord(l10n, value);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (showWord)
          SizedBox(
            height: 30,
            child: AnimatedSwitcher(
              duration: AppMotion.quick,
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  ScaleTransition(
                scale: animation,
                child: FadeTransition(opacity: animation, child: child),
              ),
              child: value == 0
                  ? const SizedBox.shrink()
                  : Text(
                      '$face  $word',
                      key: ValueKey<int>(value),
                      style: theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
            ),
          ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            for (int star = 1; star <= 5; star++)
              Semantics(
                button: true,
                selected: star <= value,
                label: '$star',
                child: InkResponse(
                  radius: size * 0.7,
                  onTap: () {
                    Haptics.select();
                    onChanged(star == value ? 0 : star);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size * 0.08),
                    child: AnimatedScale(
                      scale: star <= value ? 1.0 : 0.9,
                      duration: AppMotion.quick,
                      curve: AppMotion.spring,
                      child: Icon(
                        star <= value
                            ? Icons.star_rounded
                            : Icons.star_outline_rounded,
                        size: size,
                        color: star <= value
                            ? starGold
                            : theme.colorScheme.outlineVariant,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

/// A rating already given, small and still: "★★★★☆".
class RatedStars extends StatelessWidget {
  const RatedStars({super.key, required this.value, this.size = 16});

  final int value;
  final double size;

  @override
  Widget build(BuildContext context) {
    final Color empty = Theme.of(context).colorScheme.outlineVariant;
    return Semantics(
      label: '$value / 5',
      excludeSemantics: true,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          for (int star = 1; star <= 5; star++)
            Icon(
              Icons.star_rounded,
              size: size,
              color: star <= value ? starGold : empty,
            ),
        ],
      ),
    );
  }
}
