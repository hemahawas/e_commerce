import 'package:e_commerce/src/core/shared_widgets/custom_image_rectangle.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/shopping_header_with_viewall.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(14),
        ShoppingHeaderWithViewall(header: 'Category', onPressed: () {}),
        const Gap(8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            crossAxisSpacing: 16,
            crossAxisCount: 3,
          ),

          itemBuilder: (_, index) => const CustomImageRectangle(imagePath: ''),
        ),
      ],
    );
  }
}
