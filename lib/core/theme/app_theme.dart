import 'package:financial_ccounting/core/theme/color_scheme.dart';
import 'package:financial_ccounting/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    platform: TargetPlatform.iOS,
    useMaterial3: true,
    colorScheme: AppColorScheme.light,
    textTheme: AppTextTheme.light,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(167, 255, 255, 255),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.black87),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorScheme.dark,
    textTheme: AppTextTheme.dark,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
  );
}
