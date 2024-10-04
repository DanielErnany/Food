import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade100),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.orange.shade100,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: GoogleFonts.sixtyfour(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    textTheme: GoogleFonts.quicksandTextTheme(),
    useMaterial3: true,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.red;
          }

          return Colors.white;
        },
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme:
        ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 41, 28, 23)),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 41, 28, 23),
      iconTheme: IconThemeData(
        color: Colors.grey.shade400,
      ),
      titleTextStyle: GoogleFonts.sixtyfour(
        fontSize: 20,
        color: Colors.grey.shade400,
      ),
    ),
    textTheme: GoogleFonts.quicksandTextTheme(),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Color.fromARGB(255, 169, 31, 0);
          }

          return Colors.white;
        },
      ),
    ),
  );
}
