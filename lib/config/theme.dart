import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData get lightThemeData => _lightThemeData();
  ThemeData _lightThemeData() {
    return ThemeData(

      brightness: Brightness.light,
      useMaterial3: true,
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      textTheme: TextTheme(
        labelLarge: whiteColorTextStyleWithGoogleFonts(20),
        labelMedium: whiteColorTextStyleWithGoogleFonts(16),
        labelSmall: whiteColorTextStyleWithGoogleFonts(12),
        titleLarge: blackColorTextStyleWithGoogleFonts(20),
        titleMedium: blackColorTextStyleWithGoogleFonts(16),
        titleSmall: blackColorTextStyleWithGoogleFonts(12),
      ),
    );
  }

  TextStyle whiteColorTextStyleWithGoogleFonts(double fontSize) {
    return GoogleFonts.rubik(
      color: Colors.white,
      fontSize: fontSize.sp,
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }

  TextStyle blackColorTextStyleWithGoogleFonts(double fontSize) {
    return GoogleFonts.rubik(
      color: const Color(0xFF1C1C1C),
      fontSize: fontSize.sp,
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }
}
