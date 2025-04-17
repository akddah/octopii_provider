import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/application_app_bar_back_button.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/views/holidays/cubits/add_holiday_cubit/add_holiday_cubit.dart';
import 'package:octopii_provier_app/views/holidays/widgets/add_holidays_screen_widgets/index.dart';

class AddHolidaysScreen extends StatelessWidget {
  const AddHolidaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.transparent,
        systemNavigationBarColor: AppColors.neutral800,
      ),
      child: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<AddHolidayCubit>(
            create: (BuildContext context) => AddHolidayCubit(),
          ),
        ],
        child: Scaffold(
          appBar: const ApplicationAppBarBackButton(),
          backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
          body: const AddHolidaysBody(),
        ),
      ),
    );
  }
}
