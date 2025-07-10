import 'package:e_commerce/src/core/shared_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      inputType: TextInputType.phone,
      title: 'Phone Number',
      hintText: '+20 1501142409',
      prefixIcon: Icon(Icons.phone_iphone_outlined),
      secondPrefixIcon: Icon(Icons.keyboard_arrow_down_rounded),
    );
  }
}
