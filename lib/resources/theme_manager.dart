
import 'package:app_shop/resources/color_manager.dart';
import 'package:app_shop/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getLightThemeData() {
  return ThemeData(
    useMaterial3: true,
    // main colors
    colorScheme: ColorScheme.light(

        onPrimary: ColorManager.white,
        primary: ColorManager.primary,
        secondary: ColorManager.mediumPrimary),

    // primarySwatch:ColorManager.myCustomColor,
    primaryColor: ColorManager.primary,
    dividerColor: ColorManager.primary,
    cardColor: ColorManager.background,
    disabledColor: ColorManager.grey2,
    splashColor: ColorManager.secondprimary,
    scaffoldBackgroundColor: ColorManager.background,
    // appbar theme

    iconTheme: IconThemeData(
      color: ColorManager.primary,
      size: AppSizeHeight.s25,
    ),

    // cardView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey2,
      elevation: AppSizeWidth.s4,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.white, // Set the background color
      selectedItemColor: ColorManager.primary, // Set the selected item color
      unselectedItemColor: ColorManager.grey2,
      selectedIconTheme: IconThemeData(color:ColorManager.primary ),
      unselectedIconTheme: IconThemeData(color:ColorManager.grey3 ),
      selectedLabelStyle: TextStyle(color: ColorManager.primary),
      unselectedLabelStyle: TextStyle(color: ColorManager.grey2),
    ),

    //button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.primary,
      disabledColor: ColorManager.grey2,
      splashColor: ColorManager.mediumPrimary,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(AppSizeWidth.sMaxInfinite, AppSizeHeight.s45),
            foregroundColor: ColorManager.white,
            backgroundColor: ColorManager.primary,
            shadowColor: ColorManager.grey2,
            padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p6, horizontal: AppPadding.p8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizeWidth.s30),
            ),
          )),

    //   =======================     text theme     =============================

    // ========================      input decoration theme     ==============================

    checkboxTheme: CheckboxThemeData(
      shape: const StadiumBorder(),
      //checkColor: MaterialStateProperty.all(ColorManager.primary),
      fillColor: MaterialStateProperty.all(ColorManager.primary),
    ),
    tabBarTheme:  TabBarTheme(
        dividerColor: ColorManager.error, indicatorColor: ColorManager.green),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorManager.primary,
        foregroundColor: ColorManager.white),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: ColorManager.white,
    ),
  );
}
