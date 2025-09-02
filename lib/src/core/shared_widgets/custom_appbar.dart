import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/auth/presentation/widgets/signup_back_button.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// For home feature
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.onBackPressed,
  });
  final String? title;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(14),
        CustomBackButton(onPressed: onBackPressed),
        Expanded(
          child:
              title != null
                  ? Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: Styles.fontSemiBold20,
                  )
                  : const SizedBox(),
        ),
        const ProfileImage(),
        const Gap(14),
      ],
    );
  }
}
