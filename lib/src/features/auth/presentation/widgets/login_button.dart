import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(buttonText: 'Log In', onPressed: onPressed);
  }
}
