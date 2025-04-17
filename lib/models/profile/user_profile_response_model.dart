import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response_model.freezed.dart';

part 'user_profile_response_model.g.dart';

@freezed
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    required UserProfileResponse response,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}

@freezed
class UserProfileResponse with _$UserProfileResponse {
  const factory UserProfileResponse({
    required String name,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String phone,
    required num bookings,
    required num commissions,
    required num salaries,
    required num earnings,
    required num outstanding,
    UserProfileCountry? country,
    String? image,
    DateTime? dob,
    String? email,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}

@freezed
class UserProfileCountry with _$UserProfileCountry {
  const factory UserProfileCountry({
    required int id,
    @JsonKey(name: 'title_ar') String? titleAr,
    @JsonKey(name: 'title_en') String? titleEn,
    String? code,
    String? flag,
  }) = _UserProfileCountry;

  const UserProfileCountry._();

  String? url(String localeName) =>
      localeName == 'ar' ? titleAr ?? titleEn : titleEn ?? titleAr;

  factory UserProfileCountry.fromJson(Map<String, dynamic> json) =>
      _$UserProfileCountryFromJson(json);
}
