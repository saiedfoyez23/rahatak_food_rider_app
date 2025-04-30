import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/screen.dart';
import '../utils/utils.dart';

class HomeScreenWidget extends GetxController {

  Widget homeScreenWidget({required BuildContext context}) {
    if(MediaQuery.sizeOf(context).height > 1133) {
      return Container(
        height: 1133.ht(context),
        width: 744.wt(context),
        decoration: BoxDecoration(
          color: ColorUtils.white255,
        ),
        child: CustomScrollView(
          slivers: [

            SliverAppBar(
              expandedHeight: 100.ht(context),
              collapsedHeight: 100.ht(context),
              primary: true,
              pinned: true,
              automaticallyImplyLeading: false,
              floating: false,
              flexibleSpace: Container(
                height: 132.ht(context),
                width: 744.wt(context),
                decoration: BoxDecoration(
                    color: ColorUtils.white255
                ),
                padding: EdgeInsets.symmetric(horizontal: 37.hpmt(context)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SpacerWidget.spacerWidget(spaceHeight: 76.ht(context)),

                    Row(
                      children: [

                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              Container(
                                alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                child: Text(
                                  "Hello Abdullah".tr,
                                  textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spt(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),


                              Container(
                                alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                child: Text(
                                  "Are you ready to deliver today?".tr,
                                  textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spt(context),
                                    color: ColorUtils.blue192,
                                  ),
                                ),
                              ),




                            ],
                          ),
                        ),

                        Container(
                          height: 28.ht(context),
                          width: 28.wt(context),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {
                              Get.off(()=>NotificationScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                ImagePathUtils.notificationIconImagePath,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),


            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 138.hpmt(context)),
                child: Column(
                  children: [

                    SpacerWidget.spacerWidget(spaceHeight: 31.ht(context)),


                    Container(
                      width: 390.wm(context),
                      padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 10.hpmt(context)),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.gray155,width: .5),
                          borderRadius: BorderRadius.circular(10.rt(context))
                      ),
                      child: Row(
                        children: [


                          Container(
                            height: 60.ht(context),
                            width: 60.wt(context),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(4.rm(context))
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset(
                                ImagePathUtils.noProfileImageImagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),


                          SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),


                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Abdullah".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.spt(context),
                                      color: ColorUtils.black33,
                                    ),
                                  ),
                                ),


                                SpacerWidget.spacerWidget(spaceHeight: 10.ht(context)),

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "1234565".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spt(context),
                                      color: ColorUtils.black33,
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),


                          SpacerWidget.spacerWidget(spaceWidth: 5.wt(context)),



                          Container(
                            height: 40.ht(context),
                            width: 103.wt(context),
                            padding: EdgeInsets.symmetric(vertical: 10.vpmt(context),horizontal: 10.hpmt(context)),
                            decoration: BoxDecoration(
                              color: ColorUtils.green142,
                              borderRadius: BorderRadius.circular(10.rt(context)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Available".tr,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 14.spt(context),
                                color: ColorUtils.white255,
                              ),
                            ),
                          ),





                        ],
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 18.ht(context)),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Container(
                          height: 140.ht(context),
                          width: 120.wt(context),
                          padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 10.hpmt(context)),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorUtils.gray155,width: .5),
                              borderRadius: BorderRadius.circular(10.rt(context))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Container(
                                height: 36.ht(context),
                                width: 36.wt(context),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(4.rm(context))
                                ),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    ImagePathUtils.greenTransectionImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.ht(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Total amount".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spt(context),
                                    color: ColorUtils.black51,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.ht(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "150 OMR".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spt(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),





                            ],
                          ),
                        ),

                        SpacerWidget.spacerWidget(spaceWidth: 13.wt(context)),

                        Container(
                          height: 140.ht(context),
                          width: 120.wt(context),
                          padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 10.hpmt(context)),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorUtils.gray155,width: .5),
                              borderRadius: BorderRadius.circular(10.rt(context))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Container(
                                height: 36.ht(context),
                                width: 36.wt(context),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(4.rt(context))
                                ),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    ImagePathUtils.numberOfRequestImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.ht(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Number of requests".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spt(context),
                                    color: ColorUtils.black51,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.ht(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "35 requests".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spt(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),





                            ],
                          ),
                        ),

                        SpacerWidget.spacerWidget(spaceWidth: 13.wt(context)),


                        Container(
                          height: 140.ht(context),
                          width: 120.wt(context),
                          padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 10.hpmt(context)),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorUtils.gray155,width: .5),
                              borderRadius: BorderRadius.circular(10.rt(context))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Container(
                                height: 36.ht(context),
                                width: 36.wt(context),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(4.rm(context))
                                ),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    ImagePathUtils.averageRatingImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.ht(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Average rating".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spt(context),
                                    color: ColorUtils.black51,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.ht(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "4.5".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spt(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),





                            ],
                          ),
                        ),



                      ],
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 34.ht(context)),


                    Container(
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                      child: Text(
                        "Orders available for delivery".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.spt(context),
                          color: ColorUtils.black30,
                        ),
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

                          SpacerWidget.spacerWidget(spaceHeight: 3.ht(context)),

                          Container(
                            alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                            child: Text(
                              "Distance to the restaurant: 2.5 km".tr,
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
                              "Distance to customer: 5.0 km".tr,
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
                            width: 390.wm(context),
                            decoration: BoxDecoration(
                                color: ColorUtils.white217
                            ),
                          ),



                          SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                              Container(
                                height: 52.ht(context),
                                width: 219.wt(context),
                                decoration: BoxDecoration(
                                  color: ColorUtils.blue192,
                                  borderRadius: BorderRadius.circular(8.rt(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {

                                  },
                                  child: Center(
                                    child: Text(
                                      "accept".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spt(context),
                                        color: ColorUtils.white255,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SpacerWidget.spacerWidget(spaceWidth: 12.wt(context),),


                              Container(
                                height: 52.ht(context),
                                width: 219.wt(context),
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorUtils.gray136,width: 1),
                                  color: ColorUtils.white255,
                                  borderRadius: BorderRadius.circular(8.rt(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {
                                    Get.back();
                                  },
                                  child: Center(
                                    child: Text(
                                      "reject".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spt(context),
                                        color: ColorUtils.black51,
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                            ],
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

                          SpacerWidget.spacerWidget(spaceHeight: 3.ht(context)),

                          Container(
                            alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                            child: Text(
                              "Distance to the restaurant: 2.5 km".tr,
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
                              "Distance to customer: 5.0 km".tr,
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
                            width: 390.wm(context),
                            decoration: BoxDecoration(
                                color: ColorUtils.white217
                            ),
                          ),



                          SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                              Container(
                                height: 52.ht(context),
                                width: 219.wt(context),
                                decoration: BoxDecoration(
                                  color: ColorUtils.blue192,
                                  borderRadius: BorderRadius.circular(8.rt(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {

                                  },
                                  child: Center(
                                    child: Text(
                                      "accept".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spt(context),
                                        color: ColorUtils.white255,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SpacerWidget.spacerWidget(spaceWidth: 12.wt(context),),


                              Container(
                                height: 52.ht(context),
                                width: 219.wt(context),
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorUtils.gray136,width: 1),
                                  color: ColorUtils.white255,
                                  borderRadius: BorderRadius.circular(8.rt(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {
                                    Get.back();
                                  },
                                  child: Center(
                                    child: Text(
                                      "reject".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spt(context),
                                        color: ColorUtils.black51,
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                            ],
                          ),




                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ),

          ],
        ),
      );
    } else {
      return Container(
        height: 844.hm(context),
        width: 390.wm(context),
        decoration: BoxDecoration(
          color: ColorUtils.white255,
        ),
        child: CustomScrollView(
          slivers: [


            SliverAppBar(
              expandedHeight: 100.hm(context),
              collapsedHeight: 100.hm(context),
              primary: true,
              pinned: true,
              automaticallyImplyLeading: false,
              floating: false,
              flexibleSpace: Container(
                height: 132.hm(context),
                width: 390.wm(context),
                decoration: BoxDecoration(
                    color: ColorUtils.white255
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.hpmm(context)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SpacerWidget.spacerWidget(spaceHeight: 76.hm(context)),

                    Row(
                      children: [

                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              Container(
                                alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                child: Text(
                                  "Hello Abdullah".tr,
                                  textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spm(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),


                              Container(
                                alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                child: Text(
                                  "Are you ready to deliver today?".tr,
                                  textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spm(context),
                                    color: ColorUtils.blue192,
                                  ),
                                ),
                              ),




                            ],
                          ),
                        ),

                        Container(
                          height: 28.hm(context),
                          width: 28.wm(context),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {
                              Get.off(()=>NotificationScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                ImagePathUtils.notificationIconImagePath,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),


            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.hpmm(context)),
                child: Column(
                  children: [

                    SpacerWidget.spacerWidget(spaceHeight: 31.hm(context)),


                    Container(
                      width: 390.wm(context),
                      padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 10.hpmm(context)),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorUtils.gray155,width: .5),
                        borderRadius: BorderRadius.circular(10.rm(context))
                      ),
                      child: Row(
                        children: [


                          Container(
                            height: 60.hm(context),
                            width: 60.wm(context),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(4.rm(context))
                            ),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset(
                                ImagePathUtils.noProfileImageImagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),


                          SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),


                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Abdullah".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18.spm(context),
                                      color: ColorUtils.black33,
                                    ),
                                  ),
                                ),


                                SpacerWidget.spacerWidget(spaceHeight: 10.hm(context)),

                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "1234565".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spm(context),
                                      color: ColorUtils.black33,
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),


                          SpacerWidget.spacerWidget(spaceWidth: 5.wm(context)),



                          Container(
                            height: 40.hm(context),
                            width: 103.wm(context),
                            padding: EdgeInsets.symmetric(vertical: 10.vpmm(context),horizontal: 10.hpmm(context)),
                            decoration: BoxDecoration(
                              color: ColorUtils.green142,
                              borderRadius: BorderRadius.circular(10.rm(context)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Available".tr,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 14.spm(context),
                                color: ColorUtils.white255,
                              ),
                            ),
                          ),





                        ],
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Container(
                          height: 165.hm(context),
                          width: 110.wm(context),
                          padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 10.hpmm(context)),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorUtils.gray155,width: .5),
                              borderRadius: BorderRadius.circular(10.rm(context))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Container(
                                height: 36.hm(context),
                                width: 36.wm(context),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(4.rm(context))
                                ),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    ImagePathUtils.greenTransectionImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.hm(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Total amount".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spm(context),
                                    color: ColorUtils.black51,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.hm(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "150 OMR".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spm(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),





                            ],
                          ),
                        ),

                        SpacerWidget.spacerWidget(spaceWidth: 13.wm(context)),

                        Container(
                          height: 165.hm(context),
                          width: 110.wm(context),
                          padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 10.hpmm(context)),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorUtils.gray155,width: .5),
                              borderRadius: BorderRadius.circular(10.rm(context))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Container(
                                height: 36.hm(context),
                                width: 36.wm(context),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(4.rm(context))
                                ),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    ImagePathUtils.numberOfRequestImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.hm(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Number of requests".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spm(context),
                                    color: ColorUtils.black51,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.hm(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "35 requests".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spm(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),





                            ],
                          ),
                        ),

                        SpacerWidget.spacerWidget(spaceWidth: 13.wm(context)),


                        Container(
                          height: 165.hm(context),
                          width: 110.wm(context),
                          padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 10.hpmm(context)),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorUtils.gray155,width: .5),
                              borderRadius: BorderRadius.circular(10.rm(context))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Container(
                                height: 36.hm(context),
                                width: 36.wm(context),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(4.rm(context))
                                ),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    ImagePathUtils.averageRatingImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.hm(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Average rating".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.spm(context),
                                    color: ColorUtils.black51,
                                  ),
                                ),
                              ),


                              SpacerWidget.spacerWidget(spaceHeight: 7.hm(context)),


                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "4.5".tr,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18.spm(context),
                                    color: ColorUtils.black33,
                                  ),
                                ),
                              ),





                            ],
                          ),
                        ),



                      ],
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 34.hm(context)),


                    Container(
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                      child: Text(
                        "Orders available for delivery".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.spm(context),
                          color: ColorUtils.black30,
                        ),
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

                          SpacerWidget.spacerWidget(spaceHeight: 3.hm(context)),

                          Container(
                            alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                            child: Text(
                              "Distance to the restaurant: 2.5 km".tr,
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
                              "Distance to customer: 5.0 km".tr,
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


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                              Container(
                                height: 48.hm(context),
                                width: 163.wm(context),
                                decoration: BoxDecoration(
                                  color: ColorUtils.blue192,
                                  borderRadius: BorderRadius.circular(8.rm(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {

                                  },
                                  child: Center(
                                    child: Text(
                                      "accept".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spm(context),
                                        color: ColorUtils.white255,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SpacerWidget.spacerWidget(spaceWidth: 12.wm(context),),


                              Container(
                                height: 48.hm(context),
                                width: 164.wm(context),
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorUtils.gray136,width: 1),
                                  color: ColorUtils.white255,
                                  borderRadius: BorderRadius.circular(8.rm(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {
                                    Get.back();
                                  },
                                  child: Center(
                                    child: Text(
                                      "reject".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spm(context),
                                        color: ColorUtils.black51,
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                            ],
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

                          SpacerWidget.spacerWidget(spaceHeight: 3.hm(context)),

                          Container(
                            alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                            child: Text(
                              "Distance to the restaurant: 2.5 km".tr,
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
                              "Distance to customer: 5.0 km".tr,
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


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                              Container(
                                height: 48.hm(context),
                                width: 163.wm(context),
                                decoration: BoxDecoration(
                                  color: ColorUtils.blue192,
                                  borderRadius: BorderRadius.circular(8.rm(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {

                                  },
                                  child: Center(
                                    child: Text(
                                      "accept".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spm(context),
                                        color: ColorUtils.white255,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SpacerWidget.spacerWidget(spaceWidth: 12.wm(context),),


                              Container(
                                height: 48.hm(context),
                                width: 164.wm(context),
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorUtils.gray136,width: 1),
                                  color: ColorUtils.white255,
                                  borderRadius: BorderRadius.circular(8.rm(context),),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                  onPressed: () async {
                                    Get.back();
                                  },
                                  child: Center(
                                    child: Text(
                                      "reject".tr,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.tajawal(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.spm(context),
                                        color: ColorUtils.black51,
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                            ],
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
      );
    }
  }



}
