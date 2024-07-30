import 'package:e_commerce/features/shop/screens/all_product/all_product.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layouts.dart';
import '../../../../common/widgets/products/product_cards/product_cards_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  SearchContainer(
                    text: EText.searchBar,
                    showBordar: false,
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  HomeCategories(),
                  SizedBox(height: ESizes.spaceBtwSections,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banner: [
                      EImage.promoBanner1,
                      EImage.promoBanner2,
                      EImage.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  SectionHeading(title: "Popular Products", onPressed: () => Get.to(() => const AllProduct()),),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  GridLayout(itemCount: 4, itemBuilder: (_ , index) => const ProductCardVertical(),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

