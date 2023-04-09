import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    required this.backgrandColor,
    required this.icons,
    required this.activeColor,
    required this.unActiveColor,
    required this.selectedIndex,
    this.onTap,
  });

  // values
  final Color backgrandColor;
  final List<IconData> icons;
  final Color activeColor;
  final Color unActiveColor;
  final ValueChanged<int>? onTap;
  final int selectedIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isLod = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 70), () {
      setState(() {
        isLod = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isLod ? 73 : null,
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isLod ? widget.backgrandColor : Colors.white12,
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(
          widget.icons.length,
          (index) {
            return IconButton(
                isSelected: widget.selectedIndex == index,
                autofocus: true,
                color: widget.selectedIndex == index
                    ? widget.activeColor
                    : widget.unActiveColor,
                icon: Icon(widget.icons[index]),
                onPressed: () {
                  if (widget.onTap != null) {
                    widget.onTap!(index);
                  }
                });
          },
        ),
      ),
    );
  }
}
