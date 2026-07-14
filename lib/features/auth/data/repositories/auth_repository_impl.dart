import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/errors/failure_mapper.dart';
import 'package:financial_ccounting/core/services/token_storage.dart';
import 'package:financial_ccounting/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Dio dio;
  final TokenStorage storage;

  AuthRepositoryImpl({required this.dio, required this.storage});

  @override
  Future<void> register(PostRegisterUser user) => guardRepositoryCall(
    () => dio.post('/users/register', data: user.toJson()),
  );

  @override
  Future<int> login(PostLoginUser user) => guardRepositoryCall(() async {
    final response = await dio.post(
      '/auth/login',
      data: user.toJson(),
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );

    final access = response.data['accessToken'];
    final refresh = response.data['refreshToken'];
    final userId = response.data['userId'];

    await storage.saveUserId(userId.toString());
    await storage.safeTokens(access, refresh);

    return userId;
  });

  @override
  Future<String> refresh() => guardRepositoryCall(() async {
    final refreshToken = await storage.getRefreshToken();
    final response = await dio.post(
      '/auth/refresh',
      data: {"refreshToken": refreshToken},
    );

    final newAccess = response.data['accessToken'];
    final newRefresh = response.data['refreshToken'];
    await storage.safeTokens(newAccess, newRefresh);
    return newAccess;
  });

  @override
  Future<void> logout() => guardRepositoryCall(storage.clear);
}
