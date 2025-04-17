import 'package:json_annotation/json_annotation.dart';

part 'add_holiday_off.g.dart';

@JsonSerializable()
class AddHolidayOff {
  final String title;
  final String from;
  final String to;

  AddHolidayOff({
    required this.title,
    required this.from,
    required this.to,
  });

  factory AddHolidayOff.fromJson(Map<String, dynamic> json) =>
      _$AddHolidayOffFromJson(json);

  Map<String, dynamic> toJson() => _$AddHolidayOffToJson(this);
}
