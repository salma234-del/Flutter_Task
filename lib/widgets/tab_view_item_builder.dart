import 'package:flutter/material.dart';
import 'package:task/models/user_model.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/styles.dart';

class TabViewItemBuilder extends StatelessWidget {
  const TabViewItemBuilder({
    super.key,
    required this.model,
  });
  final UserModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
          boxShadow: const [
            BoxShadow(
              color: AppColors.greyScale1, //New
              blurRadius: 0.1,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            children: [
              Text('${model.id}',
              style: Styles.textStyle16_400,
              ),
              10.width,
              Text(
                model.name,
                style: Styles.textStyle16_400,
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward,
                color: AppColors.greyScale1,
              )
            ],
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
