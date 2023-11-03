import 'package:flutter/material.dart';
import 'package:task/widgets/unselected_tab.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    super.key,
    required this.tabBgColor,
    required this.tabText,
    required this.currTabIdx,
    required this.tabControllerIdx,
  });

  final int currTabIdx;
  final int tabControllerIdx;
  final Color tabBgColor;
  final String tabText;

  @override
  Widget build(BuildContext context) {
    return Tab(
      // change tab style according to selected
      child: currTabIdx != tabControllerIdx
          ? UnselectedTab(
              tabText: tabText,
              tabBgColor: tabBgColor,
            )
          : Text(
              tabText,
            ),
    );
  }
}
