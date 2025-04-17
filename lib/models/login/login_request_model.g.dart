// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$GenericLoginRequestModelImplToJson(
        _$GenericLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'country_id': instance.countryId,
      'password': instance.password,
      'otp': instance.otp,
      if (instance.deviceType case final value?) 'device_type': value,
      if (instance.fcmToken case final value?) 'fcm_token': value,
    };
