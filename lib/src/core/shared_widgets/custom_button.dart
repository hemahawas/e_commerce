import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightBlue100, // Button background color
          padding: const EdgeInsets.symmetric(horizontal: 14), // Button padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
        ),
        child: Text(buttonText, style: Styles.fontMedium18),
      ),
    );
  }
}
