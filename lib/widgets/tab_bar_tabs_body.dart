import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/lists.dart';
import 'package:task/utils/styles.dart';
import 'package:task/widgets/tab_bar_item.dart';

class TabBarTabsBody extends StatefulWidget {
  const TabBarTabsBody({super.key, required this.tabController});
  final TabController tabController;
  @override
  State<TabBarTabsBody> createState() => _TabBarTabsBodyState();
}

class _TabBarTabsBodyState extends State<TabBarTabsBody> {
  int tabIdx = 0;
  int ordersNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(children: [
        // tab bar tabs
        Container(
          width: context.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.tabBar,
            ),
          ),
          child: TabBar(
            controller: widget.tabController,
            onTap: (index) {
              setState(() {
                tabIdx = index;
              });
            },
            unselectedLabelColor: AppColors.black,
            unselectedLabelStyle: Styles.textStyle14_400,
            labelColor: AppColors.tabBar,
            labelStyle: Styles.textStyle14_400,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            indicatorPadding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: AppColors.primary,
            ),
            tabs: [
              TabBarItem(
                currTabIdx: 0,
                tabControllerIdx: widget.tabController.index,
                tabBgColor: AppColors.background,
                tabText: Lists.tabs[0],
              ),
              TabBarItem(
                currTabIdx: 1,
                tabControllerIdx: widget.tabController.index,
                tabBgColor: AppColors.tabBar,
                tabText: Lists.tabs[1],
              ),
              TabBarItem(
                currTabIdx: 2,
                tabControllerIdx: widget.tabController.index,
                tabBgColor: AppColors.background,
                tabText: Lists.tabs[2],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
