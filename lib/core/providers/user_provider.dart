import 'package:financial_ccounting/core/domain/user_usecase.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/providers/user_id_provdier.dart';
import 'package:financial_ccounting/core/providers/user_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getUserByIdUsecaseProvider = Provider<GetUserByIdUsecase>((ref) {
  return GetUserByIdUsecase(repository: ref.watch(userRepositoryProvider));
});

final editUserUsecaseProvider = Provider<EditUserUsecase>((ref) {
  return EditUserUsecase(repository: ref.watch(userRepositoryProvider));
});

final userProvider = FutureProvider<User>((ref) {
  final userId = ref.watch(userIdProvider);
  if (userId == null) return Future.error('no user id');

  return ref.watch(getUserByIdUsecaseProvider).call(userId.toString());
});
