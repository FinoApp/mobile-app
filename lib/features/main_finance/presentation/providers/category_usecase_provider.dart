import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/features/main_finance/data/providers/category_repository_provider.dart';
import 'package:financial_ccounting/features/main_finance/domain/usecases/category_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addCategoryUsecaseProvider = Provider<AddCategoryUsecase>(
  (ref) =>
      AddCategoryUsecase(repository: ref.watch(categoryRepositoryProvider)),
);
final deleteCategoryUsecaseProvider = Provider<DeleteCategoryUsecase>(
  (ref) =>
      DeleteCategoryUsecase(repository: ref.watch(categoryRepositoryProvider)),
);

final getCategoryUsecaseProvider = Provider<GetCategoryUsecase>(
  (ref) =>
      GetCategoryUsecase(repository: ref.watch(categoryRepositoryProvider)),
);

final categoryListProvider = FutureProvider<List<GetCategoryModel>>((ref) {
  return ref.watch(getCategoryUsecaseProvider).call();
});

final editCategoryUsecaseProvider = Provider<EditCategoryUsecase>(
  (ref) =>
      EditCategoryUsecase(repository: ref.watch(categoryRepositoryProvider)),
);
