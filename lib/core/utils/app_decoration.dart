import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/theme/app_colors.dart';

BoxDecoration appDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.darkGreenColor, AppColors.greenColor],
    stops: [0.5, 1.0],
  ),
);
