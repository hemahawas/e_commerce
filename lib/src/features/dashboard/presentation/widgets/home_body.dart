import 'package:e_commerce/src/core/shared_widgets/custom_product_hrizontal_list.dart';
import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/brands.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/categories.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: HomeAppBar()),
        SliverToBoxAdapter(child: Image.asset(Assets.imagesOffer1)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: CustomProductHrizontalList(
              title: 'Popular Product',
              onViewAllPressed: () {},
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Categories(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: CustomProductHrizontalList(
              title: 'Best for You',
              onViewAllPressed: () {},
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Brands(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: CustomProductHrizontalList(
              title: 'Buy Agian',
              onViewAllPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
