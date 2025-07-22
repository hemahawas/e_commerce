import 'package:e_commerce/src/features/auth/presentation/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const SignupBody()));
  }
}
