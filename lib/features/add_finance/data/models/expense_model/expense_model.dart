import 'package:financial_ccounting/core/models/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';
part 'expense_model.g.dart';

@freezed
abstract class CreateExpenseModel with _$CreateExpenseModel {
  const factory CreateExpenseModel({
    required double amount,
    required String title,
    required int categoryId,
    required String date,
    String? note,
  }) = _CreateExpenseModel;

  factory CreateExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateExpenseModelFromJson(json);
}

@freezed
abstract class GetExpenseModel with _$GetExpenseModel {
  const factory GetExpenseModel({
    required int id,
    required double amount,
    required String title,
    required GetCategoryModel category,
    required String date,
    DateTime? createdAt,
    String? note,
  }) = _GetExpenseModel;

  factory GetExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$GetExpenseModelFromJson(json);
}

@freezed
abstract class UpdateExpenseModel with _$UpdateExpenseModel {
  const factory UpdateExpenseModel({
    int? id,
    double? amount,
    String? title,
    int? categoryId,
    DateTime? createdAt,
    String? note,
  }) = _UpdateExpenseModel;

  factory UpdateExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateExpenseModelFromJson(json);
}

@freezed
abstract class ExpensePaginationModel with _$ExpensePaginationModel {
  const factory ExpensePaginationModel({
    required List<GetExpenseModel> result,
    required int total,
    required int offset,
    required int limit,
    required bool hasNext,
  }) = _ExpensePaginationModel;

  factory ExpensePaginationModel.fromJson(Map<String, dynamic> json) =>
      _$ExpensePaginationModelFromJson(json);
}
