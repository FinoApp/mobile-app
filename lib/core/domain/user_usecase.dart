import 'package:financial_ccounting/core/domain/user_repository.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';

class GetUserByIdUsecase {
  final UserRepository repository;

  GetUserByIdUsecase({required this.repository});

  Future<User> call(String id) async {
    return repository.getUserById(id);
  }
}

class EditUserUsecase {
  final UserRepository repository;

  EditUserUsecase({required this.repository});

  Future<void> call(String id, EditUser user) async {
    return repository.editUser(id, user);
  }
}
