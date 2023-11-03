import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/functions.dart';
import 'package:task/utils/styles.dart';

abstract class AppTheme {
  static AppBarTheme appBar = AppBarTheme(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: AppColors.white,
    elevation: 1,
    titleTextStyle: Styles.textStyle20,
    centerTitle: true,
    iconTheme: const IconThemeData(
      color: AppColors.black,
    ),
  );

  static BottomNavigationBarThemeData bottomNavBar =
      BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.white,
    unselectedItemColor: AppColors.greyScale2,
    elevation: 10,
    selectedLabelStyle: Styles.textStyle15,
    unselectedLabelStyle: Styles.textStyle15,
  );

  // app light theme
  static ThemeData lightTheme = ThemeData(
    primarySwatch: buildMaterialColor(AppColors.primary),
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppTheme.appBar,
    bottomNavigationBarTheme: AppTheme.bottomNavBar,
  );
}
