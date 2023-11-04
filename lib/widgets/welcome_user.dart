import 'package:flutter/material.dart';
import 'package:task/utils/assets.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/strings.dart';
import 'package:task/utils/styles.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({
    super.key,
    required this.userName,
    required this.userImage,
  });

  final String userName;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Image.asset(userImage),
        5.width,
        Text(
          AppStrings.hey,
          style: Styles.textStyle16_500,
        ),
        Text(
          userName,
          style: Styles.textStyle16_500,
        ),
        Image.asset(Assets.heyImage),
      ],
    );
  }
}
