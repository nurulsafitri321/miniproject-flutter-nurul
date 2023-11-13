import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 248, 246, 248),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 76, 1, 85),
    elevation: 0,
    unselectedItemColor: Color.fromARGB(255, 179, 172, 172),
    selectedItemColor: Color.fromARGB(255, 161, 7, 154),
  ),
  primaryColor: const Color.fromARGB(255, 228, 161, 219),
  appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: const Color.fromARGB(255, 69, 3, 77),
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 253, 253, 253)),
      titleTextStyle: GoogleFonts.robotoMono(
        letterSpacing: 1.3,
        fontSize: 20,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
      ),
      actionsIconTheme: const IconThemeData(size: 30)),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: const Color.fromARGB(255, 141, 19, 155),
    linearTrackColor: Colors.pink[100],
  ),
  textTheme: TextTheme(
    titleSmall: GoogleFonts.robotoMono(
      fontSize: 14,
      color: const Color.fromARGB(255, 0, 0, 0),
    ),
    titleMedium: GoogleFonts.robotoMono(
      fontSize: 18,
      color: const Color.fromARGB(255, 0, 0, 0),
    ),
    titleLarge: GoogleFonts.robotoMono(
      fontSize: 22,
      color: const Color.fromARGB(255, 0, 0, 0),
    ),
    labelSmall: GoogleFonts.robotoMono(fontSize: 16),
    labelMedium: GoogleFonts.robotoMono(fontSize: 16),
    labelLarge: GoogleFonts.robotoMono(fontSize: 16),
    bodySmall: GoogleFonts.robotoMono(fontSize: 16),
    bodyMedium: GoogleFonts.robotoMono(fontSize: 16),
    bodyLarge: GoogleFonts.robotoMono(fontSize: 16),
    headlineLarge: GoogleFonts.robotoMono(
        fontSize: 30, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.robotoMono(
        fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
    headlineSmall: GoogleFonts.robotoMono(
        fontSize: 14, color: Color.fromARGB(95, 255, 255, 255), fontWeight: FontWeight.w700),
  ),
  iconTheme: const IconThemeData(color: Color.fromARGB(255, 191, 12, 245)),
  buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 193, 8, 230)),
);