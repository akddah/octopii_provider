part of 'add_holiday_cubit.dart';

extension AddHolidayStateX on AddHolidayState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
class AddHolidayState implements LoadableState {
  final GenericStateStatus status;
  final String? errorMsg;
  final ResponseData? holidayData;
  final String? errorResponse;

  const AddHolidayState({
    required this.status,
    this.holidayData,
    this.errorMsg,
    this.errorResponse,
  });

  AddHolidayState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    ResponseData? holidayData,
    String? errorResponse,
  }) {
    return AddHolidayState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      holidayData: holidayData ?? this.holidayData,
      errorResponse: errorResponse ?? this.errorResponse,
    );
  }
  @override
  String toString() {
    return 'AddHolidayState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'holidayData: $holidayData, '
        'errorResponse: $errorResponse, '
        ')';
  }

  @override
  bool get isLoading => status == GenericStateStatus.loading;

}
