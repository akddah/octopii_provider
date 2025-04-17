import 'package:json_annotation/json_annotation.dart';

part 'update_working_days_request_model.g.dart';

@JsonSerializable()
class UpdateWorkingDaysRequestModel {
  final List<ScheduleItem> schedule;

  UpdateWorkingDaysRequestModel({required this.schedule});

  factory UpdateWorkingDaysRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateWorkingDaysRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateWorkingDaysRequestModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ScheduleItem {
  final String day;
  final bool off;
  @JsonKey(includeIfNull: false)final num? from;
  @JsonKey(includeIfNull: false) final num? to;
  ScheduleItem({required this.day, required this.off, this.from, this.to});
  factory ScheduleItem.fromJson(Map<String, dynamic> json) =>
      _$ScheduleItemFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleItemToJson(this);
}
