import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpWidget extends StatefulWidget {
  //final void Function(String) onSubmit;
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
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.grey.shade300),
      ),
    );

    return Scaffold(
      body: Pinput(
        length: 4,
        controller: pinController,
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme,
        onCompleted: (pin) {
          // widget.onSubmit(pin);
        },
      ),
    );
  }
}
