import 'package:e_commerce/bottom_nav.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/success_screen/success_screen1.dart';
import 'package:e_commerce/features/shop/screens/cart/widget/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widget/billing_amout_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/products/cart/coupon_code.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              const CouponCode(),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              RoundedContainer(
                padding: const EdgeInsets.all(ESizes.md),
                showBorder: true,
                backgroundColor: dark ? EColors.black : EColors.white,
                child: const Column(
                  children: [
                    BillAmountSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    BillPaymentSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    BillAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen1(
              title: "Payment Success!",
              subtitle: "Your item will be shipped soon!",
              onPressed: () => Get.offAll(() => const BottomNav()),
              image: EImage.successfulPaymentIcon)),
          child: const Padding(
            padding: EdgeInsets.all(ESizes.md / 1.5),
            child: Text("Checkout \$2345"),
          ),
        ),
      ),
    );
  }
}
