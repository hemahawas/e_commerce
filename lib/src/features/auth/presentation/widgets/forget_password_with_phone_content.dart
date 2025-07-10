import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/phone_field.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/signup_back_button.dart';
import 'package:e_commerce/src/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordWithPhoneContent extends StatelessWidget {
  const ForgetPasswordWithPhoneContent({
    super.key,
    required this.onSendCode,
    required this.onTryAnotherWay,
    required this.onBackPressed,
  });
  final VoidCallback onSendCode;
  final VoidCallback onTryAnotherWay;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 15),
              CustomBackButton(onPressed: onBackPressed),
              SizedBox(width: 8),
              Text('Forgot Password', style: Styles.fontMedium16),
            ],
          ),
          SizedBox(height: 44),
          SvgPicture.asset(Assets.imagesIllustrationForgotPasswordWithPhone),
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
          PhoneField(),
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: CustomButton(buttonText: 'Send Code', onPressed: onSendCode),
          ),
          SizedBox(height: 22),
          TextButton(
            onPressed: onTryAnotherWay,
            child: Text(
              'Try Another Way',
              style: Styles.fontSemiBold20.copyWith(
                fontSize: 16,
                color: AppColors.lightBlue100,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
