import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/providers/token_storage_provider.dart';
import 'package:financial_ccounting/core/services/auth_interceptor.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://3.80.90.99/api/v1',
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
      sendTimeout: Duration(seconds: 30),
    ),
  );
  dio.interceptors.add(
    AuthInterceptor(
      dio: dio,
      storage: ref.read(tokenStorageProvider),
      ref: ref,
    ),
  );

  return dio;
});
