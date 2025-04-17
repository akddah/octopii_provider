part of 'update_booking_status_cubit.dart';








extension UpdateBookingStatusStateX on UpdateBookingStatusState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class UpdateBookingStatusState implements LoadableState {
  final GenericStateStatus status;
  final String? errorMsg;
  final BookingDetailsData? bookingDetailsResponseModel;
  final String? successMsg;

  const UpdateBookingStatusState({
    required this.status,
    this.bookingDetailsResponseModel,
    this.errorMsg,
    this.successMsg,
  });

  UpdateBookingStatusState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    BookingDetailsData? bookingDetailsResponseModel,
    String? successMsg,
  }) {
    return UpdateBookingStatusState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      bookingDetailsResponseModel:
          bookingDetailsResponseModel ?? this.bookingDetailsResponseModel,
      successMsg:
      successMsg ?? this.successMsg,
    );
  }

  @override
  String toString() {
    return 'UpdateBookingStatusState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'bookingDetailsResponseModel: $bookingDetailsResponseModel, '
        'successMsg: $successMsg, '
        ')';
  }

  @override
  bool get isLoading => status == GenericStateStatus.loading;
}
