// ignore_for_file: implementation_imports

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio/src/adapters/io_adapter.dart' show DefaultHttpClientAdapter;
import 'package:flutter/foundation.dart';

class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options ??= BaseOptions(
      contentType: 'application/json; charset=utf-8',
      connectTimeout: 50000,
      sendTimeout: 50000,
      receiveTimeout: 50000,
    );

    this.options = options;

    if (kDebugMode) {
      interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            log('onRequest : ${options.uri}');

            handler.next(options);
          },
          onResponse: (response, handler) {
            log(
              'onResponse ${response.statusCode} : ${response.requestOptions.uri}',
            );

            handler.next(response);
          },
          onError: (error, handler) => handler.next(error),
        ),
      );

      interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          logPrint: (o) => log(o.toString()),
        ),
      );
    }
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static AppDio get instance => AppDio._();
}
