import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const RoundedImage(
                width: double.infinity,
                image: EImage.banner1,
              ),
              const SizedBox(height: ESizes.spaceBtwSections,),
              Column(
                children: [
                  SectionHeading(title: "Sports Shirts", onPressed: (){},),
                  const SizedBox(height: ESizes.spaceBtwItems/2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemBuilder: (_,index) => const ProductCardHorizontal(),
                      itemCount: 4,
                      separatorBuilder: (_,__) => const SizedBox(width: ESizes.spaceBtwItems,),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
