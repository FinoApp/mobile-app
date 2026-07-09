import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class AuthRepository {
  Future<void> register(PostRegisterUser user);
  Future<void> login(PostLoginUser user, WidgetRef ref);
  Future<String> refresh();
  Future<void> logout();
}
