import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_button.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(EText.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: ESizes.sm,),
                Text(EText.signupSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
                const SizedBox(height: ESizes.lg,),
                const SignupFrom(),
                const SizedBox(height: ESizes.spaceBtwSections,),
                EFormDivider(dividerText: EText.orSignUpWith.capitalize!),
                const SizedBox(height: ESizes.spaceBtwSections,),
                const ESocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

