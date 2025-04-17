import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
import 'package:octopii_provier_app/models/list_holidays/add_holiday_off.dart';
import 'package:octopii_provier_app/models/list_holidays/add_holiday_response_model.dart';

part 'add_holiday_state.dart';

class AddHolidayCubit extends Cubit<AddHolidayState> {
  AddHolidayCubit()
      : super(const AddHolidayState(status: GenericStateStatus.initial));

  Future<void> addNewHoliday({required AddHolidayOff requestModel}) async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );

    final CustomResponse<Map<String, dynamic>> result =
        await ServerGate.i.sendToServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.addHolidays),
      body: requestModel.toJson(),
    );

    switch (result.responseState) {
      case ResponseState.success:
        final ResponseData holidayData = ResponseData.fromJson(result.data!);
        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            holidayData: holidayData,
          ),
        );

      case ResponseState.error:
        final Map<String, dynamic>? errors=result.data?['errors'] as Map<String, dynamic>?;
        final List<dynamic>? validationString =errors?['title'] as List<dynamic>?;
        final  String ? errorResponse= validationString?[0] as String ? ;
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
            errorResponse: errorResponse ,
          ),
        );
    }
  }

}
