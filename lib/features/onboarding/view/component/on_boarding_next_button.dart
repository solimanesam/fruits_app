import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
    required this.currentIndex,
    required this.onTapSkipButton,
    required this.pageController,
  });

  final ValueNotifier<int> currentIndex;
  final Function()? onTapSkipButton;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentIndex,
      builder: (context, value, child) {
        return CustomButton(
          text: value == 2 ? 'Get Started' : 'Next',
          onPressed: () {
            if (value == 2) {
              onTapSkipButton!();
            } else {
              pageController.nextPage(
                duration: Duration(milliseconds: 200),
                curve: Curves.bounceInOut,
              );
            }
          },
          width: context.width * 0.4,
        );
      },
    );
  }
}
