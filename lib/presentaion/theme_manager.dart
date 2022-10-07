import 'package:complete_advanced_course/presentaion/color_manager.dart';
import 'package:complete_advanced_course/presentaion/fonts_manager.dart';
import 'package:complete_advanced_course/presentaion/style_manager.dart';
import 'package:complete_advanced_course/presentaion/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //Main color of the app
    primaryColor: Colormanager.primary,
    primaryColorLight: Colormanager.primaryOpacity70,
    primaryColorDark: Colormanager.darkPrimary,
    disabledColor: Colormanager.grey1,
    //ripple color
    splashColor: Colormanager.primaryOpacity70,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colormanager.grey),

    //card view theme
    cardTheme: CardTheme(
        color: Colormanager.white,
        shadowColor: Colormanager.grey,
        elevation: 0),

    //App ba theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colormanager.primary,
        elevation: AppSize.s4,
        shadowColor: Colormanager.primaryOpacity70,
        titleTextStyle:
            getRegularStyle(color: Colormanager.white, fontSize: FontSize.s16)),

    //Button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: Colormanager.grey1,
        buttonColor: Colormanager.primary,
        splashColor: Colormanager.primaryOpacity70),

    //Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: Colormanager.white),
        backgroundColor: Colormanager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    //Text theme

    //input decoration theme(text form field)
  );
}
