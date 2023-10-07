import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class applicationtheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffB7935F),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xffB7935F),
      onPrimary: const Color(0xff242424),
      seedColor: const Color(0xffB7935F),
      onSecondary: const Color(0xffF8F8F8),
      onPrimaryContainer: const Color(0xffF8F8F8),
      onSecondaryContainer: const Color(0xffB7935F),
      outline: const Color(0xff242424),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: const Color(0xff242424)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xffB7935F),
      selectedIconTheme: IconThemeData(
        color: Color(0xff242424),
        size: 35,
      ),
      selectedItemColor: Color(0xff242424),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffF8F8F8),
        size: 32,
      ),
      unselectedItemColor: Color(0xffF8F8F8),
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: const Color(0xff242424),
        ),
        titleMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: const Color(0xff242424),
        ),
        labelMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: const Color(0xff242424),
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: const Color(0xff242424),
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: const Color(0xff242424),
        )),
    dividerColor: const Color(0xffB7935F),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xffB7935F).withOpacity(0.8),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xff141A2E),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xff141A2E),
      onPrimary: const Color(0xffFACC1D),
      seedColor: const Color(0xff141A2E),
      onSecondary: const Color(0xffFACC1D),
      onPrimaryContainer: const Color(0xff141A2E),
      onSecondaryContainer: const Color(0xffFACC1D),
      outline: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Color(0xffF8F8F8),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: const Color(0xffF8F8F8)),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff141A2E),
      selectedIconTheme: IconThemeData(
        color: Color(0xffFACC1D),
        size: 35,
      ),
      selectedItemColor: Color(0xffFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffF8F8F8),
        size: 32,
      ),
      unselectedItemColor: Color(0xffF8F8F8),
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: const Color(0xffF8F8F8),
        ),
        titleMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: const Color(0xffF8F8F8),
        ),
        labelMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: const Color(0xff242424),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: const Color(0xffF8F8F8),
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: const Color(0xffF8F8F8),
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: const Color(0xffF8F8F8),
        )),
    dividerColor: const Color(0xffFACC1D),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xff141A2E).withOpacity(0.9),
    ),
  );
}