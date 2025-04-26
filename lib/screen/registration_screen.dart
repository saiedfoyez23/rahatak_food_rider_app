import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahatak_food_rider_app/screen/screen.dart';

import '../widget/widget.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  RegistrationScreenWidget registrationScreenWidget = Get.put(RegistrationScreenWidget());

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (canPop,onPopInvoked) {
        Get.off(()=>AuthenticationSplashScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
      },
      child: Scaffold(
        body: registrationScreenWidget.registrationScreenWidget(context: context),
      ),
    );
  }
}