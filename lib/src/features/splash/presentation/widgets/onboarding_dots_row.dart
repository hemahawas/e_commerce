import 'package:e_commerce/src/features/splash/presentation/widgets/onboarding_dot.dart';
import 'package:flutter/material.dart';

class OnboardingDotsRow extends StatelessWidget {
  const OnboardingDotsRow({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.0,
      children: List.generate(
        3,
        (index) => OnboardingDot(isActive: currentIndex == index),
      ),
    );
  }
}
