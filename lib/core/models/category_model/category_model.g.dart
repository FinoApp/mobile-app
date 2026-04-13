// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetExpenseModel _$GetExpenseModelFromJson(Map<String, dynamic> json) =>
    _GetExpenseModel(
      title: json['title'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
      id: (json['id'] as num).toInt(),
      total: (json['total'] as num?)?.toDouble(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetExpenseModelToJson(_GetExpenseModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'color': instance.color,
      'icon': instance.icon,
      'id': instance.id,
      'total': instance.total,
      'count': instance.count,
    };

_CategoryRequest _$CategoryRequestFromJson(Map<String, dynamic> json) =>
    _CategoryRequest(
      title: json['title'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$CategoryRequestToJson(_CategoryRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'color': instance.color,
      'icon': instance.icon,
    };

_EditCateogoryModel _$EditCateogoryModelFromJson(Map<String, dynamic> json) =>
    _EditCateogoryModel(
      title: json['title'] as String?,
      color: json['color'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$EditCateogoryModelToJson(_EditCateogoryModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'color': instance.color,
      'icon': instance.icon,
    };
