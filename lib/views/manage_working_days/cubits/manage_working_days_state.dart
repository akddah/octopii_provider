import '../../../core/helpers/enums.dart';
import '../../../core/utils/utils/enums.dart';

class ManageWorkingDaysCubitState {
  final RequestState scheduleListState;
  final String msg;
  final ErrorType errorType;

  ManageWorkingDaysCubitState({this.scheduleListState = RequestState.initial, this.msg = '', this.errorType = ErrorType.none});

  ManageWorkingDaysCubitState copyWith({RequestState? scheduleListState, String? msg, ErrorType? errorType}) => ManageWorkingDaysCubitState(
        scheduleListState: scheduleListState ?? this.scheduleListState,
        msg: msg ?? this.msg,
        errorType: errorType ?? this.errorType,
      );
}
