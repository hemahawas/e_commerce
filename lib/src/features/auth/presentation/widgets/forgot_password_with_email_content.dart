import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/auth_appbar.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/email_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/signup_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordWithEmailContent extends StatelessWidget {
  const ForgotPasswordWithEmailContent({
    super.key,
    required this.onBackPressed,
    required this.onSendCode,
  });
  final VoidCallback onBackPressed;
  final VoidCallback onSendCode;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          AuthAppbar(onPressed: () => onBackPressed, text: 'Forgot Password'),
          SizedBox(height: 44),
          SvgPicture.asset(Assets.imagesIllustrationForgotPasswordWithEmail),
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Text(
              textAlign: TextAlign.center,
              'Please enter your phone number to receive a verification code',
              style: Styles.fontMedium16,
            ),
          ),
          SizedBox(height: 22),
          EmailField(title: 'Email'),
          SizedBox(height: 22),
          CustomButton(buttonText: 'Send Code', onPressed: onSendCode),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}
