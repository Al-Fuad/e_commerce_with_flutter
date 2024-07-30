import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/address/address.dart';
import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/features/shop/screens/cart/cart.dart';
import 'package:e_commerce/features/shop/screens/order/order.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/list_tile/setting_menu_tile.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  EAppBar(title: Text("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: EColors.white),),),
                  UserProfileTile(onPressed: () => Get.to(() => const Profile()),),
                  const SizedBox(height: ESizes.spaceBtwSections,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(title: "Account Settings", showActionButton: false,),
                  const SizedBox(height: ESizes.spaceBtwItems,),
                  SettingMenuTile(icon: Iconsax.safe_home, title: "My Addresses", subtitle: "Manage your delivery addresses", onTap: () => Get.to(() => const Address()),),
                  SettingMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subtitle: "View items in your cart", onTap: () => Get.to(() => const Cart()),),
                  SettingMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subtitle: "Track your orders", onTap: () => Get.to(() => const Order()),),
                  SettingMenuTile(icon: Iconsax.bank, title: "Bank Accounts", subtitle: "Manage your bank accounts", onTap: (){},),
                  SettingMenuTile(icon: Iconsax.discount_shape, title: "Coupons", subtitle: "View available coupons", onTap: (){},),
                  SettingMenuTile(icon: Iconsax.notification, title: "Notifications", subtitle: "Manage notification settings", onTap: (){},),
                  SettingMenuTile(icon: Iconsax.security_card, title: "Account Policy", subtitle: "Review account policies", onTap: (){},),

                  const SizedBox(height: ESizes.spaceBtwSections,),
                  const SectionHeading(title: "App Settings", showActionButton: false,),
                  const SizedBox(height: ESizes.spaceBtwItems,),
                  SettingMenuTile(icon: Iconsax.document_upload, title: "Load Data", subtitle: "Upload your data", onTap: (){},),
                  SettingMenuTile(icon: Iconsax.location, title: "Geolocation", subtitle: "Enable or disable location services", onTap: (){}, trailing: Switch(value: true, onChanged: (value){},),),
                  SettingMenuTile(icon: Iconsax.security_user, title: "Safe Mode", subtitle: "Toggle safe mode", onTap: (){}, trailing: Switch(value: false, onChanged: (value){},),),
                  SettingMenuTile(icon: Iconsax.image, title: "HD Image Quality", subtitle: "Enable or disable HD images", onTap: (){}, trailing: Switch(value: true, onChanged: (value){},),),
                  
                  const SizedBox(height: ESizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){},child: const Text("Logout"),),
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


