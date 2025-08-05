// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordResponseDataImpl _$$ResetPasswordResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordResponseDataImpl(
      response: json['response'] == null
          ? null
          : ResetPasswordResponse.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResetPasswordResponseDataImplToJson(
        _$ResetPasswordResponseDataImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$ResetPasswordResponseImpl _$$ResetPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      gender: (json['gender'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      countryId: (json['country_id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String?,
      dob: json['dob'] as String?,
      image: json['image'] as String?,
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$$ResetPasswordResponseImplToJson(
        _$ResetPasswordResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'country_id': instance.countryId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'dob': instance.dob,
      'image': instance.image,
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
