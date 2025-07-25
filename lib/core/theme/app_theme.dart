import 'package:flutter/material.dart';
import '../utils/font_manager.dart';

class AppTheme {
  // Primary Colors
  static const Color primaryColor = Color(0xFF7D64FF);
  static const Color primaryVariant = Color(0xFF6B52E6);
  static const Color secondary = Color(0xFFFF6B9D);
  
  // Neutral Colors
  static const Color background = Color(0xFFFAFAFA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textHint = Color(0xFF999999);
  
  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color error = Color(0xFFE53E3E);

  // 安全的字体获取方法
  static TextStyle _safeGoogleFont({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return FontManager.getGoogleFont(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: 'inter',
    );
  }
  
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: background,
    
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      primaryContainer: primaryVariant,
      secondary: secondary,
      surface: surface,
      surfaceVariant: surfaceVariant,
      background: background,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: textPrimary,
      onBackground: textPrimary,
      error: error,
    ),
    
    textTheme: TextTheme(
      displayLarge: _safeGoogleFont(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: textPrimary,
      ),
      displayMedium: _safeGoogleFont(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: textPrimary,
      ),
      displaySmall: _safeGoogleFont(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      headlineLarge: _safeGoogleFont(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      headlineMedium: _safeGoogleFont(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      headlineSmall: _safeGoogleFont(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      titleLarge: _safeGoogleFont(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      titleMedium: _safeGoogleFont(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textPrimary,
      ),
      titleSmall: _safeGoogleFont(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textSecondary,
      ),
      bodyLarge: _safeGoogleFont(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: textPrimary,
      ),
      bodyMedium: _safeGoogleFont(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: textPrimary,
      ),
      bodySmall: _safeGoogleFont(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textSecondary,
      ),
      labelLarge: _safeGoogleFont(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textPrimary,
      ),
      labelMedium: _safeGoogleFont(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textSecondary,
      ),
      labelSmall: _safeGoogleFont(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: textHint,
      ),
    ),
    
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: _safeGoogleFont(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      iconTheme: const IconThemeData(color: textPrimary),
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: _safeGoogleFont(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryColor,
        side: const BorderSide(color: primaryColor),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: _safeGoogleFont(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: _safeGoogleFont(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    
    cardTheme: CardThemeData(
      color: surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      margin: const EdgeInsets.all(8),
    ),
    
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: error, width: 1),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      hintStyle: _safeGoogleFont(
        fontSize: 14,
        color: textHint,
      ),
    ),
    
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: surface,
      selectedItemColor: primaryColor,
      unselectedItemColor: textHint,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
  );
  
  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFF121212),
    
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      primaryContainer: primaryVariant,
      secondary: secondary,
      surface: Color(0xFF1E1E1E),
      surfaceVariant: Color(0xFF2A2A2A),
      background: Color(0xFF121212),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      onBackground: Colors.white,
      error: error,
    ),
    
    textTheme: TextTheme(
      displayLarge: _safeGoogleFont(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: _safeGoogleFont(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: _safeGoogleFont(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      headlineLarge: _safeGoogleFont(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      headlineMedium: _safeGoogleFont(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      headlineSmall: _safeGoogleFont(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleLarge: _safeGoogleFont(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: _safeGoogleFont(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      titleSmall: _safeGoogleFont(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
      bodyLarge: _safeGoogleFont(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodyMedium: _safeGoogleFont(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodySmall: _safeGoogleFont(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white70,
      ),
      labelLarge: _safeGoogleFont(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      labelMedium: _safeGoogleFont(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
      labelSmall: _safeGoogleFont(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
    ),
    
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1E1E1E),
      foregroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: _safeGoogleFont(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
} 