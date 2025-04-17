import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/const/dimensions.dart';
import 'package:octopii_provier_app/core/theme/app_color_scheme.dart';
import 'package:octopii_provier_app/core/theme/app_theme.dart';

extension AppTimePickerThemeData on AppTheme {
  TimePickerThemeData timePickerThemeData() {
    return TimePickerThemeData(
      backgroundColor: colorScheme.secondaryContainer,
      dayPeriodTextColor: colorScheme.primary,
      helpTextStyle: TextStyle(color: colorScheme.primary),
      hourMinuteColor: WidgetStateColor.resolveWith(
        (Set<WidgetState> states) => states.contains(WidgetState.selected)
            ? colorScheme.primary.withValues(alpha: 1)
            : colorScheme.primary.withValues(alpha: 0.2),
      ),
      hourMinuteTextColor: WidgetStateColor.resolveWith(
        (Set<WidgetState> states) => states.contains(WidgetState.selected)
            ? colorScheme.secondaryContainer
            : colorScheme.secondaryContainer,
      ),
      dialHandColor: colorScheme.primary,
      dialBackgroundColor: colorScheme.secondaryContainer,
      dialTextStyle: TextStyle(
        fontSize: 15.sp,
        fontWeight: AppDimensions.bold,
        color: colorScheme.scrim,
      ),
      dialTextColor: WidgetStateColor.resolveWith(
        (Set<WidgetState> states) => states.contains(WidgetState.selected)
            ? colorScheme.secondaryContainer
            : colorScheme.inversePrimary,
      ),
      entryModeIconColor: colorScheme.primary,
    );
  }
}
