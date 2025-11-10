import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsRichText extends StatelessWidget {
  const TermsRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "By continue you agree to our ",
        style: TextStyle(color: Colors.grey[700], fontSize: 17),
        children: [
          TextSpan(
            text: "Terms of Service",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: " and our "),
          TextSpan(
            text: "Privacy Policy",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
