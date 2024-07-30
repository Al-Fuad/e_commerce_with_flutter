import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(title: Text("Brand"), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const SectionHeading(title: "Brands", showActionButton: false,),
              const SizedBox(height: ESizes.spaceBtwItems,),
              GridLayout(itemCount: 10, mainAxisExtent: 80, itemBuilder: (_,index) => BrandCard(showBorder: true, onTap: () => Get.to(() => const BrandProducts()),))
            ],
          ),
        ),
      ),
    );
  }
}
