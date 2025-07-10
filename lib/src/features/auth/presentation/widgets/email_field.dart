import 'package:e_commerce/src/core/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      title: title,
      inputType: TextInputType.emailAddress,
      hintText: 'Enter your email',
      prefixIcon: Icon(Icons.email_outlined),
    );
  }
}
