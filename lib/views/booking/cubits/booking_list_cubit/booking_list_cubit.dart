import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/const/database_constants.dart';
import 'package:octopii_provier_app/core/helpers/shared_pref_helper.dart';

import '../../../../core/config/app_constant_strings.dart';
import '../../../../core/helpers/enums.dart';
import '../../../../core/infrastructure/networking/server_gate.dart';
import '../../../../core/utils/utils/enums.dart';
import '../../../../models/bookings/booking_response_model.dart';

part 'booking_list_state.dart';

class BookingListCubit extends Cubit<BookingListState> {
  BookingListCubit() : super(const BookingListState());
  List<BookingDetails> bookings = [];
  String? nextUrl;
  int status = 0;

  @override
  Future<void> close() {
    cancelToken?.cancel();
    scrollController.dispose();
    return super.close();
  }

  // status:
  // 0 => upcoming
  // 1 => in progress
  // 2 => finished
  CancelToken? cancelToken;
  final scrollController = ScrollController();
  getBookings(int status) async {
    final String? cachedAuthToken = await SharedPrefHelper().getSecuredToken(DatabaseConstants.tokenKey);
    if (cachedAuthToken?.isNotEmpty != true) return;
    this.status = status;
    cancelToken?.cancel();
    cancelToken = CancelToken();
    bookings = [];
    emit(state.copyWith(getBookingsState: RequestState.loading));
    final result = await ServerGate.i.getFromServer(url: dotenv.get(AppConstantStrings.bookings), params: {'status': status});
    if (result.success) {
      final data = BookingResponseModel.fromJson(result.data!);
      nextUrl = data.response?.nextPageUrl;
      bookings = data.response?.data ?? [];
      emit(state.copyWith(getBookingsState: RequestState.success));
    } else {
      emit(state.copyWith(getBookingsState: RequestState.error, msg: result.msg, errorType: result.errType));
    }
  }

  pagingBookings() async {
    emit(state.copyWith(getBookingsState: RequestState.loading));
    final result = await ServerGate.i.getFromServer(url: nextUrl!, params: {'status': status});
    if (result.success) {
      final data = BookingResponseModel.fromJson(result.data!);
      nextUrl = data.response?.nextPageUrl;
      bookings = [...bookings, ...(data.response?.data ?? [])];
      emit(state.copyWith(getBookingsState: RequestState.loading));
      emit(state.copyWith(pagingBookingsState: RequestState.success, getBookingsState: RequestState.success));
    } else {
      emit(state.copyWith(getBookingsState: RequestState.error, msg: result.msg, errorType: result.errType));
    }
  }

