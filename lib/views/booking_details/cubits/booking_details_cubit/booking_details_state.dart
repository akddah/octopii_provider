part of 'booking_details_cubit.dart';

extension BookingDetailsStateX on BookingDetailsState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class BookingDetailsState {
  final GenericStateStatus status;
  final String? errorMsg;
  final BookingDetailsData? bookingDetailsResponseModel;

  const BookingDetailsState( // ignore: require_trailing_commas
      {
    required this.status,
    this.bookingDetailsResponseModel,
    this.errorMsg,
  });

  BookingDetailsState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    BookingDetailsData? bookingDetailsResponseModel,
  }) {
    return BookingDetailsState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      bookingDetailsResponseModel:
          bookingDetailsResponseModel ?? this.bookingDetailsResponseModel,
    );
  }

  @override
  String toString() {
    return 'BookingListState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'bookingDetailsResponseModel: $bookingDetailsResponseModel, '
        ')';
  }
}
