import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF3B82F6);
  static const Color accentColor = Color(0xFF10B981);
  static const Color darkBackground = Color(0xFF0B0F19);
  static const Color cardColor = Color(0xFF151B2B);

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      primaryColor: primaryColor,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: accentColor,
        surface: cardColor,
      ),
      fontFamily: 'Inter',
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBackground,
        elevation: 0,
        centerTitle: false,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: Colors.white70),
      ),
      cardTheme: CardThemeData(
        color: cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
      ),
    );
  }
}
