import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/theme/app_colors.dart';
import 'package:task13_sqflite/core/theme/app_text_styles.dart';

abstract final class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkGreenColor,
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.black18Medium,
      bodyMedium: AppTextStyles.black16Regular,
      bodySmall: AppTextStyles.black14Regular,
      titleLarge: AppTextStyles.black24SemiBold,
      titleMedium: AppTextStyles.white16SemiBold,
      headlineLarge: AppTextStyles.white24SemiBold,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkGreenColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.white24SemiBold,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.greenColor,
        foregroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        textStyle: AppTextStyles.white16SemiBold,
        elevation: 0,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.greenColor,
      foregroundColor: AppColors.whiteColor,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: AppColors.greenColor),
      labelStyle: TextStyle(color: AppColors.greenColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: AppColors.darkGreenColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: AppColors.darkGreenColor),
      ),
    ),
  );
}
