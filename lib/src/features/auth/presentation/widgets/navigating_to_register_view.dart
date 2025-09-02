import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/auth/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class NavigatingToRegisterView extends StatelessWidget {
  const NavigatingToRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Are you new in Marketi', style: Styles.fontMedium14),
        MaterialButton(
          minWidth: 80,
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const SignupScreen()));
          },
          child: Text(
            'register?',
            style: Styles.fontMedium14.copyWith(color: AppColors.lightBlue100),
          ),
        ),
      ],
    );
  }
}
