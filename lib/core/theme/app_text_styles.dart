import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/theme/app_colors.dart';

abstract final class AppTextStyles {
  static const TextStyle black24SemiBold = TextStyle(
    color: AppColors.blackColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle black18Medium = TextStyle(
    color: AppColors.blackColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle black16Regular = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle black14Regular = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle white24SemiBold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle white16SemiBold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
