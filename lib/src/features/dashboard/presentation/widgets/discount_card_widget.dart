import 'package:e_commerce/gen/assets.gen.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscountCardWidget extends StatelessWidget {
  const DiscountCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(Assets.images.discountCard),
        const Text('17% OFF', style: Styles.fontSemiBold12),
      ],
    );
  }
}
