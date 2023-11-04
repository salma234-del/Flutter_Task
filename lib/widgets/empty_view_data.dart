import 'package:flutter/material.dart';
import 'package:task/utils/assets.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/styles.dart';

class EmptyViewData extends StatelessWidget {
  const EmptyViewData({
    super.key,
    required this.tabLabel,
  });
  final String tabLabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Image.asset(Assets.emptyState),
          Text(
            'No $tabLabel found Try',
            style: Styles.textStyle22,
            textAlign: TextAlign.center,
          ),
          10.height,
          Text(
            'you can place your needed $tabLabel to let serve you.',
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w300,
              color: AppColors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
