import 'package:flutter/material.dart';

import '../../core/network/image_disk_cache.dart';

/// The customer's own picture in a circle, or [fallback] (their initial)
/// when they have none or it cannot be loaded. `avatar_url` is always sent
/// and null when unset, so null is the ordinary case, not an error.
class UserPhoto extends StatelessWidget {
  const UserPhoto({
    super.key,
    required this.url,
    required this.size,
    required this.fallback,
  });

  final String? url;
  final double size;
  final Widget fallback;

  @override
  Widget build(BuildContext context) {
    final String? src = url;
    if (src == null) return fallback;
    return ClipOval(
      child: SizedBox.square(
        dimension: size,
        child: Image(
          key: const ValueKey<String>('user-photo'),
          image: CachedNetworkImage(src),
          fit: BoxFit.cover,
          // The initial stays until the picture is in, and comes back if it
          // never arrives.
          frameBuilder: (BuildContext context, Widget child, int? frame,
                  bool synchronous) =>
              synchronous || frame != null ? child : fallback,
          errorBuilder: (BuildContext context, Object error, StackTrace? _) =>
              fallback,
        ),
      ),
    );
  }
}
