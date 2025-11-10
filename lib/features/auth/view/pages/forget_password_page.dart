import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:fruits_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/core/widgets/custom_input_field.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: context.height * .1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              spacing: 20,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Fruit Market',
                  style: AppTextStyles.title(
                    context,
                  ).copyWith(color: AppColors.primary),
                ),
                Text('Enter Your Number', style: AppTextStyles.h1(context)),

                CustomInputField(
                  width: context.width <= 700
                      ? double.infinity
                      : context.width * 0.5,
                  title: 'Phone Number',
                  hint: 'Mobile Number',
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),

                CustomButton(
                  text: 'Submit',
                  onPressed: () {},
                  width: context.width <= 700
                      ? double.infinity
                      : context.width * 0.5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
