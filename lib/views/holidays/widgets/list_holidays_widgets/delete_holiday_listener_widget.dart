import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/holidays/cubits/delete_holiday_cubit/delete_holiday_cubit.dart';
import 'package:octopii_provier_app/views/holidays/cubits/list_holidays_cubit/list_holidays_cubit.dart';

class DeleteHolidayListenerWidget extends StatelessWidget {
  const DeleteHolidayListenerWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteHolidayCubit, DeleteHolidayState>(
      listener: (BuildContext context, DeleteHolidayState state) {
        if (state.isError) {
          ToastManager().error(
            context: context,
            message: state.errorMsg ?? LocaleKeys.deleteHolidayError.tr(),
            description: LocaleKeys.deleteHolidayErrorDescription.tr(),
          );
        } else if (state.isLoaded) {
          ToastManager().success(
            context: context,
            message: state.successMsg ?? LocaleKeys.deleteHolidaySuccess.tr(),
            description: LocaleKeys.deleteHolidaySuccessDescription.tr(),
          );
          context.read<ListHolidaysCubit>().getHolidaysList();
        }
      },
      child: child,
    );
  }
}
