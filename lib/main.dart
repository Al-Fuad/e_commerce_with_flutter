import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'App.dart';
import 'firebase_options.dart';

void main() async {
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init("user");
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(name: "ECommerceApp" ,options: DefaultFirebaseOptions.currentPlatform,).then(
      (value) => Get.put(AuthenticationRepository())
  );
  runApp(const App());
}
