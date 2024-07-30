import 'package:flutter/material.dart';

class EElevatedButtonTheme{
  EElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme(){
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 10),
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      )
    );
  }
  static ElevatedButtonThemeData darkElevatedButtonTheme(){
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 10),
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      )
    );
  }
}