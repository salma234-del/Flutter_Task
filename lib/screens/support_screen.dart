import 'package:flutter/material.dart';
import 'package:task/utils/strings.dart';
import 'package:task/utils/styles.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        AppStrings.support,
        style: Styles.textStyle20,
      )),
    );
  }
}
