import 'package:e_commerce/src/core/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.changeVisibility,
    required this.isPasswordVisible,
    this.title,
  });
  final String? title;
  final VoidCallback changeVisibility;
  final bool isPasswordVisible;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      title: title,
      hintText: 'Password',
      isPassword: !isPasswordVisible,
      prefixIcon: const Icon(Icons.lock_outline),
      suffixIcon: IconButton(
        icon: Icon(
          isPasswordVisible
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
        ),
        onPressed: changeVisibility,
      ),
    );
  }
}
