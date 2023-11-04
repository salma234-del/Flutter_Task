import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/widgets/tab_bar_tabs_body.dart';
import 'package:task/widgets/tab_bar_view_body.dart';

class TabBarAndTabView extends StatelessWidget {
  const TabBarAndTabView({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            // Tab bar tabs
            TabBarTabsBody(tabController: tabController),
            20.height,
            // tab bar views
            TabBarViewBody(tabController: tabController),
          ],
        ),
      ),
    );
  }
}
