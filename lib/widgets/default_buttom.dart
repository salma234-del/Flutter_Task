import 'package:flutter/material.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/styles.dart';

class DefaultButtom extends StatelessWidget {
  const DefaultButtom({
    super.key,
    this.text,
    this.onPressed,
  });
  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.w * 0.16,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(360),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
        ),
        child: Text(
          '$text',
          style: Styles.textStyle14_500,
        ),
      ),
    );
  }
}
