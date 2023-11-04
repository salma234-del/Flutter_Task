import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/strings.dart';
import 'package:task/utils/styles.dart';

class FirstTabViewHeader extends StatelessWidget {
  const FirstTabViewHeader({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.viewCategories,
          style: Styles.textStyle14_400,
        ),
        InkWell(
          child: Text(
            AppStrings.seeAll,
            style: Styles.textStyle14_300.copyWith(
              color: AppColors.greyScale1,
              decoration: TextDecoration.underline,
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
