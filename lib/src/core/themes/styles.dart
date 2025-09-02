import 'package:e_commerce/src/core/constants/app_constants.dart';
import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

/*
  * Light     300
  * Regular   400
  * Medium    500
  * SemiBold  600
  * Bold      700
*/

abstract class Styles {
  Styles._();

  static const TextStyle fontSemiBold20 = TextStyle(
    fontSize: 20,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w600,
    color: AppColors.darkBlue900,
  );
  static const TextStyle fontSemiBold16 = TextStyle(
    fontSize: 16,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w600,
    color: AppColors.navy,
  );
  static const TextStyle fontSemiBold12 = TextStyle(
    fontSize: 12,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w600,
    color: AppColors.lightBlue100,
  );

  static const TextStyle fontMedium14 = TextStyle(
    fontSize: 14,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue900,
  );

  static const TextStyle fontMedium16 = TextStyle(
    fontSize: 16,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w500,
    color: AppColors.navy,
  );

  static const TextStyle fontMedium18 = TextStyle(
    fontSize: 18,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle fontMedium20 = TextStyle(
    fontSize: 20,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w600,
    color: AppColors.darkBlue900,
  );

  static const TextStyle fontMedium24 = TextStyle(
    fontSize: 24,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w600,
    color: AppColors.darkBlue900,
  );

  static const TextStyle fontRegular12 = TextStyle(
    fontSize: 12,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w400,
    color: AppColors.grey200,
  );
  static const TextStyle fontRegular14 = TextStyle(
    fontSize: 14,
    fontFamily: AppStrings.poppins,
    fontWeight: FontWeight.w400,
    color: AppColors.navy,
  );
}
