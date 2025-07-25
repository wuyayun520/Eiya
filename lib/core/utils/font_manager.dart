import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class FontManager {
  // 字体配置
  static const Map<String, String> _fontFamilies = {
    'inter': 'SF Pro Display', // iOS 默认字体，类似 Inter
    'roboto': 'Roboto', // Android 默认字体
    'poppins': 'SF Pro Display', // iOS 备用
    'opensans': 'SF Pro Display', // iOS 备用
  };
  
  // 获取系统字体
  static TextStyle getSystemFont({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    String? fontFamily,
  }) {
    String selectedFontFamily;
    
    if (Platform.isIOS) {
      selectedFontFamily = _fontFamilies[fontFamily?.toLowerCase()] ?? 'SF Pro Display';
    } else if (Platform.isAndroid) {
      selectedFontFamily = _fontFamilies[fontFamily?.toLowerCase()] ?? 'Roboto';
    } else {
      selectedFontFamily = 'Arial';
    }
    
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: selectedFontFamily,
    );
  }
  
  // 兼容性方法 - 保持与之前 API 一致
  static TextStyle getGoogleFont({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    String? fontFamily,
  }) {
    return getSystemFont(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }
  
  // 获取当前字体状态（始终返回 true，因为现在使用系统字体）
  static bool get isUsingGoogleFonts => true;
  
  // 重置字体状态（现在不需要，但保留 API 兼容性）
  static Future<void> resetFontState() async {
    // 系统字体不需要重置
  }
  
  // 初始化字体管理器（现在不需要，但保留 API 兼容性）
  static Future<void> initialize() async {
    // 系统字体不需要初始化
  }
} 