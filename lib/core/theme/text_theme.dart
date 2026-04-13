import 'package:financial_ccounting/core/theme/color.dart';
import 'package:financial_ccounting/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme light = TextTheme(
    displayLarge: Fonts.displayLarge.copyWith(
      color: AppColors.titleTextColorLight,
    ),
    bodyLarge: Fonts.bodyLarge.copyWith(
      color: AppColors.mainBlackTextColorLight,
    ),
    labelSmall: Fonts.labelSmall.copyWith(
      color: AppColors.mainBlackTextColorLight,
    ),
    bodyMedium: Fonts.bodyMedium.copyWith(
      color: AppColors.mainBlackTextColorLight,
    ),
    bodySmall: Fonts.navBar,
  );

  static TextTheme dark = TextTheme(
    displayLarge: Fonts.displayLarge.copyWith(
      color: AppColors.titleTextColorDark,
    ),
    bodyLarge: Fonts.bodyLarge.copyWith(
      color: AppColors.mainBlackTextColorDark,
    ),
    labelSmall: Fonts.labelSmall.copyWith(
      color: AppColors.mainBlackTextColorDark,
    ),
    bodyMedium: Fonts.bodyMedium.copyWith(
      color: AppColors.mainBlackTextColorDark,
    ),
    bodySmall: Fonts.navBar,
  );
}
