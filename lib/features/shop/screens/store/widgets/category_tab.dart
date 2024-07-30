import 'package:e_commerce/common/widgets/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(
          ESizes.defaultSpace,
        ),
        child: Column(
          children: [
            const BrandShowcase(images: [
              EImage.productImage1,
              EImage.productImage2,
              EImage.productImage3,
            ],),
            const BrandShowcase(images: [
              EImage.productImage1,
              EImage.productImage2,
              EImage.productImage3,
            ],),
            const SizedBox(height: ESizes.spaceBtwItems,),
            SectionHeading(title: "You might like", onPressed: (){},),
            const SizedBox(height: ESizes.spaceBtwItems,),
            GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),
            const SizedBox(height: ESizes.spaceBtwItems,),
          ],
        ),
      ),
      ]
    );
  }
}
