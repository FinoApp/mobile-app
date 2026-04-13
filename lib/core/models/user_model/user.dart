import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required String currency,
    required String language,
    required bool emailVerified,
    required bool onboardingCompleted,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class PostRegisterUser with _$PostRegisterUser {
  const factory PostRegisterUser({
    required String firstName,
    required String lastName,
    required String email,
    required String currency,
    required String language,
    required String password,
  }) = _PostRegisterUser;

  factory PostRegisterUser.fromJson(Map<String, dynamic> json) =>
      _$PostRegisterUserFromJson(json);
}

@freezed
abstract class PostLoginUser with _$PostLoginUser {
  const factory PostLoginUser({
    required String email,
    required String password,
  }) = _PostLoginUser;

  factory PostLoginUser.fromJson(Map<String, dynamic> json) =>
      _$PostLoginUserFromJson(json);
}

@freezed
abstract class EditUser with _$EditUser {
  const factory EditUser({
    String? firstName,
    String? lastName,
    String? email,
    String? currency,
    String? language,
    bool? onboardingCompleted,
  }) = _EditUser;

  factory EditUser.fromJson(Map<String, dynamic> json) =>
      _$EditUserFromJson(json);
}
