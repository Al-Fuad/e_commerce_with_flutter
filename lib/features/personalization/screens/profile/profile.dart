import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/image/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text("Profile"),
        showBackArrow: true,

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(image: EImage.user),
                  TextButton(onPressed: (){}, child: const Text("Change Profile Picture")),
                ],
              ),
            ),

            const SizedBox(height: ESizes.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems,),

            const SectionHeading(title: "Profile Information", showActionButton: false,),
            const SizedBox(height: ESizes.spaceBtwItems,),
            ProfileMenu(title: "Name", value: "S M Al Fuad Nur", onPressed: (){},),
            ProfileMenu(title: "Username", value: "alfuad", onPressed: (){}, icon: Iconsax.copy,),

            const SizedBox(height: ESizes.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems,),


            const SectionHeading(title: "Personal Information", showActionButton: false,),
            const SizedBox(height: ESizes.spaceBtwItems,),
            ProfileMenu(title: "User ID", value: "1234", onPressed: (){}, icon: Iconsax.copy,),
            ProfileMenu(title: "E-mail", value: "smalfuadnur@gmail.com", onPressed: (){},),
            ProfileMenu(title: "Phone Number", value: "01851699135", onPressed: (){},),
            ProfileMenu(title: "Gender", value: "Male", onPressed: (){},),
            ProfileMenu(title: "Date of Birth", value: "12 Feb, 2002", onPressed: (){},),

            const SizedBox(height: ESizes.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems,),

            Center(child: TextButton(onPressed: (){}, child: const Text("Close Account", style: TextStyle(color: Colors.red),)))
          ],
        ),
      ),
    );
  }
}

