import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_system_ui_overlay_styles.dart';
import '../cubits/reset_password_cubit/reset_password_cubit.dart';
import '../wigdets/add_new_password_widgets/index.dart';

class AddNewPasswordScreen extends StatelessWidget {
  final int countryCode;
  const AddNewPasswordScreen({super.key,required this.countryCode});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.primaryWhite,
        systemNavigationBarColor: AppColors.primaryWhite,
      ),
      child: BlocProvider<ResetPasswordCubit>(
        create: (BuildContext context) => ResetPasswordCubit(),
        child:  Scaffold(
          body: SafeArea(
            child: AddNewPasswordBody(countryCode: countryCode),
          ),
        ),
      ),
    );
  }
}
