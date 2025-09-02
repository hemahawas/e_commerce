import 'package:e_commerce/gen/assets.gen.dart';
import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomImageRectangle extends StatelessWidget {
  const CustomImageRectangle({
    super.key,
    required this.imagePath,
    this.showText,
  });
  final String imagePath;
  final bool? showText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: AppColors.lightBlue700, width: 1),
              ),
            ),
            child: Image.asset(Assets.images.jBLLogo2.path),
          ),
        ),
        showText ?? true
            ? Text(
              'JBL',
              style: Styles.fontSemiBold16.copyWith(
                color: AppColors.darkBlue900,
              ),
            )
            : const SizedBox.shrink(),
      ],
    );
  }
}
