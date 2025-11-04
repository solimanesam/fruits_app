import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/get_responsive_font_size.dart';

class AppTextStyles {
  AppTextStyles._();

  /// Headings
  static TextStyle h1(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: getResponsiveFontSize(context: context, fontSize: 32),
    height: 1.3,
  );

  static TextStyle h2(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFontSize(context: context, fontSize: 24),
    height: 1.4,
  );

  static TextStyle h3(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFontSize(context: context, fontSize: 20),
    height: 1.4,
  );

  /// Subtitles
  static TextStyle subtitle1(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveFontSize(context: context, fontSize: 18),
    height: 1.4,
  );

  static TextStyle subtitle2(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveFontSize(context: context, fontSize: 16),
    height: 1.4,
  );

  /// Body
  static TextStyle body1(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context: context, fontSize: 16),
    height: 1.5,
  );

  static TextStyle body2(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context: context, fontSize: 14),
    height: 1.5,
  );

  /// Caption
  static TextStyle caption(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context: context, fontSize: 12),
    height: 1.4,
  );

  /// Buttons
  static TextStyle button(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFontSize(context: context, fontSize: 16),
    height: 1.2,
  );
}
