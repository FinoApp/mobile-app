import 'package:financial_ccounting/core/data/user_repository.dart';
import 'package:financial_ccounting/core/providers/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider(
  (ref) => UserRepository(dio: ref.read(dioProvider)),
);
