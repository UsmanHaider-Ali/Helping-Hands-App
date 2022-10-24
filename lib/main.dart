import 'package:flutter/material.dart';

import 'resources/routes_manager.dart';
import 'resources/themes_manager.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: RoutesManager.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
