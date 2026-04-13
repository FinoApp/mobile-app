// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateExpenseModel _$CreateExpenseModelFromJson(Map<String, dynamic> json) =>
    _CreateExpenseModel(
      amount: (json['amount'] as num).toDouble(),
      title: json['title'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      date: json['date'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$CreateExpenseModelToJson(_CreateExpenseModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'title': instance.title,
      'categoryId': instance.categoryId,
      'date': instance.date,
      'note': instance.note,
    };

_GetExpenseModel _$GetExpenseModelFromJson(Map<String, dynamic> json) =>
    _GetExpenseModel(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      title: json['title'] as String,
      category: GetCategoryModel.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      date: json['date'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$GetExpenseModelToJson(_GetExpenseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'title': instance.title,
      'category': instance.category,
      'date': instance.date,
      'createdAt': instance.createdAt?.toIso8601String(),
      'note': instance.note,
    };

_UpdateExpenseModel _$UpdateExpenseModelFromJson(Map<String, dynamic> json) =>
    _UpdateExpenseModel(
      id: (json['id'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toDouble(),
      title: json['title'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$UpdateExpenseModelToJson(_UpdateExpenseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'title': instance.title,
      'categoryId': instance.categoryId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'note': instance.note,
    };

_ExpensePaginationModel _$ExpensePaginationModelFromJson(
  Map<String, dynamic> json,
) => _ExpensePaginationModel(
  result: (json['result'] as List<dynamic>)
      .map((e) => GetExpenseModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  offset: (json['offset'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  hasNext: json['hasNext'] as bool,
);

Map<String, dynamic> _$ExpensePaginationModelToJson(
  _ExpensePaginationModel instance,
) => <String, dynamic>{
  'result': instance.result,
  'total': instance.total,
  'offset': instance.offset,
  'limit': instance.limit,
  'hasNext': instance.hasNext,
};
