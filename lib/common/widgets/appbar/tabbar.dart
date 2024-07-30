import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? EColors.black : EColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: EColors.primary,
        unselectedLabelColor: EColors.darkGrey,
        labelColor: dark ? EColors.white : EColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}
