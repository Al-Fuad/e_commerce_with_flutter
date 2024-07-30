import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = EColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ESizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ESizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor?? (dark ? EColors.black : EColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark ? EColors.light : EColors.dark,
                  )),
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
