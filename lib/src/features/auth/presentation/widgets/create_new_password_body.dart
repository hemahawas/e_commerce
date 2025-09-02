import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:e_commerce/src/features/auth/presentation/screens/congratulations_screen.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/auth_appbar.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateNewPasswordBody extends StatelessWidget {
  const CreateNewPasswordBody({super.key});

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
          SvgPicture.asset(Assets.imagesIllustrationCreateNewPassword),
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Text(
              textAlign: TextAlign.center,
              'New password must be different from last password',
              style: Styles.fontMedium16,
            ),
          ),
          const SizedBox(height: 22),
          PasswordField(changeVisibility: () {}, isPasswordVisible: false),
          const SizedBox(height: 22),
          PasswordField(changeVisibility: () {}, isPasswordVisible: false),
          const SizedBox(height: 22),
          CustomButton(
            buttonText: 'Save Password',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const CongratulationsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
