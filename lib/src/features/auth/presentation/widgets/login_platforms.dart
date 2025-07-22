import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:e_commerce/src/features/auth/data/models/auth_platform_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPlatforms extends StatelessWidget {
  const AuthPlatforms({super.key});

  static final List<AuthPlatformModel> models = [
    GoogleAuthPlatformModel(
      icon: Assets.imagesLogoGoogle,
      onPressed: () {
        debugPrint('Google');
      },
    ),
    GoogleAuthPlatformModel(icon: Assets.imagesLogoFacebok, onPressed: () {}),
    GoogleAuthPlatformModel(icon: Assets.imagesLogoApple, onPressed: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => LoginPlatformItem(
          logo: models[index].icon,
          onPressed: models[index].onPressed,
        ),
      ),
    );
  }
}

class LoginPlatformItem extends StatelessWidget {
  const LoginPlatformItem({
    super.key,
    required this.logo,
    required this.onPressed,
  });
  final String logo;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      minWidth: 40,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: SvgPicture.asset(logo),
    );
  }
}
