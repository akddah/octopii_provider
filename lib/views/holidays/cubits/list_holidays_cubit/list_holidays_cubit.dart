import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/helpers/event_bus_handlers.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/list_holidays/list_holidays_response_model.dart';

part 'list_holidays_state.dart';

class ListHolidaysCubit extends Cubit<ListHolidaysState> {
  ListHolidaysCubit()
      : super(const ListHolidaysState(status: GenericStateStatus.initial)) {
    // EventBusHandlers().listenToAddData(_onAddData);
    // EventBusHandlers().listenToDeleteData(_onDeleteData);
  }

  List<HolidayResponse>? holidaysList = <HolidayResponse>[];

  Future<void> getHolidaysList() async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );

    final CustomResponse<Map<String, dynamic>> result =
        await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.holidays),
    );

    switch (result.responseState) {
      case ResponseState.success:
        final HolidayData holidayData = HolidayData.fromJson(result.data!);
        // EventBusHandlers().addData(holidayData.response);
        holidaysList?.clear();
        holidaysList?.addAll(holidayData.response);
        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            holidayData: holidaysList,
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

  // void _onAddData(AddDataEvent event) {
  //   AppLogger().info(
  //     'Data received from event: ${event.response.length} holidays',
  //   );
  //   emit(
  //     state.copyWith(
  //       status: GenericStateStatus.loaded,
  //       holidayData: HolidayData(response: event.response),
  //     ),
  //   );
  // }
  //
  // // Handle DeleteDataEvent
  // void _onDeleteData(DeleteDataEvent event) {
  //   AppLogger()
  //       .info('Data received from DeleteDataEvent: ID to delete: ${event.id}');
  //
  //   // Update the holiday list by removing the holiday with the specified ID
  //   final List<HolidayResponse> updatedList =
  //       List<HolidayResponse>.from(state.holidayData!.response)
  //         ..removeWhere((HolidayResponse holiday) => holiday.id == event.id);
  //
  //   emit(
  //     state.copyWith(
  //       status: GenericStateStatus.loaded,
  //       holidayData: HolidayData(response: updatedList),
  //     ),
  //   );
  // }

  void removeHoliday(int holidayId) {
    AppLogger()
        .info('Data received from DeleteDataEvent: ID to delete: $holidayId');

    holidaysList = List<HolidayResponse>.from(state.holidayData!)
      ..removeWhere((HolidayResponse holiday) => holiday.id == holidayId);

    emit(
      state.copyWith(
        status: GenericStateStatus.loaded,
        holidayData: holidaysList,
      ),
    );
  }

  void resetCubit() {
    holidaysList = <HolidayResponse>[];
    emit(
      state.copyWith(
        status: GenericStateStatus.initial,
      ),
    );
  }

  @override
  Future<void> close() {
    holidaysList = <HolidayResponse>[];
    EventBusHandlers().clearListeners(); // Clean up resources
    return super.close();
  }
}
