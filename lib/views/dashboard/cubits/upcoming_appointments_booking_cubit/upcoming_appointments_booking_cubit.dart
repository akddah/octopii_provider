import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/const/database_constants.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/helpers/shared_pref_helper.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/bookings/booking_response_model.dart';

part 'upcoming_appointments_booking_state.dart';

class UpcomingAppointmentsBookingCubit extends Cubit<UpcomingAppointmentsBookingState> {
  UpcomingAppointmentsBookingCubit()
      : super(
          const UpcomingAppointmentsBookingState(
            status: GenericStateStatus.initial,
          ),
        ) {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent && !isLoadingMore) {
        if (removeSellAllButton) {
          fetchMoreBooking();
        } else {
          return;
        }
      }
    });
  }

  int currentPage = 1;
  bool isLoadingMore = false;
  bool hasMoreData = true;
  bool removeSellAllButton = false;
  final ScrollController scrollController = ScrollController();

  Future<void> getBookingList() async {
    final String? cachedAuthToken = await SharedPrefHelper().getSecuredToken(DatabaseConstants.tokenKey);
    if (cachedAuthToken?.isNotEmpty != true) return;
    currentPage = 1;
    isLoadingMore = false;
    hasMoreData = true;
    removeSellAllButton = false;
    emit(state.copyWith(status: GenericStateStatus.loading));
    log('-=-=-=-=-=-=-=-=-=-=-  ${dotenv.get(AppConstantStrings.bookings)}');
    // Fetch data
    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.bookings),
      params: {'status': 0},
    );

    switch (result.responseState) {
      case ResponseState.success:
        final BookingResponseModel bookingResponseModel = BookingResponseModel.fromJson(result.data!);

        AppLogger().info('UpComing Data Is ${result.data}');
        AppLogger().info('The Old Length Is ${bookingResponseModel.response?.data.length}');

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            upComingdBookingResponseModel: bookingResponseModel.response?.data ?? <BookingDetails>[],
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
  }

  Future<void> fetchMoreBooking() async {
    removeSellAllButton = true;
    if (isLoadingMore || !hasMoreData) {
      return;
    }
    isLoadingMore = true;

    emit(state.copyWith(isLoadingMore: true));

    currentPage++;

    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.bookings),
      params: {'status': 0, 'page': currentPage},
    );

    switch (result.responseState) {
      case ResponseState.success:
        final BookingResponseModel bookingResponseModel = BookingResponseModel.fromJson(result.data!);

        if (bookingResponseModel.response?.currentPage == bookingResponseModel.response?.lastPage || bookingResponseModel.response!.data.isEmpty) {
          hasMoreData = false;
        }
        final List<BookingDetails> updatedList = <BookingDetails>[
          ...state.upComingdBookingResponseModel ?? <BookingDetails>[],
          ...bookingResponseModel.response?.data ?? <BookingDetails>[],
        ];
        AppLogger().info('Current Page: $currentPage, Has More Data: $hasMoreData');
        AppLogger().info('Fetched Data Length: ${bookingResponseModel.response?.data.length}');
        AppLogger().info('Total Data Length After Update: ${updatedList.length}');

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            upComingdBookingResponseModel: updatedList,
            isLoadingMore: false,
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
