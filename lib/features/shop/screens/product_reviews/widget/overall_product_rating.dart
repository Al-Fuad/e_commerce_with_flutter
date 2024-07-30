import 'package:e_commerce/features/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "4.8",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            )),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(text: "5", value: 1),
              RatingProgressIndicator(text: "4", value: 0.8),
              RatingProgressIndicator(text: "3", value: 0.6),
              RatingProgressIndicator(text: "2", value: 0.4),
              RatingProgressIndicator(text: "1", value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
