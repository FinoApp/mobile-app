// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateExpenseModel {

 double get amount; String get title; int get categoryId; String get date; String? get note;
/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateExpenseModelCopyWith<CreateExpenseModel> get copyWith => _$CreateExpenseModelCopyWithImpl<CreateExpenseModel>(this as CreateExpenseModel, _$identity);

  /// Serializes this CreateExpenseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateExpenseModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.title, title) || other.title == title)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,title,categoryId,date,note);

@override
String toString() {
  return 'CreateExpenseModel(amount: $amount, title: $title, categoryId: $categoryId, date: $date, note: $note)';
}


}

/// @nodoc
abstract mixin class $CreateExpenseModelCopyWith<$Res>  {
  factory $CreateExpenseModelCopyWith(CreateExpenseModel value, $Res Function(CreateExpenseModel) _then) = _$CreateExpenseModelCopyWithImpl;
@useResult
$Res call({
 double amount, String title, int categoryId, String date, String? note
});




}
/// @nodoc
class _$CreateExpenseModelCopyWithImpl<$Res>
    implements $CreateExpenseModelCopyWith<$Res> {
  _$CreateExpenseModelCopyWithImpl(this._self, this._then);

  final CreateExpenseModel _self;
  final $Res Function(CreateExpenseModel) _then;

/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? title = null,Object? categoryId = null,Object? date = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateExpenseModel].
extension CreateExpenseModelPatterns on CreateExpenseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateExpenseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateExpenseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateExpenseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String title,  int categoryId,  String date,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
return $default(_that.amount,_that.title,_that.categoryId,_that.date,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String title,  int categoryId,  String date,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseModel():
return $default(_that.amount,_that.title,_that.categoryId,_that.date,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String title,  int categoryId,  String date,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
return $default(_that.amount,_that.title,_that.categoryId,_that.date,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateExpenseModel implements CreateExpenseModel {
  const _CreateExpenseModel({required this.amount, required this.title, required this.categoryId, required this.date, this.note});
  factory _CreateExpenseModel.fromJson(Map<String, dynamic> json) => _$CreateExpenseModelFromJson(json);

@override final  double amount;
@override final  String title;
@override final  int categoryId;
@override final  String date;
@override final  String? note;

/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateExpenseModelCopyWith<_CreateExpenseModel> get copyWith => __$CreateExpenseModelCopyWithImpl<_CreateExpenseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateExpenseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateExpenseModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.title, title) || other.title == title)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.date, date) || other.date == date)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,title,categoryId,date,note);

