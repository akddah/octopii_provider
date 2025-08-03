import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/notifications/notification_response.dart';

part 'get_notifications_state.dart';

class GetNotificationsCubit extends Cubit<GetNotificationsState> {
  GetNotificationsCubit() : super(const GetNotificationsState(status: GenericStateStatus.initial)) {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent && !isLoadingMore) {
        fetchNotifications();
      }
    });
  }

  int currentPage = 1;
  bool isLoadingMore = false;
  bool hasMoreData = true;
  final ScrollController scrollController = ScrollController();

  Future<void> getNotificationList() async {
    try {
      emit(state.copyWith(status: GenericStateStatus.loading));

      final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
        url: dotenv.get(AppConstantStrings.notification),
        takeOtherBaseurl: true,
        params: <String, dynamic>{'page': currentPage},
      );

      switch (result.responseState) {
        case ResponseState.success:
          final NotificationsModel notificationData = NotificationsModel.fromJson(result.data?['response']);

          AppLogger().info('Notification Data Is ${result.data}');
          AppLogger().info(
            'The Old Length Is ${notificationData.notifications.length}',
          );

          emit(
            state.copyWith(
              status: GenericStateStatus.loaded,
              notifications: notificationData.notifications,
            ),
          );

        case ResponseState.error:
          emit(
            state.copyWith(
              status: GenericStateStatus.error,
              errorMsg: result.msg,
            ),
          );
      }
    } catch (e, s) {
      log('-=-= ${e.toString()}');
      log('-=-= ${s.toString()}');
    }
  }

  Future<void> fetchNotifications() async {
    if (isLoadingMore || !hasMoreData) {
      return;
    }
    isLoadingMore = true;

    emit(state.copyWith(isLoadingMore: true));

    currentPage++;

    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.notification),
      takeOtherBaseurl: true,
      params: <String, dynamic>{'page': currentPage},
    );

    switch (result.responseState) {
      case ResponseState.success:
        final NotificationsModel notificationData = NotificationsModel.fromJson(result.data?['response']);

        if (notificationData.currentPage == notificationData.lastPage) {
          hasMoreData = false;
        }
        final List<NotificationModel> updatedList = [
          ...state.notifications ?? [],
          ...notificationData.notifications,
        ];
        AppLogger().info('Current Page: $currentPage, Has More Data: $hasMoreData');
        AppLogger().info('Total Data Length After Update: ${updatedList.length}');

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            notifications: updatedList,
            isLoadingMore: false,
            hasMoreData: hasMoreData,
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
            isLoadingMore: false, // Reset loading state on error
          ),
        );
    }

    isLoadingMore = false;
  }

  void resetCubit() {
    currentPage = 1;
    hasMoreData = true;
    emit(
      state.copyWith(
        status: GenericStateStatus.initial,
      ),
    );
  }
}
