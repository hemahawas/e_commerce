import 'package:e_commerce/gen/assets.gen.dart';
import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/features/dashboard/data/models/product_model.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/discount_card_widget.dart';
import 'package:e_commerce/src/features/dashboard/presentation/widgets/favorite_icon_button.dart';
import 'package:flutter/material.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key, this.model});
  final ProductModel? model;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 160 / 144,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: ShapeDecoration(
          shadows: const [
            BoxShadow(
              color: AppColors.lightBlue900,
              blurRadius: 1,
              offset: Offset(0, 2),
            ),
            BoxShadow(
              color: AppColors.lightBlue900,
              blurRadius: 1,
              offset: Offset(2, 0),
            ),
            BoxShadow(
              color: AppColors.lightBlue900,
              blurRadius: 1,
              offset: Offset(-2, 0),
            ),
            BoxShadow(
              color: AppColors.lightBlue900,
              blurRadius: 1,
              offset: Offset(0, -2),
            ),
          ],
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColors.lightBlue900, width: 0.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: AppColors.lightBlue900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(Assets.images.iPhone11Pro.path),
                    const Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [DiscountCardWidget(), FavoriteIconButton()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Text('55 LE', style: Styles.fontMedium14),
                Spacer(),
                Icon(Icons.star_border, size: 20),
                Text('4.5', style: Styles.fontMedium14),
              ],
            ),
            const Text(
              'Smart Phone',
              style: Styles.fontMedium14,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
