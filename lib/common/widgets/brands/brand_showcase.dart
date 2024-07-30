import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      padding: const EdgeInsets.all(ESizes.md),
      child: Column(
        children: [
          const BrandCard(
            showBorder: false,
          ),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: dark ? EColors.darkerGrey : EColors.light,
        margin: const EdgeInsets.only(right: ESizes.sm),
        padding: const EdgeInsets.all(ESizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
