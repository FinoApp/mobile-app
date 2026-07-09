import '../../../../core/models/category_model/category_model.dart';

abstract interface class CategoryRepository {
  Future<List<GetCategoryModel>> getCategory();
  Future<void> createCategory(CategoryRequest category);
  Future<void> deleteCategory(int categoryId);
  Future<void> editCategory(int categoryId, EditCateogoryModel editCategory);
}
