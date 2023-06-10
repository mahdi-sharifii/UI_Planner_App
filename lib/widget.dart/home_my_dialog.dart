import 'package:flutter/material.dart';
import 'package:planner_app/pages/home/variables.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Dialog(
        insetAnimationDuration: const Duration(seconds: 700),
        insetAnimationCurve: Curves.linear,
        alignment: Alignment.bottomCenter,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 14,
            bottom: 14,
            left: 20,
            right: 20,
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: themeData.primaryColor.withOpacity(0.2),
                  ),
                  child: Icon(
                    Icons.close,
                    size: 24,
                    color: themeData.primaryColor,
                  ),
                ),
              ),
            ),
            Image.asset(
              "assets/images/sn.png",
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 20),
              child: Text(
                "Oh, you need\nsome rest!",
                textAlign: TextAlign.center,
                style: themeData.textTheme.titleLarge,
              ),
            ),
            Text(
              "coffee machine can make a cappuccino especially for you in 5 minutes. Do you want some coffee?",
              textAlign: TextAlign.center,
              style: Variables.alertDescription,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 70,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        foregroundColor: themeData.primaryColor,
                        side: BorderSide(
                          width: 4.0,
                          color: themeData.primaryColor,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: const Text("No,later",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 255, 212, 101),
                      ),
                      child: const Text(
                        "Yes, Thanks!",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 122, 89, 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
