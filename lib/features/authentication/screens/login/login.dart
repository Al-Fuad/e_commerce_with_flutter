import 'package:e_commerce/common/styles/spacing_style.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/common/widgets/login_signup/social_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: ESpacingStyle.paddingWithAppBarHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ELoginHeader(),
                const ELoginForm(),
                EFormDivider(dividerText: EText.orSignInWith.capitalize!),
                const SizedBox(height: ESizes.spaceBtwSections,),
                const ESocialButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



