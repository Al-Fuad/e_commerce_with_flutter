import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    this.height,
    this.width,
    this.size = ESizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final IconData icon;
  final double? height, width, size;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? EColors.black.withOpacity(0.7)
                // ? EColors.darkerGrey.withOpacity(0.9)
                : EColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
