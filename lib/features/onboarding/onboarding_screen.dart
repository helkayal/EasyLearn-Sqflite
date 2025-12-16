import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/utils/app_string.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppString.splashTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
