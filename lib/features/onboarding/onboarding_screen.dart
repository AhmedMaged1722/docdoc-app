import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Onboarding Screen',
          style: TextStyle(
            color: mainBlue,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
