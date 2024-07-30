import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(ESizes.md),
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Price : ",
                            smallSize: true,
                          ),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: ESizes.spaceBtwItems,
                          ),
                          const ProductPriceText(price: "20")
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Stock : ",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const ProductTitleText(
                title:
                    "This is the Description of the Product and it can go to up to max 4 lines.",
                maxLines: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: "Color",
              showActionButton: false,
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 10,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: EChoiceChip(text: "red", selected: false, onSelected: (value){},),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: EChoiceChip(text: "green", selected: true, onSelected: (value){},),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: EChoiceChip(text: "blue", selected: false, onSelected: (value){},),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: EChoiceChip(text: "yellow", selected: false, onSelected: (value){},),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: "Size",
              showActionButton: false,
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 10,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: EChoiceChip(text: "EU 34", selected: false, onSelected: (value){},),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: EChoiceChip(text: "EU 35", selected: true, onSelected: (value){},),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: EChoiceChip(text: "EU 36", selected: false, onSelected: (value){},),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

