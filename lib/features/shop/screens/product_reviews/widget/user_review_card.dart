import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/rating/rating_star_indicator.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(EImage.user),),
                const SizedBox(width: ESizes.spaceBtwItems,),
                Text("John Deo", style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems,),
        Row(
          children: [
            const RatingStarsIndicator(rating: 4.0),
            const SizedBox(width: ESizes.spaceBtwItems,),
            Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems,),
        const ReadMoreText(
          "I got a pair of boots from store X and I’m very satisfied. They are high-quality and worth the money. The store also offered free shipping at that price so that’s a plus!",
          trimMode: TrimMode.Line,
          trimLines: 2,
          trimExpandedText: " Less",
          trimCollapsedText: " Show more",
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: EColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: EColors.primary),
        ),
        const SizedBox(height: ESizes.spaceBtwItems,),
        RoundedContainer(
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ESizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Store", style: Theme.of(context).textTheme.titleMedium,),
                    Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
                const SizedBox(height: ESizes.spaceBtwItems,),
                const ReadMoreText(
                  "We are grateful that you took the time to leave us a review. Your feedback helps us to improve service for everyone",
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  trimExpandedText: " less",
                  trimCollapsedText: " show more",
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: EColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: EColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwSections,)

      ],
    );
  }
}
