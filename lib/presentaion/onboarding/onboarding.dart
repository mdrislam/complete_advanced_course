import 'package:complete_advanced_course/presentaion/resources/color_manager.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colormanager.white,
      body: const Center(
        child: Text('On Boarding Screen'),
      ),
    );
  }
}
