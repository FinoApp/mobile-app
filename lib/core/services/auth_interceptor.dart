import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/providers/is_login_provider.dart';
import 'package:financial_ccounting/core/services/token_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final TokenStorage storage;
  final Ref ref;
  bool _isRefreshing = false;
  AuthInterceptor({
    required this.dio,
    required this.storage,
    required this.ref,
  });

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await storage.getAccessToken();

    if (token != null) {
      options.headers["Authorization"] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      if (err.requestOptions.path.contains('/auth/login') ||
          err.requestOptions.path.contains('/auth/refresh')) {
        return handler.next(err);
      }

      if (_isRefreshing) {
        return handler.next(err);
      }

      _isRefreshing = true;
      try {
        final refreshToken = await storage.getRefreshToken();
        final refreshResponse = await dio.post(
          '/auth/refresh',
          data: {'refresh': refreshToken},
        );
        final newAccessToken = refreshResponse.data['access'];
        await storage.safeTokens(newAccessToken, refreshToken!);

        final request = err.requestOptions;

        request.headers['Authorization'] = 'Bearer $newAccessToken';

        final response = await dio.fetch(request);
        return handler.resolve(response);
      } catch (e) {
        await storage.clear();
        ref.read(isLoginProvider.notifier).state = false;
        return handler.next(err);
      } finally {
        _isRefreshing = false;
      }
    }
    handler.next(err);
  }
}
