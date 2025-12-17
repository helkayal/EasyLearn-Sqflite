import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/utils/app_string.dart';

class NoDataFoundView extends StatelessWidget {
  const NoDataFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/sticky_notes.png"),
        Text(
          AppString.noDataFound,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
