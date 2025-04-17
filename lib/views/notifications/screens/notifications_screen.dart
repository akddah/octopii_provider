import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/views/notifications/widgets/notifications_widgets/index.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.transparent,
        systemNavigationBarColor: AppColors.neutral800,

      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
        body: const SafeArea(
          child: NotificationsBody(),
        ),
      ),
    );
  }
}
