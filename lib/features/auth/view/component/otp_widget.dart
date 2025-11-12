import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';
import 'package:pinput/pinput.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.width;

    final circleSize = min(max(screenWidth * 0.15, 50), 70.05).toDouble();
    final borderColor = Colors.grey.shade400;
    final fillColor = Colors.grey.shade100;

    final defaultPinTheme = PinTheme(
      width: circleSize,
      height: circleSize,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: fillColor,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 1.5),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.blueAccent, width: 2),
      color: Colors.grey.shade50,
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Colors.grey.shade200,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Pinput(
          controller: pinController,
          focusNode: focusNode,
          length: 4,
          obscureText: true,
          obscuringWidget: const Icon(
            Icons.circle,
            size: 10,
            color: Colors.black87,
          ),
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          showCursor: false,
          separatorBuilder: (index) => SizedBox(width: circleSize * 0.15),
          onCompleted: (pin) {
            debugPrint('OTP entered: $pin');
          },
        ),
      ),
    );
  }
}
