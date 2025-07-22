import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/features/dashboard/data/models/bottom_nav_model.dart';
import 'package:flutter/material.dart';

class DashboardBottomNavigationBar extends StatelessWidget {
  const DashboardBottomNavigationBar({
    super.key,
    required this.bottomNavModels,
    required this.currentIndex,
    required this.onTap,
  });

  final List<BottomNavModel> bottomNavModels;
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      selectedItemColor: AppColors.lightBlue100,
      unselectedItemColor: AppColors.navy,
      items: List.generate(
        4,
        (index) => BottomNavigationBarItem(
          icon: Icon(
            size: 30,
            bottomNavModels[index].icon,
            color: AppColors.navy,
          ),
          activeIcon: Icon(
            size: 30,
            bottomNavModels[index].icon,
            color: AppColors.lightBlue100,
          ),
          label: bottomNavModels[index].label,
        ),
      ),
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
