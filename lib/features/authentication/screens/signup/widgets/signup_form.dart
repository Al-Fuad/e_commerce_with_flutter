import 'package:e_commerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:e_commerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SignupFrom extends StatelessWidget {
  const SignupFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final dark = EHelperFunctions.isDarkMode(context);
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child:
                // First Name
                TextFormField(
                  controller: controller.firstName,
                  validator: (value) => EValidator.validateEmptyText("First name", value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: EText.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ESizes.spaceBtwInputFields,),
              Expanded(
                child:
                // Last Name
                TextFormField(
                  controller: controller.lastName,
                  validator: (value) => EValidator.validateEmptyText("Last Name", value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: EText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields,),
          // Username
          TextFormField(
            controller: controller.userName,
            validator: (value) => EValidator.validateEmptyText("Username", value),
            decoration: const InputDecoration(
              labelText: EText.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields,),
          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => EValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: EText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields,),
          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => EValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: EText.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields,),
          // Password
          TextFormField(
            controller: controller.password,
            validator: (value) => EValidator.validatePassword(value),
            decoration: const InputDecoration(
              labelText: EText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields,),
          const TermsAndConditionsCheckbox(),
          const SizedBox(height: ESizes.spaceBtwSections,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(EText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

