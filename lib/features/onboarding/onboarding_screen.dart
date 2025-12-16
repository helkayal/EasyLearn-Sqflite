import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/theme/app_colors.dart';
import 'package:task13_sqflite/core/utils/app_string.dart';
import 'package:task13_sqflite/features/onboarding/widgets/onboarding_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.darkGreenColor, AppColors.greenColor],
                stops: [0.5, 1.0],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 80),
              Text(
                AppString.appTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Spacer(flex: 1),
              Image.asset('assets/images/splash.png'),
              Spacer(flex: 2),
              OnboardingText(size: size),
            ],
          ),
          Positioned(
            right: 0,
            top: size.height * 0.1,
            child: Image.asset('assets/images/leaf_right.png'),
          ),
          Positioned(
            left: -20,
            bottom: size.height * 0.35,
            child: Image.asset('assets/images/leaf_left.png'),
          ),
        ],
      ),
    );
  }
}
