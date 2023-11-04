import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: Styles.textStyle20,
        textAlign: TextAlign.center,
      ),
    );
  }
}
