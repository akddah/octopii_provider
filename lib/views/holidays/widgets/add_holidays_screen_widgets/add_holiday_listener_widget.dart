import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/holidays/cubits/add_holiday_cubit/add_holiday_cubit.dart';
import 'package:octopii_provier_app/views/holidays/cubits/list_holidays_cubit/list_holidays_cubit.dart';

class AddHolidayListenerWidget extends StatelessWidget {
  const AddHolidayListenerWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: <SingleChildWidget>[
        BlocListener<AddHolidayCubit, AddHolidayState>(
          listener: (BuildContext context, AddHolidayState state) {
            if (state.isLoaded) {
              ToastManager().success(
                context: context,
                message: LocaleKeys.addHolidaySuccess.tr(),
                description: LocaleKeys.addHolidaySuccessDescription.tr(),
              );
              if (state.holidayData?.response != null) {
                // final HolidayResponse newHoliday = state.holidayData!.response;
                // EventBusHandlers().addData(<HolidayResponse>[newHoliday]);
                context.read<ListHolidaysCubit>().getHolidaysList().then(
                  (_) {
                    if (context.mounted) {
                      context.pop<dynamic>();
                    }
                  },
                );
              }
            } else if (state.isError) {
              ToastManager().error(
                context: context,
                message: state.errorMsg ?? LocaleKeys.addHolidayFailure.tr(),
                description: state.errorResponse ??
                    LocaleKeys.addHolidayFailureDescription.tr(),
              );
            }
          },
          child: child,
        ),
        // BlocListener<ListHolidaysCubit, ListHolidaysState>(
        //   listener: (BuildContext context, ListHolidaysState state) {
        //     if (state.isLoaded) {
        //       context.pop();
        //     }
        //   },
        // ),
      ],
      child: child,
    );
  }
}
