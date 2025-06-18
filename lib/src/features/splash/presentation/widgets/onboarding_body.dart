import 'package:e_commerce/src/core/shared_widgets/custom_button.dart';
import 'package:e_commerce/src/core/themes/styles.dart';
import 'package:e_commerce/src/core/utils/app_images.dart';
import 'package:e_commerce/src/features/splash/models/onboarding_model.dart';
import 'package:e_commerce/src/features/splash/presentation/widgets/onboarding_dots_row.dart';
import 'package:e_commerce/src/features/splash/presentation/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentIndex = 0;

  final List<OnboardingModel> onboardingModels = [
    OnboardingModel(
      image: Assets.imagesIllustrationOnboarding1,
      title: 'Welcome to Marketi',
      description:
          'Discover a world of endless possibilities and shop from the '
          'comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.',
      buttonText: 'Next',
    ),
    OnboardingModel(
      image: Assets.imagesIllustrationOnboarding2,
      title: 'Easy to Buy',
      description:
          'Find the perfect item that suits your style and needs With secure payment options and fast delivery,'
          ' shopping has never been easier.',
      buttonText: 'Next',
    ),
    OnboardingModel(
      image: Assets.imagesIllustrationOnboarding3,
      title: 'Wonderful User Experience',
      description:
          'Start exploring now and experience the convenience of online shopping at its best.',
      buttonText: 'Get Start',
    ),
  ];

  _navigate() {
    // Navigate to the next screen when skip is pressed
    // Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: SkipButton(
                onPressed: () {
                  _navigate();
                },
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: SvgPicture.asset(
              onboardingModels[currentIndex].image,
              height: 256,
              width: 344.03,
            ),
          ),
          SizedBox(height: 40),
          OnboardingDotsRow(currentIndex: currentIndex),
          SizedBox(height: 24),
          Text(
            onboardingModels[currentIndex].title,
            style: Styles.fontSemiBold20,
          ),
          SizedBox(height: 43),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Text(
              textAlign: TextAlign.center,
              onboardingModels[currentIndex].description,
              style: Styles.fontMedium14,
            ),
          ),
          SizedBox(height: 100),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: CustomButton(
              buttonText: onboardingModels[currentIndex].buttonText,
              onPressed: () {
                if (currentIndex < onboardingModels.length - 1) {
                  setState(() {
                    currentIndex++;
                  });
                } else {
                  _navigate();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
