import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';

double responsiveWidth(BuildContext context, {double? maxHeight}) {
  if (maxHeight == null) {
    return context.width <= 700 ? double.infinity : context.width * 0.5;
  } else {
    return context.width <= maxHeight ? double.infinity : context.width * 0.5;
  }
}
