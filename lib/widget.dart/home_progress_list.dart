import 'package:flutter/material.dart';
import 'package:planner_app/providers/progress_list_provider.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:planner_app/models/progress.dart';
import 'package:planner_app/pages/home/variables.dart';

class ProgressList extends StatelessWidget {
  const ProgressList({super.key, required this.listProgress});
  final Set<Progress> listProgress;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.28,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listProgress.length,
        itemBuilder: (context, index) {
          final Progress indexProgress = listProgress.elementAt(index);
          return Consumer<ProgressProvider>(
            builder: (context, provider, child) {
              return InkWell(
                onTap: () => provider.newIndex(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  padding: const EdgeInsets.all(11.0),
                  margin: provider.selectedIndex == index
                      ? const EdgeInsets.only(
                          bottom: 19, left: 12, right: 12, top: 5)
                      : const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 4,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(6, 6)),
                      ],
                      color: provider.selectedIndex == index
                          ? const Color.fromARGB(255, 245, 108, 97)
                          : const Color.fromARGB(255, 255, 212, 101),
                      borderRadius: BorderRadius.circular(16)),
                  width: size.width * 0.38,
                  height: size.height * 0.15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircularStepProgressIndicator(
                              totalSteps: 100,
                              currentStep:
                                  indexProgress.circularProgressIndicator,
                              stepSize: 10,
                              selectedColor: provider.selectedIndex == index
                                  ? const Color.fromARGB(255, 251, 194, 191)
                                  : const Color.fromARGB(255, 168, 127, 40),
                              unselectedColor: Colors.transparent,
                              padding: 0,
                              selectedStepSize: 6,
                              roundedCap: (_, __) => true,
                            ),
                          ),
                          Text(
                            indexProgress.progressIndicator,
                            style: provider.selectedIndex == index
                                ? Variables.titleProgressA
                                : Variables.titleProgressU,
                          )
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.25,
                        child: Text(indexProgress.title,
                            maxLines: 2,
                            style: provider.selectedIndex == index
                                ? Variables.titleProgressA
                                : Variables.titleProgressU),
                      ),
                      SizedBox(
                        width: size.width * 0.21,
                        child: Text(
                          indexProgress.description,
                          style: provider.selectedIndex == index
                              ? Variables.bodyProgressA
                              : Variables.bodyProgressU,
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
