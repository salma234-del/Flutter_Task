import 'package:flutter/material.dart';
import 'package:task/models/slider_model.dart';
import 'package:task/utils/styles.dart';
import 'package:task/widgets/default_buttom.dart';

class SliderItemBuilder extends StatelessWidget {
  const SliderItemBuilder({
    super.key,
    required this.model,
  });

  final SliderModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                model.title,
                style: Styles.textStyle16_500,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                model.body ?? '',
                style: Styles.textStyle14_300.copyWith(
                  fontSize: 10,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              DefaultButtom(
                text: model.buttomText,
                onPressed: model.onPressed,
              )
            ],
          ),
        ),
        Expanded(
          child: Image.asset(
            model.image,
          ),
        ),
      ],
    );
  }
}
