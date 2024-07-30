import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../icons/circular_icon.dart';
import '../../texts/brand_title_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkerGrey : EColors.white,
        ),
        child: Column(
          children: [
            RoundedContainer(
              // height: 180,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: dark ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  const RoundedImage(
                    image: EImage.productImage1,
                  ),
                  Positioned(
                    top: 10,
                    left: 5,
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
                      top: 2,
                      right: 1,
                      child: CircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: ESizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  BrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: ESizes.sm),
                  child: ProductPriceText(price:"35.5"),
                ),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


