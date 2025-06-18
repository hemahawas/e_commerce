import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(10), // Button padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: AppColors.lightBlue100),
        ),
      ),
      child: Text(
        'Skip',
        style: Styles.fontSemiBold20.copyWith(
          fontSize: 16,
          color: AppColors.lightBlue100,
        ),
      ),
    );
  }
}
