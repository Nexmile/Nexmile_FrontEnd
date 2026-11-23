import 'package:flutter/material.dart';

import '../../../../core/motion/app_motion.dart';
import '../../data/storefront_models.dart';
import 'catalogue_widgets.dart';

/// The photo tag shared by a dish's thumbnail and its full-screen view.
///
/// [section] is the dish's place in the menu: a dish listed under two
/// headings is two thumbnails, and each needs its own tag.
Object dishPhotoTag(int section, int dishId) => 'dish-photo:$section:$dishId';

/// Opens a dish's photo full screen, grown out of its thumbnail.
///
/// A 96-pixel square is too small to see what a dish actually looks like,
/// which is most of deciding whether to order it. Pinch to look closer; tap
/// anywhere or swipe down to go back.
Future<void> showDishPhoto(
  BuildContext context, {
  required MenuItem item,
  required Object heroTag,
}) {
  return Navigator.of(context).push<void>(
    PageRouteBuilder<void>(
      opaque: false,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: AppMotion.settled,
      reverseTransitionDuration: AppMotion.quick,
      pageBuilder: (BuildContext context, Animation<double> animation, _) =>
          _DishPhotoView(item: item, heroTag: heroTag, animation: animation),
    ),
  );
}

class _DishPhotoView extends StatelessWidget {
  const _DishPhotoView({
    required this.item,
    required this.heroTag,
    required this.animation,
  });

  final MenuItem item;
  final Object heroTag;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final NavigatorState navigator = Navigator.of(context);
    final double side = MediaQuery.sizeOf(context).width - 32;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // The dark backdrop fades with the route while the photo flies.
        FadeTransition(
          opacity: animation,
          child: GestureDetector(
            onTap: navigator.pop,
            onVerticalDragEnd: (DragEndDetails details) {
              if ((details.primaryVelocity ?? 0).abs() > 500) navigator.pop();
            },
            child: const ColoredBox(color: Color(0xF2000000)),
          ),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: FadeTransition(
                  opacity: animation,
                  child: IconButton(
                    onPressed: navigator.pop,
                    tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                    icon: const Icon(Icons.close_rounded, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: InteractiveViewer(
                    maxScale: 4,
                    child: Semantics(
                      image: true,
                      label: item.name,
                      child: Hero(
                        tag: heroTag,
                        child: FoodImage(
                          seed: '${item.id}',
                          url: item.imageUrl,
                          size: side,
                          radius: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              FadeTransition(
                opacity: animation,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 28),
                  child: Row(
                    children: <Widget>[
                      VegMark(isVeg: item.isVeg),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          item.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Rupees(
                        item.price,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
