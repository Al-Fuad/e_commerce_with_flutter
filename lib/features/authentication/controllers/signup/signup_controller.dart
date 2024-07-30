import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/utils/constants/image_string.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try{
      FullScreenLoader.onLoadingDialog("We are processing your information...", EImage.processing);

      // firstName isConnected = await NetworkManagerClientFactory
    }
    catch(e){

    }
    finally{

    }
  }
}