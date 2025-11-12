import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/responsive_width.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/view/component/otp_widget.dart';

class RecivedOtpPage extends StatefulWidget {
  const RecivedOtpPage({super.key});

  @override
  State<RecivedOtpPage> createState() => _RecivedOtpPageState();
}

class _RecivedOtpPageState extends State<RecivedOtpPage> {
  final ValueNotifier<int> secondsLeft = ValueNotifier<int>(0);
  Timer? timer;
  @override
  void dispose() {
    secondsLeft.dispose();
    super.dispose();
  }

  void startTimer() {
    timer?.cancel();
    secondsLeft.value = 60;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsLeft.value > 0) {
        secondsLeft.value--;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            spacing: 50,
            children: [
              Text(
                'Fruit Market',
                style: AppTextStyles.title(
                  context,
                ).copyWith(color: AppColors.primary),
              ),
              Text('Enter Received Otp', style: AppTextStyles.h1(context)),
              OtpWidget(),
              CustomButton(
                text: 'Confirm',
                onPressed: () => startTimer(),
                width: responsiveWidth(context),
              ),
              ValueListenableBuilder(
                valueListenable: secondsLeft,
                builder: (context, value, child) {
                  return Visibility(
                    visible: secondsLeft.value != 0,
                    child: Text(
                      '$value',
                      style: AppTextStyles.title(
                        context,
                      ).copyWith(color: Colors.grey),
                    ),
                  );
                },
              ),
              RichText(
                text: TextSpan(
                  text: 'Not Received? ',
                  style: AppTextStyles.subtitle1(
                    context,
                  ).copyWith(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Send Again',
                      style: AppTextStyles.subtitle1(
                        context,
                      ).copyWith(color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
