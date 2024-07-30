import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ShadowStyle{
  static final verticalProductShadow = BoxShadow(
    color: EColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: EColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}