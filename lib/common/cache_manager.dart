import 'dart:convert';
import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class CacheManager {
  Directory? _cacheDirectory;

  Future<Map<String, dynamic>?> getJson(String url) async {
    try {
      final key = url.replaceAll('/', '-');

      _cacheDirectory ??= await getTemporaryDirectory();

      final jsonCachePath = '${_cacheDirectory?.path}/$key.json';

      final jsonCacheFile = File(jsonCachePath);

      if (await jsonCacheFile.exists()) {
        final jsonString = await jsonCacheFile.readAsString();

        final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

        return jsonData;
      }

      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> saveJson(String url, Map<String, dynamic> json) async {
    try {
      final key = url.replaceAll('/', '-');

      _cacheDirectory ??= await getTemporaryDirectory();

      final jsonCachePath = '${_cacheDirectory?.path}/$key.json';

      final jsonCacheFile = File(jsonCachePath);

      final jsonCachedFile = await jsonCacheFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert(json),
      );

      if (await jsonCachedFile.exists()) {
        return true;
      }

      return false;
    } catch (e) {
      rethrow;
    }
  }

  static Future<File?> getSvgFile(String? url, {bool? force}) async {
    try {
      // await DefaultCacheManager().emptyCache();

      if (url == null) {
        return null;
      }

      if (force == true) {
        await DefaultCacheManager().removeFile(url);
      }

      FileInfo? downloadedFile;

      downloadedFile = await DefaultCacheManager().getFileFromCache(url);

      downloadedFile ??=
          await DefaultCacheManager().downloadFile(url, key: url);

      final result = downloadedFile.file;

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
