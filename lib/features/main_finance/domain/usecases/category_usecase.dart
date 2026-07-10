import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/features/main_finance/domain/repositories/category_repository.dart';

class DeleteCategoryUsecase {
  final CategoryRepository repository;

  DeleteCategoryUsecase({required this.repository});

  Future<void> call(int categoryId) {
    if (categoryId <= 0) {
      throw ArgumentError('Invalid category id');
    }
    return repository.deleteCategory(categoryId);
  }
}

class AddCategoryUsecase {
  final CategoryRepository repository;

  AddCategoryUsecase({required this.repository});

  Future<void> call(CategoryRequest category) {
    if (category.title.trim().isEmpty) {
      throw ArgumentError('Invalid category name');
    }
    if (category.icon.trim().isEmpty) {
      throw ArgumentError('Invalid category icon');
    }
    return repository.createCategory(category);
  }
}

class GetCategoryUsecase {
  final CategoryRepository repository;

  GetCategoryUsecase({required this.repository});

  Future<List<GetCategoryModel>> call() {
    return repository.getCategory();
  }
}

class EditCategoryUsecase {
  final CategoryRepository repository;

  EditCategoryUsecase({required this.repository});

  Future<void> call(int categoryId, EditCateogoryModel editCategory) {
    if (categoryId <= 0) {
      throw ArgumentError('Invalid category icon');
    }
    return repository.editCategory(categoryId, editCategory);
  }
}
