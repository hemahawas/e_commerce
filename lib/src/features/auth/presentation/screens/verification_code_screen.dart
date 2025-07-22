import 'package:e_commerce/src/features/auth/presentation/widgets/verification_code_body.dart';
import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key, required this.isEmail});
  final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VerificationCodeBody(
          isEmail: isEmail,
          verificationInput: 'You@gmail.com',
        ),
      ),
    );
  }
}
