import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';

class WelcomeSignContainer extends StatelessWidget {
  const WelcomeSignContainer({
    super.key,
    required this.title,
    required this.icon,
    this.color,
    this.textColor,
  });
  final String title;
  final IconData icon;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 60,
        width: context.width <= 700 ? double.infinity : context.width * 0.5,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Icon(icon, size: 30, color: textColor ?? Colors.black),
            Text(
              'Sign in with $title',
              style: AppTextStyles.subtitle2(
                context,
              ).copyWith(color: textColor ?? Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
