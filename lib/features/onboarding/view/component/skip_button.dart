import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/textstyles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 70),
          Text(
            'Skip',
            style: AppTextStyles.button(
              context,
            ).copyWith(color: Colors.grey.shade600),
          ),
          SizedBox(height: 2),
          Container(width: 30, height: 1, color: Colors.black),
        ],
      ),
    );
  }
}
