import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 253, 195, 245),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 206, 87, 219),
    elevation: 0,
    unselectedItemColor: Color.fromARGB(255, 179, 172, 172),
    selectedItemColor: Color.fromARGB(255, 219, 28, 210),
  ),
  primaryColor: const Color.fromARGB(255, 228, 161, 219),
  appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: const Color.fromARGB(255, 209, 95, 221),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: GoogleFonts.robotoMono(
        letterSpacing: 1.3,
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      actionsIconTheme: const IconThemeData(size: 30)),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: const Color.fromARGB(255, 209, 95, 221),
    linearTrackColor: Colors.pink[100],
  ),
  textTheme: TextTheme(
    titleSmall: GoogleFonts.robotoMono(
      fontSize: 14,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.robotoMono(
      fontSize: 18,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.robotoMono(
      fontSize: 22,
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.gildaDisplay(fontSize: 22),
    labelMedium: GoogleFonts.gildaDisplay(fontSize: 26),
    labelLarge: GoogleFonts.gildaDisplay(fontSize: 30),
    bodySmall: GoogleFonts.gildaDisplay(fontSize: 22),
    bodyMedium: GoogleFonts.gildaDisplay(fontSize: 26),
    bodyLarge: GoogleFonts.gildaDisplay(fontSize: 30),
    headlineLarge: GoogleFonts.robotoMono(
        fontSize: 30, color: Colors.black, fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.robotoMono(
        fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
    headlineSmall: GoogleFonts.robotoMono(
        fontSize: 14, color: Colors.black38, fontWeight: FontWeight.w700),
  ),
  iconTheme: const IconThemeData(color: Color.fromARGB(255, 191, 12, 245)),
  buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 193, 8, 230)),
);