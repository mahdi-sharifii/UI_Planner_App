import 'package:flutter/material.dart';
import 'package:planner_app/widget.dart/home_my_dialog.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Wednesday, March 7"),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return MyDialog(themeData: themeData);
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: themeData.primaryColor.withOpacity(0.2),
              ),
              child: Icon(
                Icons.today,
                size: 24,
                color: themeData.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
