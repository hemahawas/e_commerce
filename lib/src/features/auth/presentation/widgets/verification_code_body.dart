import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:e_commerce/src/features/auth/presentation/screens/create_new_password_screen.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/auth_appbar.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/verification_code_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerificationCodeBody extends StatelessWidget {
  const VerificationCodeBody({
    super.key,
    required this.isEmail,
    required this.verificationInput,
  });
  final bool isEmail;
  final String verificationInput;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 15),
          AuthAppbar(
            onPressed: () => Navigator.pop(context),
            text: 'Forgot Password',
          ),
          const SizedBox(height: 44),
          SvgPicture.asset(
            isEmail
                ? Assets.imagesIllustrationVerificationCodeWithEmail
                : Assets.imagesIllustrationVerificationCodeWithPhone,
          ),
          const SizedBox(height: 22),
          Text(
            'Please enter the 4 digit code sent to: $verificationInput',
            style: Styles.fontMedium16,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          const VerificationCodeField(),
          const SizedBox(height: 22),
          CustomButton(
            buttonText: 'Verify Code',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CreateNewPasswordScreen()),
              );
            },
          ),

          const SizedBox(height: 22),
          const Text('46:00', style: Styles.fontSemiBold16),
          const SizedBox(height: 22),
          TextButton(
            onPressed: () {},
            child: const Text('Resend Code', style: Styles.fontSemiBold16),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
