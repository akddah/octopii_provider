part of 'upcoming_appointments_booking_cubit.dart';

extension UpcomingAppointmentsBookingStateX
    on UpcomingAppointmentsBookingState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class UpcomingAppointmentsBookingState {
  final GenericStateStatus status;
  final String? errorMsg;
  final List<BookingDetails>? upComingdBookingResponseModel;
  final int? bookingHistory;
  final bool? isLoadingMore;
  final bool? hasMoreData;
  const UpcomingAppointmentsBookingState({
    required this.status,
    this.upComingdBookingResponseModel,
    this.errorMsg,
    this.bookingHistory,
    this.isLoadingMore=false,
    this.hasMoreData=false,
  });

  UpcomingAppointmentsBookingState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    List<BookingDetails>? upComingdBookingResponseModel,
    int? bookingHistory,
    bool? isLoadingMore,
    bool? hasMoreData,
  }) {
    return UpcomingAppointmentsBookingState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      upComingdBookingResponseModel:
          upComingdBookingResponseModel ?? this.upComingdBookingResponseModel,
      bookingHistory: bookingHistory ?? this.bookingHistory,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMoreData: hasMoreData ?? this.hasMoreData,
    );
  }

  @override
  String toString() {
    return 'BookingListState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'upComingdBookingResponseModel: $upComingdBookingResponseModel, '
        'bookingHistory: $bookingHistory, '
        'isLoadingMore: $isLoadingMore, '
        ')';
  }
}