@override
String toString() {
  return 'CreateExpenseModel(amount: $amount, title: $title, categoryId: $categoryId, date: $date, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CreateExpenseModelCopyWith<$Res> implements $CreateExpenseModelCopyWith<$Res> {
  factory _$CreateExpenseModelCopyWith(_CreateExpenseModel value, $Res Function(_CreateExpenseModel) _then) = __$CreateExpenseModelCopyWithImpl;
@override @useResult
$Res call({
 double amount, String title, int categoryId, String date, String? note
});




}
/// @nodoc
class __$CreateExpenseModelCopyWithImpl<$Res>
    implements _$CreateExpenseModelCopyWith<$Res> {
  __$CreateExpenseModelCopyWithImpl(this._self, this._then);

  final _CreateExpenseModel _self;
  final $Res Function(_CreateExpenseModel) _then;

/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? title = null,Object? categoryId = null,Object? date = null,Object? note = freezed,}) {
  return _then(_CreateExpenseModel(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GetExpenseModel {

 int get id; double get amount; String get title; GetCategoryModel get category; String get date; DateTime? get createdAt; String? get note;
/// Create a copy of GetExpenseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetExpenseModelCopyWith<GetExpenseModel> get copyWith => _$GetExpenseModelCopyWithImpl<GetExpenseModel>(this as GetExpenseModel, _$identity);

  /// Serializes this GetExpenseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetExpenseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,title,category,date,createdAt,note);

@override
String toString() {
  return 'GetExpenseModel(id: $id, amount: $amount, title: $title, category: $category, date: $date, createdAt: $createdAt, note: $note)';
}


}

/// @nodoc
abstract mixin class $GetExpenseModelCopyWith<$Res>  {
  factory $GetExpenseModelCopyWith(GetExpenseModel value, $Res Function(GetExpenseModel) _then) = _$GetExpenseModelCopyWithImpl;
@useResult
$Res call({
 int id, double amount, String title, GetCategoryModel category, String date, DateTime? createdAt, String? note
});


$GetCategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class _$GetExpenseModelCopyWithImpl<$Res>
    implements $GetExpenseModelCopyWith<$Res> {
  _$GetExpenseModelCopyWithImpl(this._self, this._then);

  final GetExpenseModel _self;
  final $Res Function(GetExpenseModel) _then;

/// Create a copy of GetExpenseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? title = null,Object? category = null,Object? date = null,Object? createdAt = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as GetCategoryModel,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GetExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetCategoryModelCopyWith<$Res> get category {
  
  return $GetCategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetExpenseModel].
extension GetExpenseModelPatterns on GetExpenseModel {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  double amount,  String title,  GetCategoryModel category,  String date,  DateTime? createdAt,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetExpenseModel() when $default != null:
return $default(_that.id,_that.amount,_that.title,_that.category,_that.date,_that.createdAt,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  double amount,  String title,  GetCategoryModel category,  String date,  DateTime? createdAt,  String? note)  $default,) {final _that = this;
switch (_that) {
case _GetExpenseModel():
return $default(_that.id,_that.amount,_that.title,_that.category,_that.date,_that.createdAt,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  double amount,  String title,  GetCategoryModel category,  String date,  DateTime? createdAt,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _GetExpenseModel() when $default != null:
return $default(_that.id,_that.amount,_that.title,_that.category,_that.date,_that.createdAt,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetExpenseModel implements GetExpenseModel {
  const _GetExpenseModel({required this.id, required this.amount, required this.title, required this.category, required this.date, this.createdAt, this.note});
  factory _GetExpenseModel.fromJson(Map<String, dynamic> json) => _$GetExpenseModelFromJson(json);

@override final  int id;
@override final  double amount;
@override final  String title;
@override final  GetCategoryModel category;
@override final  String date;
@override final  DateTime? createdAt;
@override final  String? note;

/// Create a copy of GetExpenseModel
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetExpenseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,title,category,date,createdAt,note);

@override
String toString() {
  return 'GetExpenseModel(id: $id, amount: $amount, title: $title, category: $category, date: $date, createdAt: $createdAt, note: $note)';
}


}

/// @nodoc
abstract mixin class _$GetExpenseModelCopyWith<$Res> implements $GetExpenseModelCopyWith<$Res> {
  factory _$GetExpenseModelCopyWith(_GetExpenseModel value, $Res Function(_GetExpenseModel) _then) = __$GetExpenseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, double amount, String title, GetCategoryModel category, String date, DateTime? createdAt, String? note
});


@override $GetCategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class __$GetExpenseModelCopyWithImpl<$Res>
    implements _$GetExpenseModelCopyWith<$Res> {
  __$GetExpenseModelCopyWithImpl(this._self, this._then);

  final _GetExpenseModel _self;
  final $Res Function(_GetExpenseModel) _then;

/// Create a copy of GetExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? title = null,Object? category = null,Object? date = null,Object? createdAt = freezed,Object? note = freezed,}) {
  return _then(_GetExpenseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as GetCategoryModel,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GetExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetCategoryModelCopyWith<$Res> get category {
  
  return $GetCategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$UpdateExpenseModel {

 int? get id; double? get amount; String? get title; int? get categoryId; DateTime? get createdAt; String? get note;
/// Create a copy of UpdateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExpenseModelCopyWith<UpdateExpenseModel> get copyWith => _$UpdateExpenseModelCopyWithImpl<UpdateExpenseModel>(this as UpdateExpenseModel, _$identity);

  /// Serializes this UpdateExpenseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExpenseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.title, title) || other.title == title)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,title,categoryId,createdAt,note);

@override
String toString() {
  return 'UpdateExpenseModel(id: $id, amount: $amount, title: $title, categoryId: $categoryId, createdAt: $createdAt, note: $note)';
}


}

/// @nodoc
abstract mixin class $UpdateExpenseModelCopyWith<$Res>  {
  factory $UpdateExpenseModelCopyWith(UpdateExpenseModel value, $Res Function(UpdateExpenseModel) _then) = _$UpdateExpenseModelCopyWithImpl;
@useResult
$Res call({
 int? id, double? amount, String? title, int? categoryId, DateTime? createdAt, String? note
});




}
/// @nodoc
class _$UpdateExpenseModelCopyWithImpl<$Res>
    implements $UpdateExpenseModelCopyWith<$Res> {
  _$UpdateExpenseModelCopyWithImpl(this._self, this._then);

  final UpdateExpenseModel _self;
  final $Res Function(UpdateExpenseModel) _then;

/// Create a copy of UpdateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = freezed,Object? title = freezed,Object? categoryId = freezed,Object? createdAt = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateExpenseModel].
extension UpdateExpenseModelPatterns on UpdateExpenseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateExpenseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateExpenseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateExpenseModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateExpenseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateExpenseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateExpenseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  double? amount,  String? title,  int? categoryId,  DateTime? createdAt,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateExpenseModel() when $default != null:
return $default(_that.id,_that.amount,_that.title,_that.categoryId,_that.createdAt,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  double? amount,  String? title,  int? categoryId,  DateTime? createdAt,  String? note)  $default,) {final _that = this;
switch (_that) {
case _UpdateExpenseModel():
return $default(_that.id,_that.amount,_that.title,_that.categoryId,_that.createdAt,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  double? amount,  String? title,  int? categoryId,  DateTime? createdAt,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _UpdateExpenseModel() when $default != null:
return $default(_that.id,_that.amount,_that.title,_that.categoryId,_that.createdAt,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateExpenseModel implements UpdateExpenseModel {
  const _UpdateExpenseModel({this.id, this.amount, this.title, this.categoryId, this.createdAt, this.note});
  factory _UpdateExpenseModel.fromJson(Map<String, dynamic> json) => _$UpdateExpenseModelFromJson(json);

@override final  int? id;
@override final  double? amount;
@override final  String? title;
@override final  int? categoryId;
@override final  DateTime? createdAt;
@override final  String? note;

/// Create a copy of UpdateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateExpenseModelCopyWith<_UpdateExpenseModel> get copyWith => __$UpdateExpenseModelCopyWithImpl<_UpdateExpenseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateExpenseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateExpenseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.title, title) || other.title == title)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,title,categoryId,createdAt,note);

@override
String toString() {
  return 'UpdateExpenseModel(id: $id, amount: $amount, title: $title, categoryId: $categoryId, createdAt: $createdAt, note: $note)';
}


}

/// @nodoc
abstract mixin class _$UpdateExpenseModelCopyWith<$Res> implements $UpdateExpenseModelCopyWith<$Res> {
  factory _$UpdateExpenseModelCopyWith(_UpdateExpenseModel value, $Res Function(_UpdateExpenseModel) _then) = __$UpdateExpenseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, double? amount, String? title, int? categoryId, DateTime? createdAt, String? note
});




}
/// @nodoc
class __$UpdateExpenseModelCopyWithImpl<$Res>
    implements _$UpdateExpenseModelCopyWith<$Res> {
  __$UpdateExpenseModelCopyWithImpl(this._self, this._then);

  final _UpdateExpenseModel _self;
  final $Res Function(_UpdateExpenseModel) _then;

/// Create a copy of UpdateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = freezed,Object? title = freezed,Object? categoryId = freezed,Object? createdAt = freezed,Object? note = freezed,}) {
  return _then(_UpdateExpenseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ExpensePaginationModel {

 List<GetExpenseModel> get result; int get total; int get offset; int get limit; bool get hasNext;
/// Create a copy of ExpensePaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensePaginationModelCopyWith<ExpensePaginationModel> get copyWith => _$ExpensePaginationModelCopyWithImpl<ExpensePaginationModel>(this as ExpensePaginationModel, _$identity);

  /// Serializes this ExpensePaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensePaginationModel&&const DeepCollectionEquality().equals(other.result, result)&&(identical(other.total, total) || other.total == total)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(result),total,offset,limit,hasNext);

@override
String toString() {
  return 'ExpensePaginationModel(result: $result, total: $total, offset: $offset, limit: $limit, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class $ExpensePaginationModelCopyWith<$Res>  {
  factory $ExpensePaginationModelCopyWith(ExpensePaginationModel value, $Res Function(ExpensePaginationModel) _then) = _$ExpensePaginationModelCopyWithImpl;
@useResult
$Res call({
 List<GetExpenseModel> result, int total, int offset, int limit, bool hasNext
});




}
/// @nodoc
class _$ExpensePaginationModelCopyWithImpl<$Res>
    implements $ExpensePaginationModelCopyWith<$Res> {
  _$ExpensePaginationModelCopyWithImpl(this._self, this._then);

  final ExpensePaginationModel _self;
  final $Res Function(ExpensePaginationModel) _then;

/// Create a copy of ExpensePaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? total = null,Object? offset = null,Object? limit = null,Object? hasNext = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as List<GetExpenseModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpensePaginationModel].
extension ExpensePaginationModelPatterns on ExpensePaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpensePaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpensePaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpensePaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _ExpensePaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpensePaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExpensePaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GetExpenseModel> result,  int total,  int offset,  int limit,  bool hasNext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpensePaginationModel() when $default != null:
return $default(_that.result,_that.total,_that.offset,_that.limit,_that.hasNext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GetExpenseModel> result,  int total,  int offset,  int limit,  bool hasNext)  $default,) {final _that = this;
switch (_that) {
case _ExpensePaginationModel():
return $default(_that.result,_that.total,_that.offset,_that.limit,_that.hasNext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GetExpenseModel> result,  int total,  int offset,  int limit,  bool hasNext)?  $default,) {final _that = this;
switch (_that) {
case _ExpensePaginationModel() when $default != null:
return $default(_that.result,_that.total,_that.offset,_that.limit,_that.hasNext);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpensePaginationModel implements ExpensePaginationModel {
  const _ExpensePaginationModel({required final  List<GetExpenseModel> result, required this.total, required this.offset, required this.limit, required this.hasNext}): _result = result;
  factory _ExpensePaginationModel.fromJson(Map<String, dynamic> json) => _$ExpensePaginationModelFromJson(json);

 final  List<GetExpenseModel> _result;
@override List<GetExpenseModel> get result {
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_result);
}

@override final  int total;
@override final  int offset;
@override final  int limit;
@override final  bool hasNext;

/// Create a copy of ExpensePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensePaginationModelCopyWith<_ExpensePaginationModel> get copyWith => __$ExpensePaginationModelCopyWithImpl<_ExpensePaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpensePaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensePaginationModel&&const DeepCollectionEquality().equals(other._result, _result)&&(identical(other.total, total) || other.total == total)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_result),total,offset,limit,hasNext);

@override
String toString() {
  return 'ExpensePaginationModel(result: $result, total: $total, offset: $offset, limit: $limit, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class _$ExpensePaginationModelCopyWith<$Res> implements $ExpensePaginationModelCopyWith<$Res> {
  factory _$ExpensePaginationModelCopyWith(_ExpensePaginationModel value, $Res Function(_ExpensePaginationModel) _then) = __$ExpensePaginationModelCopyWithImpl;
@override @useResult
$Res call({
 List<GetExpenseModel> result, int total, int offset, int limit, bool hasNext
});




}
/// @nodoc
class __$ExpensePaginationModelCopyWithImpl<$Res>
    implements _$ExpensePaginationModelCopyWith<$Res> {
  __$ExpensePaginationModelCopyWithImpl(this._self, this._then);

  final _ExpensePaginationModel _self;
  final $Res Function(_ExpensePaginationModel) _then;

/// Create a copy of ExpensePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? total = null,Object? offset = null,Object? limit = null,Object? hasNext = null,}) {
  return _then(_ExpensePaginationModel(
result: null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<GetExpenseModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
