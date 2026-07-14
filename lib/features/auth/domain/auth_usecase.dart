import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/features/auth/domain/repositories/auth_repository.dart';

class RegisterUsecase {
  final AuthRepository repository;

  RegisterUsecase({required this.repository});

  Future<void> call(PostRegisterUser user) {
    return repository.register(user);
  }
}

class LoginUsecase {
  final AuthRepository repository;

  LoginUsecase({required this.repository});

  Future<int> call(PostLoginUser user) {
    return repository.login(user);
  }
}

class RefreshUsecase {
  final AuthRepository repository;

  RefreshUsecase({required this.repository});

  Future<String> call() {
    return repository.refresh();
  }
}

class LogOutUsecase {
  final AuthRepository repository;

  LogOutUsecase({required this.repository});

  Future<void> call() {
    return repository.logout();
  }
}
