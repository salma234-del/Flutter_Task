import 'package:flutter/material.dart';

class SliderModel {
  final String image;
  final String title;
  final String? body;
  final String buttomText;
  final VoidCallback onPressed;

  SliderModel({
    required this.image,
    required this.title,
    this.body,
    required this.buttomText,
    required this.onPressed
  });
}
