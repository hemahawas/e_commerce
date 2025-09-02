import 'dart:async';

import 'package:e_commerce/src/config/routes/app_routes.dart';
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
    Timer(const Duration(seconds: 2), () {
      _goNext();
    });
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoarding);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SplashBody()));
  }
}
