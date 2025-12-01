import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class ConfirmedOrderPage extends StatelessWidget {
  const ConfirmedOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(title: 'Checkout'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/confimed.png'),
              SizedBox(height: 10),
              Text(
                'YOUR ORDER IS CONFIRMED!',
                style: AppTextStyles.h2(
                  context,
                ).copyWith(color: AppColors.primary),
              ),
              Text(
                'Your order code: #243188\nThank you for choosing our products!',
                textAlign: TextAlign.center,
                style: AppTextStyles.body1(
                  context,
                ).copyWith(color: const Color.fromARGB(255, 75, 74, 74)),
              ),
              CustomButton(
                text: 'Continue Shopping',
                onPressed: () {},
                width: responsiveWidth(context),
              ),
              CustomButton(
                text: 'Track Order',
                color: Colors.white,
                textStyle: AppTextStyles.button(
                  context,
                ).copyWith(color: AppColors.primary),
                borderColor: AppColors.primary,
                onPressed: () {},
                width: responsiveWidth(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
