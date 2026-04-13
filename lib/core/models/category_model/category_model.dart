import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class GetCategoryModel with _$GetCategoryModel {
  const factory GetCategoryModel({
    required String title,
    required String color,
    required String icon,
    required int id,
    double? total,
    int? count,
  }) = _GetExpenseModel;

  factory GetCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$GetCategoryModelFromJson(json);
}

@freezed
abstract class CategoryRequest with _$CategoryRequest {
  const factory CategoryRequest({
    required String title,
    required String color,
    required String icon,
  }) = _CategoryRequest;

  factory CategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryRequestFromJson(json);
}

@freezed
abstract class EditCateogoryModel with _$EditCateogoryModel {
  const factory EditCateogoryModel({
    String? title,
    String? color,
    String? icon,
  }) = _EditCateogoryModel;

  factory EditCateogoryModel.fromJson(Map<String, dynamic> json) =>
      _$EditCateogoryModelFromJson(json);
}
