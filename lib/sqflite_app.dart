import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/theme/app_theme.dart';
import 'package:task13_sqflite/core/utils/app_string.dart';
import 'package:task13_sqflite/features/onboarding/onboarding_screen.dart';

class SqfliteApp extends StatelessWidget {
  const SqfliteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appTitle,
      theme: AppTheme.appTheme,
      home: Scaffold(body: OnboardingScreen()),
    );
  }
}
