import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/cart/product_quantity_with_add_remove_button.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key, this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: ESizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if(showAddRemoveButtons) const SizedBox(height: ESizes.spaceBtwItems,),
          if(showAddRemoveButtons) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70,),
                  ProductQuantityWithAddRemoveButton(),
                ],
              ),
              ProductPriceText(price: "234"),
            ],
          ),

        ],
      ),
    );
  }
}
