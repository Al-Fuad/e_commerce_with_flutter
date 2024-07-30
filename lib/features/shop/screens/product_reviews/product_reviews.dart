import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widget/overall_product_rating.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widget/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/rating/rating_star_indicator.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Review your own experience, and explain what the place was like and the service you received"),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              const OverallProductRating(),
              const RatingStarsIndicator(rating: 4.8,),
              Text("12311", style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: ESizes.spaceBtwSections,),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

