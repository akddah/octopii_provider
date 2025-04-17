import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_holidays_response_model.freezed.dart';
part 'list_holidays_response_model.g.dart';

@freezed
class HolidayData with _$HolidayData {
  const factory HolidayData({
    required List<HolidayResponse> response,
  }) = _HolidayData;

  factory HolidayData.fromJson(Map<String, dynamic> json) =>
      _$HolidayDataFromJson(json);
}

@freezed
class HolidayResponse with _$HolidayResponse {
  const factory HolidayResponse({
    required int id,
    @JsonKey(name: 'provider_id') required int providerId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required String from,
    required String to,
    required String title,

    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  }) = _HolidayResponse;

  factory HolidayResponse.fromJson(Map<String, dynamic> json) =>
      _$HolidayResponseFromJson(json);
}
