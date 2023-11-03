import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task/utils/lists.dart';
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
    automaticSliderMove();
  }

  @override
  void dispose() {
    sliderController.dispose();
    super.dispose();
  }

  // move slider pages automatic in certain time
  void automaticSliderMove() {
    Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      // if current page index smaller then pages size we will increase page index and animate to next page
      if (currIdx < Lists.slider.length) {
        sliderController.animateToPage(
          currIdx,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
        currIdx++;
      } else {
        // else if reach to last page we begin from first page again
        currIdx = 0;
      }
    });
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
              // display the user's profile picture and name
              HomeInto(name: name),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomSlider(sliderController: sliderController,),
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
