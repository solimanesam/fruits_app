import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSmoothPageIndicator extends StatelessWidget {
  const HomeSmoothPageIndicator({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: CustomizableEffect(
        dotDecoration: DotDecoration(
          width: 10,
          height: 10,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          dotBorder: DotBorder(color: AppColors.primary, width: 2),
        ),
        activeDotDecoration: DotDecoration(
          width: 12,
          height: 12,
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(50),
        ),
        spacing: 12,
      ),
    );
  }
}
