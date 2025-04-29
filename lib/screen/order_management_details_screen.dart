import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahatak_food_rider_app/screen/screen.dart';
import 'package:rahatak_food_rider_app/widget/widget.dart';

import '../utils/utils.dart';

class OrderManagementDetailsScreen extends StatelessWidget {
  OrderManagementDetailsScreen({super.key});

  OrderManagementDetailsScreenWidget orderManagementDetailsScreenWidget = Get.put(OrderManagementDetailsScreenWidget());


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (canPop,onPopInvoked) {
        Get.off(()=>OrdersScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
      },
      child: Scaffold(
        body: orderManagementDetailsScreenWidget.orderManagementDetailsScreenWidget(context: context),
        bottomNavigationBar: BottomNavigationBarWidget().bottomNavigationBarWidget(
          context: context,
          isHomeFocus: false,
          isOrderFocus: true,
          isProfileFocus: false,
        ),
      ),
    );
  }
}
