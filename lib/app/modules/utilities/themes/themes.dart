import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class ThemeController extends GetxController {
//   ThemeMode themeMode = ThemeMode.dark;
//   bool get isDarkMode => themeMode == ThemeMode.dark;
// }

class Themes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    fontFamily: GoogleFonts.redHatDisplay().fontFamily,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.white),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.redHatDisplay().fontFamily,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.black),
  );
}
