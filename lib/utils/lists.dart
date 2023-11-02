import 'package:flutter/material.dart';
import 'package:task/screens/assets_screen.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/screens/profile_screen.dart';
import 'package:task/screens/support_screen.dart';
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
}