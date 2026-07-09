import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:financial_ccounting/features/main_finance/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final Dio dio;

  CategoryRepositoryImpl({required this.dio});

  @override
  Future<List<GetCategoryModel>> getCategory() async {
    try {
      final response = await dio.get('/categories/');

      return (response.data as List)
          .map((category) => GetCategoryModel.fromJson(category))
          .toList();
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> createCategory(CategoryRequest category) async {
    try {
      await dio.post('/categories/', data: category.toJson());
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteCategory(int categoryId) async {
    try {
      await dio.delete('/categories/$categoryId/');
    } on DioException catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> editCategory(
    int categoryId,
    EditCateogoryModel editCategory,
  ) async {
    try {
      final data = editCategory.toJson()
        ..removeWhere((key, value) => value == null);

      await dio.post('/categories/$categoryId/', data: data);
    } on DioException catch (_) {
      rethrow;
    }
  }
}
