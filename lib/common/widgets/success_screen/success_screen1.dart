import 'package:e_commerce/common/styles/spacing_style.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_function.dart';

class SuccessScreen1 extends StatelessWidget {
  const SuccessScreen1({super.key, required this.title, required this.subtitle, required this.onPressed, required this.image});

  final String title, subtitle, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: ESpacingStyle.paddingWithAppBarHeight*2,
            child: Column(
              children: [
                Image(width: EHelperFunctions.screenWidth() * 0.5 ,image: AssetImage(image)),
                const SizedBox(height: ESizes.spaceBtwSections,),
                Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text("smalfuadnur@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text(subtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(EText.eContinue),
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
