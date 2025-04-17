import 'package:flutter/material.dart';
import 'package:octopii_provier_app/core/theme/app_color_scheme.dart';
import 'package:octopii_provier_app/core/theme/app_theme.dart';
import 'package:octopii_provier_app/gen/fonts.gen.dart';

extension AppNavigationBarThemeData on AppTheme {
  NavigationBarThemeData get navigationBarThemeData {
    const String fontFamily = MyFontFamily.poppins;
    return NavigationBarThemeData(
      backgroundColor: colorScheme.primary,
      surfaceTintColor: colorScheme.primary,
      indicatorColor: colorScheme.primaryContainer,
      labelTextStyle: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(
            fontFamily: fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: colorScheme.primary,
          );
        }
        return TextStyle(
          fontFamily: fontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurfaceVariant,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(
            size: 20,
            color: colorScheme.primary,
          );
        }
        return IconThemeData(
          size: 20,
          color: colorScheme.onSurfaceVariant,
        );
      }),
    );
  }
}
