import '../../../core/helpers/enums.dart';
import '../../../core/utils/utils/enums.dart';

class ManageWorkingDaysCubitState {
  final RequestState scheduleListState;
  final RequestState editWorkingDaysState;
  final String msg;
  final ErrorType errorType;

  ManageWorkingDaysCubitState({
    this.scheduleListState = RequestState.initial,
    this.editWorkingDaysState = RequestState.initial,
    this.msg = '',
    this.errorType = ErrorType.none,
  });

  ManageWorkingDaysCubitState copyWith({
    RequestState? scheduleListState,
    RequestState? editWorkingDaysState,
    String? msg,
    ErrorType? errorType,
  }) =>
      ManageWorkingDaysCubitState(
        scheduleListState: scheduleListState ?? this.scheduleListState,
        editWorkingDaysState: editWorkingDaysState ?? this.editWorkingDaysState,
        msg: msg ?? this.msg,
        errorType: errorType ?? this.errorType,
      );
}
