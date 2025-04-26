import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahatak_food_rider_app/widget/widget.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  
  
  SplashScreenWidget splashScreenWidget = Get.put(SplashScreenWidget());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashScreenWidget.splashScreenWidget(context: context),
    );
  }
}
