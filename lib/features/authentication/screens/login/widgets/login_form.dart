import 'package:e_commerce/bottom_nav.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../forget_reset/forget_password.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: EText.email
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields,),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: EText.password,
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields/2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(EText.rememberMe),
                  ],
                ),
                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(EText.forgetPassword)),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(() => const BottomNav()), child: const Text(EText.signIn))),
            const SizedBox(height: ESizes.spaceBtwItems,),
            SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(EText.createAccount))),
            const SizedBox(height: ESizes.spaceBtwSections,),

          ],
        ),
      ),
    );
  }
}
