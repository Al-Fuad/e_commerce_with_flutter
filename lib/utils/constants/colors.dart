import 'package:flutter/material.dart';

class EColors{
  EColors._();

  // App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(.7, -.7),
    colors: [
      Color(0xffff9a9c),
      Color(0xffffc1b8),
      Color(0xfffad0c4),
    ],
  );
  
  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c757d);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFf3f5ff);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = EColors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c757d);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  // Error and Validation Colors
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color info = Colors.blueAccent;

  // Neutral Shades
  static const Color black = Colors.black;
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF777777);
  static const Color grey = Colors.grey;
  // static const Color softGrey = Colors.grey;
  static const Color softGrey = Color(0xffe5e5e5);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}