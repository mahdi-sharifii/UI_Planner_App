import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Veribles {
  // Active
  static final TextStyle titleProgressU = GoogleFonts.varelaRound(
    color: const Color.fromARGB(250, 112, 70, 0),
    fontSize: 16.5,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bodyProgressU = GoogleFonts.varelaRound(
    color: const Color.fromARGB(250, 112, 70, 0),
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  // UnActive
  static final TextStyle titleProgressA = GoogleFonts.varelaRound(
    color: const Color.fromARGB(250, 255, 245, 242),
    fontSize: 16.5,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bodyProgressA = GoogleFonts.varelaRound(
    color: const Color.fromARGB(250, 255, 201, 194),
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle alertDescription = GoogleFonts.varelaRound(
    color: const Color.fromARGB(180, 50, 45, 90),
    fontSize: 14.5,
    fontWeight: FontWeight.bold,
  );
  static const List<Color> myColors = [
    Color.fromARGB(255, 254, 226, 231),
    Color.fromARGB(255, 231, 229, 239),
  ];
  static final List<TextStyle> myTextStyleTitle = [
    GoogleFonts.varelaRound(
      color: const Color.fromARGB(255, 123, 56, 72),
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
    GoogleFonts.varelaRound(
      color: const Color.fromARGB(255, 50, 45, 90),
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
  ];
  static final List<TextStyle> myTextStyleDis = [
    GoogleFonts.varelaRound(
      color: const Color.fromARGB(220, 123, 56, 72),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
    GoogleFonts.varelaRound(
      color: const Color.fromARGB(220, 50, 45, 90),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  ];
}
