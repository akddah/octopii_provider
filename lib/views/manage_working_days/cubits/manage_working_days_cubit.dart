import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/config/app_constant_strings.dart';
import '../../../core/infrastructure/networking/server_gate.dart';
import '../../../core/utils/utils/enums.dart';
import '../../../models/schedule_list/working_days_response_model.dart';
import 'manage_working_days_state.dart';

class ManageWorkingDaysCubit extends Cubit<ManageWorkingDaysCubitState> {
  ManageWorkingDaysCubit() : super(ManageWorkingDaysCubitState());
  WorkingDaysData? workingDaysData;
  Future<void> getWorkingDaysList() async {
    emit(state.copyWith(scheduleListState: RequestState.loading));

    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.workingDays),
    );

    if (result.success) {
      workingDaysData = WorkingDaysData.fromJson(result.data!);
      emit(state.copyWith(scheduleListState: RequestState.success));
    } else {
      emit(state.copyWith(scheduleListState: RequestState.error, errorType: result.errType, msg: result.msg));
    }
  }
}
