import 'package:complete_advanced_course/presentaion/resources/color_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/fonts_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/style_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/values_manager.dart';
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
    textTheme: TextTheme(
        headline1: getSemiBoldStyle(
            color: Colormanager.darkGrey, fontSize: FontSize.s16),
        subtitle1: getMediumStyle(
          color: Colormanager.lightGrey,
          fontSize: FontSize.s14,
        ),
        subtitle2: getMediumStyle(
          color: Colormanager.primary,
          fontSize: FontSize.s14,
        ),
        caption: getRegularStyle(color: Colormanager.grey1),
        bodyText1: getRegularStyle(color: Colormanager.grey)),

    //input decoration theme(text form field)
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        //hint style
        hintStyle: getRegularStyle(color: Colormanager.grey1),

        //label style
        labelStyle: getMediumStyle(color: Colormanager.darkGrey),

        //error style
        errorStyle: getRegularStyle(color: Colormanager.error),

        //enable border
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colormanager.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),

        //focused border
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colormanager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),

        //error border
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colormanager.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),

        //focused error border
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colormanager.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        )),
  );
}
