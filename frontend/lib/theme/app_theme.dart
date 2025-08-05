import 'package:chat_app/theme/styles/colors/app_colors.dart';
import 'package:chat_app/theme/styles/texts/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color primaryColor = AppColors.blue;
const Color secondaryColor = AppColors.green;
const Color errorColor = AppColors.red;
const Color lightThemeBgColor = AppColors.white;
const Color lightThemeTextColor = AppColors.black;

class AppTheme {
  AppTheme(this.context);
  final BuildContext context;

  /// --- LIGHT THEME ---
  ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: lightThemeBgColor,
      appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Color(0xFFF6F6F6),
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          actionsIconTheme: IconThemeData(
            color: lightThemeTextColor.withOpacity(0.50),
          ),
          titleTextStyle: AppTextStyles.robotoTitle),
      iconTheme: const IconThemeData(color: lightThemeTextColor, size: 28),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.grey)),
      ),
      textTheme: _textTheme,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        error: errorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightThemeBgColor,
        selectedItemColor: primaryColor,
        selectedIconTheme: const IconThemeData(color: primaryColor, size: 28),
        unselectedItemColor: lightThemeTextColor.withOpacity(0.5),
        showUnselectedLabels: true,
      ),
      elevatedButtonTheme: elevatedButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      textButtonTheme: textButtonTheme,
      dividerTheme: const DividerThemeData(
        thickness: 0.0,
        color: Color(0xFFCCCCCC),
      ),
    );
  }

  /// Elevated button style
  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: primaryColor,
          foregroundColor: AppColors.white,
          textStyle: AppTextStyles.robotoBody,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          disabledForegroundColor: AppColors.white,
          disabledBackgroundColor: primaryColor.withValues(alpha: 0.2),
        ),
      );

  /// Outlined button style
  OutlinedButtonThemeData get outlinedButtonTheme => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppColors.grey),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          foregroundColor: AppColors.lightGrey,
          backgroundColor: Colors.transparent,
          textStyle: AppTextStyles.robotoBody,
        ),
      );

  TextButtonThemeData get textButtonTheme => TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          foregroundColor: AppColors.grey,
        ),
      );

  TextTheme get _textTheme => const TextTheme(
        displayLarge: TextStyle(color: AppColors.black),
        displayMedium: TextStyle(color: AppColors.black),
        displaySmall: TextStyle(color: AppColors.black),
        headlineLarge: TextStyle(color: AppColors.black),
        headlineMedium: TextStyle(color: AppColors.black),
        headlineSmall: TextStyle(color: AppColors.black),
        titleLarge: TextStyle(color: AppColors.black),
        titleMedium: TextStyle(color: AppColors.black),
        titleSmall: TextStyle(color: AppColors.black),
        bodyLarge: TextStyle(color: AppColors.black),
        bodyMedium: TextStyle(color: AppColors.black),
        bodySmall: TextStyle(color: AppColors.black),
        labelLarge: TextStyle(color: AppColors.black),
        labelMedium: TextStyle(color: AppColors.black),
        labelSmall: TextStyle(color: AppColors.black),
      );
}
