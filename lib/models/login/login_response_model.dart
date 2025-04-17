import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';

part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required User user,
    @JsonKey(name: 'vendor_name') required String vendorName,
    required Authorization authorization,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String phone,
    required int gender,
    required int status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'country_id') required int countryId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? email,
    String? dob,
    String? image,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    String? referral,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Authorization with _$Authorization {
  const factory Authorization({
    required String?token,
    required String type,
  }) = _Authorization;

  factory Authorization.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationFromJson(json);
}
