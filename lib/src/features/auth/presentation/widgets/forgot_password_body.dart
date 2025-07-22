import 'package:e_commerce/src/features/auth/presentation/screens/verification_code_screen.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/forget_password_with_phone_content.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/forgot_password_with_email_content.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({super.key});

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: getContent(currentStep));
  }

  WidgetBuilder getContent(int step) {
    switch (step) {
      case 0:
        return (_) => ForgetPasswordWithPhoneContent(
          onBackPressed: () => Navigator.pop(context),
          onSendCode: () {
            navigateToVerificationCodeScreen(false);
          },
          onTryAnotherWay: () {
            setState(() {
              currentStep = 1;
            });
          },
        );
      default:
        return (_) => ForgotPasswordWithEmailContent(
          onBackPressed: () {
            setState(() {
              currentStep = 0;
            });
          },
          onSendCode: () {
            navigateToVerificationCodeScreen(true);
          },
        );
    }
  }

  navigateToVerificationCodeScreen(bool isEmail) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => VerificationCodeScreen(isEmail: isEmail),
      ),
    );
  }
}
