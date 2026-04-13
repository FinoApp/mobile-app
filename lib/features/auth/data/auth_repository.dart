import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/providers/user_id_provdier.dart';
import 'package:financial_ccounting/core/services/token_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthRepository {
  final Dio dio;
  final TokenStorage storage;

  AuthRepository({required this.dio, required this.storage});

  Future<void> register(PostRegisterUser user) async {
    try {
      await dio.post('/users/register', data: user.toJson());
    } catch (e) {
      rethrow;
    }
  }

  Future<void> login(PostLoginUser user, WidgetRef ref) async {
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

    ref.read(userIdProvider.notifier).state = userId;
  }

  Future<String> refresh() async {
    final refreshToken = await storage.getRefreshToken();
    final response = await dio.post(
      '/auth/refresh',
      data: {"refreshToken": refreshToken},
    );

    final newAccess = response.data['accessToken'];
    final newRefresh = response.data['refreshToken'];
    await storage.safeTokens(newAccess, newRefresh);
    return newAccess;
  }

  Future<void> logout() async {
    await storage.clear();
  }
}
