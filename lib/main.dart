import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_function/get_init_route.dart';
import 'package:fruits_app/core/helper_function/route_generator.dart';
import 'package:fruits_app/core/theme/app_theme.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp(), enabled: true));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: getInitRoute,
      theme: apptheme,
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}
