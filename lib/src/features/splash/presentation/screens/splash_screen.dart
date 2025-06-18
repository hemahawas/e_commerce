import 'package:e_commerce/src/features/splash/presentation/screens/onboarding_screen.dart';
import 'package:e_commerce/src/features/splash/presentation/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      _goNext();
    });
  }

  _goNext() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const OnboardingScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SplashBody()));
  }
}
