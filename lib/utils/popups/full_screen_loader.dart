import 'package:e_commerce/common/widgets/loader/animation_loader.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenLoader{
  static onLoadingDialog(String text, String animation){
    final dark = EHelperFunctions.isDarkMode(Get.context!);
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
          child: Container(
            color: dark ? EColors.dark : EColors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250,),
                AnimationLoader(text: text, animation: animation),
              ],
            ),
          ),
        )
    );
  }
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}