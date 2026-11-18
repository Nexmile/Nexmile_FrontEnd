import 'package:flutter_test/flutter_test.dart';
import 'package:nexmile/features/catalogue/data/menu_filters.dart';
import 'package:nexmile/features/catalogue/data/storefront_models.dart';

/// A small menu with one of everything the filters look at.
RestaurantMenu _menu() => RestaurantMenu.fromJson(<String, dynamic>{
      'menu': <Map<String, dynamic>>[
        <String, dynamic>{
          'id': 1,
          'name': 'Starters',
          'items': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 11,
              'name': 'Paneer Tikka',
              'price': '220',
              'is_veg': true,
              'rating': '4.5',
              'rating_count': 40,
              'is_bestseller': true,
            },
            <String, dynamic>{
              'id': 12,
              'name': 'Chicken 65',
              'price': '260',
              'is_veg': false,
              'rating': '3.9',
              'rating_count': 12,
            },
            <String, dynamic>{
              'id': 13,
              'name': 'Egg Bonda',
              'price': '90',
              'is_veg': false,
              'contains_egg': true,
            },
          ],
        },
        <String, dynamic>{
          'id': 2,
          'name': 'Biryani',
          'items': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 21,
              'name': 'Hyderabadi Dum',
              'price': '320',
              'compare_at_price': '380',
              'is_veg': false,
            },
            <String, dynamic>{
              'id': 22,
              'name': 'Veg Pulao',
              'description': 'Basmati rice with paneer and peas',
              'price': '180',
              'is_veg': true,
            },
          ],
        },
        <String, dynamic>{
          'id': 3,
          'name': 'Desserts',
          'items': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 31,
              'name': 'Kulfi',
              'price': '60',
              'is_veg': true,
              'is_available': false,
            },
            <String, dynamic>{
              'id': 32,
              'name': 'Gulab Jamun',
              'price': '80',
              'is_veg': true,
            },
          ],
        },
      ],
    });

List<String> _names(List<MenuMatch> matches) => <String>[
      for (final MenuMatch m in matches)
        for (final MenuItem item in m.items) item.name,
    ];

