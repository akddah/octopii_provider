// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_working_days_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateWorkingDaysRequestModel _$UpdateWorkingDaysRequestModelFromJson(
        Map<String, dynamic> json) =>
    UpdateWorkingDaysRequestModel(
      schedule: (json['schedule'] as List<dynamic>)
          .map((e) => ScheduleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateWorkingDaysRequestModelToJson(
        UpdateWorkingDaysRequestModel instance) =>
    <String, dynamic>{
      'schedule': instance.schedule,
    };

ScheduleItem _$ScheduleItemFromJson(Map<String, dynamic> json) => ScheduleItem(
      day: json['day'] as String,
      off: json['off'] as bool,
      from: json['from'] as num?,
      to: json['to'] as num?,
    );

Map<String, dynamic> _$ScheduleItemToJson(ScheduleItem instance) =>
    <String, dynamic>{
      'day': instance.day,
      'off': instance.off,
      if (instance.from case final value?) 'from': value,
      if (instance.to case final value?) 'to': value,
    };
