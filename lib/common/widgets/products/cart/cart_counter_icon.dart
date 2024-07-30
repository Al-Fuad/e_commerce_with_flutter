import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.onPressed,
    this.color,
  });

  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_cart,
              color: color ?? (dark
                      ? EColors.white
                      : EColors.black),
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: dark ? EColors.white : EColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: dark ? EColors.black : EColors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
