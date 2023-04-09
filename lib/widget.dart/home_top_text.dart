// TopText
import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  const TopText({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
      child: Text(
        "Your progress",
        style: themeData.textTheme.titleSmall,
      ),
    );
  }
}
