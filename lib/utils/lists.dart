import 'package:flutter/material.dart';
import 'package:task/models/slider_model.dart';
import 'package:task/screens/assets_screen.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/screens/profile_screen.dart';
import 'package:task/screens/support_screen.dart';
import 'package:task/utils/assets.dart';
import 'package:task/utils/strings.dart';

abstract class Lists {
  // bottom navigation bar labels
  static const List<Text> labels = [
    Text(
      AppStrings.home,
    ),
    Text(
      AppStrings.assets,
    ),
    Text(
      AppStrings.support,
    ),
    Text(
      AppStrings.profile,
    ),
  ];

  // bottom navigation bar items
  static const List<BottomNavigationBarItem> navItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: AppStrings.home,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.dashboard_customize_outlined),
      label: AppStrings.assets,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.support_agent_outlined),
      label: AppStrings.support,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      label: AppStrings.profile,
    ),
  ];

  // bottom navigation bar screens
  static const List<Widget> screens = [
    HomeScreen(),
    AssetsScreen(),
    SupportScreen(),
    ProfileScreen(),
  ];

// slider items
  static List<SliderModel> slider = [
    SliderModel(
      image: Assets.firstSlider,
      title: AppStrings.firstSliderTitle,
      body: '',
      buttomText: AppStrings.firstSliderButtomText,
      onPressed: () {},
    ),
    SliderModel(
      image: Assets.secondSlider,
      title: AppStrings.secondSliderTitle,
      body: '',
      buttomText: AppStrings.secondSliderButtomText,
      onPressed: () {},
    ),
    SliderModel(
      image: Assets.thirdSlider,
      title: AppStrings.thirdSliderTitle,
      body: AppStrings.thirdSliderBody,
      buttomText: AppStrings.thirdSliderButtomText,
      onPressed: () {},
    ),
  ];

  // tab bar items
  static List<String> tabs = [
    'Categories',
    'Services',
    'Orders',
  ];
}
