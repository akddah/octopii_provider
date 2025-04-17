import 'package:flutter/material.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_theme.dart';

extension AppColorScheme on AppTheme {
  ColorScheme get colorScheme {
    switch (this) {
      case AppTheme.light:
        return _lightColorScheme;
      case AppTheme.dark:
        return _darkColorScheme;
    }
  }

  ColorScheme get _lightColorScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.brandPrimary,
        inverseSurface: AppColors.grey100,
        primaryFixed: AppColors.brand100,
        secondaryContainer: AppColors.primaryWhite,
        onInverseSurface: Colors.black,
        shadow: AppColors.neutral700Base,
        surfaceContainerLowest: AppColors.brand50,
        onSurfaceVariant: AppColors.neutral800,
        scrim: AppColors.textBlack,
        onTertiaryFixedVariant: AppColors.green600,
        surfaceDim: AppColors.neutral700,
        onError: AppColors.red200,
        outlineVariant: AppColors.neutral600,
        onPrimaryContainer: AppColors.brand400,
        tertiary: AppColors.green100,
        error: AppColors.red500Base,
        inversePrimary: AppColors.primaryBlack,

        /////////////////////////////////////////////////////////////////////
        outline: AppColors.neutral600Base,

        secondary: AppColors.darkBlue500Base,
        onSecondary: AppColors.darkBlue800,

        onSurface: AppColors.primaryWhite,
        surface: AppColors.brandPrimary,
        onSecondaryContainer: AppColors.neutral1000,
        surfaceTint: AppColors.darkGreen500,
        onPrimary: AppColors.brand25,
        primaryContainer: AppColors.brand300,
        onTertiary: AppColors.darkBlue300,
        tertiaryContainer: AppColors.primaryWhiteBase50,
        onTertiaryContainer: AppColors.disabledText,
        tertiaryFixed: AppColors.green500Base,
        tertiaryFixedDim: AppColors.borderColor,
        onErrorContainer: AppColors.red1000,
        onPrimaryFixed: AppColors.darkBlue400,
        secondaryFixed: AppColors.darkBlue200,
        primaryFixedDim: AppColors.brand2000,
        // onPrimaryFixedVariant: AppColors.brandPrimary,
        onTertiaryFixed: AppColors.darkBlue25,

        errorContainer: Color(0xFFFFFFFF),
      );

  ColorScheme get _darkColorScheme => const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFA2D66E),
        onPrimary: Color(0xFF1C3700),
        primaryContainer: Color(0xFF2B5000),
        onPrimaryContainer: Color(0xFFBDF287),
        secondary: Color(0xFFBFCBAD),
        onSecondary: Color(0xFF252836),
        secondaryContainer: Color(0xFF404A34),
        onSecondaryContainer: Color(0xFFDBE7C8),
        tertiary: Color(0xFFA0CFCC),
        onTertiary: Color(0xFF003735),
        tertiaryContainer: Color(0xFF1E4E4C),
        onTertiaryContainer: Color(0xFFBBECE8),
        error: Color(0xFFFFB4AB),
        onError: Color(0xFF690005),
        errorContainer: Color(0xFF694151),
        onErrorContainer: Color(0xFFFFDAD6),
        outline: Color(0xFF8E9285),
        surface: Color(0xFF121410),
        onSurface: Color(0xFFFFFFFF),
        onSurfaceVariant: Color(0xFFC4C8BA),
        inverseSurface: Color(0xFFE3E3DC),
        onInverseSurface: Color(0xFF1B1C18),
        inversePrimary: Color(0xFF3E6A0C),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFFA2D66E),
        outlineVariant: Color(0xFF383A35),
        scrim: Color(0xFF000000),
      );
}
