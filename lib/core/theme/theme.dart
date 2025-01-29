import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    // scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background, centerTitle: true),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
      displayMedium: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 16,
      ),
      displaySmall: GoogleFonts.lato(
        color: AppColors.background.withOpacity(0.44),
        fontSize: 16,
      ),
      // buttom theme
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)))),
  );
}

ThemeData getAppDarkTheme() {
  return ThemeData(
    primaryColor: AppColors.white,
    // scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background, centerTitle: true),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
      displayMedium: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 16,
      ),
      displaySmall: GoogleFonts.lato(
        color: AppColors.background.withOpacity(0.44),
        fontSize: 16,
      ),
      // buttom theme
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)))),
  );
}
