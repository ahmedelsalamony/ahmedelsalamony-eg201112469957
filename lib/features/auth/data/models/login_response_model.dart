import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';
part 'login_response_model.freezed.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String token,
    required User user,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    // ignore: non_constant_identifier_names
    required String school_id,
    required String name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
