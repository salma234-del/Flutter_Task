import 'package:flutter/material.dart';
import 'package:task/utils/strings.dart';
import 'package:task/utils/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        AppStrings.profile,
        style: Styles.textStyle20,
      )),
    );
  }
}
