import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahatak_food_rider_app/utils/utils.dart';

import '../screen/screen.dart';

class OrderManagementDetailsScreenWidget extends GetxController {


  RxBool isDelivered = false.obs;

  RxBool isInTransit = false.obs;


  RxBool isYes = false.obs;

  RxBool isNo = false.obs;

  Rx<TextEditingController> noteController = TextEditingController().obs;


  Widget orderManagementDetailsScreenWidget({required BuildContext context}) {
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
        
        
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 37.hpmt(context)),
                     child: Column(
                       children: [
        
                         SpacerWidget.spacerWidget(spaceHeight: 11.ht(context),),
        
                         Directionality(
                           textDirection: TextDirection.ltr,
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
                                     Get.off(()=>OrdersScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
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
                               ),
        
                             ],
                           ),
                         ),
        
                         SpacerWidget.spacerWidget(spaceHeight: 26.ht(context),),
        
                       ],
                     ),
                   ),
        
        
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 138.hpmt(context)),
                     child: Container(
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
                                 height: 37.ht(context),
                                 decoration: BoxDecoration(
                                   color: Colors.transparent,
                                 ),
                                 child: TextButton(
                                   style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                   onPressed: () async {

                                     showAdaptiveDialog(
                                       context: context,
                                       barrierDismissible: true,
                                       builder: (context) {
                                         return Obx(()=>Padding(
                                           padding: EdgeInsets.symmetric(
                                             vertical: 250.vpmt(context),
                                             horizontal: 158.hpmt(context),
                                           ),
                                           child: Container(
                                             width: 358.wt(context),
                                             height: 541.ht(context),
                                             decoration: BoxDecoration(
                                               color: ColorUtils.white255,
                                               borderRadius: BorderRadius.circular(16.rt(context)),
                                             ),
                                             padding: EdgeInsets.symmetric(
                                               vertical: 30.vpmt(context),
                                               horizontal: 20.hpmt(context),
                                             ),
                                             child: Material(
                                               color: Colors.transparent,
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [

                                                   Container(
                                                     alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                     child: Text(
                                                       "Order Status *".tr,
                                                       textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                       style: GoogleFonts.tajawal(
                                                         fontWeight: FontWeight.w500,
                                                         fontStyle: FontStyle.normal,
                                                         fontSize: 16.spt(context),
                                                         color: ColorUtils.black255,
                                                       ),
                                                     ),
                                                   ),

                                                   SpacerWidget.spacerWidget(spaceHeight: 13.ht(context)),

                                                   Container(
                                                     height: 56.ht(context),
                                                     width: 468.wt(context),
                                                     decoration: BoxDecoration(
                                                       border: isDelivered.value == false  ?
                                                       Border.all(color: ColorUtils.white217,width: 1) :
                                                       Border.all(color: ColorUtils.blue192,width: 1),
                                                       borderRadius: BorderRadius.circular(10.rt(context)),
                                                     ),
                                                     padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 12.hpmt(context)),
                                                     child: TextButton(
                                                       style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                       onPressed: () async {
                                                         if(isDelivered.value == true) {
                                                           isInTransit.value = false;
                                                           isDelivered.value = false;
                                                         } else {
                                                           isDelivered.value = true;
                                                           isInTransit.value = false;
                                                         }
                                                       },
                                                       child: Row(
                                                         children: [


                                                           Container(
                                                             height: 30.ht(context),
                                                             width: 30.wt(context),
                                                             decoration: BoxDecoration(
                                                               border: isDelivered.value  == false  ?
                                                               Border.all(color: ColorUtils.white217,width: 1) :
                                                               Border.all(color: ColorUtils.blue192,width: 1),
                                                               shape: BoxShape.circle,
                                                             ),
                                                             child: Center(
                                                               child: Container(
                                                                 height: 16.ht(context),
                                                                 width: 16.wt(context),
                                                                 decoration: BoxDecoration(
                                                                     shape: BoxShape.circle,
                                                                     color: isDelivered.value == false ?
                                                                     Colors.transparent : ColorUtils.blue192
                                                                 ),
                                                               ),
                                                             ),
                                                           ),

                                                           SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),

                                                           Expanded(
                                                             child: Container(
                                                               alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                               child: Text(
                                                                 "Delivered".tr,
                                                                 textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                 style: GoogleFonts.tajawal(
                                                                   fontWeight: FontWeight.w700,
                                                                   fontStyle: FontStyle.normal,
                                                                   fontSize: 18.spt(context),
                                                                   color: ColorUtils.black30,
                                                                 ),
                                                               ),
                                                             ),
                                                           ),

                                                         ],
                                                       ),
                                                     ),
                                                   ),

                                                   SpacerWidget.spacerWidget(spaceHeight: 16.ht(context)),


                                                   Container(
                                                     height: 56.ht(context),
                                                     width: 468.wt(context),
                                                     decoration: BoxDecoration(
                                                       border: isInTransit.value == false  ?
                                                       Border.all(color: ColorUtils.white217,width: 1) :
                                                       Border.all(color: ColorUtils.blue192,width: 1),
                                                       borderRadius: BorderRadius.circular(10.rt(context)),
                                                     ),
                                                     padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 12.hpmt(context)),
                                                     child: TextButton(
                                                       style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                       onPressed: () async {
                                                         if(isInTransit.value == true) {
                                                           isInTransit.value = false;
                                                           isDelivered.value = false;
                                                         } else {
                                                           isDelivered.value = false;
                                                           isInTransit.value = true;
                                                         }
                                                       },
                                                       child: Row(
                                                         children: [


                                                           Container(
                                                             height: 30.ht(context),
                                                             width: 30.wt(context),
                                                             decoration: BoxDecoration(
                                                               border: isInTransit.value == false  ?
                                                               Border.all(color: ColorUtils.white217,width: 1) :
                                                               Border.all(color: ColorUtils.blue192,width: 1),
                                                               shape: BoxShape.circle,
                                                             ),
                                                             child: Center(
                                                               child: Container(
                                                                 height: 16.ht(context),
                                                                 width: 16.wt(context),
                                                                 decoration: BoxDecoration(
                                                                     shape: BoxShape.circle,
                                                                     color: isInTransit.value == false ?
                                                                     Colors.transparent : ColorUtils.blue192
                                                                 ),
                                                               ),
                                                             ),
                                                           ),

                                                           SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),

                                                           Expanded(
                                                             child: Container(
                                                               alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                               child: Text(
                                                                 "In Transit".tr,
                                                                 textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                 style: GoogleFonts.tajawal(
                                                                   fontWeight: FontWeight.w700,
                                                                   fontStyle: FontStyle.normal,
                                                                   fontSize: 18.spt(context),
                                                                   color: ColorUtils.black30,
                                                                 ),
                                                               ),
                                                             ),
                                                           ),

                                                         ],
                                                       ),
                                                     ),
                                                   ),


                                                   SpacerWidget.spacerWidget(spaceHeight: 24.ht(context),),

                                                   Container(
                                                     alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                     child: Text(
                                                       "Did you receive the full amount? *".tr,
                                                       textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                       style: GoogleFonts.tajawal(
                                                         fontWeight: FontWeight.w500,
                                                         fontStyle: FontStyle.normal,
                                                         fontSize: 16.spt(context),
                                                         color: ColorUtils.black255,
                                                       ),
                                                     ),
                                                   ),

                                                   SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),


                                                   Row(
                                                     children: [


                                                       Expanded(
                                                         child: Container(
                                                           height: 56.ht(context),
                                                           decoration: BoxDecoration(
                                                             border: isYes.value == false ?
                                                             Border.all(color: ColorUtils.white217,width: 1) :
                                                             Border.all(color: ColorUtils.blue192,width: 1),
                                                             borderRadius: BorderRadius.circular(10.rt(context)),
                                                           ),
                                                           padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 12.hpmt(context)),
                                                           child: TextButton(
                                                             style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                             onPressed: () async {
                                                               if(isYes.value == true) {
                                                                 isYes.value = false;
                                                                 isNo.value = false;
                                                               } else {
                                                                 isYes.value = true;
                                                                 isNo.value = false;
                                                               }
                                                             },
                                                             child: Row(
                                                               children: [


                                                                 Container(
                                                                   height: 30.ht(context),
                                                                   width: 30.wt(context),
                                                                   decoration: BoxDecoration(
                                                                     border: isYes.value == false ?
                                                                     Border.all(color: ColorUtils.white217,width: 1) :
                                                                     Border.all(color: ColorUtils.blue192,width: 1),
                                                                     shape: BoxShape.circle,
                                                                   ),
                                                                   child: Center(
                                                                     child: Container(
                                                                       height: 16.ht(context),
                                                                       width: 16.wt(context),
                                                                       decoration: BoxDecoration(
                                                                           shape: BoxShape.circle,
                                                                           color: isYes.value == false ?
                                                                           Colors.transparent : ColorUtils.blue192
                                                                       ),
                                                                     ),
                                                                   ),
                                                                 ),

                                                                 SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),

                                                                 Expanded(
                                                                   child: Container(
                                                                     alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                                     child: Text(
                                                                       "Yes".tr,
                                                                       textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                       style: GoogleFonts.tajawal(
                                                                         fontWeight: FontWeight.w700,
                                                                         fontStyle: FontStyle.normal,
                                                                         fontSize: 18.spt(context),
                                                                         color: ColorUtils.black30,
                                                                       ),
                                                                     ),
                                                                   ),
                                                                 ),

                                                               ],
                                                             ),
                                                           ),
                                                         ),
                                                       ),

                                                       SpacerWidget.spacerWidget(spaceWidth: 6.wt(context)),


                                                       Expanded(
                                                         child: Container(
                                                           height: 56.ht(context),
                                                           decoration: BoxDecoration(
                                                             border: isNo.value == false  ?
                                                             Border.all(color: ColorUtils.white217,width: 1) :
                                                             Border.all(color: ColorUtils.blue192,width: 1),
                                                             borderRadius: BorderRadius.circular(10.rt(context)),
                                                           ),
                                                           padding: EdgeInsets.symmetric(vertical: 12.vpmt(context),horizontal: 12.hpmt(context)),
                                                           child: TextButton(
                                                             style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                             onPressed: () async {
                                                               if(isNo.value == true) {
                                                                 isYes.value = false;
                                                                 isNo.value = false;
                                                               } else {
                                                                 isYes.value = false;
                                                                 isNo.value = true;
                                                               }
                                                             },
                                                             child: Row(
                                                               children: [


                                                                 Container(
                                                                   height: 30.ht(context),
                                                                   width: 30.wt(context),
                                                                   decoration: BoxDecoration(
                                                                     border: isNo.value == false ?
                                                                     Border.all(color: ColorUtils.white217,width: 1) :
                                                                     Border.all(color: ColorUtils.blue192,width: 1),
                                                                     shape: BoxShape.circle,
                                                                   ),
                                                                   child: Center(
                                                                     child: Container(
                                                                       height: 16.ht(context),
                                                                       width: 16.wt(context),
                                                                       decoration: BoxDecoration(
                                                                           shape: BoxShape.circle,
                                                                           color: isNo.value == false ?
                                                                           Colors.transparent : ColorUtils.blue192
                                                                       ),
                                                                     ),
                                                                   ),
                                                                 ),

                                                                 SpacerWidget.spacerWidget(spaceWidth: 12.wt(context)),

                                                                 Expanded(
                                                                   child: Container(
                                                                     alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                                     child: Text(
                                                                       "No".tr,
                                                                       textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                       style: GoogleFonts.tajawal(
                                                                         fontWeight: FontWeight.w700,
                                                                         fontStyle: FontStyle.normal,
                                                                         fontSize: 18.spt(context),
                                                                         color: ColorUtils.black30,
                                                                       ),
                                                                     ),
                                                                   ),
                                                                 ),

                                                               ],
                                                             ),
                                                           ),
                                                         ),
                                                       ),

                                                     ],
                                                   ),

                                                   SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),


                                                   Container(
                                                     alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                     child: Text(
                                                       "Notes".tr,
                                                       textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                       style: GoogleFonts.tajawal(
                                                         fontWeight: FontWeight.w500,
                                                         fontStyle: FontStyle.normal,
                                                         fontSize: 16.spt(context),
                                                         color: ColorUtils.black33,
                                                       ),
                                                     ),
                                                   ),


                                                   SpacerWidget.spacerWidget(spaceHeight: 12.ht(context),),


                                                   TextFormField(
                                                     controller: noteController.value,
                                                     textAlign: TextAlign.start,
                                                     cursorColor: ColorUtils.blue192,
                                                     cursorHeight: 20.ht(context),
                                                     style: GoogleFonts.tajawal(
                                                       fontSize: 16.spt(context),
                                                       fontStyle: FontStyle.normal,
                                                       color: ColorUtils.black51,
                                                       fontWeight: FontWeight.w400,
                                                     ),
                                                     maxLines: 5,
                                                     textAlignVertical: TextAlignVertical.center,
                                                     decoration: InputDecoration(
                                                       hintText: "Enter your notes ...".tr,
                                                       hintStyle: GoogleFonts.tajawal(
                                                         fontSize: 16.spt(context),
                                                         fontWeight: FontWeight.w400,
                                                         fontStyle: FontStyle.normal,
                                                         color: ColorUtils.gray136,
                                                       ),
                                                       filled: true,
                                                       fillColor: ColorUtils.white255,
                                                       contentPadding: EdgeInsets.symmetric(
                                                         horizontal: 12.hpmt(context),
                                                         vertical: 12.vpmt(context),
                                                       ),
                                                       constraints: BoxConstraints(
                                                         maxHeight: 85.ht(context),
                                                       ),
                                                       border: OutlineInputBorder(
                                                         borderRadius: BorderRadius.circular(8.rt(context)),
                                                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                                       ),
                                                       enabledBorder: OutlineInputBorder(
                                                         borderRadius: BorderRadius.circular(8.rt(context)),
                                                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                                       ),
                                                       focusedBorder: OutlineInputBorder(
                                                         borderRadius: BorderRadius.circular(8.rt(context)),
                                                         borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                                       ),

                                                     ),
                                                   ),



                                                   SpacerWidget.spacerWidget(spaceHeight: 20.ht(context),),


                                                   Row(
                                                     mainAxisAlignment: MainAxisAlignment.center,
                                                     children: [


                                                       Container(
                                                         height: 52.ht(context),
                                                         width: 188.wt(context),
                                                         decoration: BoxDecoration(
                                                           color: ColorUtils.blue192,
                                                           borderRadius: BorderRadius.circular(8.rt(context),),
                                                         ),
                                                         child: TextButton(
                                                           style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                           onPressed: () async {
                                                             Get.back();
                                                           },
                                                           child: Center(
                                                             child: Text(
                                                               "Save".tr,
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
                                                         width: 188.wt(context),
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
                                                               "Cancel".tr,
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
                                                   )

                                                 ],
                                               ),
                                             ),
                                           ),
                                         ));
                                       },
                                     );


                                   },
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [

                                       Container(
                                         alignment: Alignment.centerLeft,
                                         child: Text(
                                           "Update order Status".tr,
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
                               "+968 95005500".tr,
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


                           Row(
                             children: [
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

                               SpacerWidget.spacerWidget(spaceWidth: 34.wt(context)),

                               Container(
                                 height: 37.ht(context),
                                 decoration: BoxDecoration(
                                   color: Colors.transparent,
                                 ),
                                 child: TextButton(
                                   style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                   onPressed: () async {},
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [

                                       Container(
                                         alignment: Alignment.centerLeft,
                                         child: Text(
                                           "See location".tr,
                                           textAlign: TextAlign.start,
                                           style: GoogleFonts.tajawal(
                                             fontWeight: FontWeight.w700,
                                             fontStyle: FontStyle.normal,
                                             fontSize: 14.spt(context),
                                             color: ColorUtils.blue192,
                                           ),
                                         ),
                                       ),

                                       SpacerWidget.spacerWidget(spaceWidth: 6.wt(context)),


                                       Icon(Icons.arrow_forward_ios_sharp,size: 15.st(context),color: ColorUtils.blue192,),





                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),

                           SpacerWidget.spacerWidget(spaceHeight: 3.ht(context)),


                           Container(
                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                             child: Text(
                               "Payment method: Cash on delivery".tr,
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


                           Container(
                             height: 1.5.ht(context),
                             width: 744.wt(context),
                             decoration: BoxDecoration(
                                 color: ColorUtils.white217
                             ),
                           ),



                           SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                           Container(
                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                             child: Text(
                               "Order details".tr,
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
                               "Shawarmak".tr,
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
                               "+968 98735666".tr,
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


                           Row(
                             children: [
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

                               SpacerWidget.spacerWidget(spaceWidth: 34.wt(context)),

                               Container(
                                 height: 37.ht(context),
                                 decoration: BoxDecoration(
                                   color: Colors.transparent,
                                 ),
                                 child: TextButton(
                                   style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                   onPressed: () async {},
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [

                                       Container(
                                         alignment: Alignment.centerLeft,
                                         child: Text(
                                           "See location".tr,
                                           textAlign: TextAlign.start,
                                           style: GoogleFonts.tajawal(
                                             fontWeight: FontWeight.w700,
                                             fontStyle: FontStyle.normal,
                                             fontSize: 14.spt(context),
                                             color: ColorUtils.blue192,
                                           ),
                                         ),
                                       ),

                                       SpacerWidget.spacerWidget(spaceWidth: 6.wt(context)),


                                       Icon(Icons.arrow_forward_ios_sharp,size: 15.st(context),color: ColorUtils.blue192,),





                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),

                           SpacerWidget.spacerWidget(spaceHeight: 13.ht(context)),


                           Container(
                             width: 744.wt(context),
                             padding: EdgeInsets.symmetric(vertical: 9.vpmt(context),horizontal: 9.hpmt(context)),
                             decoration: BoxDecoration(
                               color: Colors.transparent,
                               image: DecorationImage(
                                 image: AssetImage(ImagePathUtils.dotBorderIconImagePath),
                                 fit: BoxFit.fill,
                               ),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [


                                 Container(
                                   height: 50.ht(context),
                                   width: 50.wt(context),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                   ),
                                   child: FittedBox(
                                     fit: BoxFit.fill,
                                     child: Image.asset(
                                       ImagePathUtils.pList_1,
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),

                                 SpacerWidget.spacerWidget(spaceWidth: 13.wt(context)),


                                 Expanded(
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [

                                       Container(
                                         alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                         child: Text(
                                           "Tanoore".tr,
                                           textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                           style: GoogleFonts.tajawal(
                                             fontWeight: FontWeight.w700,
                                             fontStyle: FontStyle.normal,
                                             fontSize: 18.spt(context),
                                             color: ColorUtils.black33,
                                           ),
                                         ),
                                       ),


                                       SpacerWidget.spacerWidget(spaceHeight: 8.ht(context)),


                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children: [

                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "Quantity: 1".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),

                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "Size: Middle".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),


                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "1.900 OMR".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),

                                         ],
                                       )


                                     ],
                                   ),
                                 )


                               ],
                             ),
                           ),


                           SpacerWidget.spacerWidget(spaceHeight: 17.ht(context)),


                           Container(
                             width: 744.wt(context),
                             padding: EdgeInsets.symmetric(vertical: 9.vpmt(context),horizontal: 9.hpmt(context)),
                             decoration: BoxDecoration(
                               color: Colors.transparent,
                               image: DecorationImage(
                                 image: AssetImage(ImagePathUtils.dotBorderIconImagePath),
                                 fit: BoxFit.fill,
                               ),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [


                                 Container(
                                   height: 50.ht(context),
                                   width: 50.wt(context),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                   ),
                                   child: FittedBox(
                                     fit: BoxFit.fill,
                                     child: Image.asset(
                                       ImagePathUtils.pList_4,
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),

                                 SpacerWidget.spacerWidget(spaceWidth: 13.wt(context)),


                                 Expanded(
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [

                                       Container(
                                         alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                         child: Text(
                                           "sandwich packet".tr,
                                           textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                           style: GoogleFonts.tajawal(
                                             fontWeight: FontWeight.w700,
                                             fontStyle: FontStyle.normal,
                                             fontSize: 18.spt(context),
                                             color: ColorUtils.black33,
                                           ),
                                         ),
                                       ),


                                       SpacerWidget.spacerWidget(spaceHeight: 8.ht(context)),


                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children: [

                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "Quantity: 2".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),

                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "Size: Middle".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),


                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "2.200 OMR".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),

                                         ],
                                       )


                                     ],
                                   ),
                                 )


                               ],
                             ),
                           ),

                           SpacerWidget.spacerWidget(spaceHeight: 17.ht(context)),


                           Container(
                             width: 744.wt(context),
                             padding: EdgeInsets.symmetric(vertical: 9.vpmt(context),horizontal: 9.hpmt(context)),
                             decoration: BoxDecoration(
                               color: Colors.transparent,
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [


                                 Container(
                                   height: 50.ht(context),
                                   width: 50.wt(context),
                                   decoration: BoxDecoration(
                                     color: Colors.transparent,
                                   ),
                                   child: FittedBox(
                                     fit: BoxFit.fill,
                                     child: Image.asset(
                                       ImagePathUtils.pList_3,
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),

                                 SpacerWidget.spacerWidget(spaceWidth: 13.wt(context)),


                                 Expanded(
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [

                                       Container(
                                         alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                         child: Text(
                                           "Chicken Fries".tr,
                                           textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                           style: GoogleFonts.tajawal(
                                             fontWeight: FontWeight.w700,
                                             fontStyle: FontStyle.normal,
                                             fontSize: 18.spt(context),
                                             color: ColorUtils.black33,
                                           ),
                                         ),
                                       ),


                                       SpacerWidget.spacerWidget(spaceHeight: 8.ht(context)),


                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children: [

                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "Quantity: 2".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),

                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "Size: Middle".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),


                                           Container(
                                             alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                             child: Text(
                                               "3.000 OMR".tr,
                                               textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                               style: GoogleFonts.tajawal(
                                                 fontWeight: FontWeight.w500,
                                                 fontStyle: FontStyle.normal,
                                                 fontSize: 14.spt(context),
                                                 color: ColorUtils.gray117,
                                               ),
                                             ),
                                           ),

                                         ],
                                       )


                                     ],
                                   ),
                                 )


                               ],
                             ),
                           ),


                           Container(
                             height: 1.5.ht(context),
                             width: 744.wt(context),
                             decoration: BoxDecoration(
                                 color: ColorUtils.white217
                             ),
                           ),



                           SpacerWidget.spacerWidget(spaceHeight: 11.ht(context)),


                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                 child: Text(
                                   "Total amount".tr,
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
                                 alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                 child: Text(
                                   "8.800 OMR".tr,
                                   textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
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


                         ],
                       ),
                     ),
                   )
        
        
        
        
                  ],
                )
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
                                  Get.off(()=>OrdersScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
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
                            ),

                          ],
                        ),
                      ),

                      SpacerWidget.spacerWidget(spaceHeight: 26.hm(context),),


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
                                  height: 37.hm(context),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                    onPressed: () async {
                                      showAdaptiveDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        builder: (context) {
                                          return Obx(()=>Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 130.vpmm(context),
                                              horizontal: 16.hpmm(context),
                                            ),
                                            child: Container(
                                              width: 358.wm(context),
                                              height: 450.hm(context),
                                              decoration: BoxDecoration(
                                                color: ColorUtils.white255,
                                                borderRadius: BorderRadius.circular(16.rm(context)),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 30.vpmm(context),
                                                horizontal: 20.hpmm(context),
                                              ),
                                              child: Material(
                                                color: Colors.transparent,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [

                                                    Container(
                                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                      child: Text(
                                                        "Order Status *".tr,
                                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                        style: GoogleFonts.tajawal(
                                                          fontWeight: FontWeight.w500,
                                                          fontStyle: FontStyle.normal,
                                                          fontSize: 16.spm(context),
                                                          color: ColorUtils.black255,
                                                        ),
                                                      ),
                                                    ),

                                                    SpacerWidget.spacerWidget(spaceHeight: 13.hm(context)),

                                                    Container(
                                                      height: 56.hm(context),
                                                      width: 358.wm(context),
                                                      decoration: BoxDecoration(
                                                        border: isDelivered.value == false  ?
                                                        Border.all(color: ColorUtils.white217,width: 1) :
                                                        Border.all(color: ColorUtils.blue192,width: 1),
                                                        borderRadius: BorderRadius.circular(10.rm(context)),
                                                      ),
                                                      padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 12.hpmm(context)),
                                                      child: TextButton(
                                                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                        onPressed: () async {
                                                          if(isDelivered.value == true) {
                                                            isInTransit.value = false;
                                                            isDelivered.value = false;
                                                          } else {
                                                            isDelivered.value = true;
                                                            isInTransit.value = false;
                                                          }
                                                        },
                                                        child: Row(
                                                          children: [


                                                            Container(
                                                              height: 30.hm(context),
                                                              width: 30.wm(context),
                                                              decoration: BoxDecoration(
                                                                border: isDelivered.value  == false  ?
                                                                Border.all(color: ColorUtils.white217,width: 1) :
                                                                Border.all(color: ColorUtils.blue192,width: 1),
                                                                shape: BoxShape.circle,
                                                              ),
                                                              child: Center(
                                                                child: Container(
                                                                  height: 16.hm(context),
                                                                  width: 16.wm(context),
                                                                  decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      color: isDelivered.value == false ?
                                                                      Colors.transparent : ColorUtils.blue192
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                            SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),

                                                            Expanded(
                                                              child: Container(
                                                                alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                                child: Text(
                                                                  "Delivered".tr,
                                                                  textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                  style: GoogleFonts.tajawal(
                                                                    fontWeight: FontWeight.w700,
                                                                    fontStyle: FontStyle.normal,
                                                                    fontSize: 18.spm(context),
                                                                    color: ColorUtils.black30,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                          ],
                                                        ),
                                                      ),
                                                    ),

                                                    SpacerWidget.spacerWidget(spaceHeight: 16.hm(context)),


                                                    Container(
                                                      height: 56.hm(context),
                                                      width: 358.wm(context),
                                                      decoration: BoxDecoration(
                                                        border: isInTransit.value == false  ?
                                                        Border.all(color: ColorUtils.white217,width: 1) :
                                                        Border.all(color: ColorUtils.blue192,width: 1),
                                                        borderRadius: BorderRadius.circular(10.rm(context)),
                                                      ),
                                                      padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 12.hpmm(context)),
                                                      child: TextButton(
                                                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                        onPressed: () async {
                                                          if(isInTransit.value == true) {
                                                            isInTransit.value = false;
                                                            isDelivered.value = false;
                                                          } else {
                                                            isDelivered.value = false;
                                                            isInTransit.value = true;
                                                          }
                                                        },
                                                        child: Row(
                                                          children: [


                                                            Container(
                                                              height: 30.hm(context),
                                                              width: 30.wm(context),
                                                              decoration: BoxDecoration(
                                                                border: isInTransit.value == false  ?
                                                                Border.all(color: ColorUtils.white217,width: 1) :
                                                                Border.all(color: ColorUtils.blue192,width: 1),
                                                                shape: BoxShape.circle,
                                                              ),
                                                              child: Center(
                                                                child: Container(
                                                                  height: 16.hm(context),
                                                                  width: 16.wm(context),
                                                                  decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      color: isInTransit.value == false ?
                                                                      Colors.transparent : ColorUtils.blue192
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                            SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),

                                                            Expanded(
                                                              child: Container(
                                                                alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                                child: Text(
                                                                  "In Transit".tr,
                                                                  textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                  style: GoogleFonts.tajawal(
                                                                    fontWeight: FontWeight.w700,
                                                                    fontStyle: FontStyle.normal,
                                                                    fontSize: 18.spm(context),
                                                                    color: ColorUtils.black30,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                          ],
                                                        ),
                                                      ),
                                                    ),


                                                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context),),

                                                    Container(
                                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                      child: Text(
                                                        "Did you receive the full amount? *".tr,
                                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                        style: GoogleFonts.tajawal(
                                                          fontWeight: FontWeight.w500,
                                                          fontStyle: FontStyle.normal,
                                                          fontSize: 16.spm(context),
                                                          color: ColorUtils.black255,
                                                        ),
                                                      ),
                                                    ),

                                                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),


                                                    Row(
                                                      children: [


                                                        Expanded(
                                                          child: Container(
                                                            height: 56.hm(context),
                                                            decoration: BoxDecoration(
                                                              border: isYes.value == false ?
                                                              Border.all(color: ColorUtils.white217,width: 1) :
                                                              Border.all(color: ColorUtils.blue192,width: 1),
                                                              borderRadius: BorderRadius.circular(10.rm(context)),
                                                            ),
                                                            padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 12.hpmm(context)),
                                                            child: TextButton(
                                                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                              onPressed: () async {
                                                                if(isYes.value == true) {
                                                                  isYes.value = false;
                                                                  isNo.value = false;
                                                                } else {
                                                                  isYes.value = true;
                                                                  isNo.value = false;
                                                                }
                                                              },
                                                              child: Row(
                                                                children: [


                                                                  Container(
                                                                    height: 30.hm(context),
                                                                    width: 30.wm(context),
                                                                    decoration: BoxDecoration(
                                                                      border: isYes.value == false ?
                                                                      Border.all(color: ColorUtils.white217,width: 1) :
                                                                      Border.all(color: ColorUtils.blue192,width: 1),
                                                                      shape: BoxShape.circle,
                                                                    ),
                                                                    child: Center(
                                                                      child: Container(
                                                                        height: 16.hm(context),
                                                                        width: 16.wm(context),
                                                                        decoration: BoxDecoration(
                                                                            shape: BoxShape.circle,
                                                                            color: isYes.value == false ?
                                                                            Colors.transparent : ColorUtils.blue192
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),

                                                                  SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),

                                                                  Expanded(
                                                                    child: Container(
                                                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                                      child: Text(
                                                                        "Yes".tr,
                                                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                        style: GoogleFonts.tajawal(
                                                                          fontWeight: FontWeight.w700,
                                                                          fontStyle: FontStyle.normal,
                                                                          fontSize: 18.spm(context),
                                                                          color: ColorUtils.black30,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),

                                                        SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),


                                                        Expanded(
                                                          child: Container(
                                                            height: 56.hm(context),
                                                            decoration: BoxDecoration(
                                                              border: isNo.value == false  ?
                                                              Border.all(color: ColorUtils.white217,width: 1) :
                                                              Border.all(color: ColorUtils.blue192,width: 1),
                                                              borderRadius: BorderRadius.circular(10.rm(context)),
                                                            ),
                                                            padding: EdgeInsets.symmetric(vertical: 12.vpmm(context),horizontal: 12.hpmm(context)),
                                                            child: TextButton(
                                                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                              onPressed: () async {
                                                                if(isNo.value == true) {
                                                                  isYes.value = false;
                                                                  isNo.value = false;
                                                                } else {
                                                                  isYes.value = false;
                                                                  isNo.value = true;
                                                                }
                                                              },
                                                              child: Row(
                                                                children: [


                                                                  Container(
                                                                    height: 30.hm(context),
                                                                    width: 30.wm(context),
                                                                    decoration: BoxDecoration(
                                                                      border: isNo.value == false ?
                                                                      Border.all(color: ColorUtils.white217,width: 1) :
                                                                      Border.all(color: ColorUtils.blue192,width: 1),
                                                                      shape: BoxShape.circle,
                                                                    ),
                                                                    child: Center(
                                                                      child: Container(
                                                                        height: 16.hm(context),
                                                                        width: 16.wm(context),
                                                                        decoration: BoxDecoration(
                                                                            shape: BoxShape.circle,
                                                                            color: isNo.value == false ?
                                                                            Colors.transparent : ColorUtils.blue192
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),

                                                                  SpacerWidget.spacerWidget(spaceWidth: 12.wm(context)),

                                                                  Expanded(
                                                                    child: Container(
                                                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                                      child: Text(
                                                                        "No".tr,
                                                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                                        style: GoogleFonts.tajawal(
                                                                          fontWeight: FontWeight.w700,
                                                                          fontStyle: FontStyle.normal,
                                                                          fontSize: 18.spm(context),
                                                                          color: ColorUtils.black30,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),

                                                      ],
                                                    ),

                                                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),


                                                    Container(
                                                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                                      child: Text(
                                                        "Notes".tr,
                                                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                        style: GoogleFonts.tajawal(
                                                          fontWeight: FontWeight.w500,
                                                          fontStyle: FontStyle.normal,
                                                          fontSize: 16.spm(context),
                                                          color: ColorUtils.black33,
                                                        ),
                                                      ),
                                                    ),


                                                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context),),


                                                    TextFormField(
                                                      controller: noteController.value,
                                                      textAlign: TextAlign.start,
                                                      cursorColor: ColorUtils.blue192,
                                                      cursorHeight: 20.hm(context),
                                                      style: GoogleFonts.tajawal(
                                                        fontSize: 16.spm(context),
                                                        fontStyle: FontStyle.normal,
                                                        color: ColorUtils.black51,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                      maxLines: 5,
                                                      textAlignVertical: TextAlignVertical.center,
                                                      decoration: InputDecoration(
                                                        hintText: "Enter your notes ...".tr,
                                                        hintStyle: GoogleFonts.tajawal(
                                                          fontSize: 16.spm(context),
                                                          fontWeight: FontWeight.w400,
                                                          fontStyle: FontStyle.normal,
                                                          color: ColorUtils.gray136,
                                                        ),
                                                        filled: true,
                                                        fillColor: ColorUtils.white255,
                                                        contentPadding: EdgeInsets.symmetric(
                                                          horizontal: 12.hpmm(context),
                                                          vertical: 12.vpmm(context),
                                                        ),
                                                        constraints: BoxConstraints(
                                                          maxWidth: 358.wm(context),
                                                          maxHeight: 85.hm(context),
                                                        ),
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(8.rm(context)),
                                                          borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(8.rm(context)),
                                                          borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(8.rm(context)),
                                                          borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                                        ),

                                                      ),
                                                    ),



                                                    SpacerWidget.spacerWidget(spaceHeight: 20.hm(context),),


                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [


                                                        Container(
                                                          height: 48.hm(context),
                                                          width: 153.wm(context),
                                                          decoration: BoxDecoration(
                                                            color: ColorUtils.blue192,
                                                            borderRadius: BorderRadius.circular(8.rm(context),),
                                                          ),
                                                          child: TextButton(
                                                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                                            onPressed: () async {
                                                              Get.back();
                                                            },
                                                            child: Center(
                                                              child: Text(
                                                                "Save".tr,
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
                                                          width: 153.wm(context),
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
                                                                "Cancel".tr,
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
                                                    )

                                                  ],
                                                ),
                                              ),
                                            ),
                                          ));
                                        },
                                      );
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Update order Status".tr,
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
                                "+968 95005500".tr,
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


                            Row(
                              children: [
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

                                SpacerWidget.spacerWidget(spaceWidth: 34.wm(context)),

                                Container(
                                  height: 37.hm(context),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                    onPressed: () async {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "See location".tr,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spm(context),
                                              color: ColorUtils.blue192,
                                            ),
                                          ),
                                        ),

                                        SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),


                                        Icon(Icons.arrow_forward_ios_sharp,size: 15.sm(context),color: ColorUtils.blue192,),





                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 3.hm(context)),


                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Payment method: Cash on delivery".tr,
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


                            Container(
                              height: 1.5.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                  color: ColorUtils.white217
                              ),
                            ),



                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),


                            Container(
                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                              child: Text(
                                "Order details".tr,
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
                                "Shawarmak".tr,
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
                                "+968 98735666".tr,
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


                            Row(
                              children: [
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

                                SpacerWidget.spacerWidget(spaceWidth: 34.wm(context)),

                                Container(
                                  height: 37.hm(context),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                    onPressed: () async {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "See location".tr,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.spm(context),
                                              color: ColorUtils.blue192,
                                            ),
                                          ),
                                        ),

                                        SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),


                                        Icon(Icons.arrow_forward_ios_sharp,size: 15.sm(context),color: ColorUtils.blue192,),





                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 13.hm(context)),


                            Container(
                              width: 390.wm(context),
                              padding: EdgeInsets.symmetric(vertical: 9.vpmm(context),horizontal: 9.hpmm(context)),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(ImagePathUtils.dotBorderIconImagePath),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [


                                  Container(
                                    height: 50.hm(context),
                                    width: 50.wm(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Image.asset(
                                        ImagePathUtils.pList_1,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  SpacerWidget.spacerWidget(spaceWidth: 13.wm(context)),


                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                    
                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                          child: Text(
                                            "Tanoore".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 18.spm(context),
                                              color: ColorUtils.black33,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 8.hm(context)),


                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [

                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "Quantity: 1".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),

                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "Size: Middle".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),


                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "1.900 OMR".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),

                                          ],
                                        )
                                    
                                    
                                      ],
                                    ),
                                  )


                                ],
                              ),
                            ),


                            SpacerWidget.spacerWidget(spaceHeight: 17.hm(context)),


                            Container(
                              width: 390.wm(context),
                              padding: EdgeInsets.symmetric(vertical: 9.vpmm(context),horizontal: 9.hpmm(context)),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(ImagePathUtils.dotBorderIconImagePath),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [


                                  Container(
                                    height: 50.hm(context),
                                    width: 50.wm(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Image.asset(
                                        ImagePathUtils.pList_4,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  SpacerWidget.spacerWidget(spaceWidth: 13.wm(context)),


                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                          child: Text(
                                            "sandwich packet".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 18.spm(context),
                                              color: ColorUtils.black33,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 8.hm(context)),


                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [

                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "Quantity: 2".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),

                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "Size: Middle".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),


                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "2.200 OMR".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),

                                          ],
                                        )


                                      ],
                                    ),
                                  )


                                ],
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 17.hm(context)),


                            Container(
                              width: 390.wm(context),
                              padding: EdgeInsets.symmetric(vertical: 9.vpmm(context),horizontal: 9.hpmm(context)),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [


                                  Container(
                                    height: 50.hm(context),
                                    width: 50.wm(context),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Image.asset(
                                        ImagePathUtils.pList_3,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  SpacerWidget.spacerWidget(spaceWidth: 13.wm(context)),


                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Container(
                                          alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                          child: Text(
                                            "Chicken Fries".tr,
                                            textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                            style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 18.spm(context),
                                              color: ColorUtils.black33,
                                            ),
                                          ),
                                        ),


                                        SpacerWidget.spacerWidget(spaceHeight: 8.hm(context)),


                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [

                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "Quantity: 2".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),

                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "Size: Middle".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),


                                            Container(
                                              alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                              child: Text(
                                                "3.000 OMR".tr,
                                                textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 14.spm(context),
                                                  color: ColorUtils.gray117,
                                                ),
                                              ),
                                            ),

                                          ],
                                        )


                                      ],
                                    ),
                                  )


                                ],
                              ),
                            ),


                            Container(
                              height: 1.5.hm(context),
                              width: 390.wm(context),
                              decoration: BoxDecoration(
                                  color: ColorUtils.white217
                              ),
                            ),



                            SpacerWidget.spacerWidget(spaceHeight: 11.hm(context)),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "Total amount".tr,
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
                                  alignment: Get.locale.toString() == "en" ? Alignment.centerLeft :  Alignment.centerRight,
                                  child: Text(
                                    "8.800 OMR".tr,
                                    textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
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


                          ],
                        ),
                      ),




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