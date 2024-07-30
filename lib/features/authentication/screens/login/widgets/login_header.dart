import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class ELoginHeader extends StatelessWidget {
  const ELoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ESizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 70,
              image: AssetImage(dark ? EImage.darkLogo : EImage.lightLogo),
            ),
            const SizedBox(height: ESizes.sm,),
            Text(EText.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: ESizes.sm,),
            Text(EText.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
