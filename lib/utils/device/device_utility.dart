import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EDeviceUtils{
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static bool isLandscapeOrientation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets == 0;
  }

  static bool isPortraitOrientation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets != 0;
  }

  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight(){
    return kToolbarHeight;
  }

  static double getKeyboardHeight(){
    final viewInserts = MediaQuery.of(Get.context!).viewInsets;
    return viewInserts.bottom;
  }

  static Future<bool> isKeyboardVisible() async{
    final viewInserts = MediaQuery.of(Get.context!).viewInsets;
    return viewInserts.bottom > 0;
  }

  static Future<bool> isPhysicalDevice() async{
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  static Future<void> setPreferredOrientation(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  static Future<bool> hasInternetConnection() async {
    try{
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    }
    on SocketException catch(_){
      return false;
    }
  }

  static bool isISO(){
    return Platform.isIOS;
  }

  static bool isAndroid(){
    return Platform.isAndroid;
  }

  static void launchUrl(String url) async {
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }
    else{
      throw 'Could not launch $url';
    }
  }
}