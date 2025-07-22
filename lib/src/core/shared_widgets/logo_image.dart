import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesLogoSplashScreen, height: 200, width: 200);
  }
}
