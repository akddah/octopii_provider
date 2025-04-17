part of 'get_notifications_cubit.dart';

extension GetNotificationsStateX on GetNotificationsState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class GetNotificationsState {
  final GenericStateStatus status;
  final String? errorMsg;
  final List<NotificationItem>? notifications;
  final bool? isLoadingMore;
  final bool? hasMoreData;

  const GetNotificationsState({
    required this.status,
    this.errorMsg,
    this.notifications,
    this.isLoadingMore=false,
    this.hasMoreData=false,

  });

  GetNotificationsState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    List<NotificationItem>? notifications,
    bool? isLoadingMore,
    bool? hasMoreData,

  }) {
    return GetNotificationsState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      notifications: notifications ?? this.notifications,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMoreData: hasMoreData ?? this.hasMoreData,

    );
  }

  @override
  String toString() {
    return 'LogoutState('
        'status: $status, '
        'errorMsg: $errorMsg, '
        'notifications: $notifications, '
        'isLoadingMore: $isLoadingMore, '
        'hasMoreData: $hasMoreData, '

        ')';
  }
}
