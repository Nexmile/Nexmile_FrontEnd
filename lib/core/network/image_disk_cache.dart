import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;

/// Photos kept on the phone between launches.
///
/// Restaurant banners and dish photos are what make the storefront feel
/// instant or slow, and Flutter's own image cache lives in memory only: every
/// photo was downloaded again each time the app opened. Files go in the
/// system temp directory, which is the app's own cache folder on Android and
/// iOS. The phone may clear it when space is short, so nothing here is
/// precious; a missing file is simply downloaded again.
///
/// Not for private photos. A door photo says where someone lives and its link
/// is meant to expire, so it stays on [Image.network], memory only.
class ImageDiskCache {
  ImageDiskCache({
    required Future<Directory?> Function() directory,
    http.Client? client,
    this.maxAge = const Duration(days: 7),
    this.maxBytes = 120 * 1024 * 1024,
  })  : _directory = directory,
        _client = client ?? http.Client();

  /// The app's cache. Tests replace it with one that has no folder and a
  /// fake network.
  static ImageDiskCache instance = ImageDiskCache(
    directory: () async =>
        Directory('${Directory.systemTemp.path}/nexmile_images'),
  );

  final Future<Directory?> Function() _directory;
  final http.Client _client;

  /// A photo older than this is downloaded again, in case the restaurant
  /// replaced it at the same address.
  final Duration maxAge;

  /// Past this, the oldest photos go first.
  final int maxBytes;

  Future<Directory?>? _root;
  final Map<String, Future<Uint8List>> _inFlight = <String, Future<Uint8List>>{};

  /// The photo's bytes, from the phone when it has them and the network when
  /// it does not. Two cards asking for the same photo share one download.
  Future<Uint8List> load(String url) {
    final String key = keyFor(url);
    final Future<Uint8List>? running = _inFlight[key];
    if (running != null) return running;
    final Future<Uint8List> started = _load(url, key);
    _inFlight[key] = started;
    // A block, not an arrow: `remove` hands back the future it removed, and
    // an arrow would make `whenComplete` wait on it and re-raise its failure
    // where nobody is listening.
    started.then<void>((_) {}, onError: (Object _) {}).whenComplete(() {
      _inFlight.remove(key);
    });
    return started;
  }

  /// Drops a file that would not decode, so the next look downloads it again.
  Future<void> evict(String url) async {
    final File? file = await _fileFor(keyFor(url));
    try {
      if (file != null && await file.exists()) await file.delete();
    } catch (_) {
      // Already gone, or the folder went away. Either way it is not served.
    }
  }

  /// What a photo is filed under.
  ///
  /// Image links from the API are signed, and every read signs them again,
  /// so the same photo arrives under a new link each time. The signature is
  /// left out of the key, so one photo is one file however often it was
  /// signed. Everything else in the link stays in, because some hosts name the
  /// photo or its size in the query.
  static String keyFor(String url) {
    final Uri? uri = Uri.tryParse(url);
    if (uri == null || !uri.hasAuthority) return url;
    final List<MapEntry<String, List<String>>> kept = uri.queryParametersAll
        .entries
        .where((MapEntry<String, List<String>> entry) => !_signs(entry.key))
        .toList()
      ..sort((MapEntry<String, List<String>> a,
              MapEntry<String, List<String>> b) =>
          a.key.compareTo(b.key));
    final String base = '${uri.scheme}://${uri.authority}${uri.path}';
    if (kept.isEmpty) return base;
    final String query = <String>[
      for (final MapEntry<String, List<String>> entry in kept)
        for (final String value in entry.value)
          '${Uri.encodeQueryComponent(entry.key)}='
              '${Uri.encodeQueryComponent(value)}',
    ].join('&');
    return '$base?$query';
  }

  /// Laravel's signed routes, S3, Google Cloud Storage and CloudFront.
  static bool _signs(String name) {
    final String lower = name.toLowerCase();
    return lower == 'signature' ||
        lower == 'expires' ||
        lower == 'key-pair-id' ||
        lower == 'policy' ||
        lower.startsWith('x-amz-') ||
        lower.startsWith('x-goog-');
  }

  Future<Uint8List> _load(String url, String key) async {
    final File? file = await _fileFor(key);
    if (file != null) {
      final Uint8List? saved = await _read(file);
      if (saved != null) return saved;
    }

    final Uri uri = Uri.parse(url);
    final http.Response response = await _client.get(uri);
    if (response.statusCode != 200 || response.bodyBytes.isEmpty) {
      throw NetworkImageLoadException(
        statusCode: response.statusCode,
        uri: uri,
      );
    }
    final Uint8List bytes = response.bodyBytes;
    if (file != null) unawaited(_write(file, bytes));
    return bytes;
  }

