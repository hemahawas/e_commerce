import 'package:e_commerce/src/core/shared_widgets/custom_product_item.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/shopping_header_with_viewall.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomProductHrizontalList extends StatelessWidget {
  const CustomProductHrizontalList({
    super.key,
    required this.title,
    required this.onViewAllPressed,
  });
  final String title;
  final VoidCallback onViewAllPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShoppingHeaderWithViewall(header: title, onPressed: onViewAllPressed),
        const Gap(8),
        AspectRatio(
          aspectRatio: 374 / 166,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 5,
              children: List.generate(4, (index) => const CustomProductItem()),
            ),
          ),
        ),
      ],
    );
  }
}
