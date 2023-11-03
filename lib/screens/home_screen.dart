import 'package:flutter/material.dart';
import 'package:task/utils/assets.dart';
import 'package:task/utils/functions.dart';
import 'package:task/widgets/custom_slider.dart';
import 'package:task/widgets/home_intro.dart';
import 'package:task/widgets/slider_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String name = 'Ahmed';
  PageController sliderController = PageController();
  int currIdx = 0;

  @override
  void initState() {
    super.initState();
    automaticSliderMove(currIdx, sliderController);
  }

  @override
  void dispose() {
    sliderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // display the user's profile picture and name, home title and body
              HomeInto(
                name: name,
                image: Assets.profilePicLogo,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomSlider(
                    sliderController: sliderController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: SliderIndictor(
                      controller: sliderController,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
