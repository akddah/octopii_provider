import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/views/onboarding/widgets/onboarding_widgets/index.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.primaryWhite,
        systemNavigationBarColor: AppColors.neutral700,
      ),
      child: const Scaffold(
        body: SafeArea(
          child: OnboardingBody(),
        ),
      ),
    );
  }
}
