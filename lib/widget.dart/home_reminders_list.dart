import 'package:flutter/material.dart';
import 'package:planner_app/models/reminders.dart';
import 'package:planner_app/widget.dart/home_profiles.dart';
import 'package:planner_app/pages/home/veribles.dart';

class RemindersList extends StatelessWidget {
  const RemindersList({
    super.key,
    required this.size,
    required this.listReminders,
  });

  final Size size;
  final Set<Reminders> listReminders;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.37,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: listReminders.length,
        itemBuilder: (context, index) {
          final Reminders indexReminders = listReminders.elementAt(index);

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                indexReminders.written,
                style: Veribles.myTextStyleDis[1],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: index.isEven
                        ? Veribles.myColors[0]
                        : Veribles.myColors[1]),
                margin: const EdgeInsets.all(10),
                height: size.height * 0.15,
                width: size.width * 0.69,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        indexReminders.title,
                        style: index.isEven
                            ? Veribles.myTextStyleTitle[0]
                            : Veribles.myTextStyleTitle[1],
                      ),
                      subtitle: Text(
                        indexReminders.description,
                        style: index.isEven
                            ? Veribles.myTextStyleDis[0]
                            : Veribles.myTextStyleDis[1],
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Profiles(
                              item: indexReminders.profilePeople.reversed
                                  .toList(),
                              index: index),
                          Padding(
                            padding: const EdgeInsets.only(right: 9),
                            child: Text(
                              indexReminders.period,
                              style: index.isEven
                                  ? Veribles.myTextStyleDis[0]
                                  : Veribles.myTextStyleDis[1],
                            ),
                          )
                        ])
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
