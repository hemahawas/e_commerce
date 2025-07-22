import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/signup_back_button.dart';
import 'package:flutter/material.dart';

class AuthAppbar extends StatelessWidget {
  const AuthAppbar({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15),
        CustomBackButton(onPressed: () => Navigator.pop(context)),
        SizedBox(width: 8),
        Text('Forgot Password', style: Styles.fontMedium16),
      ],
    );
  }
}
