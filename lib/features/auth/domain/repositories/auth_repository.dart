import 'package:financial_ccounting/core/models/user_model/user.dart';

abstract interface class AuthRepository {
  Future<void> register(PostRegisterUser user);
  Future<int> login(PostLoginUser user);
  Future<String> refresh();
  Future<void> logout();
}
