import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, this.selectedAddress = false});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(ESizes.md),
      backgroundColor: selectedAddress
          ? EColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? EColors.darkerGrey
              : EColors.grey,
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? EColors.light
                      : EColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("S M Al Fuad Nur", maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: ESizes.sm/2,),
              const Text("+880 1851 699135", maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: ESizes.sm/2,),
              const Text("House 13, Road 3, Block C, Section 1, Mirpur, Dhaka", softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}
