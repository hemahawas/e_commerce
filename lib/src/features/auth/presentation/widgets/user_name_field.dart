import 'package:e_commerce/src/core/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Username',
      title: 'Username',
      prefixIcon: Icon(Icons.person_rounded),
    );
  }
}
