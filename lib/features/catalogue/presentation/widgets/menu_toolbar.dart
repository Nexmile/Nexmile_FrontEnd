import 'package:flutter/material.dart';

import '../../../../core/motion/app_motion.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/menu_filters.dart';
import '../../data/storefront_models.dart';
import 'catalogue_widgets.dart';
import 'filter_bar.dart';

/// The search field and filter chips above a restaurant's menu.
///
/// Pinned under the app bar, so a customer halfway down a long menu can still
/// switch to Veg, or look for one dish, without scrolling back up.
class MenuToolbar extends StatelessWidget {
  const MenuToolbar({
    super.key,
    required this.search,
    required this.searchFocus,
    required this.filters,
    required this.facets,
    required this.onChanged,
    required this.onOpenSheet,
    this.raised = false,
  });

  final TextEditingController search;
  final FocusNode searchFocus;
  final MenuFilters filters;
  final MenuFacets facets;
  final ValueChanged<MenuFilters> onChanged;
  final VoidCallback onOpenSheet;

  /// True once the menu scrolls under the bar, which gives it a shadow.
  final bool raised;

  /// Text scaling is held inside this range here, so the bar's height can be
  /// worked out before it is built. A pinned header needs that height in
  /// advance.
  static const double _maxTextScale = 1.3;

  static double _scaleOf(BuildContext context) =>
      (MediaQuery.textScalerOf(context).scale(14) / 14)
          .clamp(1.0, _maxTextScale);

  /// The pinned height: the search field and the chip row, each scaled.
  static double heightFor(BuildContext context) => 16 + 88 * _scaleOf(context);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final double scale = _scaleOf(context);

    return MediaQuery.withClampedTextScaling(
      minScaleFactor: 1,
      maxScaleFactor: _maxTextScale,
      child: AnimatedContainer(
        duration: AppMotion.quick,
        curve: AppMotion.enter,
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withValues(alpha: raised ? 0.08 : 0),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: _SearchField(
                controller: search,
                focusNode: searchFocus,
                height: 44 * scale,
                hint: l10n.menuSearchHint,
                clearTooltip: l10n.clearLabel,
                onChanged: (String value) =>
                    onChanged(filters.copyWith(query: value)),
                onClear: () {
                  search.clear();
                  onChanged(filters.copyWith(query: ''));
                },
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              height: 44 * scale,
              child: ListView(
                key: const Key('menu-chips'),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: _spaced(_chips(l10n)),
              ),
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }

  List<Widget> _chips(AppLocalizations l10n) {
    final int count = filters.activeCount;
    return <Widget>[
      FilterPill(
        label: count > 0 ? '${l10n.filtersShort} · $count' : l10n.filtersShort,
        icon: Icons.tune_rounded,
        trailingIcon: Icons.keyboard_arrow_down_rounded,
        selected: count > 0 || filters.sort != MenuSort.relevance,
        onTap: onOpenSheet,
      ),
      // A chip that is on stays visible even if it no longer narrows
      // anything, or the customer could not see what is hiding their dishes.
      for (final MenuDiet diet in MenuDiet.values)
        if (facets.hasDiet(diet) || filters.diet == diet)
          FilterPill(
            label: dietLabel(l10n, diet),
            leading: DietMark(diet: diet, size: 14),
            selected: filters.diet == diet,
            onTap: () => onChanged(filters.toggleDiet(diet)),
          ),
      if (facets.hasBestseller || filters.bestseller)
        FilterPill(
          label: l10n.menuBestsellerChip,
          icon: Icons.local_fire_department_rounded,
          selected: filters.bestseller,
          onTap: () =>
              onChanged(filters.copyWith(bestseller: !filters.bestseller)),
        ),
      if (facets.hasTopRated || filters.topRated)
        FilterPill(
          label: topRatedLabel(l10n),
          icon: Icons.star_rounded,
          selected: filters.topRated,
          onTap: () => onChanged(filters.copyWith(topRated: !filters.topRated)),
        ),
      if (facets.hasOffers || filters.offers)
        FilterPill(
          label: l10n.offersSection,
          icon: Icons.local_offer_rounded,
          selected: filters.offers,
          onTap: () => onChanged(filters.copyWith(offers: !filters.offers)),
        ),
    ];
  }

  static List<Widget> _spaced(List<Widget> chips) => <Widget>[
        for (int i = 0; i < chips.length; i++) ...<Widget>[
          if (i > 0) const SizedBox(width: 8),
          chips[i],
        ],
      ];
}

String dietLabel(AppLocalizations l10n, MenuDiet diet) => switch (diet) {
      MenuDiet.veg => l10n.dietVeg,
      MenuDiet.egg => l10n.dietEgg,
      MenuDiet.nonVeg => l10n.dietNonVeg,
    };

String topRatedLabel(AppLocalizations l10n) =>
    l10n.ratedAbove(MenuFilters.topRatedThreshold.toStringAsFixed(1));

/// The mark a menu uses for each diet: the green and red squares the dishes
/// themselves carry, and the egg the dish rows show beside the red one.
class DietMark extends StatelessWidget {
  const DietMark({super.key, required this.diet, this.size = 16});

  final MenuDiet diet;
  final double size;

  @override
  Widget build(BuildContext context) {
    return switch (diet) {
      MenuDiet.veg => VegMark(isVeg: true, size: size),
      MenuDiet.nonVeg => VegMark(isVeg: false, size: size),
      MenuDiet.egg => ExcludeSemantics(
          child: Text('🥚', style: TextStyle(fontSize: size - 1, height: 1)),
        ),
    };
  }
}

/// Keeps [MenuToolbar] pinned at its full height.
class MenuToolbarDelegate extends SliverPersistentHeaderDelegate {
  MenuToolbarDelegate({required this.height, required this.builder});

  final double height;

  /// Given whether the menu has scrolled under the bar.
  final Widget Function(BuildContext context, bool raised) builder;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: height,
      child: builder(context, shrinkOffset > 0 || overlapsContent),
    );
  }

