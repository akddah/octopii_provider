part of 'booking_list_cubit.dart';

class BookingListState {
  final RequestState getBookingsState;
  final RequestState pagingBookingsState;
  final String msg;
  final ErrorType errorType;

  const BookingListState({
    this.getBookingsState = RequestState.initial,
    this.pagingBookingsState = RequestState.initial,
    this.msg = '',
    this.errorType = ErrorType.none,
  });

  BookingListState copyWith({
    RequestState? getBookingsState,
    RequestState? pagingBookingsState,
    String? msg,
    ErrorType? errorType,
  }) {
    return BookingListState(
      getBookingsState: getBookingsState ?? this.getBookingsState,
      pagingBookingsState: pagingBookingsState ?? this.pagingBookingsState,
      msg: msg ?? this.msg,
      errorType: errorType ?? this.errorType,
    );
  }
}
