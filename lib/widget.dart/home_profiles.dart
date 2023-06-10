import 'package:flutter/material.dart';
import 'package:planner_app/pages/home/variables.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key, required this.item, required this.index});
  final List<String> item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (item.length <= 4) {
          return SizedBox(
            width: 90,
            height: 30,
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: List.generate(item.length, (i) {
                final String profileImage = "assets/images/${item[i]}";

                return Positioned(
                  right: i * 17,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(profileImage),
                    maxRadius: 15,
                  ),
                );
              }),
            ),
          );
        } else {
          return SizedBox(
            width: 120,
            height: 30,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 70,
                  height: 30,
                  child: Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: List.generate(3, (i) {
                      final String profileImage = "assets/images/${item[i]}";

                      return Positioned(
                        right: i * 17,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(profileImage),
                          maxRadius: 15,
                        ),
                      );
                    }),
                  ),
                ),
                const Icon(Icons.add),
                Container(
                    alignment: Alignment.center,
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: index.isEven
                          ? Variables.myTextStyleTitle[0].color!
                              .withOpacity(0.5)
                          : Variables.myTextStyleTitle[1].color!
                              .withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${item.length - 3}",
                      style: index.isEven
                          ? Variables.myTextStyleDis[0]
                          : Variables.myTextStyleDis[1],
                    ))
              ],
            ),
          );
        }
      },
    );
  }
}
