import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: const Color(0xFF6A4E96),
    scaffoldBackgroundColor: const Color(0xFFF8F4FF),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF9B7EDE),
    scaffoldBackgroundColor: const Color(0xFF1A1630),
  );
}