  Future<Uint8List?> _read(File file) async {
    try {
      final FileStat stat = await file.stat();
      if (stat.type == FileSystemEntityType.notFound) return null;
      if (DateTime.now().difference(stat.modified) > maxAge) return null;
      final Uint8List bytes = await file.readAsBytes();
      return bytes.isEmpty ? null : bytes;
    } catch (_) {
      return null;
    }
  }

  /// Written under a temporary name and then renamed, so an app killed
  /// mid-write never leaves half a photo for the next launch to show.
  Future<void> _write(File file, Uint8List bytes) async {
    try {
      final File partial = File('${file.path}.part');
      await partial.writeAsBytes(bytes, flush: true);
      await partial.rename(file.path);
    } catch (_) {
      // A full disk or a cleared folder. The photo is still on screen.
    }
  }

  Future<File?> _fileFor(String key) async {
    final Directory? root = await (_root ??= _open());
    if (root == null) return null;
    return File('${root.path}/${_fileName(key)}');
  }

  Future<Directory?> _open() async {
    try {
      final Directory? root = await _directory();
      if (root == null) return null;
      await root.create(recursive: true);
      unawaited(_prune(root));
      return root;
    } catch (_) {
      return null;
    }
  }

  /// Once per launch: photos past [maxAge] go, then the oldest until the
  /// folder is under [maxBytes].
  Future<void> _prune(Directory root) async {
    try {
      final DateTime now = DateTime.now();
      final List<(File, FileStat)> kept = <(File, FileStat)>[];
      int total = 0;
      await for (final FileSystemEntity entity in root.list()) {
        if (entity is! File) continue;
        final FileStat stat = await entity.stat();
        if (entity.path.endsWith('.part') ||
            now.difference(stat.modified) > maxAge) {
          await entity.delete();
        } else {
          kept.add((entity, stat));
          total += stat.size;
        }
      }
      kept.sort(((File, FileStat) a, (File, FileStat) b) =>
          a.$2.modified.compareTo(b.$2.modified));
      for (final (File file, FileStat stat) in kept) {
        if (total <= maxBytes) break;
        await file.delete();
        total -= stat.size;
      }
    } catch (_) {
      // Tidying is a nicety; a failure here costs some disk, nothing else.
    }
  }

  /// FNV-1a over the key, plus its length: short, safe as a file name, and
  /// collision-free for any number of photos a phone will ever hold.
  static String _fileName(String key) {
    int hash = 0xcbf29ce484222325;
    for (final int byte in utf8.encode(key)) {
      hash ^= byte;
      hash *= 0x100000001b3;
    }
    return '${hash.toUnsigned(64).toRadixString(16)}-${key.length}';
  }
}

/// [NetworkImage], but kept on the phone by [ImageDiskCache].
///
/// Equal for two links to the same photo signed at different times, so
/// Flutter's memory cache treats them as one image too: the photo on a
/// restaurant card is already loaded when the restaurant page asks for it
/// under a freshly signed link.
@immutable
class CachedNetworkImage extends ImageProvider<CachedNetworkImage> {
  const CachedNetworkImage(this.url);

  final String url;

  @override
  Future<CachedNetworkImage> obtainKey(ImageConfiguration configuration) =>
      SynchronousFuture<CachedNetworkImage>(this);

  @override
  ImageStreamCompleter loadImage(
    CachedNetworkImage key,
    ImageDecoderCallback decode,
  ) {
    return MultiFrameImageStreamCompleter(
      codec: _decode(key, decode),
      scale: 1,
      debugLabel: key.url,
      informationCollector: () => <DiagnosticsNode>[
        DiagnosticsProperty<ImageProvider>('Image provider', this),
        DiagnosticsProperty<CachedNetworkImage>('Image key', key),
      ],
    );
  }

  static Future<ui.Codec> _decode(
    CachedNetworkImage key,
    ImageDecoderCallback decode,
  ) async {
    final ImageDiskCache cache = ImageDiskCache.instance;
    try {
      final Uint8List bytes = await cache.load(key.url);
      try {
        return await decode(await ui.ImmutableBuffer.fromUint8List(bytes));
      } catch (_) {
        // A saved file that will not decode is dropped, so the next look
        // downloads it fresh.
        await cache.evict(key.url);
        rethrow;
      }
    } catch (_) {
      // Out of the memory cache too, as NetworkImage does, so a failed photo
      // is tried again the next time a card shows it rather than staying
      // broken until the app restarts. After this frame: the cache may not
      // have filed the key yet.
      scheduleMicrotask(() => PaintingBinding.instance.imageCache.evict(key));
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      other is CachedNetworkImage &&
      ImageDiskCache.keyFor(other.url) == ImageDiskCache.keyFor(url);

  @override
  int get hashCode => ImageDiskCache.keyFor(url).hashCode;

  @override
  String toString() => 'CachedNetworkImage("$url")';
}
