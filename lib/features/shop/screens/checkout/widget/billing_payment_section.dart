import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BillPaymentSection extends StatelessWidget {
  const BillPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: (){},
        ),
        const SizedBox(height: ESizes.spaceBtwItems/2,),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? EColors.light : EColors.white,
              padding: const EdgeInsets.all(ESizes.sm),
              child: const Image(image: AssetImage(EImage.nagad), fit: BoxFit.contain,),
            ),
            const SizedBox(width: ESizes.spaceBtwItems/2,),
            Text("Nagad", style: Theme.of(context).textTheme.bodyLarge,),

          ],
        )
      ],
    );
  }
}
