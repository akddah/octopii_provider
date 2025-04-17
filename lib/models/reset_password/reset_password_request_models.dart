import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request_models.freezed.dart';

part 'reset_password_request_models.g.dart';

@Freezed(fromJson: false, toJson: true)
class ResetPasswordRequestModel with _$ResetPasswordRequestModel {
  const factory ResetPasswordRequestModel({
    required String password,
    @JsonKey(name: 'password_confirmation') required String passwordConfirmation,
    @JsonKey(name: 'country_id') required int countryId,
  }) = _ResetPasswordRequestModel;
}
