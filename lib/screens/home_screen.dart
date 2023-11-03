import 'package:flutter/material.dart';
import 'package:task/utils/assets.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/functions.dart';
import 'package:task/utils/lists.dart';
import 'package:task/widgets/custom_slider.dart';
import 'package:task/widgets/home_intro.dart';
import 'package:task/widgets/slider_indicator.dart';
import 'package:task/widgets/tab_bar_tabs_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final String name = 'Ahmed';
  PageController sliderController = PageController();
  int currIdx = 0; // current slider page index
  late TabController tabController;

  @override
  void initState() {
    automaticSliderMove(currIdx, sliderController);
    tabController = TabController(length: Lists.tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    sliderController.dispose();
    tabController.dispose();
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
              // slider and indicator
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomSlider(
                    sliderController: sliderController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: SliderIndictor(
                      controller: sliderController,
                    ),
                  ),
                ],
              ),
              // tab bar tabs
              TabBarTabsBody(tabController: tabController),
              // tab bar views
              Container(
                width: context.w,
                height: 500,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Container(
                      color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
