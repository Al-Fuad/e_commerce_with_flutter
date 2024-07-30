import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme(),
      darkTheme: EAppTheme.darkTheme(),
      // home: const OnBoardingScreen(),
      home: const Scaffold(backgroundColor: EColors.primary, body: Center(child: CircularProgressIndicator(color: EColors.white,),),),
    );
  }
}