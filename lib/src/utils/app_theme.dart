import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeLight = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
    ),
  );
}
