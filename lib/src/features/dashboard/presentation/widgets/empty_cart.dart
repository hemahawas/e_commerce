import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(30),
        SvgPicture.asset(Assets.imagesIllustrationSearchNotFoundEmpty),
        const Gap(27),
        const Text('Your Cart is Empty', style: Styles.fontMedium24),
        const Gap(30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Check our big offers, fresh products and fill your cart with items',
            style: Styles.fontMedium16,
            textAlign: TextAlign.center,
          ),
        ),
        const Gap(30),
        CustomButton(buttonText: 'Start Shopping', onPressed: () {}),
      ],
    );
  }
}
