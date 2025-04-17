import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/views/profile/cubits/logout_cubit/logout_cubit.dart';
import 'package:octopii_provier_app/views/profile/widgets/profile_widgets/index.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.transparent,
        systemNavigationBarColor: AppColors.neutral800,

      ),
      child: BlocProvider<LogoutCubit>(
        create: (BuildContext context) => LogoutCubit(),
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
          body: const SafeArea(
            child: ProfileBody(),
          ),
        ),
      ),
    );
  }
}
