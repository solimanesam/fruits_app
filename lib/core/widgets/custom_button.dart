import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? color;
  final Color? borderColor;
  final TextStyle? textStyle;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.color,
    this.textStyle,
    this.borderRadius = 30,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: width != null
          ? BoxConstraints.tightFor(width: width, height: height)
          : const BoxConstraints(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: color ?? AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(color: borderColor ?? AppColors.primary, width: 2),
          ),
          padding: height == null
              ? const EdgeInsets.symmetric(horizontal: 20, vertical: 17)
              : EdgeInsets.zero,
        ),
        child: Text(
          text,
          style:
              textStyle ??
              AppTextStyles.button(context).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
