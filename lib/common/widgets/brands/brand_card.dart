import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../image/circular_image.dart';
import '../texts/brand_title_with_verified_icon.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key, this.showBorder = true, this.onTap,
  });

  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                image: EImage.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                dark ? EColors.white : EColors.dark,
              ),
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems / 2,
            ),
            Flexible(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
