import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rahatak_food_rider_app/widget/widget.dart';

import '../utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  ProfileScreenWidget profileScreenWidget = Get.put(ProfileScreenWidget());

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (canPop,onPopInvoked) {
        SystemNavigator.pop();
      },
      child: Scaffold(
        body: profileScreenWidget.profileScreenWidget(context: context),
        bottomNavigationBar: BottomNavigationBarWidget().bottomNavigationBarWidget(
          context: context,
          isHomeFocus: false,
          isOrderFocus: false,
          isProfileFocus: true,
        ),
      ),
    );
  }
}
