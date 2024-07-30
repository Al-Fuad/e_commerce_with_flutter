import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 12,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark? EColors.primary: EColors.dark),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: const Icon(Iconsax.arrow_right_14),
      ),
    );
  }
}
