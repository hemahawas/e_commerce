import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/features/dashboard/data/models/bottom_nav_model.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/cart_body.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/dashboard_bottom_navigation_bar.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/favorites_body.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/home_body.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static final List<Widget> bodies = [HomeBody(), CartBody(), FavoritesBody()];

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  static const List<BottomNavModel> bottomNavModels = [
    BottomNavModel(icon: Icons.home_outlined, label: 'Home'),
    BottomNavModel(icon: Icons.shopping_cart_outlined, label: 'Cart'),
    BottomNavModel(icon: Icons.favorite, label: 'Favorites'),
    BottomNavModel(icon: Icons.menu_rounded, label: 'Menu'),
  ];

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(child: DashboardScreen.bodies[currentIndex]),
      drawer: MenuDrawer(),
      bottomNavigationBar: DashboardBottomNavigationBar(
        bottomNavModels: bottomNavModels,
        currentIndex: currentIndex,
        onTap: (index) {
          if (index < 3) {
            currentIndex = index;
            setState(() {});
          } else {
            scaffoldKey.currentState!.openDrawer();
          }
        },
      ),
    );
  }
}
