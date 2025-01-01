import 'package:flutter/material.dart';
import 'package:profile_assign/constants/colors.dart';

class AppThemeData {
  static ThemeData appTheme = ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100))),
              backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor))),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primaryColor));
}
