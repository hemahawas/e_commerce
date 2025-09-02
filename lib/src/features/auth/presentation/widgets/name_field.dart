import 'package:e_commerce/src/core/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(
      title: 'Your Name',
      hintText: 'Full Name',
      prefixIcon: Icon(Icons.person_add_alt_rounded),
    );
  }
}
