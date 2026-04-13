import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/providers/token_storage_provider.dart';
import 'package:financial_ccounting/core/services/auth_interceptor.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(baseUrl: 'http://3.80.90.99/api/v1'));
  dio.interceptors.add(
    AuthInterceptor(dio: dio, storage: ref.read(tokenStorageProvider)),
  );

  return dio;
});
