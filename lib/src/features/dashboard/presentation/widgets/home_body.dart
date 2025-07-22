import 'package:e_commerce/src/features/dashboard/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [SliverToBoxAdapter(child: HomeAppBar())]);
  }
}
