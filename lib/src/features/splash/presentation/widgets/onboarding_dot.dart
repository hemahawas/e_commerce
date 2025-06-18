import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingDot extends StatelessWidget {
  const OnboardingDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveOnboardingDot(),
      secondChild: InActiveOnboardingDot(),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 150),
    );
  }
}

class ActiveOnboardingDot extends StatelessWidget {
  const ActiveOnboardingDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: AppColors.darkBlue900,
        shape: BoxShape.circle,
      ),
    );
  }
}

class InActiveOnboardingDot extends StatelessWidget {
  const InActiveOnboardingDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: AppColors.lightBlue700,
        shape: BoxShape.circle,
      ),
    );
  }
}
