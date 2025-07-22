import 'package:e_commerce/src/core/shared_widgets/logo_image.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/email_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/forgot_password_button.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/login_button.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/login_platforms.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/navigating_to_register_view.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/password_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/rememberme_checkbox.dart';
import 'package:e_commerce/src/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool checkValue = false;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 80.0), child: LogoImage()),
          SizedBox(height: 32),
          EmailField(),
          SizedBox(height: 14),
          PasswordField(
            changeVisibility: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
            isPasswordVisible: isPasswordVisible,
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              children: [
                RemembermeCheckbox(
                  value: checkValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkValue = newValue!;
                    });
                  },
                ),
                Spacer(),
                ForgotPasswordButton(),
              ],
            ),
          ),
          SizedBox(height: 20),
          LoginButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => DashboardScreen()),
              );
            },
          ),
          SizedBox(height: 14),
          Text('Or Continue With', style: Styles.fontRegular14),
          SizedBox(height: 16),
          AuthPlatforms(),
          SizedBox(height: 14),
          NavigatingToRegisterView(),
        ],
      ),
    );
  }
}
