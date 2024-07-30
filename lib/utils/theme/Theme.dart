import 'package:e_commerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_field_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_theme/appbar_theme.dart';

class EAppTheme{
  EAppTheme._();

  static ThemeData lightTheme(){
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: ETextTheme.lightTextTheme(),
      chipTheme: EChipTheme.lightChipTheme(),
      appBarTheme: EAppBarTheme.lightAppBarTheme(),
      checkboxTheme: ECheckboxTheme.lightCheckboxTheme(),
      bottomSheetTheme: EBottomSheetTheme.lightBottomSheetThemeData(),
      elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme(),
      outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme(),
      inputDecorationTheme: ETextFieldTheme.lightInputDecorationTheme(),
    );
  }
  static ThemeData darkTheme(){
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black54,
      textTheme: ETextTheme.darkTextTheme(),
      chipTheme: EChipTheme.darkChipTheme(),
      appBarTheme: EAppBarTheme.darkAppBarTheme(),
      checkboxTheme: ECheckboxTheme.darkCheckboxTheme(),
      bottomSheetTheme: EBottomSheetTheme.darkBottomSheetThemeData(),
      elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme(),
      outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme(),
      inputDecorationTheme: ETextFieldTheme.darkInputDecorationTheme(),
    );
  }
}