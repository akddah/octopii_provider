import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';

part 'delete_holiday_state.dart';

class DeleteHolidayCubit extends Cubit<DeleteHolidayState> {
  DeleteHolidayCubit()
      : super(const DeleteHolidayState(status: GenericStateStatus.initial));

  Future<void> deleteHoliday({required int holidayId}) async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );

    final CustomResponse<Map<String, dynamic>> result =
        await ServerGate.i.deleteFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.deleteHolidays),
      params: <String, dynamic>{'id': holidayId},
    );

    switch (result.responseState) {
      case ResponseState.success:
        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            successMsg: result.data?['response'] as String? ?? '',
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
          ),
        );
    }
  }
}
