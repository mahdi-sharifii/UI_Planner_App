import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static final ThemeData theme = ThemeData(
    textTheme: TextTheme(
      titleLarge: GoogleFonts.varelaRound(
        color: const Color.fromARGB(250, 45, 43, 78),
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.varelaRound(
        color: const Color.fromARGB(250, 45, 43, 78),
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.overpass(
        color: const Color.fromARGB(250, 45, 43, 78),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: Colors.grey.shade100,
    primaryColor: const Color.fromARGB(250, 45, 43, 78),
    primarySwatch: Colors.indigo,
  );
}
