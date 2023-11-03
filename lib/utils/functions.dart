import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task/utils/lists.dart';

// function to convert any color to material color
MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

// move slider pages automatic in certain time
void automaticSliderMove(int currIdx, PageController sliderController) {
  Timer.periodic(const Duration(seconds: 4), (Timer timer) {
    // if current page index smaller then pages size we will increase page index and animate to next page
    if (currIdx < Lists.slider.length) {
      sliderController.animateToPage(
        currIdx,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
      currIdx++;
    } else {
      // else if reach to last page we begin from first page again
      currIdx = 0;
    }
  });
}
