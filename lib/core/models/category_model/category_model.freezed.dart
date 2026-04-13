// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
GetCategoryModel _$GetCategoryModelFromJson(
  Map<String, dynamic> json
) {
    return _GetExpenseModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$GetCategoryModel {

 String get title; String get color; String get icon; int get id; double? get total; int? get count;
/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCategoryModelCopyWith<GetCategoryModel> get copyWith => _$GetCategoryModelCopyWithImpl<GetCategoryModel>(this as GetCategoryModel, _$identity);

  /// Serializes this GetCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCategoryModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.id, id) || other.id == id)&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,icon,id,total,count);

@override
String toString() {
  return 'GetCategoryModel(title: $title, color: $color, icon: $icon, id: $id, total: $total, count: $count)';
}


}

/// @nodoc
abstract mixin class $GetCategoryModelCopyWith<$Res>  {
  factory $GetCategoryModelCopyWith(GetCategoryModel value, $Res Function(GetCategoryModel) _then) = _$GetCategoryModelCopyWithImpl;
@useResult
$Res call({
 String title, String color, String icon, int id, double? total, int? count
});




}
/// @nodoc
class _$GetCategoryModelCopyWithImpl<$Res>
    implements $GetCategoryModelCopyWith<$Res> {
  _$GetCategoryModelCopyWithImpl(this._self, this._then);

  final GetCategoryModel _self;
  final $Res Function(GetCategoryModel) _then;

/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? color = null,Object? icon = null,Object? id = null,Object? total = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCategoryModel].
extension GetCategoryModelPatterns on GetCategoryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetExpenseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetExpenseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetExpenseModel value)  $default,){
final _that = this;
switch (_that) {
case _GetExpenseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetExpenseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetExpenseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String color,  String icon,  int id,  double? total,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetExpenseModel() when $default != null:
return $default(_that.title,_that.color,_that.icon,_that.id,_that.total,_that.count);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String color,  String icon,  int id,  double? total,  int? count)  $default,) {final _that = this;
switch (_that) {
case _GetExpenseModel():
return $default(_that.title,_that.color,_that.icon,_that.id,_that.total,_that.count);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String color,  String icon,  int id,  double? total,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _GetExpenseModel() when $default != null:
return $default(_that.title,_that.color,_that.icon,_that.id,_that.total,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetExpenseModel implements GetCategoryModel {
  const _GetExpenseModel({required this.title, required this.color, required this.icon, required this.id, this.total, this.count});
  factory _GetExpenseModel.fromJson(Map<String, dynamic> json) => _$GetExpenseModelFromJson(json);

@override final  String title;
@override final  String color;
@override final  String icon;
@override final  int id;
@override final  double? total;
@override final  int? count;

/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetExpenseModelCopyWith<_GetExpenseModel> get copyWith => __$GetExpenseModelCopyWithImpl<_GetExpenseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetExpenseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetExpenseModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.id, id) || other.id == id)&&(identical(other.total, total) || other.total == total)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,icon,id,total,count);

@override
String toString() {
  return 'GetCategoryModel(title: $title, color: $color, icon: $icon, id: $id, total: $total, count: $count)';
}


}

