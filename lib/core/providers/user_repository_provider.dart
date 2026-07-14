import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/core/domain/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>(
  (ref) => getIt<UserRepository>(),
);
