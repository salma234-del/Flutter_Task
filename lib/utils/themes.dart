import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/constants.dart';
import 'package:task/utils/functions.dart';
import 'package:task/utils/styles.dart';

abstract class AppTheme {
  static AppBarTheme appBar = AppBarTheme(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: AppColors.white,
    elevation: 5,
    titleTextStyle: Styles.textStyle20,
    centerTitle: true,
    iconTheme: const IconThemeData(
      color: AppColors.black,
      size: 24,
    ),
  );

  static const BottomNavigationBarThemeData bottomNavBar =
      BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.greyScale2,
    elevation: 10,
  );

  // app light theme
  static ThemeData lightTheme = ThemeData(
    fontFamily: Constants.kAppFontFammily,
    primarySwatch: buildMaterialColor(AppColors.primary),
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppTheme.appBar,
    bottomNavigationBarTheme: AppTheme.bottomNavBar,
  );
}
