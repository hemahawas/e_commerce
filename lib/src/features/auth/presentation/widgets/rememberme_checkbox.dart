import 'package:e_commerce/src/core/themes/app_colors.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class RemembermeCheckbox extends StatelessWidget {
  const RemembermeCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 28,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.lightBlue100,
          ),
        ),
        Text('Remember me', style: Styles.fontRegular14),
      ],
    );
  }
}
