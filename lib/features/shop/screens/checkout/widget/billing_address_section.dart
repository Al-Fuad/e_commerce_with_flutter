import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillAddressSection extends StatelessWidget {
  const BillAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: (){},
        ),
        const SizedBox(height: ESizes.spaceBtwItems/2,),
        Text("S M Al Fuad Nur", style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone, color: EColors.grey, size: 16,),
            const SizedBox(width: ESizes.spaceBtwItems,),
            Text("+880 1851 699135", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history, color: EColors.grey, size: 16,),
            const SizedBox(width: ESizes.spaceBtwItems,),
            Expanded(child: Text("House 13, Road 3, Block C, Section 1, Mirpur, Dhaka", style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems,),


      ],
    );
  }
}
