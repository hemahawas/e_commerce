import 'package:e_commerce/src/features/auth/presentation/widgets/create_new_password_body.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: CreateNewPasswordBody()));
  }
}
