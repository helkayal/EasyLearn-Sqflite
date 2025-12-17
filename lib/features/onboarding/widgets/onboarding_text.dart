import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/theme/app_colors.dart';
import 'package:task13_sqflite/core/utils/app_string.dart';
import 'package:task13_sqflite/features/home/screens/home_screen.dart';

class OnboardingText extends StatelessWidget {
  const OnboardingText({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * .3,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        spacing: 10,
        children: [
          Text(
            AppString.splashTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            AppString.splashText,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: Text(AppString.splashButton),
          ),
        ],
      ),
    );
  }
}
