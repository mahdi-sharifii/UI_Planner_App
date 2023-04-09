import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planner_app/pages/home/home.dart';
import 'package:planner_app/theme/theme.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white70,
      systemNavigationBarColor: Colors.white70,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "planner",
      debugShowCheckedModeBanner: false,
      theme: MyTheme.theme,
      home: const HomePage(),
    );
  }
}
