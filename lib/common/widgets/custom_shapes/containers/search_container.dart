import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBordar = true, this.padding = const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBordar;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: EDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(ESizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
              ? EColors.dark
              : EColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
          border: showBordar ? Border.all(color: EColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: EColors.darkerGrey,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
