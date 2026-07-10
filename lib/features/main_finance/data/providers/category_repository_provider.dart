import 'package:financial_ccounting/core/providers/dio_provider.dart';
import 'package:financial_ccounting/features/main_finance/data/repositories/category_repository_impl.dart';
import 'package:financial_ccounting/features/main_finance/domain/repositories/category_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryRepositoryProvider = Provider<CategoryRepository>(
  (ref) => CategoryRepositoryImpl(dio: ref.read(dioProvider)),
);
