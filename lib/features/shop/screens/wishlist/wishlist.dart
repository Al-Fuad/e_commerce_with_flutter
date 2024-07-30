import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:e_commerce/features/shop/screens/home/home.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(itemCount: 6, itemBuilder: (_,index)=>const ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
