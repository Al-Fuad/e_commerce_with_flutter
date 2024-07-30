import 'package:flutter/material.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../image/rounded_image.dart';
import '../../texts/brand_title_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RoundedImage(
          image: EImage.productImage1,
          width: 60,
          height: 60,
        ),
        const SizedBox(width: ESizes.spaceBtwItems,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: "Nike"),
              const Flexible(child: ProductTitleText(title: "Green Sports Shoes", maxLines: 1,)),

              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: "Color ", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Green ", style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: "Size ", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "UK 08 ", style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
