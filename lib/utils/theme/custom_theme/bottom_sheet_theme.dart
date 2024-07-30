import 'package:flutter/material.dart';

class EBottomSheetTheme{
  EBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetThemeData(){
    return BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.white,
      modalBackgroundColor: Colors.white,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }
  static BottomSheetThemeData darkBottomSheetThemeData(){
    return BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }
}