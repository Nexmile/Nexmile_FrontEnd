import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:nexmile/core/network/image_disk_cache.dart';

void main() {
  late Directory root;
  late int requests;

  setUp(() async {
    root = await Directory.systemTemp.createTemp('nexmile_images_test');
    requests = 0;
  });

  tearDown(() async {
    if (await root.exists()) await root.delete(recursive: true);
  });

  final Uint8List photo = Uint8List.fromList(List<int>.generate(64, (int i) => i));

  ImageDiskCache cacheWith(
    http.Client client, {
    Duration maxAge = const Duration(days: 7),
  }) =>
      ImageDiskCache(
        directory: () async => root,
        client: client,
        maxAge: maxAge,
      );

  MockClient serving(Uint8List bytes, {int status = 200}) =>
      MockClient((http.Request request) async {
        requests++;
        return http.Response.bytes(bytes, status);
      });

  /// The write after a download is not awaited; wait for it to land.
  Future<void> settled() async {
    for (int i = 0; i < 100; i++) {
      final List<FileSystemEntity> files = await root.list().toList();
      if (files.isNotEmpty &&
          files.every((FileSystemEntity f) => !f.path.endsWith('.part'))) {
        return;
      }
      await Future<void>.delayed(const Duration(milliseconds: 10));
    }
  }

  group('keys', () {
    test('a photo signed twice is one photo', () {
      expect(
        ImageDiskCache.keyFor(
          'https://cdn.example.com/dishes/7.jpg?expires=100&signature=abc',
        ),
        ImageDiskCache.keyFor(
          'https://cdn.example.com/dishes/7.jpg?signature=zzz&expires=999',
        ),
      );
      expect(
        ImageDiskCache.keyFor(
          'https://bucket.s3.amazonaws.com/a.jpg?X-Amz-Signature=1&X-Amz-Date=2',
        ),
        'https://bucket.s3.amazonaws.com/a.jpg',
      );
    });

    test('a query that names the photo or its size is kept', () {
      expect(
        ImageDiskCache.keyFor('https://img.example.com/photo?id=1&w=400'),
        isNot(ImageDiskCache.keyFor('https://img.example.com/photo?id=2&w=400')),
      );
      expect(
        ImageDiskCache.keyFor('https://img.example.com/photo?w=400&id=1'),
        ImageDiskCache.keyFor('https://img.example.com/photo?id=1&w=400'),
      );
    });

    test('the image provider treats re-signed links as the same image', () {
      expect(
        const CachedNetworkImage('https://cdn.example.com/a.jpg?signature=1'),
        const CachedNetworkImage('https://cdn.example.com/a.jpg?signature=2'),
      );
      expect(
        const CachedNetworkImage('https://cdn.example.com/a.jpg'),
        isNot(const CachedNetworkImage('https://cdn.example.com/b.jpg')),
      );
    });
  });

  group('loading', () {
    const String url = 'https://cdn.example.com/dishes/7.jpg?signature=abc';

    test('the second launch reads the photo from the phone', () async {
      expect(await cacheWith(serving(photo)).load(url), photo);
      await settled();
      expect(requests, 1);

      // A fresh cache, as after a restart, with no network at all.
      final ImageDiskCache offline = cacheWith(
        MockClient((http.Request _) async => throw const SocketException('off')),
      );
      expect(
        await offline.load(
          'https://cdn.example.com/dishes/7.jpg?signature=new',
        ),
        photo,
      );
    });

    test('two cards asking at once share one download', () async {
      final ImageDiskCache cache = cacheWith(serving(photo));
      final List<Uint8List> both =
          await Future.wait(<Future<Uint8List>>[cache.load(url), cache.load(url)]);
      expect(both, <Uint8List>[photo, photo]);
      expect(requests, 1);
    });

    test('a failed download keeps nothing and is tried again', () async {
      final ImageDiskCache cache = cacheWith(serving(Uint8List(0), status: 403));
      await expectLater(
        cache.load(url),
        throwsA(isA<NetworkImageLoadException>()),
      );
      await expectLater(
        cache.load(url),
        throwsA(isA<NetworkImageLoadException>()),
      );
      expect(requests, 2);
      expect(await root.list().toList(), isEmpty);
    });

    test('an old photo is downloaded again', () async {
      await cacheWith(serving(photo)).load(url);
      await settled();
      final ImageDiskCache strict = cacheWith(serving(photo), maxAge: Duration.zero);
      await strict.load(url);
      expect(requests, 2);
    });

    test('an evicted photo is gone from the phone', () async {
      final ImageDiskCache cache = cacheWith(serving(photo));
      await cache.load(url);
      await settled();
      await cache.evict(url);
      expect(await root.list().toList(), isEmpty);
    });

    test('with no folder it still loads, from the network each time', () async {
      final ImageDiskCache cache = ImageDiskCache(
        directory: () async => null,
        client: serving(photo),
      );
      expect(await cache.load(url), photo);
      expect(await cache.load(url), photo);
      expect(requests, 2);
    });
  });
}
