import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/schedule_list/update_working_days_request_model.dart';
import 'package:octopii_provier_app/models/schedule_list/working_days_response_model.dart';

part 'update_working_days_state.dart';

class UpdateWorkingDaysCubit extends Cubit<UpdateWorkingDaysState> {
  UpdateWorkingDaysCubit()
      : super(
          const UpdateWorkingDaysState(status: GenericStateStatus.initial),
        );

  Future<void> editWorkingDaysList({
    required UpdateWorkingDaysRequestModel requestModel,
  }) async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );

    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.editWorkingDays),
      body: requestModel.toJson(),
    );

    switch (result.responseState) {
      case ResponseState.success:
        final WorkingDaysData workingDaysData = WorkingDaysData.fromJson(result.data!);

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            workingDaysData: workingDaysData,
          ),
        );

      case ResponseState.error:
        String? scheduleError = '';
        final Map<dynamic, dynamic>? errorDescription = (result.data?['errors'] as Map<dynamic, dynamic>?)?.map<dynamic, dynamic>(
          (dynamic key, dynamic value) {
            // Extract the first error message from the list
            final String errorMessage = (value[0]) as String;
            scheduleError = errorMessage;
            // Create a MapEntry with the error message as the key and the original key as the value
            return MapEntry<dynamic, dynamic>(errorMessage, key);
          },
        );

        AppLogger().info('The Error Dis Is $errorDescription');
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
            errorDescription: scheduleError,
          ),
        );
    }
  }
}
