import 'package:financial_ccounting/core/models/user_model/user.dart';

abstract interface class UserRepository {
  Future<User> getUserById(String userId);
  Future<void> editUser(String userId, EditUser user);
}
