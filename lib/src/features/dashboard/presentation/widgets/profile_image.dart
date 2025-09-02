import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/utils/app_images.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: AppColors.lightBlue100,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          Assets.imagesUuuserImage,
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
