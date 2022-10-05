import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key); //Defaoult Constructor
  MyApp._internal(); //Private constructor
  static final MyApp instance = MyApp._internal(); //Single Instance Singleton

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
