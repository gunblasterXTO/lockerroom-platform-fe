import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
    textTheme: TextTheme(
        displayLarge:
            GoogleFonts.poppins(fontSize: 24), //TODO: fontSize not reflected
        displayMedium: GoogleFonts.poppins(fontSize: 20),
        displaySmall: GoogleFonts.poppins(fontSize: 16)));
