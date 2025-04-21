import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/core/navigation/app_router.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

import '../../../core/config/app_constant_strings.dart';
import '../../../core/infrastructure/networking/server_gate.dart';
import '../../../core/utils/utils/enums.dart';
import '../../../models/schedule_list/working_days_response_model.dart';
import 'manage_working_days_state.dart';

class ManageWorkingDaysCubit extends Cubit<ManageWorkingDaysCubitState> {
  ManageWorkingDaysCubit() : super(ManageWorkingDaysCubitState());

  List<WorkingDaysModel> workingDaysData = [];

  Future<void> getWorkingDaysList() async {
    emit(state.copyWith(scheduleListState: RequestState.loading));
    final result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.workingDays),
    );
    if (result.success) {
      workingDaysData = List<WorkingDaysModel>.from((result.data?['response'] ?? []).map((x) => WorkingDaysModel.fromJson(x)));
      log('${workingDaysData}');
      emit(state.copyWith(scheduleListState: RequestState.success));
    } else {
      emit(state.copyWith(scheduleListState: RequestState.error, errorType: result.errType, msg: result.msg));
    }
  }

  bool canEdit = false;
  refrishBtn() {
    emit(state.copyWith(editWorkingDaysState: RequestState.loading));
    canEdit = workingDaysData.any((e) => e.hasEdits);
    emit(state.copyWith(editWorkingDaysState: RequestState.success));
  }

  editWorkingDays() async {
    emit(state.copyWith(editWorkingDaysState: RequestState.loading));
    final CustomResponse result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.editWorkingDays),
      body: {'schedule': workingDaysData.map((e) => e.toMap()).toList()},
    );
    if (result.success) {
      emit(state.copyWith(editWorkingDaysState: RequestState.success));
    } else {
      emit(state.copyWith(editWorkingDaysState: RequestState.error, errorType: result.errType, msg: result.msg));
      ToastManager().error(
        context: navigatorKey.currentContext!,
        message: result.msg,
        description: LocaleKeys.errorDescription.tr(),
      );
    }
  }
}
