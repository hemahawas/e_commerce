import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/profile_image.dart';
import 'package:flutter/material.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileImage(),
        const SizedBox(width: 10),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none, color: AppColors.lightBlue100),
        ),
      ],
    );
  }
}
