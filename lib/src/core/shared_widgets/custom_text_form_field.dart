import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.secondPrefixIcon,
    this.suffixIcon,
    this.isPassword,
    this.validator,
    this.inputType,
    this.title,
  });
  final String hintText;
  final Icon prefixIcon;
  final Icon? secondPrefixIcon;
  final Widget? suffixIcon;
  final bool? isPassword;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Text(
                title!,
                style: Styles.fontSemiBold20.copyWith(fontSize: 12),
              )
              : SizedBox.shrink(),
          TextFormField(
            obscureText: isPassword ?? false,
            cursorColor: AppColors.lightBlue700,
            validator: validator,
            keyboardType: inputType,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 14),
                  prefixIcon,
                  SizedBox(width: 12),
                  secondPrefixIcon ?? SizedBox.shrink(),
                ],
              ),
              suffixIcon: suffixIcon,
              hintStyle: Styles.fontRegular12,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightBlue700, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightBlue700, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
