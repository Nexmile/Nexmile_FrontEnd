import 'package:flutter/foundation.dart';

import '../../../generated/l10n/app_localizations.dart';

/// The quick answers offered after a rating: praise for four or five stars,
/// what went wrong for one to three.
///
/// The app sends the codes and translates the labels itself; the server
/// checks each code against these lists. A code added here must be added on
/// the server too.
class ReviewTags {
  const ReviewTags._();

  static const List<String> foodPraise = <String>[
    'tasty',
    'fresh_hot',
    'good_portion',
    'good_packaging',
    'value_for_money',
    'hygienic',
  ];

  static const List<String> foodIssues = <String>[
    'cold_food',
    'poor_taste',
    'small_portion',
    'wrong_items',
    'missing_items',
    'poor_packaging',
    'too_oily',
  ];

  static const List<String> riderPraise = <String>[
    'on_time',
    'polite',
    'followed_instructions',
    'careful_handling',
    'good_communication',
  ];

  static const List<String> riderIssues = <String>[
    'late',
    'rude',
    'didnt_follow_instructions',
    'food_spilled',
    'asked_extra_money',
    'unprofessional',
  ];

  /// The set that fits [stars]: praise from four up, issues below.
  static List<String> food(int stars) => stars >= 4 ? foodPraise : foodIssues;
  static List<String> rider(int stars) => stars >= 4 ? riderPraise : riderIssues;

  static bool isFood(String code) =>
      foodPraise.contains(code) || foodIssues.contains(code);
  static bool isRider(String code) =>
      riderPraise.contains(code) || riderIssues.contains(code);

  /// [codes] without anything the server would refuse under that subject,
  /// each once. The server checks every code and refuses the whole review
  /// over one it does not know, in words meant for developers, not for the
  /// customer who tapped a chip.
  static List<String> onlyFood(Iterable<String> codes) =>
      codes.where(isFood).toSet().toList(growable: false);
  static List<String> onlyRider(Iterable<String> codes) =>
      codes.where(isRider).toSet().toList(growable: false);

  static String label(AppLocalizations l10n, String code) => switch (code) {
        'tasty' => l10n.tagTasty,
        'fresh_hot' => l10n.tagFreshHot,
        'good_portion' => l10n.tagGoodPortion,
        'good_packaging' => l10n.tagGoodPackaging,
        'value_for_money' => l10n.tagValueForMoney,
        'hygienic' => l10n.tagHygienic,
        'cold_food' => l10n.tagColdFood,
        'poor_taste' => l10n.tagPoorTaste,
        'small_portion' => l10n.tagSmallPortion,
        'wrong_items' => l10n.tagWrongItems,
        'missing_items' => l10n.tagMissingItems,
        'poor_packaging' => l10n.tagPoorPackaging,
        'too_oily' => l10n.tagTooOily,
        'on_time' => l10n.tagOnTime,
        'polite' => l10n.tagPolite,
        'followed_instructions' => l10n.tagFollowedInstructions,
        'careful_handling' => l10n.tagCarefulHandling,
        'good_communication' => l10n.tagGoodCommunication,
        'late' => l10n.tagLate,
        'rude' => l10n.tagRude,
        'didnt_follow_instructions' => l10n.tagIgnoredInstructions,
        'food_spilled' => l10n.tagFoodSpilled,
        'asked_extra_money' => l10n.tagAskedExtraMoney,
        'unprofessional' => l10n.tagUnprofessional,
        _ => code,
      };
}

/// The delivery half of a review: stars, quick answers, and a private note.
@immutable
class RiderReview {
  const RiderReview({
    required this.rating,
    this.tags = const <String>[],
    this.comment,
  });

  final int rating;
  final List<String> tags;

  /// For the operations team and the rider's record, never shown publicly.
  final String? comment;

  /// The same stars and note without the quick answers, for sending again
  /// after the server refused a code.
  RiderReview withoutTags() => RiderReview(rating: rating, comment: comment);

  Map<String, Object?> toJson() => <String, Object?>{
        'rating': rating,
        if (tags.isNotEmpty) 'tags': tags,
        if (comment != null && comment!.trim().isNotEmpty)
          'comment': comment!.trim(),
      };
}
