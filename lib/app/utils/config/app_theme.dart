import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppThemeData {
  static ThemeData themeData = ThemeData(
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme(
      primary: AppColors.accentColor,
      secondary: AppColors.accentColor,
      surface: AppColors.white,
      background: AppColors.backgroundColor,
      error: AppColors.red,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.accentColor,
      onBackground: AppColors.white,
      onError: AppColors.red,
      brightness: Brightness.light,
    ),
    splashColor: AppColors.lighterGrey,
    highlightColor: AppColors.highlightColor,
    dividerColor: AppColors.grey,
    indicatorColor: AppColors.primaryColor,

//TextTheme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
        // fontFamily: Assets.fonts.poppins,
      ),
      headlineMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
        // fontFamily: Assets.fonts.poppins,
      ),
      headlineSmall: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
        // fontFamily: Assets.fonts.poppins,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryColor,
        // fontFamily: Assets.fonts.poppins,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryColor,
        // fontFamily: Assets.fonts.poppins,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryColor,
        // fontFamily: Assets.fonts.poppins,
      ),
    ),
//ElevatedButtonThemeData
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    ),
//IconThemeData
    iconTheme: const IconThemeData(
      color: Colors.grey,
      size: 25.0,
    ),
// textButtonTheme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
      ),
    ),

//InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      // constraints: BoxConstraints(maxHeight: 44, minHeight: 44),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: AppColors.grey.withOpacity(0.75)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: AppColors.primaryColor.withOpacity(0.75)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: AppColors.red.withOpacity(0.75)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: AppColors.red.withOpacity(0.75)),
      ),
      errorStyle: Get.textTheme.bodyMedium?.copyWith(
          fontSize: 12,
          color: const Color(
            0xffdc3545,
          ),
          fontWeight: FontWeight.normal),
      hintStyle: Get.textTheme.headlineLarge?.copyWith(
          color: AppColors.primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w400),
    ),
  );
}
