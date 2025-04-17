import 'package:flutter/material.dart';
import 'package:octopii_provier_app/core/theme/app_color_scheme.dart';
import 'package:octopii_provier_app/core/theme/app_theme.dart';

extension TextSelectionTheme on AppTheme {
  TextSelectionThemeData textSelectionTheme() {
    return TextSelectionThemeData(
      cursorColor: colorScheme.primary,
      selectionHandleColor: colorScheme.secondary,
    );
  }
}
