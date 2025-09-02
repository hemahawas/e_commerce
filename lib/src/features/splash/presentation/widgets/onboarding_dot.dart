import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingDot extends StatelessWidget {
  const OnboardingDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 20 : 16,
      height: isActive ? 20 : 16,
      decoration: BoxDecoration(
        color: isActive ? AppColors.darkBlue900 : AppColors.lightBlue700,
        shape: BoxShape.circle,
      ),
    );
  }
}
