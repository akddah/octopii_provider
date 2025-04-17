part of 'delete_holiday_cubit.dart';

extension DeleteHolidayStateX on DeleteHolidayState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class DeleteHolidayState {
  final GenericStateStatus status;
  final String? errorMsg;
  final String? successMsg;

  const DeleteHolidayState({
    required this.status,
    this.successMsg,
    this.errorMsg,
  });

  DeleteHolidayState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    String? successMsg,
  }) {
    return DeleteHolidayState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      successMsg: successMsg ?? this.successMsg,
    );
  }

  @override
  String toString() {
    return 'DeleteHolidayState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'successMsg: $successMsg, '
        ')';
  }
}
