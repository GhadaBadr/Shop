import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme() {
  return ThemeData(
    canvasColor: Colors.grey[200],

    errorColor: Colors.red,
    // ignore: deprecated_member_use
    accentColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: Colors.green)),
    textTheme: TextTheme(
      subtitle1: GoogleFonts.sourceSansPro(color: Colors.black, fontSize: 35),
      subtitle2: GoogleFonts.sourceSansPro(color: Colors.grey, fontSize: 20),
      headline6: GoogleFonts.sourceSansPro(color: Colors.green, fontSize: 25),
      bodyText1: GoogleFonts.sourceSansPro(color: Colors.black, fontSize: 18),
      headline5: GoogleFonts.sourceSansPro(color: Colors.white, fontSize: 18),
      headline4: GoogleFonts.sourceSansPro(color: Colors.black, fontSize: 25),
      headline3: GoogleFonts.sourceSansPro(color: Colors.grey, fontSize: 15),
      headline2: GoogleFonts.sourceSansPro(color: Colors.green, fontSize: 18),
    ),
    colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: Colors.grey,
        primary: Color(4292927712),
        onPrimary: Colors.green),
  );
}
