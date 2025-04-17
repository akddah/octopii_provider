import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octopii_provier_app/models/list_holidays/list_holidays_response_model.dart';

part 'add_holiday_response_model.freezed.dart';
part 'add_holiday_response_model.g.dart';


@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    required HolidayResponse response,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
}
