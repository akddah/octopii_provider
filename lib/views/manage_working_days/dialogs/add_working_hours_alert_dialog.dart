import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_text_form_field.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/schedule_list/working_days_response_model.dart';
import 'package:octopii_provier_app/views/manage_working_days/cubits/list_working_days_cubit/list_working_days_cubit.dart';

class AddWorkingHoursAlertDialog extends HookWidget {
  const AddWorkingHoursAlertDialog({
    required this.workingDaysData,
    required this.isShorFromFieldOnly,
    super.key,
  });

  final WorkingDay workingDaysData;
  final bool isShorFromFieldOnly;

  @override
  Widget build(BuildContext context) {
    final TextEditingController fromController = useTextEditingController();
    final TextEditingController toController = useTextEditingController();
    final ValueNotifier<TimeOfDay?> selectedFromTime = useState(null);
    final ValueNotifier<TimeOfDay?> selectedToTime = useState(null);
    final ValueNotifier<double?> from = useState(null);
    final ValueNotifier<double?> to = useState(null);
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      title: Text(
        '${LocaleKeys.enterWorkingHoursFor.tr()} ${workingDaysData.day}',
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Visibility(
            visible: isShorFromFieldOnly,
            child: CustomTextFormField(
              textEditingController: fromController,
              labelText: LocaleKeys.from.tr(),
              labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
              readOnly: true,
              labelPadding: 5.w,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              suffixIcon: IconButton(
                onPressed: () async {
                  final TimeOfDay? picked = await showTimePicker(
                    initialEntryMode: TimePickerEntryMode.dialOnly,
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (picked != null) {
                    selectedFromTime.value = picked;

                    if (context.mounted) {
                      final String formattedTime = picked.format(context);
                      fromController.text = formattedTime;
                      final double timeIn24HourFormat =
                          picked.hour + (picked.minute / 60);
                      from.value = timeIn24HourFormat;

                      AppLogger().info(
                        'Selected Time (24-hour): $timeIn24HourFormat | Display Time: $formattedTime',
                      );
                    }
                  }
                },
                icon: Icon(
                  Icons.calendar_month,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Visibility(
            visible: !isShorFromFieldOnly,
            child: CustomTextFormField(
              textEditingController: toController,
              labelText: LocaleKeys.to.tr(),
              labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
              labelPadding: 5.w,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              readOnly: true,
              suffixIcon: IconButton(
                onPressed: () async {
                  final TimeOfDay? picked = await showTimePicker(
                    initialEntryMode: TimePickerEntryMode.dialOnly,
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (picked != null) {
                    selectedToTime.value = picked;
                    if (context.mounted) {
                      final String formattedTime = picked.format(context);
                      toController.text = formattedTime;
                      final double timeIn24HourFormat =
                          picked.hour + (picked.minute / 60);

                      to.value = timeIn24HourFormat;
                      AppLogger().info(
                        'Selected Time (24-hour): $timeIn24HourFormat | Display Time: $formattedTime',
                      );
                    }
                  }
                },
                icon: Icon(
                  Icons.calendar_month,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.error,
          ),
          onPressed: () => context.pop<bool>(false),
          child: Text(LocaleKeys.cancel.tr()),
        ),
        ElevatedButton(
          onPressed: () {
            if (isShorFromFieldOnly && from.value == null) {
              ToastManager().warning(
                context: context,
                message: LocaleKeys.warning.tr(),
                description: LocaleKeys.pleaseFillInAllFields.tr(),
              );
              return;
            } else if (!isShorFromFieldOnly && to.value == null) {
              ToastManager().warning(
                context: context,
                message: LocaleKeys.warning.tr(),
                description: LocaleKeys.pleaseFillInAllFields.tr(),
              );
            }

            // if (!isShorFromFieldOnly && to.value == null&&to.value! <= 12) {
            //   ToastManager().warning(
            //     context: context,
            //     message: LocaleKeys.validationError.tr(),
            //     description: LocaleKeys.toMustBeGreaterThan.tr(
            //       namedArgs: <String, String>{
            //         'value': '12',
            //       },
            //     ),
            //   );
            //   return;
            // }
            //
            final WorkingDay updatedDay = workingDaysData.copyWith(
              off: false,
              from: isShorFromFieldOnly ? from.value : workingDaysData.from,
              to: isShorFromFieldOnly ? workingDaysData.to : to.value,
            );
            context.read<ListWorkingDaysCubit>().handleUpdate(updatedDay);
            context.pop<bool>(true);
          },
          child: Text(
            LocaleKeys.save.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
