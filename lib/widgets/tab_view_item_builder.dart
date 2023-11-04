import 'package:flutter/material.dart';
import 'package:task/models/tab_view_item_model.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/styles.dart';

class TabViewItemBuilder extends StatelessWidget {
  const TabViewItemBuilder({
    super.key,
    required this.model,
  });
  final TabViewItemModel model;
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
              Image.asset(model.icon),
              10.width,
              Text(
                model.text,
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
