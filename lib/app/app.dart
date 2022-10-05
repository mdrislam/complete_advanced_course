import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //Private constructor
  static final MyApp instance = MyApp._internal(); //Single Instance Singleton
  factory MyApp() => instance;//Create Factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
