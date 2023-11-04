import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/lists.dart';
import 'package:task/widgets/slider_item_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.sliderController,
  });

  final PageController sliderController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w,
      height: 280.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.sliderBg,
      ),
      child: PageView.builder(
        controller: sliderController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Lists.slider.length,
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 30,
              ),
              child: SliderItemBuilder(
                model: Lists.slider[index],
              ),
            )),
      ),
    );
  }
}
