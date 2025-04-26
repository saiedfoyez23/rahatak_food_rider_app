import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahatak_food_rider_app/utils/utils.dart';

import '../screen/screen.dart';

class NotificationScreenWidget extends GetxController {

  Widget notificationScreenWidget({required BuildContext context}) {
    if(MediaQuery.sizeOf(context).height > 1000) {
      return SafeArea(
        child: Container(
          height: 1133.ht(context),
          width: 744.wt(context),
          decoration: BoxDecoration(
            color: ColorUtils.white255,
          ),
          child: CustomScrollView(
            slivers: [

              SliverToBoxAdapter(
                child: Column(
                  children: [

                    SpacerWidget.spacerWidget(spaceHeight: 11.ht(context),),

                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 37.hpmt(context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Container(
                              height: 40.ht(context),
                              width: 40.wt(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                onPressed: () {
                                  Get.off(()=>HomeScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                },
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    ImagePathUtils.authorizationBackButtonImagePath,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),


                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Notification".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20.spt(context),
                                    color: ColorUtils.black255,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 138.hpmt(context)),
                      child: Column(
                        children: [
                          SpacerWidget.spacerWidget(spaceHeight: 26.ht(context),),

                          Container(
                            height: 95.ht(context),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.rt(context)),
                              border: Border.all(color: ColorUtils.white217,width: 0.5),
                            ),
                            child: Row(
                              children: [


                                Container(
                                  height: 95.ht(context),
                                  width: 38.wt(context),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.rm(context)),
                                        bottomLeft: Radius.circular(10.rm(context)),
                                      ),
                                      color: ColorUtils.blue192
                                  ),
                                  child:  Container(
                                    height: 24.ht(context),
                                    width: 24.wt(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.asset(
                                        ImagePathUtils.passwordResetIconImagePath,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    height: 95.ht(context),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.hpmt(context),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.rt(context)),
                                        bottomRight: Radius.circular(10.rt(context)),
                                      ),
                                      color: ColorUtils.white255,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "The order is ready for pickup.".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 10.ht(context)),

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "The order has been prepared from restaurant #12345, please proceed to pick it up.".tr,
                                            textAlign:  Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),

                          Container(
                            height: 125.ht(context),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.rt(context)),
                              border: Border.all(color: ColorUtils.white217,width: 0.5),
                            ),
                            child: Row(
                              children: [


                                Container(
                                  height: 125.ht(context),
                                  width: 38.wt(context),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.rm(context)),
                                        bottomLeft: Radius.circular(10.rm(context)),
                                      ),
                                      color: ColorUtils.green142
                                  ),
                                  child:  Container(
                                    height: 24.ht(context),
                                    width: 24.wt(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.asset(
                                        ImagePathUtils.checkIconImagePath,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    height: 125.ht(context),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.hpmt(context),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.rt(context)),
                                        bottomRight: Radius.circular(10.rt(context)),
                                      ),
                                      color: ColorUtils.white255,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "New order available!".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 10.ht(context)),

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "You have a new delivery order from [Restaurant Name] to [Customer Address].".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),

                                        SpacerWidget.spacerWidget(spaceHeight: 10.ht(context)),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            Container(
                                              height: 20.ht(context),
                                              width: 20.wt(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent
                                              ),
                                              child: FittedBox(
                                                fit: BoxFit.fill,
                                                child: Image.asset(
                                                  ImagePathUtils.lightTimeLineIconImagePath,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),

                                            SpacerWidget.spacerWidget(spaceWidth: 10.wt(context)),

                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                              child: Text(
                                                "Time left for acceptance: 30 minutes".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.spt(context),
                                                  color: ColorUtils.gray136,
                                                ),
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),

                          Container(
                            height: 95.ht(context),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.rt(context)),
                              border: Border.all(color: ColorUtils.white217,width: 0.5),
                            ),
                            child: Row(
                              children: [


                                Container(
                                  height: 95.ht(context),
                                  width: 38.wt(context),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.rt(context)),
                                      bottomLeft: Radius.circular(10.rt(context)),
                                    ),
                                    color: ColorUtils.blue192,
                                  ),
                                  child:  Container(
                                    height: 24.ht(context),
                                    width: 24.wt(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.asset(
                                        ImagePathUtils.deliveryFilledIconImagePath,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    height: 95.ht(context),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.hpmt(context),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.rt(context)),
                                        bottomRight: Radius.circular(10.rt(context)),
                                      ),
                                      color: ColorUtils.white255,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "Order on the Way".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 10.ht(context)),

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "You are now on your way to client [client name]".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),


                          SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),

                          Container(
                            height: 115.ht(context),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.rt(context)),
                              border: Border.all(color: ColorUtils.white217,width: 0.5),
                            ),
                            child: Row(
                              children: [


                                Container(
                                  height: 115.ht(context),
                                  width: 38.wt(context),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.rm(context)),
                                        bottomLeft: Radius.circular(10.rm(context)),
                                      ),
                                      color: ColorUtils.green142
                                  ),
                                  child:  Container(
                                    height: 24.ht(context),
                                    width: 24.wt(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.asset(
                                        ImagePathUtils.checkIconImagePath,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    height: 115.ht(context),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.hpmt(context),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.rt(context)),
                                        bottomRight: Radius.circular(10.rt(context)),
                                      ),
                                      color: ColorUtils.white255,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "Order received!".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 10.ht(context)),

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "You have confirmed receipt of the order from [restaurant name]. Deliver it to the customer now!".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),


                          SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),

                          Container(
                            height: 95.ht(context),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.rm(context)),
                              border: Border.all(color: ColorUtils.white217,width: 0.5),
                            ),
                            child: Row(
                              children: [


                                Container(
                                  height: 95.ht(context),
                                  width: 38.wt(context),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.rm(context)),
                                      bottomLeft: Radius.circular(10.rm(context)),
                                    ),
                                    color: ColorUtils.yellow160,
                                  ),
                                  child:  Container(
                                    height: 24.ht(context),
                                    width: 24.wt(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.asset(
                                        ImagePathUtils.bxsErrorIconImagePath,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    height: 95.ht(context),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.hpmt(context),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.rt(context)),
                                        bottomRight: Radius.circular(10.rt(context)),
                                      ),
                                      color: ColorUtils.white255,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "Your status is now busy!".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 10.ht(context)),

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "You will not be able to receive new requests until you reactivate your status.".tr,
                                            textAlign:Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black255,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),


                          SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),
                        ],
                      ),
                    )


                  ],
                ),
              )


            ],
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Container(
          height: 844.hm(context),
          width: 390.wm(context),
          decoration: BoxDecoration(
            color: ColorUtils.white255,
          ),
          child: CustomScrollView(
            slivers: [

              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.hpmm(context)),
                  child: Column(
                    children: [

                      SpacerWidget.spacerWidget(spaceHeight: 11.hm(context),),

                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Container(
                              height: 40.hm(context),
                              width: 40.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                onPressed: () {
                                  Get.off(()=>HomeScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                },
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    ImagePathUtils.authorizationBackButtonImagePath,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),


                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Notification".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.spm(context),
                                    color: ColorUtils.black255,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      SpacerWidget.spacerWidget(spaceHeight: 26.hm(context),),

                      Container(
                        height: 95.hm(context),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.rm(context)),
                          border: Border.all(color: ColorUtils.white217,width: 0.5),
                        ),
                        child: Row(
                          children: [


                            Container(
                              height: 95.hm(context),
                              width: 38.wm(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.rm(context)),
                                    bottomLeft: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.blue192
                              ),
                              child:  Container(
                                height: 24.hm(context),
                                width: 24.wm(context),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    ImagePathUtils.passwordResetIconImagePath,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 95.hm(context),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.hpmm(context),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.rm(context)),
                                    bottomRight: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.white255,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "The order is ready for pickup.".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceHeight: 10.hm(context)),

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "The order has been prepared from restaurant #12345, please proceed to pick it up.".tr,
                                        textAlign:  Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),

                      Container(
                        height: 125.hm(context),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.rm(context)),
                          border: Border.all(color: ColorUtils.white217,width: 0.5),
                        ),
                        child: Row(
                          children: [


                            Container(
                              height: 125.hm(context),
                              width: 38.wm(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.rm(context)),
                                    bottomLeft: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.green142
                              ),
                              child:  Container(
                                height: 24.hm(context),
                                width: 24.wm(context),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    ImagePathUtils.checkIconImagePath,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 125.hm(context),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.hpmm(context),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.rm(context)),
                                    bottomRight: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.white255,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "New order available!".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceHeight: 10.hm(context)),

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "You have a new delivery order from [Restaurant Name] to [Customer Address].".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),

                                    SpacerWidget.spacerWidget(spaceHeight: 10.hm(context)),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          height: 20.hm(context),
                                          width: 20.wm(context),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent
                                          ),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              ImagePathUtils.lightTimeLineIconImagePath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),

                                        SpacerWidget.spacerWidget(spaceWidth: 10.wm(context)),

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "Time left for acceptance: 30 minutes".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spm(context),
                                              color: ColorUtils.gray136,
                                            ),
                                          ),
                                        ),

                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),

                      Container(
                        height: 95.hm(context),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.rm(context)),
                          border: Border.all(color: ColorUtils.white217,width: 0.5),
                        ),
                        child: Row(
                          children: [


                            Container(
                              height: 95.hm(context),
                              width: 38.wm(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.rm(context)),
                                  bottomLeft: Radius.circular(10.rm(context)),
                                ),
                                color: ColorUtils.blue192,
                              ),
                              child:  Container(
                                height: 24.hm(context),
                                width: 24.wm(context),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    ImagePathUtils.deliveryFilledIconImagePath,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 95.hm(context),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.hpmm(context),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.rm(context)),
                                    bottomRight: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.white255,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "Order on the Way".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceHeight: 10.hm(context)),

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "You are now on your way to client [client name]".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),


                      SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),

                      Container(
                        height: 115.hm(context),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.rm(context)),
                          border: Border.all(color: ColorUtils.white217,width: 0.5),
                        ),
                        child: Row(
                          children: [


                            Container(
                              height: 115.hm(context),
                              width: 38.wm(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.rm(context)),
                                    bottomLeft: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.green142
                              ),
                              child:  Container(
                                height: 24.hm(context),
                                width: 24.wm(context),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    ImagePathUtils.checkIconImagePath,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 115.hm(context),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.hpmm(context),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.rm(context)),
                                    bottomRight: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.white255,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "Order received!".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceHeight: 10.hm(context)),

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "You have confirmed receipt of the order from [restaurant name]. Deliver it to the customer now!".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),


                      SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),

                      Container(
                        height: 95.hm(context),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.rm(context)),
                          border: Border.all(color: ColorUtils.white217,width: 0.5),
                        ),
                        child: Row(
                          children: [


                            Container(
                              height: 95.hm(context),
                              width: 38.wm(context),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.rm(context)),
                                  bottomLeft: Radius.circular(10.rm(context)),
                                ),
                                color: ColorUtils.yellow160,
                              ),
                              child:  Container(
                                height: 24.hm(context),
                                width: 24.wm(context),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    ImagePathUtils.bxsErrorIconImagePath,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 95.hm(context),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.hpmm(context),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.rm(context)),
                                    bottomRight: Radius.circular(10.rm(context)),
                                  ),
                                  color: ColorUtils.white255,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "Your status is now busy!".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceHeight: 10.hm(context)),

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                      child: Text(
                                        "You will not be able to receive new requests until you reactivate your status.".tr,
                                        textAlign:Get.locale.toString() == "en" ? TextAlign.start : TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black255,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),


                      SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),


                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      );
    }
  }



}