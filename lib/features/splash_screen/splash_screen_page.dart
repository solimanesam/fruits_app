import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/routes_constants.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesConstants.homeRoute);
    });
    return Scaffold(
      body: Image.asset(
        'assets/images/splash_screen.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
