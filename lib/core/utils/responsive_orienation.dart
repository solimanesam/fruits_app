import 'package:flutter/material.dart';

class ResponsiveOrientation extends StatelessWidget {
  final Widget portrait;
  final Widget landscape;

  const ResponsiveOrientation({
    super.key,
    required this.portrait,
    required this.landscape,
  });

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait) {
      return portrait;
    } else {
      return landscape;
    }
  }
}
