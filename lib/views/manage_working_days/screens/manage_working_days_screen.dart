import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/application_app_bar_back_button.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/views/holidays/cubits/delete_holiday_cubit/delete_holiday_cubit.dart';
import 'package:octopii_provier_app/views/manage_working_days/cubits/list_working_days_cubit/list_working_days_cubit.dart';
import 'package:octopii_provier_app/views/manage_working_days/cubits/update_working_days_cubit/update_working_days_cubit.dart';
import 'package:octopii_provier_app/views/manage_working_days/widgets/manage_working_days_widgets/index.dart';

class ManageWorkingDaysScreen extends StatelessWidget {
  const ManageWorkingDaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.transparent,
        systemNavigationBarColor: AppColors.neutral800,
      ),
      child: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<ListWorkingDaysCubit>(
            create: (BuildContext context) => ListWorkingDaysCubit()..getWorkingDaysList(),
          ),
          BlocProvider<UpdateWorkingDaysCubit>(
            create: (BuildContext context) => UpdateWorkingDaysCubit(),
          ),
          BlocProvider<DeleteHolidayCubit>(
            create: (BuildContext context) => DeleteHolidayCubit(),
          ),
        ],
        child: Scaffold(
          appBar: const ApplicationAppBarBackButton(),
          backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
          body: const ManageWorkingDaysBody(),
        ),
      ),
    );
  }
}
