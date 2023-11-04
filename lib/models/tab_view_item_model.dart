import 'package:flutter/material.dart';

class TabViewItemModel {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  TabViewItemModel({
    required this.icon,
    required this.text,
    required this.onPressed,
  });
}
