import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(
              height: context.height * .20,
              width: responsiveWidth(context),
              child: PageView.builder(
                itemCount: 3,
                controller: controller,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/on_boarding_image.png',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
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
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Row(children: [CategoryWidget(), SizedBox(width: 10)]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sellers', style: AppTextStyles.h3(context)),
                Text(
                  'Show all',
                  style: AppTextStyles.h3(
                    context,
                  ).copyWith(color: Colors.blueAccent),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SellerWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SellerWidget extends StatelessWidget {
  const SellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 110,
        padding: EdgeInsets.all(10),
        width: responsiveWidth(context),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 82,
              height: 82,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/group22.png'),
                ),
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)],
              ),
            ),
            Spacer(flex: 1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Seller name', style: AppTextStyles.h3(context)),
                Text(
                  'Delivery Charges : 0.5 KD',
                  style: AppTextStyles.body2(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
                RichText(
                  text: TextSpan(
                    text: '*  ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Open  ',
                        style: AppTextStyles.body2(
                          context,
                        ).copyWith(color: Colors.green),
                      ),
                      TextSpan(
                        text: '*  ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'Coffee',
                        style: AppTextStyles.body2(
                          context,
                        ).copyWith(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(flex: 3),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '4.5',
                  style: AppTextStyles.body2(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
                Text(
                  '2.5 KM',
                  style: AppTextStyles.body2(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/image7.png')),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
        color: Colors.white,
      ),
    );
  }
}
