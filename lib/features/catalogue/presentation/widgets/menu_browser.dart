import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/menu_filters.dart';

/// The floating "Menu" button that lists a restaurant's sections.
///
/// A long menu is mostly scrolling past things you do not want. This lets the
/// customer jump straight to Desserts.
class MenuBrowseButton extends StatelessWidget {
  const MenuBrowseButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color background = theme.colorScheme.inverseSurface;
    final Color foreground = theme.colorScheme.onInverseSurface;

    return Semantics(
      button: true,
      child: Material(
        color: background,
        shape: const StadiumBorder(),
        elevation: 6,
        shadowColor: Colors.black.withValues(alpha: 0.3),
        child: InkWell(
          onTap: onPressed,
          customBorder: const StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.restaurant_menu_rounded, size: 18, color: foreground),
                const SizedBox(width: 8),
                Text(
                  l10n.menuBrowse,
                  maxLines: 1,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: foreground,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Lists the sections left after filtering, with their dish counts, and
/// returns the menu index of the one tapped. [current] is highlighted, so the
/// customer can see where they are as well as where they can go.
Future<int?> showMenuSections({
  required BuildContext context,
  required List<MenuMatch> sections,
  required String Function(MenuMatch section) titleOf,
  int? current,
}) {
  return showModalBottomSheet<int>(
    context: context,
    useSafeArea: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) => _MenuSections(
      sections: sections,
      titleOf: titleOf,
      current: current,
    ),
  );
}

class _MenuSections extends StatelessWidget {
  const _MenuSections({
    required this.sections,
    required this.titleOf,
    required this.current,
  });

  final List<MenuMatch> sections;
  final String Function(MenuMatch section) titleOf;
  final int? current;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 10),
          Center(
            child: Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: theme.colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 20, 6),
            child: Text(
              l10n.menuBrowse,
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 12),
              itemCount: sections.length,
              itemBuilder: (BuildContext context, int i) {
                final MenuMatch section = sections[i];
                final bool isCurrent = section.index == current;
                return InkWell(
                  onTap: () => Navigator.of(context).pop(section.index),
                  child: Container(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 14, 20, 14),
                    decoration: BoxDecoration(
                      color: isCurrent
                          ? AppColors.greenDeep.withValues(alpha: 0.08)
                          : null,
                      border: BorderDirectional(
                        start: BorderSide(
                          color: isCurrent
                              ? AppColors.greenDeep
                              : Colors.transparent,
                          width: 3,
                        ),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            titleOf(section),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight:
                                  isCurrent ? FontWeight.w800 : FontWeight.w500,
                              color: isCurrent ? AppColors.greenDeep : null,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          '${section.items.length}',
                          textDirection: TextDirection.ltr,
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
