// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  currency: json['currency'] as String,
  language: json['language'] as String,
  emailVerified: json['emailVerified'] as bool,
  onboardingCompleted: json['onboardingCompleted'] as bool,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'currency': instance.currency,
  'language': instance.language,
  'emailVerified': instance.emailVerified,
  'onboardingCompleted': instance.onboardingCompleted,
};

_PostRegisterUser _$PostRegisterUserFromJson(Map<String, dynamic> json) =>
    _PostRegisterUser(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      currency: json['currency'] as String,
      language: json['language'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PostRegisterUserToJson(_PostRegisterUser instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'currency': instance.currency,
      'language': instance.language,
      'password': instance.password,
    };

_PostLoginUser _$PostLoginUserFromJson(Map<String, dynamic> json) =>
    _PostLoginUser(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PostLoginUserToJson(_PostLoginUser instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_EditUser _$EditUserFromJson(Map<String, dynamic> json) => _EditUser(
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String?,
  currency: json['currency'] as String?,
  language: json['language'] as String?,
  onboardingCompleted: json['onboardingCompleted'] as bool?,
);

Map<String, dynamic> _$EditUserToJson(_EditUser instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'currency': instance.currency,
  'language': instance.language,
  'onboardingCompleted': instance.onboardingCompleted,
};
