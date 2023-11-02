import 'package:flutter/material.dart';
import 'package:task/layout/app_layout.dart';
import 'package:task/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AppLayout(),
    );
  }
}
