import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/utils/colors.dart';
import 'package:task/utils/lists.dart';

class SliderIndictor extends StatelessWidget {
  const SliderIndictor({
    super.key,
    required this.controller,
  });
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller,
        count: Lists.slider.length,
        effect: CustomizableEffect(
          spacing: 5,
          dotDecoration: DotDecoration(
            color: AppColors.indicator,
            width: 8,
            height: 8,
            borderRadius: BorderRadius.circular(16),
          ),
          activeDotDecoration: DotDecoration(
            color: AppColors.primary,
            width: 35,
            height: 8,
            borderRadius: BorderRadius.circular(16),
          ),
        ));
  }
}
