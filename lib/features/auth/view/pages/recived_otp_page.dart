import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 30,
          children: [
            Text(
              'Fruit Market',
              style: AppTextStyles.title(
                context,
              ).copyWith(color: AppColors.primary),
            ),
            Text('Enter Received Otp', style: AppTextStyles.h1(context)),
            Expanded(child: OtpWidget()),
            CustomButton(text: 'Confirm', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
