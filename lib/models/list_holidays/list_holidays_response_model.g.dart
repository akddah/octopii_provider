// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_holidays_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HolidayDataImpl _$$HolidayDataImplFromJson(Map<String, dynamic> json) =>
    _$HolidayDataImpl(
      response: (json['response'] as List<dynamic>)
          .map((e) => HolidayResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HolidayDataImplToJson(_$HolidayDataImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$HolidayResponseImpl _$$HolidayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HolidayResponseImpl(
      id: (json['id'] as num).toInt(),
      providerId: (json['provider_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      from: json['from'] as String,
      to: json['to'] as String,
      title: json['title'] as String,
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$$HolidayResponseImplToJson(
        _$HolidayResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider_id': instance.providerId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'from': instance.from,
      'to': instance.to,
      'title': instance.title,
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
