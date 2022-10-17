import 'package:flutter/material.dart';
import '/presentation/resources/routes_manager.dart';
import '/presentation/resources/themes_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //private named constructor

  static final MyApp instance =
      MyApp._internal(); //single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: RoutesManager.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
