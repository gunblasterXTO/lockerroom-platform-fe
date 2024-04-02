import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lockerroom/common/helper/ui_helper.dart';

class ThemeClass {
  Color lightPrimaryColor = const Color.fromRGBO(199, 20, 26, 1);
  Color lightSecondaryColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light()
        .copyWith(primary: _themeClass.lightPrimaryColor),
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
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}

ThemeClass _themeClass = ThemeClass();
