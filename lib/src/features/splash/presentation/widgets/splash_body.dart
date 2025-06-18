import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.imagesLogoSplashScreen,
        height: 200,
        width: 200,
      ),
    );
  }
}
