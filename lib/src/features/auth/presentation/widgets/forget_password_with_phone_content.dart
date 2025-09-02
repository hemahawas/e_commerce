import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/auth_appbar.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/phone_field.dart';
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
          const SizedBox(height: 15),
          AuthAppbar(onPressed: () => onBackPressed, text: 'Forgot Password'),
          const SizedBox(height: 44),
          SvgPicture.asset(Assets.imagesIllustrationForgotPasswordWithPhone),
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Text(
              textAlign: TextAlign.center,
              'Please enter your phone number to receive a verification code',
              style: Styles.fontMedium16,
            ),
          ),
          const SizedBox(height: 22),
          const PhoneField(),
          const SizedBox(height: 22),
          CustomButton(buttonText: 'Send Code', onPressed: onSendCode),

          const SizedBox(height: 22),
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
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
