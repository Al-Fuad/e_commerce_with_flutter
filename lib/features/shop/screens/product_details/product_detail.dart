import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_rating_share.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(right: ESizes.defaultSpace, left: ESizes.defaultSpace, bottom: ESizes.defaultSpace),
              child: Column(
                children: [
                  const RatingAndShare(),
                  const ProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(height: ESizes.spaceBtwSections,),
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text("Checkout"))),
                  const SizedBox(height: ESizes.spaceBtwSections,),
                  const SectionHeading(title: "Description", showActionButton: false,),
                  const SizedBox(height: ESizes.spaceBtwItems,),
                  const ReadMoreText(
                    "A Flutter plugin that allows for expanding and collapsing text with the added capability to style and interact with specific patterns in the text like hashtags, URLs, and mentions using the new Annotation feature.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: " Less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: ESizes.spaceBtwSections,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(title: "Review (199)", showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => const ProductReview()), icon: const Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


