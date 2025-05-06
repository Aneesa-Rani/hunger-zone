import 'package:flutter/material.dart';
import 'package:hungerzone/core/theme/app_colors.dart';

abstract class AppTheme {
  static final buttonsStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFFFFA261),
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    minimumSize: Size(double.maxFinite, 50),
  );

  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: scaffoldBgColor,
    textTheme: TextTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(style: buttonsStyle),
    textButtonTheme: TextButtonThemeData(style: buttonsStyle),
    dividerTheme: DividerThemeData(color: Colors.red),
  );
}
