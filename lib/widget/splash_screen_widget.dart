import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahatak_food_rider_app/utils/utils.dart';

import '../screen/screen.dart';

class SplashScreenWidget extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 5),() async {
      Get.off(()=>AuthenticationSplashScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
    });
  }

  Widget splashScreenWidget({required BuildContext context}) {
    return Container(
      height: MediaQuery.sizeOf(context).height > 1000 ? 1133.ht(context) : 844.hm(context),
      width: MediaQuery.sizeOf(context).width > 500 ? 744.wt(context) : 390.wm(context),
      decoration: BoxDecoration(
        color: ColorUtils.white255,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          Container(
            height: MediaQuery.sizeOf(context).height > 1000 ? 319.ht(context) :229.hm(context),
            width: MediaQuery.sizeOf(context).width > 500 ? 439.wt(context) : 229.wm(context),
            decoration: BoxDecoration(
                color: Colors.transparent
            ),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset(
                ImagePathUtils.logoImagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),


        ],
      ),
    );
  }


}