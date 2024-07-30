import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillAmountSection extends StatelessWidget {
  const BillAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("SubTotal", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$2333.0", style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$2345.0", style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/2,),

      ],
    );
  }
}
