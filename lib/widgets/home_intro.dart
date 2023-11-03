import 'package:flutter/material.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/strings.dart';
import 'package:task/utils/styles.dart';
import 'package:task/widgets/welcome_user.dart';

class HomeInto extends StatelessWidget {
  const HomeInto({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // display the user's profile picture and name
        WelcomeUser(
          userName: name,
          userImage: image,
        ),
        // SizedBox with height: 25
        25.h,
        Text(
          AppStrings.homeTitle,
          style: Styles.textStyle18,
        ),
        10.h,
        Text(
          AppStrings.homeBody,
          style: Styles.textStyle14_300,
        ),
        15.h,
      ],
    );
  }
}
