import 'package:e_commerce/src/core/shared_widgets/custom_appbar.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/empty_cart.dart';
import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(title: 'Cart', onBackPressed: () {}),
        const EmptyCart(),
      ],
    );
  }
}
