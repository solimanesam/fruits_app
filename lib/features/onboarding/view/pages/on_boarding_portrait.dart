import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:fruits_app/features/onboarding/view/component/on_boarding_next_button.dart';
import 'package:fruits_app/features/onboarding/view/component/on_boarding_smooth_page_imdicator.dart';
import 'package:fruits_app/features/onboarding/view/component/skip_button.dart';
import 'package:flutter/material.dart';

class OnBoardingPortrait extends StatelessWidget {
  const OnBoardingPortrait({
    super.key,
    required this.pageController,
    required this.onBoardingTitle,
    required this.onBoardingBody,
    required this.onTapSkipButton,
    required this.currentIndex,
  });

  final PageController pageController;
  final List<String> onBoardingTitle;
  final List<String> onBoardingBody;
  final Function()? onTapSkipButton;
  final ValueNotifier<int> currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          spacing: 20,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SkipButton(onTap: onTapSkipButton),
            ),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) => currentIndex.value = value,
                itemBuilder: (context, index) {
                  return Column(
                    spacing: 20,
                    children: [
                      Image.asset(
                        "assets/images/on_boarding_image.png",
                        width: context.width * 0.7,
                        height: context.height * 0.3,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        onBoardingTitle[index],
                        style: AppTextStyles.h2(context),
                      ),
                      Text(
                        onBoardingBody[index],
                        textAlign: TextAlign.center,
                        style: AppTextStyles.h3(
                          context,
                        ).copyWith(color: Colors.grey),
                      ),
                    ],
                  );
                },
                itemCount: 3,
              ),
            ),
            OnBoardingSmoothPageInicator(pageController: pageController),
            OnBoardingNextButton(
              currentIndex: currentIndex,
              onTapSkipButton: onTapSkipButton,
              pageController: pageController,
            ),
            SizedBox(height: context.height * 0.05),
          ],
        ),
      ),
    );
  }
}
