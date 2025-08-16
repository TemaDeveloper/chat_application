import 'package:chat_app/theme/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


final Color primaryColor = AppColors.particleBlue; // Example from your provided snippet
final Color secondaryColor = AppColors.particleGreen; // Example
final Color errorColor = AppColors.red; // Example
final Color lightThemeBgColor = AppColors.white; // Example
final Color lightThemeTextColor = AppColors.black; // Example

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
      iconTheme: IconThemeData(color: lightThemeTextColor, size: 28),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.grey)),
      ),
      textTheme: _textTheme,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        error: errorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightThemeBgColor,
        selectedItemColor: primaryColor,
        selectedIconTheme: IconThemeData(color: primaryColor, size: 28),
        unselectedItemColor: lightThemeTextColor.withOpacity(0.5),
        showUnselectedLabels: true,
      ),
      elevatedButtonTheme: _elevatedButtonThemeLight, // Changed to specific for light
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonThemeLight, // Changed to specific for light
      dividerTheme: const DividerThemeData(
        thickness: 0.0,
        color: Color(0xFFCCCCCC),
      ),
    );
  }

  /// --- DARK THEME ---
  ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      // Inherits most dark theme properties from ThemeData.dark()
      primaryColor: primaryColor, // You might want a dark theme primary color here
      scaffoldBackgroundColor: AppColors.primaryBlack, // Base background for dark theme
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: _darkTextTheme, // Apply dark specific text theme
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.inputFieldBackground,
        hintStyle: TextStyle(color: AppColors.textColorWhite54),
        prefixIconColor: AppColors.textColorWhite70,
        suffixIconColor: AppColors.textColorWhite70,
        border: InputBorder.none, // Default to no border
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),
      elevatedButtonTheme: _elevatedButtonThemeDark, // Apply dark specific elevated button theme
      textButtonTheme: _textButtonThemeDark, // Apply dark specific text button theme
      colorScheme: const ColorScheme.dark(
        primary: AppColors.buttonGradientStart, // Example dark primary color
        secondary: AppColors.buttonGradientEnd, // Example dark secondary color
        error: AppColors.red, // Assuming red is universal for errors
      ),
      // If you want to define AppBarTheme for dark theme:
      appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.primaryBlack.withOpacity(0.4), // Dark status bar
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: AppColors.primaryBlack,
            systemNavigationBarIconBrightness: Brightness.light,
          ),
          actionsIconTheme: const IconThemeData(
            color: AppColors.textColorWhite70,
          ),
          titleTextStyle: AppTextStyles.robotoTitle.copyWith(color: AppColors.textColorWhite)),
      iconTheme: const IconThemeData(color: AppColors.textColorWhite, size: 28),
    );
  }

  /// Elevated button style for LIGHT theme
  ElevatedButtonThemeData get _elevatedButtonThemeLight => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: primaryColor,
          foregroundColor: AppColors.white,
          textStyle: AppTextStyles.robotoBody,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          disabledForegroundColor: AppColors.white,
          disabledBackgroundColor: primaryColor.withOpacity(0.2), // Use withOpacity
        ),
      );

  /// Elevated button style for DARK theme (from previous immersive)
  ElevatedButtonThemeData get _elevatedButtonThemeDark => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Remove default padding for custom gradient
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 8,
          // Background color for gradient handled by Ink widget, so no direct backgroundColor here
        ),
      );

  /// Outlined button style (universal, or define light/dark specific if needed)
  OutlinedButtonThemeData get _outlinedButtonTheme => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.grey), // Assuming AppColors.grey exists
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          foregroundColor: AppColors.lightGrey, // Assuming AppColors.lightGrey exists
          backgroundColor: Colors.transparent,
          textStyle: AppTextStyles.robotoBody,
        ),
      );

  /// Text button style for LIGHT theme
  TextButtonThemeData get _textButtonThemeLight => TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          foregroundColor: AppColors.grey, // Assuming AppColors.grey exists
        ),
      );

  /// Text button style for DARK theme (from previous immersive)
  TextButtonThemeData get _textButtonThemeDark => TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.textColorWhite70, // Text color for text buttons in dark theme
        ),
      );


  // Common TextTheme (assuming for light theme based on your provided _textTheme)
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

  // Dark TextTheme, reflecting the colors used in the previous dark theme UI
  TextTheme get _darkTextTheme => const TextTheme(
        displayLarge: TextStyle(color: AppColors.textColorWhite),
        displayMedium: TextStyle(color: AppColors.textColorWhite),
        displaySmall: TextStyle(color: AppColors.textColorWhite),
        headlineLarge: TextStyle(color: AppColors.textColorWhite),
        headlineMedium: TextStyle(color: AppColors.textColorWhite),
        headlineSmall: TextStyle(color: AppColors.textColorWhite),
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.textColorWhite,
        ), // Specific for Get Started Free
        titleMedium: TextStyle(color: AppColors.textColorWhite),
        titleSmall: TextStyle(color: AppColors.textColorWhite),
        bodyLarge: TextStyle(color: AppColors.textColorWhite),
        bodyMedium: TextStyle(color: AppColors.textColorWhite70), // For subtitle
        bodySmall: TextStyle(color: AppColors.textColorWhite54), // For labels like "Email address"
        labelLarge: TextStyle(color: AppColors.textColorWhite),
        labelMedium: TextStyle(color: AppColors.textColorWhite),
        labelSmall: TextStyle(color: AppColors.textColorWhite),
      );
}

// --- Placeholder for AppTextStyles (You should replace this with your actual implementation) ---
// If you have a real AppTextStyles class, ensure its paths are correct and it defines these styles.
class AppTextStyles {
  static const TextStyle robotoTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black, // Default for light theme, can be overridden in dark theme appBarTheme
  );

  static const TextStyle robotoBody = TextStyle(
    fontSize: 16,
    color: Colors.black, // Default for light theme buttons
  );
}