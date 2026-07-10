import 'package:financial_ccounting/features/auth/data/providers/auth_repository_provider.dart';
import 'package:financial_ccounting/features/auth/domain/auth_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerUsecaseProvider = Provider<RegisterUsecase>(
  (ref) => RegisterUsecase(repository: ref.watch(authRepositoryProvider)),
);

final loginUsecaseProvider = Provider<LoginUsecase>(
  (ref) => LoginUsecase(repository: ref.watch(authRepositoryProvider)),
);

final refreshUsecaseProvider = Provider<RefreshUsecase>(
  (ref) => RefreshUsecase(repository: ref.watch(authRepositoryProvider)),
);

final logOutUsecaseProvider = Provider<LogOutUsecase>(
  (ref) => LogOutUsecase(repository: ref.watch(authRepositoryProvider)),
);
