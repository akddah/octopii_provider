// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      response: UserProfileResponse.fromJson(
          json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$UserProfileResponseImpl _$$UserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseImpl(
      name: json['name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      bookings: json['bookings'] as num,
      commissions: json['commissions'] as num,
      salaries: json['salaries'] as num,
      earnings: json['earnings'] as num,
      outstanding: json['outstanding'] as num,
      country: json['country'] == null
          ? null
          : UserProfileCountry.fromJson(
              json['country'] as Map<String, dynamic>),
      image: json['image'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserProfileResponseImplToJson(
        _$UserProfileResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'bookings': instance.bookings,
      'commissions': instance.commissions,
      'salaries': instance.salaries,
      'earnings': instance.earnings,
      'outstanding': instance.outstanding,
      'country': instance.country,
      'image': instance.image,
      'dob': instance.dob?.toIso8601String(),
      'email': instance.email,
    };

_$UserProfileCountryImpl _$$UserProfileCountryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileCountryImpl(
      id: (json['id'] as num).toInt(),
      titleAr: json['title_ar'] as String?,
      titleEn: json['title_en'] as String?,
      code: json['code'] as String?,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$$UserProfileCountryImplToJson(
        _$UserProfileCountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title_ar': instance.titleAr,
      'title_en': instance.titleEn,
      'code': instance.code,
      'flag': instance.flag,
    };
