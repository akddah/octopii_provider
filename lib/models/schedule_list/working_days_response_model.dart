import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_days_response_model.freezed.dart';

part 'working_days_response_model.g.dart';

@freezed
class WorkingDaysData with _$WorkingDaysData {
  const factory WorkingDaysData({
    required List<WorkingDay> response,
  }) = _WorkingDaysData;

  factory WorkingDaysData.fromJson(Map<String, dynamic> json) =>
      _$WorkingDaysDataFromJson(json);
}

@freezed
class WorkingDay with _$WorkingDay {
  
  const factory WorkingDay({
    required String day,
    required bool off,
    num? from,
    num? to,
  }) = _WorkingDay;

  factory WorkingDay.fromJson(Map<String, dynamic> json) =>
      _$WorkingDayFromJson(json);
}
