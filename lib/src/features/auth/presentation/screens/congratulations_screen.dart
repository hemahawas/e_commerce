import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              children: [
                const Text('Congratulations', style: Styles.fontMedium24),

                const Text(
                  'You have updated the password. please login again with your latest password',
                  style: Styles.fontMedium16,
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  buttonText: 'Log In',
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
