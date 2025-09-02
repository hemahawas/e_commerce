import 'package:e_commerce/src/core/shared_widgets/custom_text_button.dart';
import 'package:e_commerce/src/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: 'Forgot password?',
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()));
      },
    );
  }
}
