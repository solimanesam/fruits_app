import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class AlreadyMemberWidget extends StatelessWidget {
  const AlreadyMemberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Already Member?',
        style: AppTextStyles.subtitle2(context).copyWith(color: Colors.black),
        children: [
          TextSpan(
            text: "Sign up",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
