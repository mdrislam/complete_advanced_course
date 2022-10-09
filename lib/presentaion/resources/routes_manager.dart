import 'package:complete_advanced_course/presentaion/forgot_password/forgot_password.dart';
import 'package:complete_advanced_course/presentaion/home/home.dart';
import 'package:complete_advanced_course/presentaion/login/login.dart';
import 'package:complete_advanced_course/presentaion/onboarding/onboarding.dart';
import 'package:complete_advanced_course/presentaion/register/register.dart';
import 'package:complete_advanced_course/presentaion/splash/splash.dart';
import 'package:complete_advanced_course/presentaion/store_details/storedeatils.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onboardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String homeRoute = '/home';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetails());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('No Route Found'),
              ),
              body: const Center(
                child: Text('No Route Foound'),
              ),
            ));
  }
}
