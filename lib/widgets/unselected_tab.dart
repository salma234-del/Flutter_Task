
import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class UnselectedTab extends StatelessWidget {
  const UnselectedTab({
    super.key,
    required this.tabText,
    required this.tabBgColor,
  });
  final String tabText;
  final Color tabBgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360),
          color: tabBgColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            tabText,
            style: Styles.textStyle14_400,
          ),
        ),
      ),
    );
  }
}
