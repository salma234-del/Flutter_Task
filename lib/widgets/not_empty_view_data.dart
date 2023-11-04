import 'package:flutter/material.dart';
import 'package:task/widgets/tab_view_item_builder.dart';

class NotEmptyViewData extends StatelessWidget {
  const NotEmptyViewData({
    super.key,
    required this.listItems,
  });
  final List listItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listItems.length,
      itemBuilder: (context, index) =>
          TabViewItemBuilder(model: listItems[index]),
    );
  }
}
