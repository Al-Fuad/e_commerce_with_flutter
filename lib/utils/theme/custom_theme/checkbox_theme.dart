import 'package:flutter/material.dart';

class ECheckboxTheme{
  ECheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme(){
    return CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      checkColor: MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.selected)){
          return Colors.white;
        }
        else{
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return Colors.blue;
        }
        else{
          return Colors.transparent;
        }
      })
    );
  }
  static CheckboxThemeData darkCheckboxTheme(){
    return CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      checkColor: MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.selected)){
          return Colors.white;
        }
        else{
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return Colors.blue;
        }
        else{
          return Colors.transparent;
        }
      })
    );
  }
}