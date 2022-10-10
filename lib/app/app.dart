import 'package:complete_advanced_course/presentaion/resources/routes_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //Private constructor
  static final MyApp instance = MyApp._internal(); //Single Instance Singleton
  factory MyApp() => instance; //Create Factory for the class instance
  int appState = 0;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.initialRoute,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
    );
  }
}
