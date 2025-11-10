import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class AuthRichText extends StatelessWidget {
  const AuthRichText({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: AppTextStyles.button(context).copyWith(color: Colors.black),
        children: [
          TextSpan(text: ' '),
          TextSpan(
            text: text2,
            style: AppTextStyles.button(
              context,
            ).copyWith(color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
