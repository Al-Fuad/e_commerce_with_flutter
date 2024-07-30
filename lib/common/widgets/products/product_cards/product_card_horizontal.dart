import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/circular_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
        color: dark ? EColors.darkerGrey : EColors.softGrey,
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundedImage(
                    image: EImage.productImage1,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: RoundedContainer(
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
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )
                ),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: ESizes.sm, left: ESizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: "Green Nike Half Sleeves Shoes",smallSize: true,),
                      SizedBox(width: ESizes.spaceBtwItems/2,),
                      BrandTitleWithVerifiedIcon(title: "Nike"),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: ProductPriceText(price: "233")),
                      Container(
                        decoration: const BoxDecoration(
                          color: EColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(ESizes.cardRadiusMd),
                              bottomRight:
                              Radius.circular(ESizes.cardRadiusMd)),
                        ),
                        child: const SizedBox(
                          width: ESizes.iconLg * 1.2,
                          height: ESizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: EColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
