import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24,child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: ESizes.spaceBtwItems,),
        Text.rich(TextSpan(
            children: [
              TextSpan(text: '${EText.iAgree} ', style:Theme.of(context).textTheme.bodySmall),
              TextSpan(text: EText.privacyPolicy, style: Theme.of(context).textTheme.bodySmall!.apply(
                color: dark?  EColors.white : EColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark?  EColors.white : EColors.primary,
              )),
              TextSpan(text: ' ${EText.and} ', style:Theme.of(context).textTheme.bodySmall),
              TextSpan(text: EText.termsOfUse, style: Theme.of(context).textTheme.bodySmall!.apply(
                color: dark?  EColors.white : EColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark?  EColors.white : EColors.primary,
              )),
            ]
        ))
      ],
    );
  }
}
