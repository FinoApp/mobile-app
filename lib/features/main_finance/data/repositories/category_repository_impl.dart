import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/errors/failure_mapper.dart';
import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/features/main_finance/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final Dio dio;

  CategoryRepositoryImpl({required this.dio});

  @override
  Future<List<GetCategoryModel>> getCategory() => guardRepositoryCall(() async {
    final response = await dio.get('/categories/');

    return (response.data as List)
        .map((category) => GetCategoryModel.fromJson(category))
        .toList();
  });

  @override
  Future<void> createCategory(CategoryRequest category) => guardRepositoryCall(
    () => dio.post('/categories/', data: category.toJson()),
  );

  @override
  Future<void> deleteCategory(int categoryId) =>
      guardRepositoryCall(() => dio.delete('/categories/$categoryId/'));

  @override
  Future<void> editCategory(int categoryId, EditCateogoryModel editCategory) =>
      guardRepositoryCall(() async {
        final data = editCategory.toJson()
          ..removeWhere((key, value) => value == null);

        await dio.post('/categories/$categoryId/', data: data);
      });
}
