// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_days_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkingDaysDataImpl _$$WorkingDaysDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkingDaysDataImpl(
      response: (json['response'] as List<dynamic>)
          .map((e) => WorkingDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkingDaysDataImplToJson(
        _$WorkingDaysDataImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$WorkingDayImpl _$$WorkingDayImplFromJson(Map<String, dynamic> json) =>
    _$WorkingDayImpl(
      day: json['day'] as String,
      off: json['off'] as bool,
      from: json['from'] as num?,
      to: json['to'] as num?,
    );

Map<String, dynamic> _$$WorkingDayImplToJson(_$WorkingDayImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'off': instance.off,
      'from': instance.from,
      'to': instance.to,
    };
