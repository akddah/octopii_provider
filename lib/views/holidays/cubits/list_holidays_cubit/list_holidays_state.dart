part of 'list_holidays_cubit.dart';

extension ListHolidaysStateX on ListHolidaysState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class ListHolidaysState {
  final GenericStateStatus status;
  final String? errorMsg;
  final List<HolidayResponse> ?holidayData;

  const ListHolidaysState({
    required this.status,
    this.holidayData,
    this.errorMsg,
  });

  ListHolidaysState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    List<HolidayResponse>? holidayData,
  }) {
    return ListHolidaysState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      holidayData: holidayData ?? this.holidayData,
    );
  }

  @override
  String toString() {
    return 'ListHolidaysState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'holidayData: $holidayData, '
        ')';
  }
}
