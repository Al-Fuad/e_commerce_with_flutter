import 'package:flutter/material.dart';

class EChipTheme{
  EChipTheme._();

  static ChipThemeData lightChipTheme(){
    return ChipThemeData(
      disabledColor: Colors.grey.withOpacity(.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white,
    );
  }
  static ChipThemeData darkChipTheme(){
    return const ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle: TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white,
    );
  }
}