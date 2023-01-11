import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/core/core.dart';

final cacheManager = getIt<CacheManager>();

@lazySingleton
class CacheManager {
  final _cacheManager = DefaultCacheManager();

  Future<Map<String, dynamic>?> getJson(String url) async {
    try {
      final key = url.replaceAll('/', '-');

      final jsonCacheFile = await _cacheManager
          .getFileFromCache(key)
          .then((value) => value?.file);

      if (jsonCacheFile == null) {
        return null;
      }

      if (await jsonCacheFile.exists()) {
        final jsonString = await jsonCacheFile.readAsString();

        final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

        return jsonData;
      }

      return null;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<bool> saveJson(String url, Map<String, dynamic> json) async {
    try {
      final key = url.replaceAll('/', '-');

      final codeUnits =
          const JsonEncoder.withIndent('  ').convert(json).codeUnits;

      final jsonCachedFile = await _cacheManager.putFile(
        url,
        Uint8List.fromList(codeUnits),
        key: key,
        fileExtension: 'json',
      );

      if (await jsonCachedFile.exists()) {
        return true;
      }

      return false;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<File?> getCacheFile(String? url, {bool? force}) async {
    try {
      if (url == null) {
        return null;
      }

      final key = url.replaceAll('/', '-');

      if (force == true) {
        await _cacheManager.removeFile(key);
      }

      var downloadedFile = await _cacheManager.getFileFromCache(key);

      downloadedFile ??= await _cacheManager.downloadFile(url, key: key);

      final file = downloadedFile.file;

      if (!await file.exists()) {
        return null;
      }

      return file;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<void> clearCache() async {
    try {
      await _cacheManager.emptyCache();
    } catch (e) {
      log(e.toString());
    }
  }
}
