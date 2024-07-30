import 'package:e_commerce/features/authentication/screens/forget_reset/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_style.dart';
import '../login/login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: ESpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                Text(EText.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text(EText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwSections,),
                TextFormField(
                    decoration: const InputDecoration(
                    labelText: EText.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const ResetPassword()),
                    child: const Text(EText.submit),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
