// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 int get id; String get firstName; String get lastName; String get email; String get currency; String get language; bool get emailVerified; bool get onboardingCompleted;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,currency,language,emailVerified,onboardingCompleted);

@override
String toString() {
  return 'User(id: $id, firstName: $firstName, lastName: $lastName, email: $email, currency: $currency, language: $language, emailVerified: $emailVerified, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName, String email, String currency, String language, bool emailVerified, bool onboardingCompleted
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? currency = null,Object? language = null,Object? emailVerified = null,Object? onboardingCompleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String email,  String currency,  String language,  bool emailVerified,  bool onboardingCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.emailVerified,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName,  String email,  String currency,  String language,  bool emailVerified,  bool onboardingCompleted)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.emailVerified,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName,  String email,  String currency,  String language,  bool emailVerified,  bool onboardingCompleted)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.emailVerified,_that.onboardingCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.firstName, required this.lastName, required this.email, required this.currency, required this.language, required this.emailVerified, required this.onboardingCompleted});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String currency;
@override final  String language;
@override final  bool emailVerified;
@override final  bool onboardingCompleted;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,currency,language,emailVerified,onboardingCompleted);

@override
String toString() {
  return 'User(id: $id, firstName: $firstName, lastName: $lastName, email: $email, currency: $currency, language: $language, emailVerified: $emailVerified, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName, String email, String currency, String language, bool emailVerified, bool onboardingCompleted
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? currency = null,Object? language = null,Object? emailVerified = null,Object? onboardingCompleted = null,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PostRegisterUser {

 String get firstName; String get lastName; String get email; String get currency; String get language; String get password;
/// Create a copy of PostRegisterUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostRegisterUserCopyWith<PostRegisterUser> get copyWith => _$PostRegisterUserCopyWithImpl<PostRegisterUser>(this as PostRegisterUser, _$identity);

  /// Serializes this PostRegisterUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostRegisterUser&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,currency,language,password);

@override
String toString() {
  return 'PostRegisterUser(firstName: $firstName, lastName: $lastName, email: $email, currency: $currency, language: $language, password: $password)';
}


}

/// @nodoc
abstract mixin class $PostRegisterUserCopyWith<$Res>  {
  factory $PostRegisterUserCopyWith(PostRegisterUser value, $Res Function(PostRegisterUser) _then) = _$PostRegisterUserCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String email, String currency, String language, String password
});




}
/// @nodoc
class _$PostRegisterUserCopyWithImpl<$Res>
    implements $PostRegisterUserCopyWith<$Res> {
  _$PostRegisterUserCopyWithImpl(this._self, this._then);

  final PostRegisterUser _self;
  final $Res Function(PostRegisterUser) _then;

/// Create a copy of PostRegisterUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? currency = null,Object? language = null,Object? password = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostRegisterUser].
extension PostRegisterUserPatterns on PostRegisterUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostRegisterUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostRegisterUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostRegisterUser value)  $default,){
final _that = this;
switch (_that) {
case _PostRegisterUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostRegisterUser value)?  $default,){
final _that = this;
switch (_that) {
case _PostRegisterUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String email,  String currency,  String language,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostRegisterUser() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String email,  String currency,  String language,  String password)  $default,) {final _that = this;
switch (_that) {
case _PostRegisterUser():
return $default(_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String email,  String currency,  String language,  String password)?  $default,) {final _that = this;
switch (_that) {
case _PostRegisterUser() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostRegisterUser implements PostRegisterUser {
  const _PostRegisterUser({required this.firstName, required this.lastName, required this.email, required this.currency, required this.language, required this.password});
  factory _PostRegisterUser.fromJson(Map<String, dynamic> json) => _$PostRegisterUserFromJson(json);

@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String currency;
@override final  String language;
@override final  String password;

/// Create a copy of PostRegisterUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostRegisterUserCopyWith<_PostRegisterUser> get copyWith => __$PostRegisterUserCopyWithImpl<_PostRegisterUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostRegisterUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostRegisterUser&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,currency,language,password);

@override
String toString() {
  return 'PostRegisterUser(firstName: $firstName, lastName: $lastName, email: $email, currency: $currency, language: $language, password: $password)';
}


}

/// @nodoc
abstract mixin class _$PostRegisterUserCopyWith<$Res> implements $PostRegisterUserCopyWith<$Res> {
  factory _$PostRegisterUserCopyWith(_PostRegisterUser value, $Res Function(_PostRegisterUser) _then) = __$PostRegisterUserCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String email, String currency, String language, String password
});




}
/// @nodoc
class __$PostRegisterUserCopyWithImpl<$Res>
    implements _$PostRegisterUserCopyWith<$Res> {
  __$PostRegisterUserCopyWithImpl(this._self, this._then);

  final _PostRegisterUser _self;
  final $Res Function(_PostRegisterUser) _then;

/// Create a copy of PostRegisterUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? currency = null,Object? language = null,Object? password = null,}) {
  return _then(_PostRegisterUser(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PostLoginUser {

 String get email; String get password;
/// Create a copy of PostLoginUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostLoginUserCopyWith<PostLoginUser> get copyWith => _$PostLoginUserCopyWithImpl<PostLoginUser>(this as PostLoginUser, _$identity);

  /// Serializes this PostLoginUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLoginUser&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'PostLoginUser(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $PostLoginUserCopyWith<$Res>  {
  factory $PostLoginUserCopyWith(PostLoginUser value, $Res Function(PostLoginUser) _then) = _$PostLoginUserCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$PostLoginUserCopyWithImpl<$Res>
    implements $PostLoginUserCopyWith<$Res> {
  _$PostLoginUserCopyWithImpl(this._self, this._then);

  final PostLoginUser _self;
  final $Res Function(PostLoginUser) _then;

/// Create a copy of PostLoginUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostLoginUser].
extension PostLoginUserPatterns on PostLoginUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostLoginUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostLoginUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostLoginUser value)  $default,){
final _that = this;
switch (_that) {
case _PostLoginUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostLoginUser value)?  $default,){
final _that = this;
switch (_that) {
case _PostLoginUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostLoginUser() when $default != null:
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password)  $default,) {final _that = this;
switch (_that) {
case _PostLoginUser():
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password)?  $default,) {final _that = this;
switch (_that) {
case _PostLoginUser() when $default != null:
return $default(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostLoginUser implements PostLoginUser {
  const _PostLoginUser({required this.email, required this.password});
  factory _PostLoginUser.fromJson(Map<String, dynamic> json) => _$PostLoginUserFromJson(json);

@override final  String email;
@override final  String password;

/// Create a copy of PostLoginUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostLoginUserCopyWith<_PostLoginUser> get copyWith => __$PostLoginUserCopyWithImpl<_PostLoginUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostLoginUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostLoginUser&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'PostLoginUser(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$PostLoginUserCopyWith<$Res> implements $PostLoginUserCopyWith<$Res> {
  factory _$PostLoginUserCopyWith(_PostLoginUser value, $Res Function(_PostLoginUser) _then) = __$PostLoginUserCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$PostLoginUserCopyWithImpl<$Res>
    implements _$PostLoginUserCopyWith<$Res> {
  __$PostLoginUserCopyWithImpl(this._self, this._then);

  final _PostLoginUser _self;
  final $Res Function(_PostLoginUser) _then;

/// Create a copy of PostLoginUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_PostLoginUser(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EditUser {

 String? get firstName; String? get lastName; String? get email; String? get currency; String? get language; bool? get onboardingCompleted;
/// Create a copy of EditUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditUserCopyWith<EditUser> get copyWith => _$EditUserCopyWithImpl<EditUser>(this as EditUser, _$identity);

  /// Serializes this EditUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditUser&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,currency,language,onboardingCompleted);

@override
String toString() {
  return 'EditUser(firstName: $firstName, lastName: $lastName, email: $email, currency: $currency, language: $language, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class $EditUserCopyWith<$Res>  {
  factory $EditUserCopyWith(EditUser value, $Res Function(EditUser) _then) = _$EditUserCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName, String? email, String? currency, String? language, bool? onboardingCompleted
});




}
/// @nodoc
class _$EditUserCopyWithImpl<$Res>
    implements $EditUserCopyWith<$Res> {
  _$EditUserCopyWithImpl(this._self, this._then);

  final EditUser _self;
  final $Res Function(EditUser) _then;

/// Create a copy of EditUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? currency = freezed,Object? language = freezed,Object? onboardingCompleted = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,onboardingCompleted: freezed == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditUser].
extension EditUserPatterns on EditUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditUser value)  $default,){
final _that = this;
switch (_that) {
case _EditUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditUser value)?  $default,){
final _that = this;
switch (_that) {
case _EditUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? email,  String? currency,  String? language,  bool? onboardingCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditUser() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? email,  String? currency,  String? language,  bool? onboardingCompleted)  $default,) {final _that = this;
switch (_that) {
case _EditUser():
return $default(_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.onboardingCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? lastName,  String? email,  String? currency,  String? language,  bool? onboardingCompleted)?  $default,) {final _that = this;
switch (_that) {
case _EditUser() when $default != null:
return $default(_that.firstName,_that.lastName,_that.email,_that.currency,_that.language,_that.onboardingCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditUser implements EditUser {
  const _EditUser({this.firstName, this.lastName, this.email, this.currency, this.language, this.onboardingCompleted});
  factory _EditUser.fromJson(Map<String, dynamic> json) => _$EditUserFromJson(json);

@override final  String? firstName;
@override final  String? lastName;
@override final  String? email;
@override final  String? currency;
@override final  String? language;
@override final  bool? onboardingCompleted;

/// Create a copy of EditUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditUserCopyWith<_EditUser> get copyWith => __$EditUserCopyWithImpl<_EditUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditUser&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,currency,language,onboardingCompleted);

@override
String toString() {
  return 'EditUser(firstName: $firstName, lastName: $lastName, email: $email, currency: $currency, language: $language, onboardingCompleted: $onboardingCompleted)';
}


}

/// @nodoc
abstract mixin class _$EditUserCopyWith<$Res> implements $EditUserCopyWith<$Res> {
  factory _$EditUserCopyWith(_EditUser value, $Res Function(_EditUser) _then) = __$EditUserCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? lastName, String? email, String? currency, String? language, bool? onboardingCompleted
});




}
/// @nodoc
class __$EditUserCopyWithImpl<$Res>
    implements _$EditUserCopyWith<$Res> {
  __$EditUserCopyWithImpl(this._self, this._then);

  final _EditUser _self;
  final $Res Function(_EditUser) _then;

/// Create a copy of EditUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? currency = freezed,Object? language = freezed,Object? onboardingCompleted = freezed,}) {
  return _then(_EditUser(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,onboardingCompleted: freezed == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
