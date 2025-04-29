import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahatak_food_rider_app/screen/screen.dart';
import 'package:rahatak_food_rider_app/utils/utils.dart';

class OrdersScreenWidget extends GetxController {


  Widget ordersScreenWidget({required BuildContext context}) {
    if(MediaQuery.sizeOf(context).height > 1000) {
      return SafeArea(
        child: Container(
          height: 1133.ht(context),
          width: 744.wt(context),
          decoration: BoxDecoration(
            color: ColorUtils.white248
          ),
          child: CustomScrollView(
            slivers: [


              SliverToBoxAdapter(
                child: Column(
                  children: [


                    SpacerWidget.spacerWidget(spaceHeight: 20.ht(context)),


                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Order Management".tr,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.spt(context),
                          color: ColorUtils.black255,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 32.ht(context)),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 138.hpmt(context)),
                      child: Column(
                        children: [


                          Container(
                            width: 744.wt(context),
                            padding: EdgeInsets.symmetric(vertical: 9.vpmt(context),horizontal: 8.hpmt(context)),
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorUtils.gray155,width: .5),
                                borderRadius: BorderRadius.circular(10.rt(context))
                            ),
                            child: Column(
                              children: [


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                      child: Text(
                                        "Order number #123456".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18.spt(context),
                                          color: ColorUtils.black33,
                                        ),
                                      ),
                                    ),


                                    Container(
                                      height: 40.ht(context),
                                      width: 125.wt(context),
                                      padding: EdgeInsets.symmetric(vertical: 10.vpmt(context),horizontal: 10.hpmt(context)),
                                      decoration: BoxDecoration(
                                        color: ColorUtils.yellow188,
                                        borderRadius: BorderRadius.circular(10.rt(context)),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Delivering".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spt(context),
                                              color: ColorUtils.white255,
                                            ),
                                          ),

                                          SpacerWidget.spacerWidget(spaceWidth: 8.wt(context)),

                                          Icon(Icons.keyboard_arrow_down_rounded,size: 15.st(context),color: ColorUtils.white255,),

                                        ],
                                      ),
                                    ),

                                  ],
                                ),



                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Mohammed Ali".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spt(context),
                                      color: ColorUtils.gray117,
                                    ),
                                  ),
                                ),

