import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/schedule_list/update_working_days_request_model.dart';
import 'package:octopii_provier_app/models/schedule_list/working_days_response_model.dart';

part 'list_working_days_state.dart';

/// This cubit handles the following functionalities:
/// - Fetching the list of working days from the server.
/// - Managing updates to individual working days.
/// - Validating the data of working days.
/// - Applying bulk updates like setting the same time for all days.
/// - Handling user interactions with the working days list.

class ListWorkingDaysCubit extends Cubit<ListWorkingDaysState> {
  ListWorkingDaysCubit()
      : super(
          const ListWorkingDaysState(status: ListWorkingDaysStates.initial),
        );

  /// Fetches the list of working days from the server.
  Future<void> getWorkingDaysList() async {
    emit(
      state.copyWith(
        status: ListWorkingDaysStates.loading,
      ),
    );

    final CustomResponse<Map<String, dynamic>> result =
        await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.workingDays),
    );

    switch (result.responseState) {
      case ResponseState.success:
        final WorkingDaysData workingDaysData =
            WorkingDaysData.fromJson(result.data!);

        emit(
          state.copyWith(
            status: ListWorkingDaysStates.loaded,
            workingDaysData: workingDaysData,
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            status: ListWorkingDaysStates.error,
            errorMsg: result.msg,
          ),
        );
    }
  }

  /// Map to track updated working days
  final Map<String, WorkingDay> _updatedWorkingDays = <String, WorkingDay>{};

  /// Updates the data for a specific working day.
  ///
  /// This method updates the `_updatedWorkingDays` map and
  /// emits a new state with the modified day.
  ///
  /// Parameters:
  /// - [updatedDay]: The `WorkingDay` object containing the updated information.
  void handleUpdate(WorkingDay updatedDay) {
    AppLogger().info('handleUpdate called with updatedDay: $updatedDay');

    _updatedWorkingDays[updatedDay.day] = updatedDay;
    AppLogger().info('_updatedWorkingDays updated: $_updatedWorkingDays');

    final List<WorkingDay> updatedList = state.workingDaysData?.response.map(
          (WorkingDay existingDay) {
            return _updatedWorkingDays[existingDay.day] ?? existingDay;
          },
        ).toList() ??
        <WorkingDay>[];

    AppLogger()
        .info('Original workingDaysData: ${state.workingDaysData?.response}');
    AppLogger().info('Updated working days list: $updatedList');

    emit(
      state.copyWith(
        status: ListWorkingDaysStates.dataUpdated,
        workingDaysData: state.workingDaysData?.copyWith(
          response: updatedList,
        ),
        updatedWorkingDays: Map<String, WorkingDay>.from(_updatedWorkingDays),
      ),
    );
    AppLogger().info('New state emitted with updated data: $state');
  }

  /// Combines the original and updated working days into a single list.
  ///
  /// Validates the data to ensure that any day marked as active has valid `from` and `to` times.
  /// If validation fails, emits an error state and returns an empty list.
  ///
  /// Returns:
  /// - A list of `ScheduleItem` objects representing the working days.
  List<ScheduleItem> validateAndGetEffectiveWorkingDays() {
    final List<WorkingDay> originalDays =
        state.workingDaysData?.response ?? <WorkingDay>[];

    final List<String> validationErrors = <String>[];

    final List<ScheduleItem> scheduleItems = originalDays.map((WorkingDay day) {
      final WorkingDay effectiveDay = _updatedWorkingDays[day.day] ?? day;

      if (!effectiveDay.off &&
          (effectiveDay.from == null || effectiveDay.to == null)) {
        validationErrors.add(effectiveDay.day);
      }

      return ScheduleItem(
        day: effectiveDay.day,
        off: effectiveDay.off,
        from: effectiveDay.from,
        to: effectiveDay.to,
      );
    }).toList();

    if (validationErrors.isNotEmpty) {
      final String validationError = validationErrors.join(',');

      emit(
        state.copyWith(
          status: ListWorkingDaysStates.error,
          errorMsg: validationError,
        ),
      );
      return <ScheduleItem>[];
    }

    return scheduleItems;
  }

  /// Checks whether there are any changes in the working days.
  ///
  /// Compares the original and updated working days to detect any modifications.
  ///
  /// Returns:
  /// - `true` if changes are detected, `false` otherwise.
  bool hasChanges() {
    AppLogger().info('hasChanges called');

    if (state.workingDaysData == null || state.updatedWorkingDays == null) {
      AppLogger()
          .info('Missing data: workingDaysData or updatedWorkingDays is null.');
      return false;
    }

    AppLogger().info(
      'workingDaysData: ${state.workingDaysData}, updatedWorkingDays: ${state.updatedWorkingDays}',
    );

    final List<WorkingDay> originalDays = state.workingDaysData!.response;
    final Map<String, WorkingDay> updatedDaysMap = state.updatedWorkingDays!;

    AppLogger().info('Original days: $originalDays');
    AppLogger().info('Updated days map: $updatedDaysMap');

    for (final WorkingDay originalDay in originalDays) {
      final WorkingDay? updatedDay = updatedDaysMap[originalDay.day];
      AppLogger().info('Checking originalDay: $originalDay');
      AppLogger().info('Matched updatedDay: $updatedDay');

      if (updatedDay == null ||
          originalDay.from != updatedDay.from ||
          originalDay.to != updatedDay.to ||
          originalDay.off != updatedDay.off) {
        if (updatedDay == null) {
          AppLogger().info('No updatedDay found for originalDay: $originalDay');
        } else if (originalDay.from != updatedDay.from) {
          AppLogger().info(
            'Mismatch in "from": original: ${originalDay.from}, updated: ${updatedDay.from}',
          );
        } else if (originalDay.to != updatedDay.to) {
          AppLogger().info(
            'Mismatch in "to": original: ${originalDay.to}, updated: ${updatedDay.to}',
          );
        } else if (originalDay.off != updatedDay.off) {
          AppLogger().info(
            'Mismatch in "off": original: ${originalDay.off}, updated: ${updatedDay.off}',
          );
        }
        return true;
      }
    }

    AppLogger().info('No changes detected.');
    return false;
  }

  /// Removes a working day by clearing its `from` and `to` times.
  ///
  /// Updates both the `_updatedWorkingDays` map and the list in the state.
  void removeDay(WorkingDay day) {
    final WorkingDay updatedDay = day.copyWith(
      from: null,
      to: null,
      off: true,
    );

    _updatedWorkingDays[updatedDay.day] = updatedDay;

    final List<WorkingDay>? updatedList =
        state.workingDaysData?.response.map((WorkingDay existingDay) {
      if (existingDay.day == day.day) {
        return updatedDay;
      }
      return existingDay;
    }).toList();

    emit(
      state.copyWith(
        status: ListWorkingDaysStates.dataUpdated,
        workingDaysData: state.workingDaysData
            ?.copyWith(response: updatedList ?? <WorkingDay>[]),
        updatedWorkingDays: Map<String, WorkingDay>.from(_updatedWorkingDays),
      ),
    );
  }

  /// Applies the `from` and `to` times of a source day to all active days.
  ///
  /// Parameters:
  /// - [sourceDay]: The day whose times will be applied to other days.
  void applyTimeToAll(WorkingDay sourceDay) {
    if (sourceDay.from == null || sourceDay.to == null) {
      AppLogger().info("Source day has no valid 'from' or 'to' values.");
      return;
    }

    final List<WorkingDay> updatedList =
        state.workingDaysData?.response.map((WorkingDay existingDay) {
              if (!existingDay.off) {
                final WorkingDay updatedDay = existingDay.copyWith(
                  from: sourceDay.from,
                  to: sourceDay.to,
                );

                _updatedWorkingDays[existingDay.day] = updatedDay;
                return updatedDay;
              }
              return existingDay;
            }).toList() ??
            <WorkingDay>[];

    emit(
      state.copyWith(
        status: ListWorkingDaysStates.dataUpdated,
        workingDaysData: state.workingDaysData?.copyWith(response: updatedList),
        updatedWorkingDays: Map<String, WorkingDay>.from(_updatedWorkingDays),
      ),
    );
  }

  void clearCache() {
    AppLogger().info('Clearing all cached data.');

    _updatedWorkingDays.clear();

    emit(
      state.copyWith(status: ListWorkingDaysStates.initial),
    );

    AppLogger().info('Cache cleared successfully. New state: $state');
  }
}
