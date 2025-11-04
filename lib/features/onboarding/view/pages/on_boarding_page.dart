import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/routes_constants.dart';
import 'package:fruits_app/core/utils/responsive_orienation.dart';
import 'package:fruits_app/features/onboarding/view/pages/on_boarding_landscape.dart';
import 'package:fruits_app/features/onboarding/view/pages/on_boarding_portrait.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController pageController = PageController();
  final ValueNotifier<int> currentIndex = ValueNotifier(0);
  @override
  void dispose() {
    pageController.dispose();
    currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveOrientation(
      portrait: OnBoardingPortrait(
        pageController: pageController,
        onBoardingTitle: onBoardingTitle,
        onBoardingBody: onBoardingBody,
        onTapSkipButton: () => nav(context),
        currentIndex: currentIndex,
      ),
      landscape: OnBoardingLandscape(
        pageController: pageController,
        onBoardingTitle: onBoardingTitle,
        onBoardingBody: onBoardingBody,
        onTapSkipButton: () => nav(context),
        currentIndex: currentIndex,
      ),
    );
  }

  List<String> onBoardingTitle = [
    'E Shopping',
    'Delivery Arrived',
    'Delivery Arrived',
  ];
  List<String> onBoardingBody = [
    'Explore op organic fruits & grab them',
    'Order is arrived at your Place',
    'Order is arrived at your Place',
  ];
  nav(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      RoutesConstants.loginRoute,
      (route) => false,
    );
  }
}
