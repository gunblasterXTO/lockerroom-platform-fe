import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.white,
    ),
    // Elevated Button Theme //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(UIConst.circularBorderRadius),
          ),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          GoogleFonts.poppins(
            fontSize: UIConst.setFontSize(16),
            fontWeight: FontWeight.normal,
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
