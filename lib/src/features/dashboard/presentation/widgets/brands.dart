import 'package:e_commerce/src/core/shared_widgets/custom_image_rectangle.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/shopping_header_with_viewall.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShoppingHeaderWithViewall(header: 'Brands', onPressed: () {}),
        const Gap(8),
        AspectRatio(
          aspectRatio: 347 / 100,
          child: Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
              (_) => const Flexible(
                child: CustomImageRectangle(imagePath: '', showText: false),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
