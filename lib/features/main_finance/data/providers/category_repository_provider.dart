import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/core/providers/dio_provider.dart';
import 'package:financial_ccounting/features/main_finance/data/repositories/category_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryRepositoryProvider = Provider<CategoryRepositoryImpl>(
  (ref) => CategoryRepositoryImpl(dio: ref.read(dioProvider)),
);

final categoryListProvider = FutureProvider<List<GetCategoryModel>>((ref) {
  final repository = ref.watch(categoryRepositoryProvider);
  return repository.getCategory();
});
