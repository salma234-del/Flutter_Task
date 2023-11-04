
import 'package:flutter/material.dart';
import 'package:task/utils/assets.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/widgets/custom_slider.dart';
import 'package:task/widgets/home_intro.dart';
import 'package:task/widgets/slider_indicator.dart';

class HomeIntroAndSlider extends StatelessWidget {
  const HomeIntroAndSlider({
    super.key,
    required this.name,
    required this.sliderController,
  });

  final String name;
  final PageController sliderController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Home intro
          HomeIntro(
            name: name,
            image: Assets.profilePicLogo,
          ),
          // Slider
          CustomSlider(
            sliderController: sliderController,
          ),
          15.height,
          // Indicator
          Center(
            child: SliderIndictor(
              controller: sliderController,
            ),
          ),
        ],
      ),
    );
  }
}
