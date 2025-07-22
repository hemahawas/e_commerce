import 'package:e_commerce/src/features/auth/presentation/widgets/signup_back_button.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';

// For home feature
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBackButton(onPressed: onPressed),
        Text(title),
        ProfileImage(),
      ],
    );
  }
}
