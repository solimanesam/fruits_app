import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/responsive_extention.dart';

double responsiveWidth(BuildContext context) {
  return context.width <= 700 ? double.infinity : context.width * 0.5;
}
