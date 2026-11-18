import 'package:flutter/foundation.dart';

import 'storefront_models.dart';

/// The diet chips on a restaurant's menu.
///
/// The API sends two flags per dish, `is_veg` and `contains_egg`, not one
/// type, so these overlap on purpose: an omelette is both "egg" and
/// "non-veg", which is also how the FSSAI mark treats it. Each chip asks a dish
/// one plain question and shows the dishes that answer yes.
enum MenuDiet { veg, egg, nonVeg }

extension MenuDietX on MenuDiet {
  bool matches(MenuItem item) => switch (this) {
        MenuDiet.veg => item.isVeg && !item.containsEgg,
        MenuDiet.egg => item.containsEgg,
        MenuDiet.nonVeg => !item.isVeg,
      };
}

/// How dishes are ordered within each category. The categories themselves
/// stay in the merchant's order, so the Menu button can still jump to them.
enum MenuSort { relevance, priceLowHigh, priceHighLow, rating }

/// What the customer has narrowed a menu down to.
///
/// Everything here runs on the device. The whole menu arrives in one response,
/// so filtering it again is instant, needs no network, and cannot disagree with
/// the dishes already on screen.
@immutable
class MenuFilters {
  const MenuFilters({
    this.query = '',
    this.diet,
    this.bestseller = false,
    this.topRated = false,
    this.offers = false,
    this.sort = MenuSort.relevance,
  });

  /// Matched word by word against the dish name, its description and its
  /// category, so "paneer roll" finds "Paneer Tikka Roll".
  final String query;

  /// One diet at a time, the way a customer thinks about it: tapping Non-veg
  /// after Veg switches to it rather than showing both.
  final MenuDiet? diet;

  final bool bestseller;

  /// Rated [topRatedThreshold] or above. An unrated dish is left out, since
  /// it has not earned the rating yet.
  final bool topRated;

  /// Priced below the dish's usual price.
  final bool offers;

  final MenuSort sort;

  static const MenuFilters none = MenuFilters();

  static const double topRatedThreshold = 4.0;

  bool get hasQuery => query.trim().isNotEmpty;

  /// True when the menu on screen is not the whole menu in its own order.
  bool get isActive => hasQuery || sort != MenuSort.relevance || activeCount > 0;

  /// What the Filters chip counts. Search has its own field, and sort is
  /// left out because there is always a sort.
  int get activeCount =>
      (diet == null ? 0 : 1) +
      (bestseller ? 1 : 0) +
      (topRated ? 1 : 0) +
      (offers ? 1 : 0);

  MenuFilters copyWith({
    String? query,
    MenuDiet? diet,
    bool clearDiet = false,
    bool? bestseller,
    bool? topRated,
    bool? offers,
    MenuSort? sort,
  }) {
    return MenuFilters(
      query: query ?? this.query,
      // Null cannot mean both "unchanged" and "cleared", so clearing is a flag.
      diet: clearDiet ? null : (diet ?? this.diet),
      bestseller: bestseller ?? this.bestseller,
      topRated: topRated ?? this.topRated,
      offers: offers ?? this.offers,
      sort: sort ?? this.sort,
    );
  }

  /// Selects [value], or clears it when it is already selected.
  MenuFilters toggleDiet(MenuDiet value) =>
      diet == value ? copyWith(clearDiet: true) : copyWith(diet: value);

  /// Everything except the search text. The sheet edits these, and the
  /// search field keeps what was typed in it.
  MenuFilters clearFilters() => MenuFilters(query: query);

  /// True when [item] passes every filter except the search.
  bool allows(MenuItem item) {
    final MenuDiet? diet = this.diet;
    if (diet != null && !diet.matches(item)) return false;
    if (bestseller && !item.isBestseller) return false;
    if (topRated && !isTopRated(item)) return false;
    if (offers && !isOnOffer(item)) return false;
    return true;
  }

  /// The menu with these filters applied: empty categories dropped, the rest
  /// in the merchant's order, and dishes inside each one sorted.
  List<MenuMatch> apply(RestaurantMenu menu) {
    final List<String> words = _words(query);
    final List<MenuMatch> matches = <MenuMatch>[];

    for (int i = 0; i < menu.sections.length; i++) {
      final MenuSection section = menu.sections[i];
      final String heading = section.name.toLowerCase();
      final List<MenuItem> items = <MenuItem>[
        for (final MenuItem item in section.items)
          if (allows(item) && _matchesWords(item, heading, words)) item,
      ];
      if (items.isEmpty) continue;
      matches.add(
        MenuMatch(index: i, section: section, items: _sorted(items)),
      );
    }
    return matches;
  }

  List<MenuItem> _sorted(List<MenuItem> items) {
    if (sort == MenuSort.relevance || items.length < 2) return items;

    // `List.sort` is not stable, and a tie should keep the merchant's order,
    // so each dish carries its position as the last tie-break.
    final List<(int, MenuItem)> indexed = <(int, MenuItem)>[
      for (int i = 0; i < items.length; i++) (i, items[i]),
    ];
    indexed.sort(((int, MenuItem) a, (int, MenuItem) b) {
      final int byOrder = _compare(a.$2, b.$2);
      return byOrder != 0 ? byOrder : a.$1.compareTo(b.$1);
    });
    return <MenuItem>[for (final (int _, MenuItem item) in indexed) item];
  }

