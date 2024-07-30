import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage("user");

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() async {
    if(kDebugMode) {
      print("====================Get Storage IsFirstTime====================");
      print(deviceStorage.read("isFirstTime"));
    }
    deviceStorage.writeIfNull("isFirstTime", true);
    if(kDebugMode) {
      print("====================Get Storage IsFirstTime====================");
      print(deviceStorage.read("isFirstTime"));
    }
    !deviceStorage.read("isFirstTime") ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const OnBoardingScreen());
  }
  
  
}