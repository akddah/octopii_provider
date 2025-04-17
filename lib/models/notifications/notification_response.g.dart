// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      response: json['response'] == null
          ? null
          : ResponseData.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$ResponseDataImpl _$$ResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDataImpl(
      currentPage: (json['current_page'] as num).toInt(),
      notifications: (json['data'] as List<dynamic>)
          .map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResponseDataImplToJson(_$ResponseDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.notifications,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'from': instance.from,
      'to': instance.to,
    };

_$NotificationItemImpl _$$NotificationItemImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationItemImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
      isRead: json['is_read'] as bool,
      type: json['type'] as String?,
      data: json['data'] as String?,
      readAt: json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$NotificationItemImplToJson(
        _$NotificationItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'body': instance.body,
      'is_read': instance.isRead,
      'type': instance.type,
      'data': instance.data,
      'read_at': instance.readAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
