import 'package:e_commerce/common/widgets/image/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: ESizes.sm,
              backgroundColor: EColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: ESizes.sm, vertical: ESizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: EColors.black),
              ),
            ),
            const SizedBox(width: ESizes.spaceBtwItems,),
            Text("\$250", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: ESizes.spaceBtwItems,),
            const ProductPriceText(price: "175", isLarge: true,),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/1.5,),
        const ProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(height: ESizes.spaceBtwItems/1.5,),

        Row(
          children: [
            const ProductTitleText(title: "Status"),
            const SizedBox(width: ESizes.spaceBtwItems,),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/1.5,),
        Row(
          children: [
            CircularImage(image: EImage.cosmeticsIcon, width: 32, height: 32, overlayColor: dark ? EColors.white : EColors.black,),
            const BrandTitleWithVerifiedIcon(title: "Nike", brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
