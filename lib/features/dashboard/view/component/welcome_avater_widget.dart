import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';

class WelcomeAvatar extends StatelessWidget {
  const WelcomeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            // دائرة الصورة
            Container(
              width: context.width <= 1000 ? 100 : 200,
              height: context.width <= 1000 ? 100 : 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  context.width <= 1000 ? 50 : 100,
                ),
                border: Border.all(color: AppColors.primary, width: 1),
              ),
            ),

            // أيقونة الكاميرا +
            Positioned(
              bottom: -4,
              right: -4,
              child: Icon(
                Icons.camera_alt_outlined,
                size: context.width <= 1000 ? 30 : 50,
                color: Colors.green.shade800,
              ),
            ),
          ],
        ),

        // النص
        Text("Welcome, Ahmed", style: AppTextStyles.h3(context)),
      ],
    );
  }
}
