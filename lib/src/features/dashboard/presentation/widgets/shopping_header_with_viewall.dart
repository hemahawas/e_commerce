import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class ShoppingHeaderWithViewall extends StatelessWidget {
  const ShoppingHeaderWithViewall({
    super.key,
    required this.header,
    required this.onPressed,
  });
  final String header;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(header, style: Styles.fontSemiBold20),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'View all',
            style: Styles.fontSemiBold16.copyWith(
              color: AppColors.lightBlue100,
            ),
          ),
        ),
      ],
    );
  }
}
