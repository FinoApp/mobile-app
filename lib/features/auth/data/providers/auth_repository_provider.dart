import 'package:financial_ccounting/core/providers/dio_provider.dart';
import 'package:financial_ccounting/core/providers/token_storage_provider.dart';
import 'package:financial_ccounting/features/auth/data/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    dio: ref.read(dioProvider),
    storage: ref.read(tokenStorageProvider),
  ),
);
