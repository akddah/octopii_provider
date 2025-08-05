import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_models.freezed.dart';

part 'reset_password_models.g.dart';

@freezed
class ResetPasswordResponseData with _$ResetPasswordResponseData {
  const factory ResetPasswordResponseData({
    required ResetPasswordResponse? response,
  }) = _ResetPasswordResponseData;

  factory ResetPasswordResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseDataFromJson(json);
}

@freezed
class ResetPasswordResponse with _$ResetPasswordResponse {
  const factory ResetPasswordResponse({
    required int id,
    required String name,
    required String phone,
    required int? gender,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'country_id') required int countryId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? email,
    String? dob,
    String? image,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  }) = _ResetPasswordResponse;

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);
}
