import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';

class UserRepository {
  final Dio dio;

  UserRepository({required this.dio});

  Future<User> getUserById(String userId) async {
    final response = await dio.get('/users/$userId');
    return User.fromJson(response.data);
  }

  Future<void> editUser(String userId, EditUser user) async {
    try {
      final data = user.toJson()..removeWhere((key, value) => value == null);
      await dio.patch('/users/$userId', data: data);
    } on DioException catch (_) {
      rethrow;
    }
  }
}
