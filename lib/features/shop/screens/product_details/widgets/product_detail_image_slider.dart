import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/image/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? EColors.darkerGrey : EColors.light,
        child: Stack(
          children: [
            const SizedBox(
                height: 300,
                child: Padding(
                  padding:
                  EdgeInsets.all(ESizes.productImageRadius),
                  child: Center(
                      child: Image(
                          image: AssetImage(EImage.productImage5))),
                )
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: ESizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: ESizes.spaceBtwItems,),
                  itemCount: 6,
                  itemBuilder: (_, index) => RoundedImage(
                    width: 80,
                    backgroundColor: dark ? EColors.dark: EColors.white,
                    border: Border.all(color: EColors.primary),
                    padding: const EdgeInsets.all(ESizes.sm),
                    image: EImage.productImage3,
                  ),
                ),
              ),
            ),
            const EAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}