/// @nodoc
abstract mixin class _$GetExpenseModelCopyWith<$Res> implements $GetCategoryModelCopyWith<$Res> {
  factory _$GetExpenseModelCopyWith(_GetExpenseModel value, $Res Function(_GetExpenseModel) _then) = __$GetExpenseModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String color, String icon, int id, double? total, int? count
});




}
/// @nodoc
class __$GetExpenseModelCopyWithImpl<$Res>
    implements _$GetExpenseModelCopyWith<$Res> {
  __$GetExpenseModelCopyWithImpl(this._self, this._then);

  final _GetExpenseModel _self;
  final $Res Function(_GetExpenseModel) _then;

/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? color = null,Object? icon = null,Object? id = null,Object? total = freezed,Object? count = freezed,}) {
  return _then(_GetExpenseModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CategoryRequest {

 String get title; String get color; String get icon;
/// Create a copy of CategoryRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryRequestCopyWith<CategoryRequest> get copyWith => _$CategoryRequestCopyWithImpl<CategoryRequest>(this as CategoryRequest, _$identity);

  /// Serializes this CategoryRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,icon);

@override
String toString() {
  return 'CategoryRequest(title: $title, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $CategoryRequestCopyWith<$Res>  {
  factory $CategoryRequestCopyWith(CategoryRequest value, $Res Function(CategoryRequest) _then) = _$CategoryRequestCopyWithImpl;
@useResult
$Res call({
 String title, String color, String icon
});




}
/// @nodoc
class _$CategoryRequestCopyWithImpl<$Res>
    implements $CategoryRequestCopyWith<$Res> {
  _$CategoryRequestCopyWithImpl(this._self, this._then);

  final CategoryRequest _self;
  final $Res Function(CategoryRequest) _then;

/// Create a copy of CategoryRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? color = null,Object? icon = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryRequest].
extension CategoryRequestPatterns on CategoryRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryRequest value)  $default,){
final _that = this;
switch (_that) {
case _CategoryRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String color,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryRequest() when $default != null:
return $default(_that.title,_that.color,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String color,  String icon)  $default,) {final _that = this;
switch (_that) {
case _CategoryRequest():
return $default(_that.title,_that.color,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String color,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _CategoryRequest() when $default != null:
return $default(_that.title,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryRequest implements CategoryRequest {
  const _CategoryRequest({required this.title, required this.color, required this.icon});
  factory _CategoryRequest.fromJson(Map<String, dynamic> json) => _$CategoryRequestFromJson(json);

@override final  String title;
@override final  String color;
@override final  String icon;

/// Create a copy of CategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryRequestCopyWith<_CategoryRequest> get copyWith => __$CategoryRequestCopyWithImpl<_CategoryRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,icon);

@override
String toString() {
  return 'CategoryRequest(title: $title, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$CategoryRequestCopyWith<$Res> implements $CategoryRequestCopyWith<$Res> {
  factory _$CategoryRequestCopyWith(_CategoryRequest value, $Res Function(_CategoryRequest) _then) = __$CategoryRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String color, String icon
});




}
/// @nodoc
class __$CategoryRequestCopyWithImpl<$Res>
    implements _$CategoryRequestCopyWith<$Res> {
  __$CategoryRequestCopyWithImpl(this._self, this._then);

  final _CategoryRequest _self;
  final $Res Function(_CategoryRequest) _then;

/// Create a copy of CategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? color = null,Object? icon = null,}) {
  return _then(_CategoryRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EditCateogoryModel {

 String? get title; String? get color; String? get icon;
/// Create a copy of EditCateogoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditCateogoryModelCopyWith<EditCateogoryModel> get copyWith => _$EditCateogoryModelCopyWithImpl<EditCateogoryModel>(this as EditCateogoryModel, _$identity);

  /// Serializes this EditCateogoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditCateogoryModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,icon);

@override
String toString() {
  return 'EditCateogoryModel(title: $title, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $EditCateogoryModelCopyWith<$Res>  {
  factory $EditCateogoryModelCopyWith(EditCateogoryModel value, $Res Function(EditCateogoryModel) _then) = _$EditCateogoryModelCopyWithImpl;
@useResult
$Res call({
 String? title, String? color, String? icon
});




}
/// @nodoc
class _$EditCateogoryModelCopyWithImpl<$Res>
    implements $EditCateogoryModelCopyWith<$Res> {
  _$EditCateogoryModelCopyWithImpl(this._self, this._then);

  final EditCateogoryModel _self;
  final $Res Function(EditCateogoryModel) _then;

/// Create a copy of EditCateogoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? color = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditCateogoryModel].
extension EditCateogoryModelPatterns on EditCateogoryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditCateogoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditCateogoryModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditCateogoryModel value)  $default,){
final _that = this;
switch (_that) {
case _EditCateogoryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditCateogoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _EditCateogoryModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? color,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditCateogoryModel() when $default != null:
return $default(_that.title,_that.color,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? color,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _EditCateogoryModel():
return $default(_that.title,_that.color,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? color,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _EditCateogoryModel() when $default != null:
return $default(_that.title,_that.color,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditCateogoryModel implements EditCateogoryModel {
  const _EditCateogoryModel({this.title, this.color, this.icon});
  factory _EditCateogoryModel.fromJson(Map<String, dynamic> json) => _$EditCateogoryModelFromJson(json);

@override final  String? title;
@override final  String? color;
@override final  String? icon;

/// Create a copy of EditCateogoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditCateogoryModelCopyWith<_EditCateogoryModel> get copyWith => __$EditCateogoryModelCopyWithImpl<_EditCateogoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditCateogoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditCateogoryModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,icon);

@override
String toString() {
  return 'EditCateogoryModel(title: $title, color: $color, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$EditCateogoryModelCopyWith<$Res> implements $EditCateogoryModelCopyWith<$Res> {
  factory _$EditCateogoryModelCopyWith(_EditCateogoryModel value, $Res Function(_EditCateogoryModel) _then) = __$EditCateogoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? color, String? icon
});




}
/// @nodoc
class __$EditCateogoryModelCopyWithImpl<$Res>
    implements _$EditCateogoryModelCopyWith<$Res> {
  __$EditCateogoryModelCopyWithImpl(this._self, this._then);

  final _EditCateogoryModel _self;
  final $Res Function(_EditCateogoryModel) _then;

/// Create a copy of EditCateogoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? color = freezed,Object? icon = freezed,}) {
  return _then(_EditCateogoryModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
