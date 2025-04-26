import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rahatak_food_rider_app/widget/widget.dart';

import '../utils/utils.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});


  OrdersScreenWidget ordersScreenWidget = Get.put(OrdersScreenWidget());


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (canPop,onPopInvoked) {
        SystemNavigator.pop();
      },
      child: Scaffold(
        body: ordersScreenWidget.ordersScreenWidget(context: context),
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
