// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      vendorName: json['vendor_name'] as String,
      authorization:
          Authorization.fromJson(json['authorization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'vendor_name': instance.vendorName,
      'authorization': instance.authorization,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      gender: (json['gender'] as num?)?.toInt(),
      status: (json['status'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      countryId: (json['country_id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String?,
      dob: json['dob'] as String?,
      image: json['image'] as String?,
      deletedAt: json['deleted_at'] as String?,
      referral: json['referral'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'gender': instance.gender,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'country_id': instance.countryId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'dob': instance.dob,
      'image': instance.image,
      'deleted_at': instance.deletedAt,
      'referral': instance.referral,
    };

_$AuthorizationImpl _$$AuthorizationImplFromJson(Map<String, dynamic> json) =>
    _$AuthorizationImpl(
      token: json['token'] as String?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AuthorizationImplToJson(_$AuthorizationImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'type': instance.type,
    };
