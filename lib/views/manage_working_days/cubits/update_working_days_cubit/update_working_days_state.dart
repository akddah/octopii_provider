part of 'update_working_days_cubit.dart';

extension UpdateWorkingDaysStateX on UpdateWorkingDaysState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class UpdateWorkingDaysState implements LoadableState {
  final GenericStateStatus status;
  final String? errorMsg;
  final String? errorDescription;
  final WorkingDaysData? workingDaysData;

  const UpdateWorkingDaysState({
    required this.status,
    this.workingDaysData,
    this.errorMsg,
    this.errorDescription,
  });

  UpdateWorkingDaysState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    WorkingDaysData? workingDaysData,
    String? errorDescription,
  }) {
    return UpdateWorkingDaysState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      errorDescription: errorDescription ?? this.errorDescription,
      workingDaysData: workingDaysData ?? this.workingDaysData,
    );
  }

  @override
  String toString() {
    return 'UpdateWorkingDaysState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'workingDaysData: $workingDaysData, '
        'errorDescription: $errorDescription, '
        ')';
  }

  @override
  bool get isLoading => status == GenericStateStatus.loading;
}
