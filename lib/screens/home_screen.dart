import 'package:flutter/material.dart';
import 'package:task/utils/functions.dart';
import 'package:task/utils/lists.dart';
import 'package:task/widgets/home_intro_and_slider.dart';
import 'package:task/widgets/tab_bar_and_tab_view.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Home intro and slider
            HomeIntroAndSlider(name: name, sliderController: sliderController),
            // Tab bar tabs and tabs views
            TabBarAndTabView(tabController: tabController),
          ],
        ),
      ),
    );
  }
}
