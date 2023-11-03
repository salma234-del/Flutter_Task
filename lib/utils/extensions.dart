import 'package:flutter/material.dart';

// extension to get width and height of a screen with media query
extension MediaQueryHelper on BuildContext {
  double get w => MediaQuery.of(this).size.height;

  double get h => MediaQuery.of(this).size.width;
}

// extension to put empty space with SizedBox
extension EmptySpace on num {
  SizedBox get h => SizedBox(height: toDouble());

  SizedBox get w => SizedBox(width: toDouble());
}

