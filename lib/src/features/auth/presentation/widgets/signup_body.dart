import 'package:e_commerce/src/core/shared_widgets/logo_image.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/email_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/login_platforms.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/name_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/password_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/phone_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/signup_back_button.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/signup_button.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/user_name_field.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 20),
                child: CustomBackButton(
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Center(child: LogoImage()),
            ],
          ),

          NameField(),
          UserNameField(),
          PhoneField(),
          EmailField(title: 'Email'),
          PasswordField(
            title: 'Password',
            changeVisibility: () {},
            isPasswordVisible: false,
          ),
          PasswordField(
            title: 'Confirm Password',
            changeVisibility: () {},
            isPasswordVisible: false,
          ),
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: SignupButton(),
          ),
          SizedBox(height: 5),
          Text('Or Continue With', style: Styles.fontRegular14),
          AuthPlatforms(),
          SizedBox(height: 14),
        ],
      ),
    );
  }
}