void main() {
  group('menu filters', () {
    test('no filter is the whole menu, in the merchant order', () {
      final List<MenuMatch> all = MenuFilters.none.apply(_menu());
      expect(_names(all), <String>[
        'Paneer Tikka',
        'Chicken 65',
        'Egg Bonda',
        'Hyderabadi Dum',
        'Veg Pulao',
        'Kulfi',
        'Gulab Jamun',
      ]);
      expect(MenuFilters.none.isActive, isFalse);
    });

    test('veg leaves out egg, and egg and non-veg overlap like the mark does',
        () {
      List<String> only(MenuDiet diet) =>
          _names(MenuFilters(diet: diet).apply(_menu()));

      expect(only(MenuDiet.veg),
          <String>['Paneer Tikka', 'Veg Pulao', 'Kulfi', 'Gulab Jamun']);
      expect(only(MenuDiet.egg), <String>['Egg Bonda']);
      expect(only(MenuDiet.nonVeg),
          <String>['Chicken 65', 'Egg Bonda', 'Hyderabadi Dum']);
    });

    test('one diet at a time: a second tap clears, another tap switches', () {
      const MenuFilters veg = MenuFilters(diet: MenuDiet.veg);
      expect(veg.toggleDiet(MenuDiet.veg).diet, isNull);
      expect(veg.toggleDiet(MenuDiet.nonVeg).diet, MenuDiet.nonVeg);
    });

    test('search matches every word, in the name, description or section', () {
      List<String> find(String query) =>
          _names(MenuFilters(query: query).apply(_menu()));

      // "paneer" is in one name and one description.
      expect(find('paneer'), <String>['Paneer Tikka', 'Veg Pulao']);
      // Every word has to match somewhere, in any case.
      expect(find('  PANEER   peas '), <String>['Veg Pulao']);
      // A section heading counts: the dum biryani is not called biryani.
      expect(find('biryani'), <String>['Hyderabadi Dum', 'Veg Pulao']);
      expect(find('pizza'), isEmpty);
    });

    test('sections that lose every dish are dropped but keep their index', () {
      final List<MenuMatch> sweet =
          const MenuFilters(query: 'jamun').apply(_menu());
      expect(sweet, hasLength(1));
      expect(sweet.single.section.name, 'Desserts');
      // Its place in the full menu, which the heading keys rely on.
      expect(sweet.single.index, 2);
    });

    test('bestseller, rated and offers each narrow to what they say', () {
      expect(_names(const MenuFilters(bestseller: true).apply(_menu())),
          <String>['Paneer Tikka']);
      // 3.9 is not 4.0, and an unrated dish is not top rated.
      expect(_names(const MenuFilters(topRated: true).apply(_menu())),
          <String>['Paneer Tikka']);
      expect(_names(const MenuFilters(offers: true).apply(_menu())),
          <String>['Hyderabadi Dum']);
    });

    test('price sorts within each section and puts sold-out dishes last', () {
      final List<MenuMatch> cheap =
          const MenuFilters(sort: MenuSort.priceLowHigh).apply(_menu());
      expect(cheap.map((MenuMatch m) => m.section.name),
          <String>['Starters', 'Biryani', 'Desserts']);
      expect(_names(cheap), <String>[
        'Egg Bonda',
        'Paneer Tikka',
        'Chicken 65',
        'Veg Pulao',
        'Hyderabadi Dum',
        // Kulfi is the cheapest dessert, but it has sold out.
        'Gulab Jamun',
        'Kulfi',
      ]);

      final List<MenuMatch> dear =
          const MenuFilters(sort: MenuSort.priceHighLow).apply(_menu());
      expect(_names(dear).take(3), <String>['Chicken 65', 'Paneer Tikka', 'Egg Bonda']);
    });

    test('rating sort puts rated dishes first and keeps ties in order', () {
      final List<MenuMatch> rated =
          const MenuFilters(sort: MenuSort.rating).apply(_menu());
      expect(_names(rated).take(3),
          <String>['Paneer Tikka', 'Chicken 65', 'Egg Bonda']);
      // Neither biryani is rated, so they stay as the merchant listed them.
      expect(rated[1].items.map((MenuItem i) => i.name),
          <String>['Hyderabadi Dum', 'Veg Pulao']);
    });

    test('the chip count leaves out search and sort', () {
      const MenuFilters filters = MenuFilters(
        query: 'paneer',
        diet: MenuDiet.veg,
        offers: true,
        sort: MenuSort.rating,
      );
      expect(filters.activeCount, 2);
      expect(filters.isActive, isTrue);
      // Clearing the sheet keeps what was typed in the search field.
      expect(filters.clearFilters(), const MenuFilters(query: 'paneer'));
    });
  });

  group('menu facets', () {
    test('a filter is offered only when it keeps some dishes and hides some',
        () {
      final MenuFacets facets = MenuFacets.of(_menu());
      expect(facets.total, 7);
      expect(facets.hasDiet(MenuDiet.veg), isTrue);
      expect(facets.hasDiet(MenuDiet.egg), isTrue);
      expect(facets.hasDiet(MenuDiet.nonVeg), isTrue);
      expect(facets.hasBestseller, isTrue);
      expect(facets.hasTopRated, isTrue);
      expect(facets.hasOffers, isTrue);
      expect(facets.rated, 2);
    });

    test('a pure-veg menu with no ratings offers none of them', () {
      final MenuFacets facets = MenuFacets.of(
        RestaurantMenu.fromJson(<String, dynamic>{
          'menu': <Map<String, dynamic>>[
            <String, dynamic>{
              'id': 1,
              'name': 'Meals',
              'items': <Map<String, dynamic>>[
                <String, dynamic>{'id': 1, 'name': 'Thali', 'is_veg': true},
                <String, dynamic>{'id': 2, 'name': 'Dosa', 'is_veg': true},
              ],
            },
          ],
        }),
      );
      // Veg would keep everything, and the rest would keep nothing.
      for (final MenuDiet diet in MenuDiet.values) {
        expect(facets.hasDiet(diet), isFalse, reason: '$diet');
      }
      expect(facets.hasBestseller, isFalse);
      expect(facets.hasTopRated, isFalse);
      expect(facets.hasOffers, isFalse);
    });

    test('bestseller is read from the menu, and absent means no', () {
      final List<MenuItem> items = _menu().allItems;
      expect(items.first.isBestseller, isTrue);
      expect(items.skip(1).any((MenuItem i) => i.isBestseller), isFalse);
    });
  });
}
