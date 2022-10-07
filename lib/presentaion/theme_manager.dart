import 'package:complete_advanced_course/presentaion/color_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //Main color of the app
    primaryColor: Colormanager.primary,
    primaryColorLight: Colormanager.primaryOpacity70,
    primaryColorDark: Colormanager.darkPrimary,

    disabledColor: Colormanager.grey1,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colormanager.grey),

    //card view theme

    //App ba theme

    //Button theme

    //Text theme

    //input decoration theme(text form field)
  );
}
