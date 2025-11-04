import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/routes_constants.dart';
import 'package:fruits_app/features/auth/view/pages/log_in_page.dart';
import 'package:fruits_app/features/onboarding/view/pages/on_boarding_page.dart';
import 'package:fruits_app/features/splash_screen/splash_screen_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesConstants.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());

      case RoutesConstants.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());

      case RoutesConstants.loginRoute:
        return MaterialPageRoute(builder: (_) => const LogInPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text("Page not found")),
      ),
    );
  }
}
