import 'package:flutter/material.dart';
import 'package:octopii_provier_app/core/theme/app_color_scheme.dart';
import 'package:octopii_provier_app/core/theme/app_navigation_bar_theme_data.dart';
import 'package:octopii_provier_app/core/theme/app_text_theme_data.dart';
import 'package:octopii_provier_app/core/theme/app_theme.dart';
import 'package:octopii_provier_app/core/theme/text_selection_theme.dart';
import 'package:octopii_provier_app/core/theme/time_picker_theme_data.dart';
import 'package:octopii_provier_app/gen/fonts.gen.dart';

extension AppThemeData on AppTheme {
  ThemeData themeData() {
    const String fontFamily = MyFontFamily.poppins;
    return ThemeData(
      fontFamily: fontFamily,
      colorScheme: colorScheme,
      textTheme: textThemeData(),
      scaffoldBackgroundColor: colorScheme.secondaryContainer,
      textSelectionTheme: textSelectionTheme(),
      navigationBarTheme: navigationBarThemeData,
      timePickerTheme: timePickerThemeData(),
      // textButtonTheme: TextButtonThemeData(
      //   style: ButtonStyle(
      //     backgroundColor:
      //         MaterialStateColor.resolveWith((states) => Colors.black),
      //     foregroundColor:
      //         MaterialStateColor.resolveWith((states) => Colors.green),
      //     overlayColor: MaterialStateColor.resolveWith((states) => Colors.pink),
      //   ),
      // ),
    );
  }
}
