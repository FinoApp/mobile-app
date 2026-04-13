import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/services/token_storage.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final TokenStorage storage;

  AuthInterceptor({required this.dio, required this.storage});

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
      try {
        final refreshToken = await storage.getRefreshToken();
        final request = err.requestOptions;

        request.headers['Authorization'] = 'Bearer $refreshToken';

        final response = await dio.fetch(request);
        return handler.resolve(response);
      } catch (e) {
        await storage.clear();
      }
    }
    handler.next(err);
  }
}
