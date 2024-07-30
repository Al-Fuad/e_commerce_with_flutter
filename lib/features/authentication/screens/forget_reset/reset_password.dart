import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                Image(width: EHelperFunctions.screenWidth() * 0.5 ,image: const AssetImage(EImage.done3)),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text("Password Reset Email Sent", style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text("smalfuadnur@gmail.com", style: Theme.of(context).textTheme.labelLarge,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text("An email with a password reset link has been sent to your email address. Follow the instructions in the email to reset your password. If you don’t receive it, please check your spam or junk folder.", style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text(EText.done),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwItems,),
                TextButton(
                  onPressed: () {},
                  child: const Text(EText.resendEmail),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
