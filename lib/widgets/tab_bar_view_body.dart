import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/lists.dart';
import 'package:task/widgets/categories_header.dart';
import 'package:task/widgets/empty_view_data.dart';
import 'package:task/widgets/not_empty_view_data.dart';

class TabBarViewBody extends StatelessWidget {
  const TabBarViewBody({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          // first tab view
          Lists.firstTabViewItems.isNotEmpty
              ? Column(
                  children: [
                    const FirstTabViewHeader(),
                    20.height,
                    Expanded(
                      child: NotEmptyViewData(
                        listItems: Lists.firstTabViewItems,
                      ),
                    ),
                  ],
                )
              : EmptyViewData(tabLabel: Lists.tabs[0]),
          // second tab view
          Lists.secondTabViewItems.isNotEmpty
              ? Container()
              : EmptyViewData(tabLabel: Lists.tabs[1]),
          // third tab view
          Lists.thirdTabViewItems.isNotEmpty
              ? Container()
              : EmptyViewData(tabLabel: Lists.tabs[2]),
        ],
      ),
    );
  }
}
