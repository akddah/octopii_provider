import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/const/dimensions.dart';
import 'package:octopii_provier_app/core/theme/app_color_scheme.dart';
import 'package:octopii_provier_app/core/theme/app_theme.dart';
import 'package:octopii_provier_app/gen/fonts.gen.dart';

extension AppTextThemeData on AppTheme {
  static const String fontFamily = MyFontFamily.poppins;

  TextTheme textThemeData() {
    return TextTheme(
      ///Used
      displayLarge: TextStyle(
        fontSize: 28.sp,
        fontWeight: AppDimensions.bold,
        fontFamily: fontFamily,
        color: colorScheme.scrim,
      ),
      displayMedium: TextStyle(
        fontSize: 26.sp,
        fontWeight: AppDimensions.extraBold,
        fontFamily: fontFamily,
        color: colorScheme.secondary,
      ),

      ///USED
      displaySmall: TextStyle(
        fontSize: 13.sp,
        fontWeight: AppDimensions.medium,
        fontFamily: fontFamily,
        color: colorScheme.onInverseSurface,
      ),

      headlineLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: AppDimensions.medium,
        fontFamily: fontFamily,
        color: colorScheme.secondary,
      ),

      ///USED
      headlineMedium: TextStyle(
        fontSize: 15.sp,
        fontWeight: AppDimensions.bold,
        fontFamily: fontFamily,
        color: colorScheme.scrim,
      ),

      ///USED
      headlineSmall: TextStyle(
        fontSize: 13.sp,
        fontWeight: AppDimensions.bold,
        fontFamily: fontFamily,
        color: colorScheme.scrim,
      ),
      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        color: colorScheme.onSurface,
        letterSpacing: 0,
      ),

      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: AppDimensions.extraBold,
        fontFamily: fontFamily,
        color: colorScheme.onPrimaryContainer,
        letterSpacing: 0,
      ),

      ///USED
      titleSmall: TextStyle(
        fontSize: 13.sp,
        fontWeight: AppDimensions.extraBold,
        fontFamily: fontFamily,
        color: colorScheme.scrim,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
        color: colorScheme.onSurface,
        letterSpacing: 0,
      ),

      ///USED
      labelMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: AppDimensions.extraBold,
        fontFamily: fontFamily,
        color: colorScheme.scrim,
      ),

      ///USED
      labelSmall: TextStyle(
        fontSize: 11.sp,
        fontWeight: AppDimensions.medium,
        fontFamily: fontFamily,
        color: colorScheme.onInverseSurface,
        letterSpacing: 0,
      ),

      bodyLarge: TextStyle(
        fontSize: 14.sp,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),

      ///Used
      bodyMedium: TextStyle(
        fontSize: 15.sp,
        fontWeight: AppDimensions.medium,
        fontFamily: fontFamily,
        color: colorScheme.secondaryContainer,
        letterSpacing: 0,
      ),

      ///Used
      bodySmall: TextStyle(
        fontSize: 13.sp,
        fontWeight: AppDimensions.medium,
        fontFamily: fontFamily,
        color: colorScheme.inverseSurface,
      ),
    );
  }
}
