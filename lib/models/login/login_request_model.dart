import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@Freezed(toJson: true, fromJson: false)
class GenericLoginRequestModel with _$GenericLoginRequestModel {
  const factory GenericLoginRequestModel({
    required String phone,
    @JsonKey(name: 'country_id', defaultValue: 1) int? countryId,
    required String? password,
    required String? otp,
    @JsonKey(name: 'device_type', includeIfNull: false) String? deviceType,
    @JsonKey(name: 'fcm_token', includeIfNull: false) String? fcmToken,
  }) = _GenericLoginRequestModel;
}
