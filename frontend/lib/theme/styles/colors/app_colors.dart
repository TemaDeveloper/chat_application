import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary background gradient colors
  static const Color primaryDarkPurple = Color(0xFF330033);
  static const Color primaryBlack = Color(0xFF000000);

  // Card background and input field colors
  static const Color cardBackground = Color(0xFF1E1E1E);
  static const Color inputFieldBackground = Color(0xFF2C2C2C);

  // Border and text colors
  static const Color borderColor = Colors.white12;
  static const Color textColorWhite = Colors.white;
  static const Color textColorWhite70 = Colors.white70;
  static const Color textColorWhite54 = Colors.white54;

  // Button gradient colors
  static const Color buttonGradientStart = Color(0xFF8E2DE2); // Purple start
  static const Color buttonGradientEnd = Color(0xFF4A00E0);   // Darker purple end

  // Particle colors (blurry background elements)
  static Color particlePurple = Colors.purple.shade300;
  static Color particlePink = Colors.pink.shade300;
  static Color particleDeepPurple = Colors.deepPurple.shade200;
  static Color particleBlue = Colors.blue.shade200;
  static Color particleGreen = Colors.green.shade300;
  static Color particleOrange = Colors.orange.shade200;

  // Colors based on your provided AppTheme snippet (assuming these are defined elsewhere or placeholders)
  static const Color blue = Color(0xFF2196F3); // Example blue
  static const Color green = Color(0xFF4CAF50); // Example green
  static const Color red = Color(0xFFF44336);   // Example red
  static const Color white = Colors.white;      // Example white
  static const Color black = Colors.black;      // Example black
  static const Color grey = Color(0xFF9E9E9E);  // Example grey
  static const Color lightGrey = Color(0xFFE0E0E0); // Example light grey
}
