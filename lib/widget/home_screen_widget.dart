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
          color: ColorUtils.white248,
        ),
        child: CustomScrollView(
          slivers: [

            SliverAppBar(
              expandedHeight: 97.ht(context),
              collapsedHeight: 97.ht(context),
              primary: true,
              pinned: true,
              automaticallyImplyLeading: false,
              floating: false,
              flexibleSpace: Container(
                height: 142.ht(context),
                width: 744.wt(context),
                decoration: BoxDecoration(
                    color: ColorUtils.white255
                ),
                padding: EdgeInsets.symmetric(horizontal: 79.hpmt(context)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SpacerWidget.spacerWidget(spaceHeight: 65.ht(context)),

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
                                  "Hello, Muhammad Ali".tr,
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
                                  "What do you want to eat today?".tr,
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

          ],
        ),
      );
    } else {
      return Container(
        height: 844.hm(context),
        width: 390.wm(context),
        decoration: BoxDecoration(
          color: ColorUtils.white248,
        ),
        child: CustomScrollView(
          slivers: [


            SliverAppBar(
              expandedHeight: 180.hm(context),
              collapsedHeight: 180.hm(context),
              primary: true,
              pinned: true,
              automaticallyImplyLeading: false,
              floating: false,
              flexibleSpace: Container(
                height: 210.hm(context),
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
                                  "Hello, Muhammad Ali".tr,
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
                                  "What do you want to eat today?".tr,
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


          ],
        ),
      );
    }
  }



}