                                SpacerWidget.spacerWidget(spaceHeight: 3.ht(context)),


                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Muscat, Al Khoud".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spt(context),
                                      color: ColorUtils.gray117,
                                    ),
                                  ),
                                ),


                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          height: 24.ht(context),
                                          width: 24.wt(context),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4.rt(context))
                                          ),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              ImagePathUtils.blackTransectionImagePath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceWidth: 7.wt(context)),


                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "1,500 OMR".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black51,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          height: 24.ht(context),
                                          width: 24.wt(context),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4.rm(context))
                                          ),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              ImagePathUtils.timeLineBlackImagePath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceWidth: 7.wt(context)),


                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "20 minutes".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black51,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),



                                  ],
                                ),

                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),

                                Container(
                                  height: 1.5.ht(context),
                                  width: 744.wt(context),
                                  decoration: BoxDecoration(
                                      color: ColorUtils.white217
                                  ),
                                ),



                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                                Container(
                                  height: 37.ht(context),
                                  width: 744.wt(context),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                    onPressed: () async {
                                      Get.off(()=>OrderManagementDetailsScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "View order details".tr,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spt(context),
                                              color: ColorUtils.blue192,
                                            ),
                                          ),
                                        ),

                                        SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),


                                        Icon(Icons.arrow_forward_ios_sharp,size: 15.st(context),color: ColorUtils.blue192,),





                                      ],
                                    ),
                                  ),
                                ),





                              ],
                            ),
                          ),

                          SpacerWidget.spacerWidget(spaceHeight: 18.ht(context)),

                          Container(
                            width: 744.wt(context),
                            padding: EdgeInsets.symmetric(vertical: 9.vpmt(context),horizontal: 8.hpmt(context)),
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorUtils.gray155,width: .5),
                                borderRadius: BorderRadius.circular(10.rt(context))
                            ),
                            child: Column(
                              children: [


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                      child: Text(
                                        "Order number #123456".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18.spt(context),
                                          color: ColorUtils.black33,
                                        ),
                                      ),
                                    ),


                                    Container(
                                      height: 40.ht(context),
                                      width: 125.wt(context),
                                      padding: EdgeInsets.symmetric(vertical: 10.vpmt(context),horizontal: 10.hpmt(context)),
                                      decoration: BoxDecoration(
                                        color: ColorUtils.green142,
                                        borderRadius: BorderRadius.circular(10.rt(context)),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Delivered".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spt(context),
                                              color: ColorUtils.white255,
                                            ),
                                          ),

                                          SpacerWidget.spacerWidget(spaceWidth: 8.wt(context)),

                                          Icon(Icons.keyboard_arrow_down_rounded,size: 15.st(context),color: ColorUtils.white255,),

                                        ],
                                      ),
                                    ),

                                  ],
                                ),



                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Mohammed Ali".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spt(context),
                                      color: ColorUtils.gray117,
                                    ),
                                  ),
                                ),

                                SpacerWidget.spacerWidget(spaceHeight: 3.ht(context)),


                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Muscat, Al Khoud".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spt(context),
                                      color: ColorUtils.gray117,
                                    ),
                                  ),
                                ),


                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          height: 24.ht(context),
                                          width: 24.wt(context),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4.rt(context))
                                          ),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              ImagePathUtils.blackTransectionImagePath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceWidth: 7.wt(context)),


                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "1,500 OMR".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black51,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          height: 24.ht(context),
                                          width: 24.wt(context),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4.rt(context))
                                          ),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              ImagePathUtils.timeLineBlackImagePath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceWidth: 7.wt(context)),


                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "20 minutes".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black51,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),



                                  ],
                                ),

                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),

                                Container(
                                  height: 1.5.ht(context),
                                  width: 744.wt(context),
                                  decoration: BoxDecoration(
                                      color: ColorUtils.white217
                                  ),
                                ),



                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                                Container(
                                  height: 37.ht(context),
                                  width: 744.wt(context),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                    onPressed: () async {
                                      Get.off(()=>OrderManagementDetailsScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "View order details".tr,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spt(context),
                                              color: ColorUtils.blue192,
                                            ),
                                          ),
                                        ),

                                        SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),


                                        Icon(Icons.arrow_forward_ios_sharp,size: 15.st(context),color: ColorUtils.blue192,),





                                      ],
                                    ),
                                  ),
                                ),





                              ],
                            ),
                          ),

                          SpacerWidget.spacerWidget(spaceHeight: 18.ht(context)),


                          Container(
                            width: 744.wt(context),
                            padding: EdgeInsets.symmetric(vertical: 9.vpmt(context),horizontal: 8.hpmt(context)),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorUtils.gray155,width: .5),
                              borderRadius: BorderRadius.circular(10.rt(context)),
                            ),
                            child: Column(
                              children: [


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Container(
                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                      child: Text(
                                        "Order number #123456".tr,
                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18.spt(context),
                                          color: ColorUtils.black33,
                                        ),
                                      ),
                                    ),


                                    Container(
                                      height: 40.ht(context),
                                      width: 125.wt(context),
                                      padding: EdgeInsets.symmetric(vertical: 10.vpmt(context),horizontal: 10.hpmt(context)),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: ColorUtils.gray155,width: .5),
                                        borderRadius: BorderRadius.circular(10.rt(context)),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Order Status".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spt(context),
                                              color: ColorUtils.black51,
                                            ),
                                          ),

                                          SpacerWidget.spacerWidget(spaceWidth: 8.wt(context)),

                                          Icon(Icons.keyboard_arrow_down_rounded,size: 15.st(context),color: ColorUtils.black51,),

                                        ],
                                      ),
                                    ),

                                  ],
                                ),



                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Mohammed Ali".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spt(context),
                                      color: ColorUtils.gray117,
                                    ),
                                  ),
                                ),

                                SpacerWidget.spacerWidget(spaceHeight: 3.ht(context)),


                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Muscat, Al Khoud".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spt(context),
                                      color: ColorUtils.gray117,
                                    ),
                                  ),
                                ),


                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          height: 24.ht(context),
                                          width: 24.wt(context),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4.rt(context))
                                          ),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              ImagePathUtils.blackTransectionImagePath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceWidth: 7.wt(context)),


                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "1,500 OMR".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black51,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [


                                        Container(
                                          height: 24.ht(context),
                                          width: 24.wt(context),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(4.rt(context))
                                          ),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              ImagePathUtils.timeLineBlackImagePath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceWidth: 7.wt(context)),


                                        Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "20 minutes".tr,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.spt(context),
                                              color: ColorUtils.black51,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),



                                  ],
                                ),

                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),

                                Container(
                                  height: 1.5.ht(context),
                                  width: 744.wt(context),
                                  decoration: BoxDecoration(
                                      color: ColorUtils.white217
                                  ),
                                ),



                                SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                                Container(
                                  height: 37.ht(context),
                                  width: 744.wt(context),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                    onPressed: () async {
                                      Get.off(()=>OrderManagementDetailsScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "View order details".tr,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spt(context),
                                              color: ColorUtils.blue192,
                                            ),
                                          ),
                                        ),

                                        SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),


                                        Icon(Icons.arrow_forward_ios_sharp,size: 15.st(context),color: ColorUtils.blue192,),





                                      ],
                                    ),
                                  ),
                                ),





                              ],
                            ),
                          ),

                          SpacerWidget.spacerWidget(spaceHeight: 18.ht(context)),


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
            color: ColorUtils.white248,
          ),
          child: CustomScrollView(
            slivers: [
              
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.hpmm(context)),
                  child: Column(
                    children: [
        
        
                      SpacerWidget.spacerWidget(spaceHeight: 20.hm(context)),
        
        
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Order Management".tr,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16.spm(context),
                            color: ColorUtils.black255,
                          ),
                        ),
                      ),
        
                      SpacerWidget.spacerWidget(spaceHeight: 32.hm(context)),
        
        
                      Container(
                        width: 390.wm(context),
                        padding: EdgeInsets.symmetric(vertical: 9.vpmm(context),horizontal: 8.hpmm(context)),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorUtils.gray155,width: .5),
                            borderRadius: BorderRadius.circular(10.rm(context))
                        ),
                        child: Column(
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Order number #123456".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.spm(context),
                                      color: ColorUtils.black33,
                                    ),
                                  ),
                                ),


                                Container(
                                  height: 40.hm(context),
                                  width: 115.wm(context),
                                  padding: EdgeInsets.symmetric(vertical: 10.vpmm(context),horizontal: 10.hpmm(context)),
                                  decoration: BoxDecoration(
                                    color: ColorUtils.yellow188,
                                    borderRadius: BorderRadius.circular(10.rm(context)),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Delivering".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14.spm(context),
                                          color: ColorUtils.white255,
                                        ),
                                      ),

                                      SpacerWidget.spacerWidget(spaceWidth: 8.wm(context)),

                                      Icon(Icons.keyboard_arrow_down_rounded,size: 15.sm(context),color: ColorUtils.white255,),

                                    ],
                                  ),
                                ),

                              ],
                            ),


        
                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),
        
                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Mohammed Ali".tr,
                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.spm(context),
                                  color: ColorUtils.gray117,
                                ),
                              ),
                            ),
        
                            SpacerWidget.spacerWidget(spaceHeight: 3.hm(context)),
        
        
                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Muscat, Al Khoud".tr,
                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.spm(context),
                                  color: ColorUtils.gray117,
                                ),
                              ),
                            ),
        
        
                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),
        
        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
        
        
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
        
        
                                    Container(
                                      height: 24.hm(context),
                                      width: 24.wm(context),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(4.rm(context))
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset(
                                          ImagePathUtils.blackTransectionImagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
        
        
                                    SpacerWidget.spacerWidget(spaceWidth: 7.wm(context)),
        
        
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1,500 OMR".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),
                                    ),
        
        
                                  ],
                                ),
        
        
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
        
        
                                    Container(
                                      height: 24.hm(context),
                                      width: 24.wm(context),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(4.rm(context))
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset(
                                          ImagePathUtils.timeLineBlackImagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
        
        
                                    SpacerWidget.spacerWidget(spaceWidth: 7.wm(context)),
        
        
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "20 minutes".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),
                                    ),
        
        
                                  ],
                                ),
        
        
        
                              ],
                            ),
        
                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),
        
                            Container(
                              height: 1.5.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                  color: ColorUtils.white217
                              ),
                            ),
        
        
        
                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),
        
        
                            Container(
                              height: 37.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                onPressed: () async {
                                  Get.off(()=>OrderManagementDetailsScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
        
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "View order details".tr,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14.spm(context),
                                          color: ColorUtils.blue192,
                                        ),
                                      ),
                                    ),
        
                                    SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),
        
        
                                    Icon(Icons.arrow_forward_ios_sharp,size: 15.sm(context),color: ColorUtils.blue192,),
        
        
        
        
        
                                  ],
                                ),
                              ),
                            ),
        
        
        
        
        
                          ],
                        ),
                      ),
        
                      SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),

                      Container(
                        width: 390.wm(context),
                        padding: EdgeInsets.symmetric(vertical: 9.vpmm(context),horizontal: 8.hpmm(context)),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorUtils.gray155,width: .5),
                            borderRadius: BorderRadius.circular(10.rm(context))
                        ),
                        child: Column(
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Order number #123456".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.spm(context),
                                      color: ColorUtils.black33,
                                    ),
                                  ),
                                ),


                                Container(
                                  height: 40.hm(context),
                                  width: 115.wm(context),
                                  padding: EdgeInsets.symmetric(vertical: 10.vpmm(context),horizontal: 10.hpmm(context)),
                                  decoration: BoxDecoration(
                                    color: ColorUtils.green142,
                                    borderRadius: BorderRadius.circular(10.rm(context)),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Delivered".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14.spm(context),
                                          color: ColorUtils.white255,
                                        ),
                                      ),

                                      SpacerWidget.spacerWidget(spaceWidth: 8.wm(context)),

                                      Icon(Icons.keyboard_arrow_down_rounded,size: 15.sm(context),color: ColorUtils.white255,),

                                    ],
                                  ),
                                ),

                              ],
                            ),



                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),

                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Mohammed Ali".tr,
                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.spm(context),
                                  color: ColorUtils.gray117,
                                ),
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 3.hm(context)),


                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Muscat, Al Khoud".tr,
                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.spm(context),
                                  color: ColorUtils.gray117,
                                ),
                              ),
                            ),


                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      height: 24.hm(context),
                                      width: 24.wm(context),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(4.rm(context))
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset(
                                          ImagePathUtils.blackTransectionImagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceWidth: 7.wm(context)),


                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1,500 OMR".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      height: 24.hm(context),
                                      width: 24.wm(context),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(4.rm(context))
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset(
                                          ImagePathUtils.timeLineBlackImagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceWidth: 7.wm(context)),


                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "20 minutes".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),



                              ],
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),

                            Container(
                              height: 1.5.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                  color: ColorUtils.white217
                              ),
                            ),



                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),


                            Container(
                              height: 37.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                onPressed: () async {
                                  Get.off(()=>OrderManagementDetailsScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "View order details".tr,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14.spm(context),
                                          color: ColorUtils.blue192,
                                        ),
                                      ),
                                    ),

                                    SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),


                                    Icon(Icons.arrow_forward_ios_sharp,size: 15.sm(context),color: ColorUtils.blue192,),





                                  ],
                                ),
                              ),
                            ),





                          ],
                        ),
                      ),
        
                      SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),


                      Container(
                        width: 390.wm(context),
                        padding: EdgeInsets.symmetric(vertical: 9.vpmm(context),horizontal: 8.hpmm(context)),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorUtils.gray155,width: .5),
                            borderRadius: BorderRadius.circular(10.rm(context))
                        ),
                        child: Column(
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Order number #123456".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.spm(context),
                                      color: ColorUtils.black33,
                                    ),
                                  ),
                                ),


                                Container(
                                  height: 40.hm(context),
                                  width: 115.wm(context),
                                  padding: EdgeInsets.symmetric(vertical: 10.vpmm(context),horizontal: 10.hpmm(context)),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorUtils.gray155,width: .5),
                                    borderRadius: BorderRadius.circular(10.rm(context)),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Order Status".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),

                                      SpacerWidget.spacerWidget(spaceWidth: 8.wm(context)),

                                      Icon(Icons.keyboard_arrow_down_rounded,size: 15.sm(context),color: ColorUtils.black51,),

                                    ],
                                  ),
                                ),

                              ],
                            ),



                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),

                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Mohammed Ali".tr,
                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.spm(context),
                                  color: ColorUtils.gray117,
                                ),
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 3.hm(context)),


                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Muscat, Al Khoud".tr,
                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.spm(context),
                                  color: ColorUtils.gray117,
                                ),
                              ),
                            ),


                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      height: 24.hm(context),
                                      width: 24.wm(context),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(4.rm(context))
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset(
                                          ImagePathUtils.blackTransectionImagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceWidth: 7.wm(context)),


                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1,500 OMR".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [


                                    Container(
                                      height: 24.hm(context),
                                      width: 24.wm(context),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(4.rm(context))
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset(
                                          ImagePathUtils.timeLineBlackImagePath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),


                                    SpacerWidget.spacerWidget(spaceWidth: 7.wm(context)),


                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "20 minutes".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),



                              ],
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),

                            Container(
                              height: 1.5.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                  color: ColorUtils.white217
                              ),
                            ),



                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),


                            Container(
                              height: 37.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                onPressed: () async {
                                  Get.off(()=>OrderManagementDetailsScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "View order details".tr,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14.spm(context),
                                          color: ColorUtils.blue192,
                                        ),
                                      ),
                                    ),

                                    SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),


                                    Icon(Icons.arrow_forward_ios_sharp,size: 15.sm(context),color: ColorUtils.blue192,),





                                  ],
                                ),
                              ),
                            ),





                          ],
                        ),
                      ),
        
                      SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),
        
        
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