part of 'booking_list_cubit.dart';

enum BookingStateStatus { initial, loading, loaded, error }

extension BookingListStateX on BookingListState {
  bool get isInitial => status == BookingStateStatus.initial;

  bool get isLoading => status == BookingStateStatus.loading;

  bool get isLoaded => status == BookingStateStatus.loaded;

  bool get isError => status == BookingStateStatus.error;
}

@immutable
final class BookingListState {
  final BookingStateStatus status;
  final String? errorMsg;
  final List<BookingDetails>? finishedBookingResponseModel;
  final List<BookingDetails>? upComingdBookingResponseModel;
  final bool? isLoadingMoreFinishedBooking;
  final bool? hasMoreDataFinishedBooking;
  final bool? isLoadingMoreUpComingdBooking;
  final bool? hasMoreDataUpComingdBooking;

  const BookingListState({
    required this.status,
    this.finishedBookingResponseModel,
    this.upComingdBookingResponseModel,
    this.errorMsg,
    this.isLoadingMoreFinishedBooking = false,
    this.hasMoreDataFinishedBooking = true,
    this.isLoadingMoreUpComingdBooking = false,
    this.hasMoreDataUpComingdBooking = true,
  });

  BookingListState copyWith({
    BookingStateStatus? status,
    String? errorMsg,
    List<BookingDetails>? finishedBookingResponseModel,
    List<BookingDetails>? upComingdBookingResponseModel,
    int? bookingHistory,
    bool? isLoadingMoreFinishedBooking,
    bool? hasMoreDataFinishedBooking,
    bool? isLoadingMoreUpComingdBooking,
    bool? hasMoreDataUpComingdBooking,
  }) {
    return BookingListState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      finishedBookingResponseModel: finishedBookingResponseModel ?? this.finishedBookingResponseModel,
      upComingdBookingResponseModel: upComingdBookingResponseModel ?? this.upComingdBookingResponseModel,
      isLoadingMoreFinishedBooking: isLoadingMoreFinishedBooking ?? this.isLoadingMoreFinishedBooking,
      hasMoreDataFinishedBooking: hasMoreDataFinishedBooking ?? this.hasMoreDataFinishedBooking,
      isLoadingMoreUpComingdBooking: isLoadingMoreUpComingdBooking ?? this.isLoadingMoreUpComingdBooking,
      hasMoreDataUpComingdBooking: hasMoreDataUpComingdBooking ?? this.hasMoreDataUpComingdBooking,
    );
  }

  @override
  String toString() {
    return 'BookingListState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'finishedBookingResponseModel: $finishedBookingResponseModel, '
        'upComingdBookingResponseModel: $upComingdBookingResponseModel, '
        'isLoadingMoreFinishedBooking: $isLoadingMoreFinishedBooking, '
        'hasMoreDataFinishedBooking: $hasMoreDataFinishedBooking, '
        'isLoadingMoreUpComingdBooking: $isLoadingMoreUpComingdBooking, '
        'hasMoreDataUpComingdBooking: $hasMoreDataUpComingdBooking, '
        ')';
  }
}
