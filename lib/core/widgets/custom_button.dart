import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? color;
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
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: width != null
          ? BoxConstraints.tightFor(width: width, height: height)
          : const BoxConstraints(), // بدون width → على قد الكلمة
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: color ?? const Color(0xFF194D36),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: height == null
              ? const EdgeInsets.symmetric(horizontal: 20, vertical: 12)
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
