import 'package:flutter/material.dart';
import 'package:planner_app/models/progress.dart';
import 'package:planner_app/models/reminders.dart';
import 'package:planner_app/providers/bottom_nav_provider.dart';
import 'package:planner_app/widget.dart/home_center_text.dart';
import 'package:planner_app/widget.dart/home_progress_list.dart';
import 'package:planner_app/widget.dart/home_reminders_list.dart';
import 'package:planner_app/widget.dart/home_title_app_bar.dart';
import 'package:planner_app/widget.dart/home_top_text.dart';
import 'package:planner_app/widget.dart/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String profileImage = "assets/images/profile0.jpg";
    final Set<Progress> listProgress = MyProgress.listProgress;
    final Set<Reminders> listReminders = MyReminders.listReminders;

    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TitleAppBar(themeData: themeData, profileImage: profileImage),
        ),

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopText(themeData: themeData),
              ProgressList(listProgress: listProgress),
              CenterText(themeData: themeData),
              RemindersList(size: size, listReminders: listReminders)
            ],
          ),
        ),
        // BottomNavigationBar
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Consumer<BottomNavProvider>(
          builder: (context, provider, child) {
            return BottomNavBar(
              icons: const [
                Icons.list,
                Icons.panorama_wide_angle_sharp,
                Icons.today,
                Icons.chat_outlined,
                Icons.settings
              ],
              backgrandColor: themeData.primaryColor,
              activeColor: Colors.white,
              selectedIndex: provider.activeIndexProgress,
              unActiveColor: Colors.white38,
              onTap: (int value) {
                provider.newIndex(value);
              },
            );
          },
        ),
      ),
    );
  }
}
