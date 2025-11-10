import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.hint,
    this.leading,
    this.height,
    this.width,
    this.controller,
    required this.keyboardType,
    required this.obscureText,
    required this.title,
  });

  final String hint;
  final String title;
  final Widget? leading;
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: AppTextStyles.button(context).copyWith(color: Colors.grey),
            children: [
              TextSpan(
                text: '*',
                style: AppTextStyles.caption(
                  context,
                ).copyWith(color: Colors.red),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height ?? 55,
          width: width ?? double.infinity,
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              prefix: leading,
              hintText: hint,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