  int _compare(MenuItem a, MenuItem b) {
    // Sold-out dishes go last under any explicit sort. "Cheapest first" that
    // opens on something you cannot order has not helped anyone.
    if (a.isAvailable != b.isAvailable) return a.isAvailable ? -1 : 1;
    return switch (sort) {
      MenuSort.relevance => 0,
      MenuSort.priceLowHigh => a.price.compareTo(b.price),
      MenuSort.priceHighLow => b.price.compareTo(a.price),
      MenuSort.rating => _byRating(a, b),
    };
  }

  static int _byRating(MenuItem a, MenuItem b) {
    final double? ra = a.rating;
    final double? rb = b.rating;
    if (ra == null || rb == null) {
      // Rated dishes come before unrated ones; two unrated dishes tie.
      if (ra == rb) return 0;
      return ra == null ? 1 : -1;
    }
    final int byRating = rb.compareTo(ra);
    return byRating != 0 ? byRating : b.ratingCount.compareTo(a.ratingCount);
  }

  static List<String> _words(String query) => query
      .toLowerCase()
      .split(RegExp(r'\s+'))
      .where((String w) => w.isNotEmpty)
      .toList(growable: false);

  /// Every word must appear somewhere: in the name, the description, or the
  /// category heading. Searching "biryani" finds a dish filed under Biryani
  /// even if its own name is just "Hyderabadi Dum".
  static bool _matchesWords(MenuItem item, String heading, List<String> words) {
    if (words.isEmpty) return true;
    final String haystack =
        '${item.name} ${item.description ?? ''} $heading'.toLowerCase();
    return words.every(haystack.contains);
  }

  static bool isTopRated(MenuItem item) =>
      item.rating != null && item.rating! >= topRatedThreshold;

  static bool isOnOffer(MenuItem item) =>
      item.isDiscounted || item.percentOff != null;

  @override
  bool operator ==(Object other) =>
      other is MenuFilters &&
      other.query == query &&
      other.diet == diet &&
      other.bestseller == bestseller &&
      other.topRated == topRated &&
      other.offers == offers &&
      other.sort == sort;

  @override
  int get hashCode =>
      Object.hash(query, diet, bestseller, topRated, offers, sort);
}

/// One category after filtering.
@immutable
class MenuMatch {
  const MenuMatch({
    required this.index,
    required this.section,
    required this.items,
  });

  /// Where the category sits in the full menu. It does not change when a
  /// filter hides the categories before it, so a key built from it stays
  /// attached to the same heading.
  final int index;

  final MenuSection section;

  /// The dishes left after filtering, in display order.
  final List<MenuItem> items;
}

/// Which filters are worth offering for one menu.
///
/// A chip is shown only when it keeps some dishes and hides others. One that
/// keeps everything does nothing (a Veg chip on a pure-veg menu), and one that
/// keeps nothing is a dead end (Bestseller before the server marks any).
@immutable
class MenuFacets {
  const MenuFacets({
    required this.total,
    required this.veg,
    required this.egg,
    required this.nonVeg,
    required this.bestseller,
    required this.rated,
    required this.topRated,
    required this.offers,
  });

  factory MenuFacets.of(RestaurantMenu menu) {
    int total = 0;
    int veg = 0;
    int egg = 0;
    int nonVeg = 0;
    int bestseller = 0;
    int rated = 0;
    int topRated = 0;
    int offers = 0;
    for (final MenuItem item in menu.allItems) {
      total++;
      if (MenuDiet.veg.matches(item)) veg++;
      if (MenuDiet.egg.matches(item)) egg++;
      if (MenuDiet.nonVeg.matches(item)) nonVeg++;
      if (item.isBestseller) bestseller++;
      if (item.hasRating) rated++;
      if (MenuFilters.isTopRated(item)) topRated++;
      if (MenuFilters.isOnOffer(item)) offers++;
    }
    return MenuFacets(
      total: total,
      veg: veg,
      egg: egg,
      nonVeg: nonVeg,
      bestseller: bestseller,
      rated: rated,
      topRated: topRated,
      offers: offers,
    );
  }

  final int total;
  final int veg;
  final int egg;
  final int nonVeg;
  final int bestseller;

  /// Dishes with any rating at all, which is what makes sorting by rating
  /// worth offering.
  final int rated;

  final int topRated;
  final int offers;

  bool _useful(int count) => count > 0 && count < total;

  bool hasDiet(MenuDiet diet) => _useful(switch (diet) {
        MenuDiet.veg => veg,
        MenuDiet.egg => egg,
        MenuDiet.nonVeg => nonVeg,
      });

  bool get hasBestseller => _useful(bestseller);

  bool get hasTopRated => _useful(topRated);

  bool get hasOffers => _useful(offers);
}
