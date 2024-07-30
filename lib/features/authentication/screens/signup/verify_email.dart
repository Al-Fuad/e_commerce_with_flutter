import 'package:e_commerce/common/widgets/success_screen/success_screen1.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              children: [
                Image(width: EHelperFunctions.screenWidth() * 0.5 ,image: const AssetImage(EImage.mailSending1)),
                const SizedBox(height: ESizes.spaceBtwSections,),
                Text(EText.confirmEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text("smalfuadnur@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text(EText.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen1(
                      title: EText.yourAccountCreatedTitle,
                      subtitle: EText.yourAccountCreatedSubTitle,
                      image: EImage.done1,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    )),
                    child: const Text(EText.eContinue),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwItems,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(EText.resendEmail),
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
