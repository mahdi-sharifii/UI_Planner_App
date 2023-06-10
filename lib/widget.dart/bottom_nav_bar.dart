import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.backgroundColor,
    required this.icons,
    required this.activeColor,
    required this.unActiveColor,
    required this.selectedIndex,
    this.onTap,
  });

  // values
  final Color backgroundColor;
  final List<IconData> icons;
  final Color activeColor;
  final Color unActiveColor;
  final ValueChanged<int>? onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: backgroundColor),
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(
          icons.length,
          (index) {
            return IconButton(
              isSelected: selectedIndex == index,
              autofocus: true,
              color: selectedIndex == index ? activeColor : unActiveColor,
              icon: Icon(icons[index]),
              onPressed: () {
                if (onTap != null) {
                  onTap!(index);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
