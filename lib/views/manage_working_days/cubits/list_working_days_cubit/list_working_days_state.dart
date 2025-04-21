// part of 'list_working_days_cubit.dart';

// enum ListWorkingDaysStates { initial, loading, loaded, error, dataUpdated }

// extension ListWorkingDaysStateX on ListWorkingDaysState {
//   bool get isInitial => status == ListWorkingDaysStates.initial;

//   bool get isLoading => status == ListWorkingDaysStates.loading;

//   bool get isLoaded => status == ListWorkingDaysStates.loaded;

//   bool get isError => status == ListWorkingDaysStates.error;
// }

// @immutable
// final class ListWorkingDaysState {
//   final ListWorkingDaysStates status;
//   final String? errorMsg;
//   final WorkingDaysData? workingDaysData;
//   final Map<String, WorkingDay>? updatedWorkingDays;

//   const ListWorkingDaysState({
//     required this.status,
//     this.workingDaysData,
//     this.errorMsg,
//     this.updatedWorkingDays,
//   });

//   ListWorkingDaysState copyWith({
//     ListWorkingDaysStates? status,
//     String? errorMsg,
//     WorkingDaysData? workingDaysData,
//     Map<String, WorkingDay>? updatedWorkingDays,
//   }) {
//     return ListWorkingDaysState(
//       status: status ?? this.status,
//       errorMsg: errorMsg ?? this.errorMsg,
//       workingDaysData: workingDaysData ?? this.workingDaysData,
//       updatedWorkingDays: updatedWorkingDays ?? this.updatedWorkingDays,
//     );
//   }

//   @override
//   String toString() {
//     return 'ListWorkingDaysState('
//         'status: $status, '
//         'errorMsg: $errorMsg, '
//         'workingDaysData: $workingDaysData, '
//         'updatedWorkingDays: $updatedWorkingDays, '
//         ')';
//   }
// }
