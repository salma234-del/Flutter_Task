import 'package:flutter/material.dart';
import 'package:task/utils/strings.dart';
import 'package:task/utils/styles.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        AppStrings.assets,
        style: Styles.textStyle20,
      )),
    );
  }
}