  scrollListener() {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if (![state.pagingBookingsState, state.getBookingsState].contains(RequestState.loading) && nextUrl != null) {
          pagingBookings();
        }
      }
    });
  }

  // // Flag to avoid multiple triggers in quick succession
  // bool _isLoading = false;
  // bool _isLoadingFinishedBookings = false;

  // int currentPageFinished = 1;
  // int currentPageUpcoming = 1;
  // final ScrollController upComingScrollController = ScrollController();
  // final ScrollController finishedScrollController = ScrollController();

  // // Helper function to check if the scroll is at the bottom
  // bool _isScrollAtBottom(ScrollController controller) {
  //   return controller.position.pixels == controller.position.maxScrollExtent;
  // }

  // Future<void> getUpcomingBookingList({bool isLoadMore = false}) async {
  //   if (isLoadMore == false) {
  //     _isLoading = false;
  //     currentPageUpcoming = 1;
  //     emit(state.copyWith(hasMoreDataUpComingdBooking: true));
  //   }
  //   if (_isLoading) return; // Prevent multiple triggers
  //   _isLoading = true;

  //   AppLogger().info('getUpcomingBookingList called. isLoadMore: $isLoadMore');

  //   if (!state.hasMoreDataUpComingdBooking!) {
  //     AppLogger().info('No more upcoming bookings to load.');
  //     _isLoading = false;
  //     return;
  //   }

  //   if (isLoadMore) {
  //     AppLogger().info('Loading more upcoming bookings...');
  //     emit(state.copyWith(isLoadingMoreUpComingdBooking: true));
  //   } else {
  //     AppLogger().info('Loading upcoming bookings...');
  //     emit(state.copyWith(status: BookingStateStatus.loading));
  //   }

  //   final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
  //     url: dotenv.get(AppConstantStrings.bookings),
  //     params: <String, dynamic>{'history': 0, 'page': currentPageUpcoming},
  //   );

  //   AppLogger().info('API Response state: ${result.responseState}');

  //   switch (result.responseState) {
  //     case ResponseState.success:
  //       AppLogger().info('API call successful. Parsing response...');
  //       final BookingResponseModel bookingResponseModel = BookingResponseModel.fromJson(result.data!);
  //       final List<BookingDetails> newBookings = bookingResponseModel.response?.data ?? <BookingDetails>[];

  //       final bool hasMore = bookingResponseModel.response?.currentPage == bookingResponseModel.response?.lastPage;

  //       AppLogger().info('New bookings fetched: ${newBookings.length}');
  //       AppLogger().info(
  //         'New bookings fetched From State: ${state.upComingdBookingResponseModel?.length}',
  //       );
  //       AppLogger().info('Has more data: $hasMore');

  //       emit(
  //         state.copyWith(
  //           status: BookingStateStatus.loaded,
  //           upComingdBookingResponseModel: <BookingDetails>[
  //             if (isLoadMore) ...state.upComingdBookingResponseModel ?? <BookingDetails>[],
  //             ...newBookings,
  //           ],
  //           isLoadingMoreUpComingdBooking: false,
  //           hasMoreDataUpComingdBooking: !hasMore,
  //         ),
  //       );

  //       if (!hasMore) {
  //         currentPageUpcoming++;
  //         AppLogger().info('Incrementing currentPageUpcoming: $currentPageUpcoming');
  //       }

  //     case ResponseState.error:
  //       AppLogger().info('Error occurred: ${result.msg}');
  //       emit(
  //         state.copyWith(
  //           status: BookingStateStatus.error,
  //           errorMsg: result.msg,
  //           isLoadingMoreUpComingdBooking: false,
  //         ),
  //       );
  //   }

  //   _isLoading = false; // Reset the flag when done
  // }

  // Future<void> getFinishedBookingList({bool isLoadMore = false}) async {
  //   if (isLoadMore == false) {
  //     _isLoadingFinishedBookings = false;
  //     currentPageFinished = 1;
  //     emit(state.copyWith(hasMoreDataFinishedBooking: true));
  //   }
  //   if (_isLoadingFinishedBookings) return; // Prevent multiple triggers
  //   _isLoadingFinishedBookings = true;

  //   AppLogger().info('getFinishedBookingList called. isLoadMore: $isLoadMore');

  //   if (!state.hasMoreDataFinishedBooking!) {
  //     _isLoadingFinishedBookings = false;

  //     return;
  //   }

  //   if (isLoadMore) {
  //     emit(state.copyWith(isLoadingMoreFinishedBooking: true));
  //   } else {
  //     emit(state.copyWith(status: BookingStateStatus.loading));
  //   }

  //   final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
  //     url: dotenv.get(AppConstantStrings.bookings),
  //     params: <String, dynamic>{'history': 1, 'page': currentPageFinished},
  //   );

  //   switch (result.responseState) {
  //     case ResponseState.success:
  //       final BookingResponseModel bookingResponseModel = BookingResponseModel.fromJson(result.data!);
  //       final List<BookingDetails> newBookings = bookingResponseModel.response?.data ?? <BookingDetails>[];

  //       final bool hasMore = newBookings.isNotEmpty;

  //       emit(
  //         state.copyWith(
  //           status: BookingStateStatus.loaded,
  //           finishedBookingResponseModel: <BookingDetails>[
  //             if (isLoadMore) ...state.finishedBookingResponseModel ?? <BookingDetails>[],
  //             ...newBookings,
  //           ],
  //           isLoadingMoreFinishedBooking: false,
  //           hasMoreDataFinishedBooking: hasMore,
  //         ),
  //       );

  //       if (hasMore) {
  //         currentPageFinished++;
  //       }

  //     case ResponseState.error:
  //       emit(
  //         state.copyWith(
  //           status: BookingStateStatus.error,
  //           errorMsg: result.msg,
  //           isLoadingMoreFinishedBooking: false,
  //         ),
  //       );
  //   }
  //   _isLoadingFinishedBookings = false; // Reset the flag when done
  // }

  // void resetCubit() {
  //   currentPageFinished = 1;
  //   currentPageUpcoming = 1;
  //   _isLoading = false;
  //   _isLoadingFinishedBookings = false;
  //   emit(
  //     state.copyWith(
  //       status: BookingStateStatus.initial,
  //     ),
  //   );
  // }
}
//1204192758
