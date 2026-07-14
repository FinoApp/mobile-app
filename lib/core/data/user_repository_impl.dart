import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/domain/user_repository.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';

class UserRepositoryImpl implements UserRepository {
  final Dio dio;

  UserRepositoryImpl({required this.dio});
  @override
  Future<User> getUserById(String userId) async {
    final response = await dio.get('/users/$userId');
    return User.fromJson(response.data);
  }

  @override
  Future<void> editUser(String userId, EditUser user) async {
    try {
      final data = user.toJson()..removeWhere((key, value) => value == null);
      await dio.patch('/users/$userId', data: data);
    } on DioException catch (_) {
      rethrow;
    }
  }
}
