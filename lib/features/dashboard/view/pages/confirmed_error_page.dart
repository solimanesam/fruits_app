import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_orienation.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class ConfirmedErrorPage extends StatelessWidget {
  const ConfirmedErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(title: 'Checkout'),
      body: ResponsiveOrientation(
        portrait: PortraitDesign(),
        landscape: LandScapeDesign(),
      ),
    );
  }
}

class PortraitDesign extends StatelessWidget {
  const PortraitDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            Image.asset('assets/images/error.png'),
            SizedBox(height: 30),
            Text(
              'OPS',
              style: AppTextStyles.h2(
                context,
              ).copyWith(color: Color(0xffFF4A4A)),
            ),
            Text(
              'Error while confirming your payment/order',
              style: AppTextStyles.body2(
                context,
              ).copyWith(color: const Color.fromARGB(255, 75, 74, 74)),
            ),
            SizedBox(height: 30),
            CustomButton(
              text: 'Back',
              color: Color(0xffFF4A4A),
              borderColor: Color(0xffFF4A4A),
              onPressed: () {},
              width: responsiveWidth(context),
            ),
          ],
        ),
      ),
    );
  }
}

class LandScapeDesign extends StatelessWidget {
  const LandScapeDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            Image.asset('assets/images/error.png'),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OPS',
                  style: AppTextStyles.h2(
                    context,
                  ).copyWith(color: Color(0xffFF4A4A)),
                ),
                Text(
                  'Error while confirming your payment/order',
                  style: AppTextStyles.body2(
                    context,
                  ).copyWith(color: const Color.fromARGB(255, 75, 74, 74)),
                ),
                SizedBox(height: 30),
                CustomButton(
                  text: 'Back',
                  color: Color(0xffFF4A4A),
                  borderColor: Color(0xffFF4A4A),
                  onPressed: () {},
                  width: responsiveWidth(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
