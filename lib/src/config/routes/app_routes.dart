import 'package:e_commerce/src/core/constants/app_constants.dart';
import 'package:e_commerce/src/features/auth/presentation/screens/login_screen.dart';
import 'package:e_commerce/src/features/auth/presentation/screens/signup_screen.dart';
import 'package:e_commerce/src/features/splash/presentation/screens/onboarding_screen.dart';
import 'package:e_commerce/src/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
  static const String signup = '/signup';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) {
            return const OnboardingScreen();
          },
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (context) {
            return const SignupScreen();
          },
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder:
          ((context) => const Scaffold(
            body: Center(child: Text(AppStrings.noRouteFound)),
          )),
    );
  }
}
