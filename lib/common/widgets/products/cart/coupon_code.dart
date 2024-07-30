import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? EColors.dark : EColors.white,
      padding: const EdgeInsets.only(
          top: ESizes.sm,
          right: ESizes.sm,
          left: ESizes.md,
          bottom: ESizes.sm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have a promo code? Enter Here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark ? EColors.white.withOpacity(0.5) : EColors.dark.withOpacity(0.5),
                      backgroundColor: EColors.grey.withOpacity(0.2),
                      side: BorderSide(color: EColors.grey.withOpacity(0.1))
                  ),
                  onPressed: () {}, child: const Text("Apply")))
        ],
      ),
    );
  }
}
