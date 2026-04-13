import 'package:financial_ccounting/core/theme/color.dart';
import 'package:flutter/material.dart';

class AppColorScheme {
  AppColorScheme._();

  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryElementLight,
    onPrimary: Colors.white,
    tertiary: AppColors.mainBlackTextColorLight,
    primaryFixed: AppColors.backgroundAuthLight,
    surface: AppColors.backgroundLight,
    onSurface: AppColors.titleTextColorLight,
    error: AppColors.errorLight,
    onError: Colors.white,
    secondary: AppColors.backgroundGreenDarkElementLight,
    onSecondary: AppColors.navColorLight,
    secondaryFixed: Colors.black38,
  );

  static const dark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryElementDark,
    onPrimary: AppColors.mainTextColorDark,
    tertiary: AppColors.mainBlackTextColorDark,
    primaryFixed: AppColors.backgroundAuthDark,
    surface: AppColors.backgroundDark,
    onSurface: AppColors.titleTextColorDark,
    error: AppColors.errorDark,
    onError: Colors.black,
    secondary: AppColors.backgroundGreenDarkElementDark,
    onSecondary: AppColors.navColorDark,
    secondaryFixed: Colors.white54,
  );
}
