import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';


@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    ResponseData? response,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'data') required List<NotificationItem> notifications,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,

    int? from,
    int? to,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}

@freezed
class NotificationItem with _$NotificationItem {
  const factory NotificationItem({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String title,
    required String body,
    @JsonKey(name: 'is_read') required bool isRead,

    String? type,
    String? data,
    @JsonKey(name: 'read_at') DateTime? readAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _NotificationItem;

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
}
