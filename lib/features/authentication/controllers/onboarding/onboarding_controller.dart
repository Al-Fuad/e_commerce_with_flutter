import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();
  final deviceStorage = GetStorage("user");

  final pageController = PageController();
  Rx<int>currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  void nextPage() {
    if(currentPageIndex.value == 2) {
      if(kDebugMode) {
        print("====================Get Storage isFirstTime====================");
        print(deviceStorage.read("isFirstTime"));
      }
      deviceStorage.write("isFirstTime", false);

      if(kDebugMode) {
        print("====================Get Storage isFirstTime====================");
        print(deviceStorage.read("isFirstTime"));
      }
      Get.offAll(const LoginScreen());
    } else{
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  void skipPage() {
    if(kDebugMode) {
      print("====================Get Storage IsFirstTime====================");
      print(deviceStorage.read("isFirstTime"));
    }
    deviceStorage.write("isFirstTime", false);
    Get.offAll(const LoginScreen());
  }
}