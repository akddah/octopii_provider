import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_list_response_model.freezed.dart';
part 'country_list_response_model.g.dart';

@freezed
class CountryListResponseModel with _$CountryListResponseModel {
  const factory CountryListResponseModel({
    required Response response,
  }) = _CountryListResponseModel;

  factory CountryListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CountryListResponseModelFromJson(json);
}

@freezed
class Response with _$Response {
  const factory Response({
    @JsonKey(name: 'current_page')required int currentPage,
    required List<CountryData> data,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class CountryData with _$CountryData {
  const factory CountryData({
    required int id,
    required String title,
    required String code,
    required String currency,
    required String flag,
    @JsonKey(name: 'isocode')required String isoCode,
    required int status,
    @JsonKey(name: 'updated_at')  DateTime? updatedAt,
    @JsonKey(name: 'created_at') DateTime ?createdAt,

  }) = _CountryData;

  factory CountryData.fromJson(Map<String, dynamic> json) =>
      _$CountryDataFromJson(json);
}