  // Rebuilt with the screen: the chips show the filters, which live there.
  @override
  bool shouldRebuild(MenuToolbarDelegate oldDelegate) => true;
}

class _SearchField extends StatelessWidget {
  const _SearchField({
    required this.controller,
    required this.focusNode,
    required this.height,
    required this.hint,
    required this.clearTooltip,
    required this.onChanged,
    required this.onClear,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final double height;
  final String hint;
  final String clearTooltip;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    // The theme's fields are tall, outlined form inputs. This one is a slim
    // pill, so it draws its own box and the field inside it is bare.
    return ListenableBuilder(
      listenable: focusNode,
      builder: (BuildContext context, Widget? child) {
        final bool focused = focusNode.hasFocus;
        return AnimatedContainer(
          duration: AppMotion.instant,
          height: height,
          padding: const EdgeInsetsDirectional.only(start: 14, end: 4),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: focused ? AppColors.greenDeep : theme.colorScheme.outline,
              width: focused ? 1.5 : 1,
            ),
          ),
          child: child,
        );
      },
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search_rounded,
            size: 21,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              onChanged: onChanged,
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => focusNode.unfocus(),
              style: theme.textTheme.bodyLarge,
              cursorColor: AppColors.greenDeep,
              decoration: InputDecoration(
                hintText: hint,
                hintMaxLines: 1,
                hintStyle: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                isCollapsed: true,
                filled: false,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (BuildContext context, TextEditingValue value, _) {
              if (value.text.isEmpty) return const SizedBox(width: 10);
              return IconButton(
                onPressed: onClear,
                tooltip: clearTooltip,
                visualDensity: VisualDensity.compact,
                icon: const Icon(Icons.close_rounded, size: 20),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// The full filter and sort sheet for one menu.
///
/// Edits a copy and hands it back only on confirm. The confirm button says how
/// many dishes the choice leaves, and is disabled at none, so the sheet cannot
/// lead to an empty menu. Returns null when the customer backs out.
Future<MenuFilters?> showMenuFilterSheet({
  required BuildContext context,
  required RestaurantMenu menu,
  required MenuFacets facets,
  required MenuFilters current,
}) {
  return showModalBottomSheet<MenuFilters>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) =>
        _MenuFilterSheet(menu: menu, facets: facets, current: current),
  );
}

class _MenuFilterSheet extends StatefulWidget {
  const _MenuFilterSheet({
    required this.menu,
    required this.facets,
    required this.current,
  });

  final RestaurantMenu menu;
  final MenuFacets facets;
  final MenuFilters current;

  @override
  State<_MenuFilterSheet> createState() => _MenuFilterSheetState();
}

class _MenuFilterSheetState extends State<_MenuFilterSheet> {
  late MenuFilters _draft = widget.current;

  void _set(MenuFilters next) => setState(() => _draft = next);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final MenuFacets facets = widget.facets;
    final MenuFilters draft = _draft;

    final int shown = draft
        .apply(widget.menu)
        .fold<int>(0, (int n, MenuMatch m) => n + m.items.length);

    final List<MenuDiet> diets = <MenuDiet>[
      for (final MenuDiet diet in MenuDiet.values)
        if (facets.hasDiet(diet) || draft.diet == diet) diet,
    ];
    final bool showOnly = facets.hasBestseller ||
        facets.hasTopRated ||
        facets.hasOffers ||
        draft.bestseller ||
        draft.topRated ||
        draft.offers;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 18, 12, 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  l10n.filtersAndSorting,
                  style: theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
              ),
              // Shares the row rather than pushing past it: at large text in
              // Malayalam, "Clear all" alone is wider than a small phone.
              Flexible(
                child: TextButton(
                  onPressed: draft.activeCount > 0 ||
                          draft.sort != MenuSort.relevance
                      ? () => _set(draft.clearFilters())
                      : null,
                  child: Text(
                    l10n.clearAll,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        Flexible(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
            children: <Widget>[
              _Heading(l10n.sortByTitle),
              RadioGroup<MenuSort>(
                groupValue: draft.sort,
                onChanged: (MenuSort? value) {
                  if (value != null) _set(draft.copyWith(sort: value));
                },
                child: Column(
                  children: <Widget>[
                    for (final MenuSort sort in MenuSort.values)
                      // Sorting by rating means nothing until a dish has one.
                      if (sort != MenuSort.rating || facets.rated > 0)
                        RadioListTile<MenuSort>(
                          value: sort,
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          activeColor: AppColors.greenDeep,
                          title: Text(
                            _sortLabel(l10n, sort),
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                  ],
                ),
              ),
              if (diets.isNotEmpty) ...<Widget>[
                const SizedBox(height: 14),
                _Heading(l10n.menuFoodType),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final MenuDiet diet in diets)
                      FilterPill(
                        label: dietLabel(l10n, diet),
                        leading: DietMark(diet: diet, size: 14),
                        selected: draft.diet == diet,
                        onTap: () => _set(draft.toggleDiet(diet)),
                      ),
                  ],
                ),
              ],
              if (showOnly) ...<Widget>[
                const SizedBox(height: 22),
                _Heading(l10n.menuShowOnly),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    if (facets.hasBestseller || draft.bestseller)
                      FilterPill(
                        label: l10n.menuBestsellerChip,
                        icon: Icons.local_fire_department_rounded,
                        selected: draft.bestseller,
                        onTap: () => _set(
                          draft.copyWith(bestseller: !draft.bestseller),
                        ),
                      ),
                    if (facets.hasTopRated || draft.topRated)
                      FilterPill(
                        label: topRatedLabel(l10n),
                        icon: Icons.star_rounded,
                        selected: draft.topRated,
                        onTap: () =>
                            _set(draft.copyWith(topRated: !draft.topRated)),
                      ),
                    if (facets.hasOffers || draft.offers)
                      FilterPill(
                        label: l10n.offersSection,
                        icon: Icons.local_offer_rounded,
                        selected: draft.offers,
                        onTap: () =>
                            _set(draft.copyWith(offers: !draft.offers)),
                      ),
                  ],
                ),
              ],
            ],
          ),
        ),
        const Divider(height: 1),
        SafeArea(
          top: false,
          minimum: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: Row(
            children: <Widget>[
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: Text(l10n.closeLabel),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: FilledButton(
                  onPressed:
                      shown > 0 ? () => Navigator.of(context).pop(draft) : null,
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.greenDeep,
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(l10n.menuShowDishes(shown), maxLines: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static String _sortLabel(AppLocalizations l10n, MenuSort sort) =>
      switch (sort) {
        MenuSort.relevance => l10n.sortRelevance,
        MenuSort.priceLowHigh => l10n.sortCostLowHigh,
        MenuSort.priceHighLow => l10n.sortCostHighLow,
        MenuSort.rating => l10n.sortRating,
      };
}

class _Heading extends StatelessWidget {
  const _Heading(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(fontWeight: FontWeight.w800),
    );
  }
}
