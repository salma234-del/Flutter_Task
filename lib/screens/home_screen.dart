import 'package:flutter/material.dart';
import 'package:task/utils/strings.dart';
import 'package:task/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        AppStrings.home,
        style: Styles.textStyle20,
      )),
    );
  }
}
