// TitleAppBar
import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
    required this.themeData,
    required this.profileImage,
  });

  final ThemeData themeData;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hello, Villie!", style: themeData.textTheme.titleLarge),
          Container(
            padding: const EdgeInsets.all(3),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade400),
            child: CircleAvatar(backgroundImage: AssetImage(profileImage)),
          )
        ],
      ),
    );
  }
}
