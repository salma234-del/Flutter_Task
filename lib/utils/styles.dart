import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/constants.dart';

// texts styles

abstract class Styles {

  // text with 16 font size
  static TextStyle textStyle20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: Constants.kAppFontFammily
  );

  // text with 16 font size and 500 weight
  static TextStyle textStyle16_500 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
 
  // text with 16 font size and 400 weight
  static TextStyle textStyle16_400 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.lightBlack,
  );

  static TextStyle textStyle18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static TextStyle textStyle14_300 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );

  static TextStyle textStyle14_500 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static TextStyle textStyle14_400 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
}
