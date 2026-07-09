import 'package:financial_ccounting/core/providers/dio_provider.dart';
import 'package:financial_ccounting/core/providers/token_storage_provider.dart';
import 'package:financial_ccounting/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepositoryImpl(
    dio: ref.read(dioProvider),
    storage: ref.read(tokenStorageProvider),
  ),
);
