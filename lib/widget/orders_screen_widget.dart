import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahatak_food_rider_app/utils/utils.dart';

class OrdersScreenWidget extends GetxController {


  Widget ordersScreenWidget({required BuildContext context}) {
    if(MediaQuery.sizeOf(context).height > 1000) {
      return Container(
        height: 1133.ht(context),
        width: 744.wt(context),
        decoration: BoxDecoration(
          color: ColorUtils.white248
        ),
        child: Center(
          child: Text("Orders"),
        ),
      );
    } else {
      return Container(
        height: 844.hm(context),
        width: 390.wm(context),
        decoration: BoxDecoration(
          color: ColorUtils.white248,
        ),
        child: Center(
          child: Text("Orders"),
        ),
      );
    }
  }



}