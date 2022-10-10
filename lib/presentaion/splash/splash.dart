import 'package:complete_advanced_course/presentaion/resources/assets_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/color_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colormanager.primary,
    body: Center(child: Image.asset(ImageAssets.splashLogo),),);
  }
}
