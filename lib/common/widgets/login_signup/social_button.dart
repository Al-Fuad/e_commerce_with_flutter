import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';

class ESocialButtons extends StatelessWidget {
  const ESocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: ESizes.iconMd,
              height: ESizes.iconMd,
              image: AssetImage(EImage.google),
            ),
          ),
        ),
        const SizedBox(width: ESizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: ESizes.iconMd,
              height: ESizes.iconMd,
              image: AssetImage(EImage.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
