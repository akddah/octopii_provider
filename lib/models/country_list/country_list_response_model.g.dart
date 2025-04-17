// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryListResponseModelImpl _$$CountryListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryListResponseModelImpl(
      response: Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryListResponseModelImplToJson(
        _$CountryListResponseModelImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$ResponseImpl _$$ResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseImpl(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => CountryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseImplToJson(_$ResponseImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
    };

_$CountryDataImpl _$$CountryDataImplFromJson(Map<String, dynamic> json) =>
    _$CountryDataImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      code: json['code'] as String,
      currency: json['currency'] as String,
      flag: json['flag'] as String,
      isoCode: json['isocode'] as String,
      status: (json['status'] as num).toInt(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CountryDataImplToJson(_$CountryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'currency': instance.currency,
      'flag': instance.flag,
      'isocode': instance.isoCode,
      'status': instance.status,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };
