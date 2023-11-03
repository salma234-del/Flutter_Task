import 'package:flutter/material.dart';
import 'package:task/utils/lists.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int currIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Lists.labels[currIdx],
      ),
      body: Lists.screens[currIdx],
      bottomNavigationBar: BottomNavigationBar(
        items: Lists.navItems,
        onTap: (index) {
          changeBottomNavBarIndex(index);
        },
        currentIndex: currIdx,
      ),
    );
  }

  void changeBottomNavBarIndex(int index) {
    setState(() {
      currIdx = index;
    });
  }
}
