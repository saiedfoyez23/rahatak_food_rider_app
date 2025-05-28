import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rahatak_food_rider_app/controller/controller.dart';
import 'package:rahatak_food_rider_app/utils/utils.dart';

import '../screen/screen.dart';

class RegistrationScreenWidget extends GetxController {

  GoogleMapController? googleMapController;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> titleController = TextEditingController().obs;
  Rx<TextEditingController> vehicleMumberController = TextEditingController().obs;
  Rx<TextEditingController> bankAccountNumberController = TextEditingController().obs;
  Rx<TextEditingController> stateController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> phoneNumberController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool obscureText = true.obs;
  RxBool isCheckIn = true.obs;
  RxInt bigIndex_1 = 0.obs;
  RxBool isSubmit = false.obs;
  RxBool isResendOtp = false.obs;
  RxBool isOtpSubmit = false.obs;
  RxInt timeCounter = 60.obs;
  RxDouble updatedLat = 0.0.obs;
  RxDouble updatedLong = 0.0.obs;



  Rx<TextEditingController> otp1 = TextEditingController().obs;
  Rx<TextEditingController> otp2 = TextEditingController().obs;
  Rx<TextEditingController> otp3 = TextEditingController().obs;
  Rx<TextEditingController> otp4 = TextEditingController().obs;
  Rx<TextEditingController> otp5 = TextEditingController().obs;
  Rx<TextEditingController> otp6 = TextEditingController().obs;


  Future<void> otpTimer() async {
    Future.delayed(Duration(seconds: 1), () async {
      if(timeCounter > 0) {
        timeCounter.value = timeCounter.value - 1;
        otpTimer();
      } else {
        timeCounter.value = 0;
      }
    });
  }


  RxList<String> selectedLocation = <String>[].obs;
  Rx<File> imageFile = File("").obs;
  Rx<File> idFile = File("").obs;
  Rx<File> driverLicense = File("").obs;
  Rx<File> medicalExamination = File("").obs;

  RxList<bool> selectedLocationBool = List.filled(9, false,growable: true).obs;

  RxList<String> locations = <String>[
    "Muscat",
    "Al Batinah",
    "Ad Dakhiliyah",
    "Musandam",
    //"Al Buraimi",
    "Sharkia",
    "Al Dhahirah",
    "Al Wusta",
    "Dhofar",
  ].obs;


  Future<Position> _determinePosition() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return position;
  }



  Future<void> updateCurrentLocation() async {
    try {
      Position position = await _determinePosition();
      googleMapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 19.151926040649414
          ),
        ),
      );

      updatedLat.value = position.latitude;
      updatedLong.value = position.longitude;

      print(updatedLong.value);
      print(updatedLat.value);

    } catch (e) {
      // Handle exceptions
    }
  }


  Future<void> checkLocationPermission() async {
    Future.delayed(const Duration(milliseconds: 500),() async {
      LocationPermission permission;
      var checkPermission = await Geolocator.checkPermission();
      permission = await Geolocator.requestPermission();
      print(permission);
      if(permission == LocationPermission.denied){
        await checkLocationPermission();
      }else if(permission == LocationPermission.deniedForever){
      }else {
        await updateCurrentLocation();
      }
    });
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 1),() async {
      await checkLocationPermission();
    });
  }



  Widget registrationScreenWidget({required BuildContext context}) {
    return Obx(()=>SafeArea(
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
                padding: EdgeInsets.symmetric(
                  horizontal: 16.hpmm(context),
                ),
                child: Column(
                  children: [


                    SpacerWidget.spacerWidget(
                      spaceHeight: 11.hm(context),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: 24.hm(context),
                          width: 24.wm(context),
                          decoration: BoxDecoration(
                              color: Colors.transparent
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {
                              showAdaptiveDialog(
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      top: 45.tpmm(context),
                                      bottom: 667.tpmm(context),
                                      left: Get.locale.toString() == "en" ? 16.lpmm(context) : 232.rpmm(context),
                                      right: Get.locale.toString() == "en" ? 232.rpmm(context) : 16.lpmm(context),
                                    ),
                                    child: Container(
                                      height: 88.hm(context),
                                      width: 150.wm(context),
                                      decoration: BoxDecoration(
                                        color: ColorUtils.white255,
                                        borderRadius: BorderRadius.circular(10.rm(context)),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                            color: ColorUtils.black05,
                                            offset: Offset(0, 0),
                                          )
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [

                                          Container(
                                            height: 42.hm(context),
                                            width: 150.wm(context),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: TextButton(
                                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                              onPressed: () async {
                                                Get.updateLocale(Locale("ar"));
                                                Get.back();
                                              },
                                              child: Center(
                                                child: Text(
                                                  "Arabic".tr,
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 16.spm(context),
                                                    color: ColorUtils.black33,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          Container(
                                            height: 42.hm(context),
                                            width: 150.wm(context),
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: TextButton(
                                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                              onPressed: () async {
                                                Get.updateLocale(Locale("en"));
                                                Get.back();
                                              },
                                              child: Center(
                                                child: Text(
                                                  "English".tr,
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 16.spm(context),
                                                    color: ColorUtils.black33,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),



                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                ImagePathUtils.languageButtonImagePath,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 44.hm(context)),

                    Container(
                      width: 358.wm(context),
                      alignment: Alignment.center,
                      child: Text(
                        "Join Rahtak and start delivering orders with ease!".tr,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 24.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 32.hm(context)),

                    // Name

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Name *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),


                    TextFormField(
                      controller: nameController.value,
                      textAlign: TextAlign.start,
                      cursorColor: ColorUtils.blue192,
                      cursorHeight: 20.hm(context),
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Enter the restaurant name".tr,
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
                          maxHeight: 48.hm(context),
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

                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),

                    //Email

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Email *".tr,
                        textAlign:  Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),

                    TextFormField(
                      controller: emailController.value,
                      textAlign: TextAlign.start,
                      cursorColor: ColorUtils.blue192,
                      cursorHeight: 20.hm(context),
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Enter your email".tr,
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
                          maxHeight: 48.hm(context),
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

                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),

                    //phone number

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Phone Number *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),


                    TextFormField(
                      controller: phoneNumberController.value,
                      textAlign: TextAlign.start,
                      cursorColor: ColorUtils.blue192,
                      cursorHeight: 20.hm(context),
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Enter your phone number".tr,
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
                          maxHeight: 48.hm(context),
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

                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),

                    //vehicle number

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Vehicle number *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),


                    TextFormField(
                      controller: vehicleMumberController.value,
                      textAlign: TextAlign.start,
                      cursorColor: ColorUtils.blue192,
                      cursorHeight: 20.hm(context),
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Enter your vehicle number".tr,
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
                          maxHeight: 48.hm(context),
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


                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),

                    //Bank account number

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Bank account number *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),


                    TextFormField(
                      controller: bankAccountNumberController.value,
                      textAlign: TextAlign.start,
                      cursorColor: ColorUtils.blue192,
                      cursorHeight: 20.hm(context),
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Enter bank account number".tr,
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
                          maxHeight: 48.hm(context),
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


                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),

                    //Location Covered

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Locations covered *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),

                    SizedBox(
                      width: 390.wm(context),
                      child: Wrap(
                        children: List.generate(locations.length, (index) {
                          return SizedBox(
                            height: 70.hm(context),
                            width: 120.wm(context),
                            child: TextButton(
                              onPressed: () async {
                                if(selectedLocationBool[index] == true) {
                                  String location = locations[index];
                                  selectedLocationBool[index] = false;
                                  if(location == "Muscat") {
                                    selectedLocation.remove('muscat');
                                  } else if(location == "Al Batinah") {
                                    selectedLocation.remove("al-batinah");
                                  } else if(location == "Ad Dakhiliyah") {
                                    selectedLocation.remove("ad-dakhiliyah");
                                  } else if(location == "Musandam") {
                                    selectedLocation.remove("musandam");
                                  } else if(location == "Al Buraimi") {
                                    selectedLocation.remove("al-buraimi");
                                  } else if(location == "Sharkia") {
                                    selectedLocation.remove("sharkia");
                                  } else if(location == "Al Dhahirah") {
                                    selectedLocation.remove("al-dhahirah");
                                  } else if(location == "Al Wusta") {
                                    selectedLocation.remove("al-wusta");
                                  } else if(location == "Dhofar") {
                                    selectedLocation.remove("dhofar");
                                  }
                                } else {
                                  selectedLocationBool[index] = true;
                                  if(locations[index] == "Muscat") {
                                    selectedLocation.add("muscat");
                                  } else if(locations[index] == "Al Batinah") {
                                    selectedLocation.add("al-batinah");
                                  } else if(locations[index] == "Ad Dakhiliyah") {
                                    selectedLocation.add("ad-dakhiliyah");
                                  } else if(locations[index] == "Musandam") {
                                    selectedLocation.add("musandam");
                                  } else if(locations[index] == "Al Buraimi") {
                                    selectedLocation.add("al-buraimi");
                                  } else if(locations[index] == "Sharkia") {
                                    selectedLocation.add("sharkia");
                                  } else if(locations[index] == "Al Dhahirah") {
                                    selectedLocation.add("al-dhahirah");
                                  } else if(locations[index] == "Al Wusta") {
                                    selectedLocation.add("al-wusta");
                                  } else if(locations[index] == "Dhofar") {
                                    selectedLocation.add("dhofar");
                                  }
                                }
                              },
                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                              child: Container(
                                height: 70.hm(context),
                                width: 120.wm(context),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                margin: EdgeInsets.only(bottom: 10.bpmm(context),right: 10.rpmm(context)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Container(
                                      height: 18.hm(context),
                                      width: 18.wm(context),
                                      decoration: BoxDecoration(
                                          color: Colors.transparent
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Image.asset(
                                          selectedLocationBool[index] == true ?
                                          ImagePathUtils.checkBoxImagePath :
                                          ImagePathUtils.uncheckBoxImagePath,
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),

                                    SpacerWidget.spacerWidget(spaceWidth: 8.wm(context)),

                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${locations[index]}".tr,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14.spm(context),
                                          color: ColorUtils.black51,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),


                    //States

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "States *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),


                    TextFormField(
                      controller: stateController.value,
                      textAlign: TextAlign.start,
                      cursorColor: ColorUtils.blue192,
                      cursorHeight: 20.hm(context),
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Enter states".tr,
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
                          maxHeight: 48.hm(context),
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


                    SpacerWidget.spacerWidget(spaceHeight: MediaQuery.sizeOf(context).height > 1000 ? 24.ht(context) : 24.hm(context)),


                    //image

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Personal photo *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),

                    Container(
                      height: 144.hm(context),
                      width: 390.wm(context),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.hpmm(context),
                        vertical: 5.vpmm(context),
                      ),
                      decoration: BoxDecoration(
                        color: ColorUtils.white217,
                        borderRadius: BorderRadius.circular(10.rm(context)),
                        border: Border.all(
                          color: ColorUtils.gray163,
                          width: 0.5,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png', 'svg'],
                          );
                          if (result != null) {
                            // The user has selected a file
                            PlatformFile file = result.files.first;
                            // Do something with the file (e.g., upload it)
                            imageFile.value = File(result.files.first.path!);
                            print('File selected: ${file.name}');
                          }
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [



                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                imageFile.value.path == ""? "your profile picture".tr : imageFile.value.path.toString().split('/').last,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.spm(context),
                                  color: ColorUtils.blue192,
                                ),
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 6.hm(context)),


                            Container(
                              height: 36.hm(context),
                              width: 36.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child:  FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  ImagePathUtils.uploadIconImagePath,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),


                    //Id

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "ID/Personal Card *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),

                    Container(
                      height: 144.hm(context),
                      width: 390.wm(context),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.hpmm(context),
                        vertical: 5.vpmm(context),
                      ),
                      decoration: BoxDecoration(
                        color: ColorUtils.white217,
                        borderRadius: BorderRadius.circular(10.rm(context)),
                        border: Border.all(
                          color: ColorUtils.gray163,
                          width: 0.5,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png', 'svg'],
                          );
                          if (result != null) {
                            // The user has selected a file
                            PlatformFile file = result.files.first;
                            // Do something with the file (e.g., upload it)\
                            idFile.value = File(result.files.first.path!);
                            print('File selected: ${file.name}');
                          }
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [



                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                idFile.value.path == "" ? "Add a copy of your ID or personal card.".tr : idFile.value.path.toString().split('/').last,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.spm(context),
                                  color: ColorUtils.blue192,
                                ),
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 6.hm(context)),


                            Container(
                              height: 36.hm(context),
                              width: 36.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child:  FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  ImagePathUtils.uploadIconImagePath,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),


                    //Driver's License

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Driver's License *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),

                    Container(
                      height: 144.hm(context),
                      width: 390.wm(context),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.hpmm(context),
                        vertical: 5.vpmm(context),
                      ),
                      decoration: BoxDecoration(
                        color: ColorUtils.white217,
                        borderRadius: BorderRadius.circular(10.rm(context)),
                        border: Border.all(
                          color: ColorUtils.gray163,
                          width: 0.5,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png', 'svg'],
                          );
                          if (result != null) {
                            // The user has selected a file
                            PlatformFile file = result.files.first;
                            driverLicense.value = File(result.files.first.path!);
                            // Do something with the file (e.g., upload it)
                            print('File selected: ${file.name}');
                          }
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [



                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                driverLicense.value.path == "" ? "Add a copy of your Driver's License".tr : driverLicense.value.path.toString().split('/').last,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.spm(context),
                                  color: ColorUtils.blue192,
                                ),
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 6.hm(context)),


                            Container(
                              height: 36.hm(context),
                              width: 36.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child:  FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  ImagePathUtils.uploadIconImagePath,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),


                    //Medical examination

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Medical examination *".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),

                    Container(
                      height: 144.hm(context),
                      width: 390.wm(context),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.hpmm(context),
                        vertical: 5.vpmm(context),
                      ),
                      decoration: BoxDecoration(
                        color: ColorUtils.white217,
                        borderRadius: BorderRadius.circular(10.rm(context)),
                        border: Border.all(
                          color: ColorUtils.gray163,
                          width: 0.5,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          FilePickerResult? result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png', 'svg'],
                          );
                          if (result != null) {
                            // The user has selected a file
                            PlatformFile file = result.files.first;
                            medicalExamination.value = File(result.files.first.path!);
                            // Do something with the file (e.g., upload it)
                            print('File selected: ${file.name}');
                          }
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [



                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                medicalExamination.value.path == "" ? "Add a copy of your medical examination".tr : medicalExamination.value.path.toString().split('/').last,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.spm(context),
                                  color: ColorUtils.blue192,
                                ),
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceHeight: 6.hm(context)),


                            Container(
                              height: 36.hm(context),
                              width: 36.wm(context),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child:  FittedBox(
                                fit: BoxFit.fill,
                                child: Image.asset(
                                  ImagePathUtils.uploadIconImagePath,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),


                    //Password

                    Container(
                      width: 358.wm(context),
                      alignment: Get.locale.toString() == "en" ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        "Password".tr,
                        textAlign: Get.locale.toString() == "en" ? TextAlign.start : TextAlign.end,
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16.spm(context),
                          color: ColorUtils.black33,
                        ),
                      ),
                    ),

                    SpacerWidget.spacerWidget(spaceHeight: 12.hm(context)),

                    TextFormField(
                      controller: passwordController.value,
                      textAlign: TextAlign.start,
                      cursorColor: ColorUtils.blue192,
                      style: obscureText.value == true ?
                      GoogleFonts.openSans(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ) :
                      GoogleFonts.tajawal(
                        fontSize: 16.spm(context),
                        fontStyle: FontStyle.normal,
                        color: ColorUtils.black51,
                        fontWeight: FontWeight.w400,
                      ),
                      cursorHeight: 20.hm(context),
                      obscureText: obscureText.value,
                      textAlignVertical: TextAlignVertical.center,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        hintText: "********",
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 16.spm(context),
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: ColorUtils.gray136,
                        ),
                        filled: true,
                        suffixIcon: Container(
                          height: 24.hm(context),
                          width: 24.wm(context),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.hpmm(context),
                            vertical: 12.vpmm(context),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.transparent
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {
                              if(obscureText.value == true) {
                                obscureText.value = false;
                              } else {
                                obscureText.value = true;
                              }
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                obscureText.value == true ?
                                ImagePathUtils.visibilityOffFocusIconImagePath :
                                ImagePathUtils.visibilityFocusIconImagePath,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                        fillColor: ColorUtils.white255,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.hpmm(context),
                          vertical: 12.vpmm(context),
                        ),
                        constraints: BoxConstraints(
                          maxWidth: 358.wm(context),
                          maxHeight: 48.hm(context),
                        ),
                        border:  OutlineInputBorder(
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



                    SpacerWidget.spacerWidget(spaceHeight: 24.hm(context)),


                    Container(
                      height: 25.hm(context),
                      width: 358.wm(context),
                      decoration: BoxDecoration(
                          color: Colors.transparent
                      ),
                      alignment: Alignment.center,
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () {
                          if(isCheckIn.value == true) {
                            isCheckIn.value = false;
                          } else {
                            isCheckIn.value = true;
                          }
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Container(
                              height: 18.hm(context),
                              width: 18.wm(context),
                              decoration: BoxDecoration(
                                  color: Colors.transparent
                              ),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset(
                                  isCheckIn.value == true ?
                                  ImagePathUtils.checkBoxImagePath :
                                  ImagePathUtils.uncheckBoxImagePath,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),

                            SpacerWidget.spacerWidget(spaceWidth: 8.wm(context)),

                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: "I agree to ".tr,
                                style: GoogleFonts.tajawal(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.spm(context),
                                  color: ColorUtils.black51,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: [
                                  TextSpan(
                                    text: "the terms and conditions".tr,
                                    style: GoogleFonts.tajawal(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.spm(context),
                                      color: ColorUtils.blue192,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 45.hm(context)),

                    isSubmit.value == true ?
                    Container(
                      height: 48.hm(context),
                      width: 300.wm(context),
                      decoration: BoxDecoration(
                        color: Colors.transparent
                      ),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ) :
                    Container(
                      height: 48.hm(context),
                      width: 300.wm(context),
                      decoration: BoxDecoration(
                        color: ColorUtils.blue192,
                        borderRadius: BorderRadius.circular(8.rm(context)),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () async {
                          if(nameController.value.text == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter your name");
                          } else if (emailController.value.text == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter your email");
                          } else if (phoneNumberController.value.text == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter your phone number");
                          } else if (vehicleMumberController.value.text == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter your vehicle number");
                          } else if (bankAccountNumberController.value.text == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter your bank account number");
                          } else if (selectedLocation.isEmpty == true) {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter select your location");
                          } else if (stateController.value.text == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter your state");
                          } else if (imageFile.value.path == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please select your personal photo");
                          } else if (idFile.value.path == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please select your ID/Personal Card");
                          } else if(driverLicense.value.path == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please select your driver license Card");
                          } else if(medicalExamination.value.path == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please select your medical examination Card");
                          } else if(passwordController.value.text == "") {
                            CustomSnackBar().errorCustomSnackBar(context: context, message: "Please enter your password");
                          } else {
                            isSubmit.value = true;
                            Map<String,dynamic> data = {
                              "name": nameController.value.text,
                              "email": emailController.value.text,
                              "password": passwordController.value.text,
                              "contact": phoneNumberController.value.text,
                              "states": stateController.value.text,
                              "covered_areas": selectedLocation,
                              "bank_account": bankAccountNumberController.value.text,
                              "location": {
                                "type": "Point",
                                "coordinates": [updatedLong.value, updatedLat.value]
                              },
                              "vehicle_number": vehicleMumberController.value.text
                            };
                            print(jsonEncode(data));
                            print(imageFile.value);
                            print(idFile.value);
                            print(driverLicense.value);
                            print(medicalExamination.value);
                            SignUpController.getCreateAccountResponse(
                              data: data,
                              image: imageFile.value,
                              id: idFile.value,
                              drivingLicense: driverLicense.value,
                              medicalExamination: medicalExamination.value,
                              onSuccess: (e) async {
                                isSubmit.value = false;
                                showAdaptiveDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 271.vpmm(context),
                                        horizontal: 16.hpmm(context),
                                      ),
                                      child: Container(
                                        width: 358.wm(context),
                                        height: 283.hm(context),
                                        decoration: BoxDecoration(
                                          color: ColorUtils.white255,
                                          borderRadius: BorderRadius.circular(16.rm(context)),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 30.vpmm(context),
                                          horizontal: 20.hpmm(context),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [


                                            Container(
                                              height: 64.hm(context),
                                              width: 64.wm(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent
                                              ),
                                              child: FittedBox(
                                                fit: BoxFit.cover,
                                                child: Image.asset(
                                                  ImagePathUtils.signUpScreenImagePath,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),


                                            SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),


                                            Container(
                                              width: 358.wm(context),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Your account has been created successfully!".tr,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w700,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 18.spm(context),
                                                  color: ColorUtils.black33,
                                                  height: (35.hm(context) / 18.spm(context)),
                                                ),
                                              ),
                                            ),

                                            Container(
                                              width: 358.wm(context),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "You can now log in and start ordering your favorite meals with ease.".tr,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.tajawal(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.spm(context),
                                                  color: ColorUtils.black33,
                                                  height: (35.hm(context) / 16.spm(context)),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                                Future.delayed(Duration(seconds: 2),() async {
                                  Get.back();
                                  Get.off(()=>LoginScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                });
                                // timeCounter.value = 60;
                                // otp1.value.clear();
                                // otp2.value.clear();
                                // otp3.value.clear();
                                // otp4.value.clear();
                                // otp5.value.clear();
                                // otp6.value.clear();
                                // await otpTimer();
                                // showAdaptiveDialog(
                                //   context: context,
                                //   barrierDismissible: true,
                                //   builder: (context) {
                                //     return Obx(()=>Padding(
                                //       padding: EdgeInsets.symmetric(
                                //         vertical: 180.vpmm(context),
                                //         horizontal: 16.hpmm(context),
                                //       ),
                                //       child: Container(
                                //         width: 358.wm(context),
                                //         height: 468.hm(context),
                                //         decoration: BoxDecoration(
                                //           color: ColorUtils.white255,
                                //           borderRadius: BorderRadius.circular(16.rm(context)),
                                //         ),
                                //         padding: EdgeInsets.symmetric(
                                //           vertical: 30.vpmm(context),
                                //           horizontal: 20.hpmm(context),
                                //         ),
                                //         child: Material(
                                //           color: Colors.transparent,
                                //           shadowColor: Colors.transparent,
                                //           surfaceTintColor: Colors.transparent,
                                //           child: Column(
                                //             mainAxisAlignment: MainAxisAlignment.center,
                                //             crossAxisAlignment: CrossAxisAlignment.center,
                                //             children: [
                                //
                                //
                                //               Container(
                                //                 width: 358.wm(context),
                                //                 alignment: Alignment.center,
                                //                 child: Text(
                                //                   "Verify Your Otp".tr,
                                //                   textAlign: TextAlign.center,
                                //                   style: GoogleFonts.tajawal(
                                //                     fontWeight: FontWeight.w700,
                                //                     fontStyle: FontStyle.normal,
                                //                     fontSize: 24.spm(context),
                                //                     color: ColorUtils.black33,
                                //                     height: (35.hm(context) / 24.spm(context)),
                                //                   ),
                                //                 ),
                                //               ),
                                //
                                //
                                //
                                //               Container(
                                //                 width: 358.wm(context),
                                //                 alignment: Alignment.center,
                                //                 child: Text(
                                //                   "We have sent a 6-digit verification code to your registered email. Please enter the code below to complete your registration.".tr,
                                //                   textAlign: TextAlign.center,
                                //                   style: GoogleFonts.tajawal(
                                //                     fontWeight: FontWeight.w500,
                                //                     fontStyle: FontStyle.normal,
                                //                     fontSize: 18.spm(context),
                                //                     color: ColorUtils.black33,
                                //                     height: (35.hm(context) / 18.spm(context)),
                                //                   ),
                                //                 ),
                                //               ),
                                //
                                //
                                //
                                //
                                //
                                //               SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),
                                //
                                //
                                //
                                //               Row(
                                //                 mainAxisAlignment: MainAxisAlignment.center,
                                //                 children: [
                                //
                                //                   TextFormField(
                                //                     controller: otp1.value,
                                //                     textAlign: TextAlign.center,
                                //                     keyboardType: TextInputType.number,
                                //                     cursorColor: ColorUtils.blue192,
                                //                     cursorHeight: 20.hm(context),
                                //                     style: GoogleFonts.tajawal(
                                //                       fontSize: 20.spm(context),
                                //                       fontStyle: FontStyle.normal,
                                //                       color: ColorUtils.black51,
                                //                       fontWeight: FontWeight.w700,
                                //                     ),
                                //                     onChanged: (pin) {
                                //                       if (pin.isNotEmpty) {
                                //                         FocusScope.of(context).nextFocus();
                                //                       }
                                //                     },
                                //                     textAlignVertical: TextAlignVertical.center,
                                //                     decoration: InputDecoration(
                                //                       filled: true,
                                //                       fillColor: ColorUtils.white255,
                                //                       contentPadding: EdgeInsets.symmetric(
                                //                         horizontal: 12.hpmm(context),
                                //                         vertical: 12.vpmm(context),
                                //                       ),
                                //                       constraints: BoxConstraints(
                                //                         maxWidth: 40.wm(context),
                                //                         maxHeight: 50.hm(context),
                                //                       ),
                                //                       border: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       enabledBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       focusedBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                //                       ),
                                //
                                //                     ),
                                //                   ),
                                //                   SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),
                                //                   TextFormField(
                                //                     controller: otp2.value,
                                //                     textAlign: TextAlign.center,
                                //                     keyboardType: TextInputType.number,
                                //                     cursorColor: ColorUtils.blue192,
                                //                     cursorHeight: 20.hm(context),
                                //                     style: GoogleFonts.tajawal(
                                //                       fontSize: 20.spm(context),
                                //                       fontStyle: FontStyle.normal,
                                //                       color: ColorUtils.black51,
                                //                       fontWeight: FontWeight.w700,
                                //                     ),
                                //                     onChanged: (pin) {
                                //                       if (pin.isNotEmpty) {
                                //                         FocusScope.of(context).nextFocus();
                                //                       }
                                //                     },
                                //                     textAlignVertical: TextAlignVertical.center,
                                //                     decoration: InputDecoration(
                                //                       filled: true,
                                //                       fillColor: ColorUtils.white255,
                                //                       contentPadding: EdgeInsets.symmetric(
                                //                         horizontal: 12.hpmm(context),
                                //                         vertical: 12.vpmm(context),
                                //                       ),
                                //                       constraints: BoxConstraints(
                                //                         maxWidth: 40.wm(context),
                                //                         maxHeight: 50.hm(context),
                                //                       ),
                                //                       border: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       enabledBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       focusedBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                //                       ),
                                //
                                //                     ),
                                //                   ),
                                //                   SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),
                                //                   TextFormField(
                                //                     controller: otp3.value,
                                //                     textAlign: TextAlign.center,
                                //                     keyboardType: TextInputType.number,
                                //                     cursorColor: ColorUtils.blue192,
                                //                     cursorHeight: 20.hm(context),
                                //                     style: GoogleFonts.tajawal(
                                //                       fontSize: 20.spm(context),
                                //                       fontStyle: FontStyle.normal,
                                //                       color: ColorUtils.black51,
                                //                       fontWeight: FontWeight.w700,
                                //                     ),
                                //                     onChanged: (pin) {
                                //                       if (pin.isNotEmpty) {
                                //                         FocusScope.of(context).nextFocus();
                                //                       }
                                //                     },
                                //                     textAlignVertical: TextAlignVertical.center,
                                //                     decoration: InputDecoration(
                                //                       filled: true,
                                //                       fillColor: ColorUtils.white255,
                                //                       contentPadding: EdgeInsets.symmetric(
                                //                         horizontal: 12.hpmm(context),
                                //                         vertical: 12.vpmm(context),
                                //                       ),
                                //                       constraints: BoxConstraints(
                                //                         maxWidth: 40.wm(context),
                                //                         maxHeight: 50.hm(context),
                                //                       ),
                                //                       border: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       enabledBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       focusedBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                //                       ),
                                //
                                //                     ),
                                //                   ),
                                //                   SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),
                                //                   TextFormField(
                                //                     controller: otp4.value,
                                //                     textAlign: TextAlign.center,
                                //                     keyboardType: TextInputType.number,
                                //                     cursorColor: ColorUtils.blue192,
                                //                     cursorHeight: 20.hm(context),
                                //                     style: GoogleFonts.tajawal(
                                //                       fontSize: 20.spm(context),
                                //                       fontStyle: FontStyle.normal,
                                //                       color: ColorUtils.black51,
                                //                       fontWeight: FontWeight.w700,
                                //                     ),
                                //                     onChanged: (pin) {
                                //                       if (pin.isNotEmpty) {
                                //                         FocusScope.of(context).nextFocus();
                                //                       }
                                //                     },
                                //                     textAlignVertical: TextAlignVertical.center,
                                //                     decoration: InputDecoration(
                                //                       filled: true,
                                //                       fillColor: ColorUtils.white255,
                                //                       contentPadding: EdgeInsets.symmetric(
                                //                         horizontal: 12.hpmm(context),
                                //                         vertical: 12.vpmm(context),
                                //                       ),
                                //                       constraints: BoxConstraints(
                                //                         maxWidth: 40.wm(context),
                                //                         maxHeight: 50.hm(context),
                                //                       ),
                                //                       border: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       enabledBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       focusedBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                //                       ),
                                //
                                //                     ),
                                //                   ),
                                //                   SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),
                                //                   TextFormField(
                                //                     controller: otp5.value,
                                //                     textAlign: TextAlign.center,
                                //                     keyboardType: TextInputType.number,
                                //                     cursorColor: ColorUtils.blue192,
                                //                     cursorHeight: 20.hm(context),
                                //                     style: GoogleFonts.tajawal(
                                //                       fontSize: 20.spm(context),
                                //                       fontStyle: FontStyle.normal,
                                //                       color: ColorUtils.black51,
                                //                       fontWeight: FontWeight.w700,
                                //                     ),
                                //                     onChanged: (pin) {
                                //                       if (pin.isNotEmpty) {
                                //                         FocusScope.of(context).nextFocus();
                                //                       }
                                //                     },
                                //                     textAlignVertical: TextAlignVertical.center,
                                //                     decoration: InputDecoration(
                                //                       filled: true,
                                //                       fillColor: ColorUtils.white255,
                                //                       contentPadding: EdgeInsets.symmetric(
                                //                         horizontal: 12.hpmm(context),
                                //                         vertical: 12.vpmm(context),
                                //                       ),
                                //                       constraints: BoxConstraints(
                                //                         maxWidth: 40.wm(context),
                                //                         maxHeight: 50.hm(context),
                                //                       ),
                                //                       border: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       enabledBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       focusedBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                //                       ),
                                //
                                //                     ),
                                //                   ),
                                //                   SpacerWidget.spacerWidget(spaceWidth: 6.wm(context)),
                                //                   TextFormField(
                                //                     controller: otp6.value,
                                //                     textAlign: TextAlign.center,
                                //                     keyboardType: TextInputType.number,
                                //                     cursorColor: ColorUtils.blue192,
                                //                     cursorHeight: 20.hm(context),
                                //                     style: GoogleFonts.tajawal(
                                //                       fontSize: 20.spm(context),
                                //                       fontStyle: FontStyle.normal,
                                //                       color: ColorUtils.black51,
                                //                       fontWeight: FontWeight.w700,
                                //                     ),
                                //                     onChanged: (pin) {
                                //                       if (pin.isNotEmpty) {
                                //                         FocusScope.of(context).unfocus();
                                //                       }
                                //                     },
                                //                     textAlignVertical: TextAlignVertical.center,
                                //                     decoration: InputDecoration(
                                //                       filled: true,
                                //                       fillColor: ColorUtils.white255,
                                //                       contentPadding: EdgeInsets.symmetric(
                                //                         horizontal: 12.hpmm(context),
                                //                         vertical: 12.vpmm(context),
                                //                       ),
                                //                       constraints: BoxConstraints(
                                //                         maxWidth: 40.wm(context),
                                //                         maxHeight: 50.hm(context),
                                //                       ),
                                //                       border: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       enabledBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.gray163,width: 1),
                                //                       ),
                                //                       focusedBorder: OutlineInputBorder(
                                //                         borderRadius: BorderRadius.circular(8.rm(context)),
                                //                         borderSide: BorderSide(color: ColorUtils.blue192,width: 1),
                                //                       ),
                                //
                                //                     ),
                                //                   ),
                                //
                                //
                                //
                                //                 ],
                                //               ),
                                //
                                //
                                //               SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),
                                //
                                //
                                //               isOtpSubmit.value == false ?
                                //               Container(
                                //                 height: 48.hm(context),
                                //                 width: 300.wm(context),
                                //                 decoration: BoxDecoration(
                                //                   color: ColorUtils.blue192,
                                //                   borderRadius: BorderRadius.circular(8.rm(context)),
                                //                 ),
                                //                 child: TextButton(
                                //                   style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                //                   onPressed: () async {
                                //                     if(otp1.value.text == "" || otp2.value.text == "" || otp3.value.text == "" || otp4.value.text == "" || otp5.value.text == "" || otp6.value.text == "") {
                                //                       CustomSnackBar().errorCustomSnackBar(context: context, message: "Please fill the otp");
                                //                     } else {
                                //                       await SignUpController.checkLocalCreateAccountResponse().then((value) async {
                                //                         if(value?.data != null) {
                                //                           isOtpSubmit.value = true;
                                //                           Map<String,dynamic> data = {
                                //                             "email": value?.data?.user?.email,
                                //                             "otp": "${otp1.value.text}${otp2.value.text}${otp3.value.text}${otp4.value.text}${otp5.value.text}${otp6.value.text}",
                                //                             "verify_account": true
                                //                           };
                                //                           print(data);
                                //                           await SignUpController.getVerifyOtpResponse(
                                //                             data: data,
                                //                             onSuccess: (e) async {
                                //                               isOtpSubmit.value = false;
                                //                               CustomSnackBar().successCustomSnackBar(context: context, message: e);
                                //                               Get.back();
                                //                               showAdaptiveDialog(
                                //                                 context: context,
                                //                                 barrierDismissible: false,
                                //                                 builder: (context) {
                                //                                   return Padding(
                                //                                     padding: EdgeInsets.symmetric(
                                //                                       vertical: 271.vpmm(context),
                                //                                       horizontal: 16.hpmm(context),
                                //                                     ),
                                //                                     child: Container(
                                //                                       width: 358.wm(context),
                                //                                       height: 283.hm(context),
                                //                                       decoration: BoxDecoration(
                                //                                         color: ColorUtils.white255,
                                //                                         borderRadius: BorderRadius.circular(16.rm(context)),
                                //                                       ),
                                //                                       padding: EdgeInsets.symmetric(
                                //                                         vertical: 30.vpmm(context),
                                //                                         horizontal: 20.hpmm(context),
                                //                                       ),
                                //                                       child: Column(
                                //                                         mainAxisAlignment: MainAxisAlignment.center,
                                //                                         crossAxisAlignment: CrossAxisAlignment.center,
                                //                                         children: [
                                //
                                //
                                //                                           Container(
                                //                                             height: 64.hm(context),
                                //                                             width: 64.wm(context),
                                //                                             decoration: BoxDecoration(
                                //                                                 color: Colors.transparent
                                //                                             ),
                                //                                             child: FittedBox(
                                //                                               fit: BoxFit.cover,
                                //                                               child: Image.asset(
                                //                                                 ImagePathUtils.signUpScreenImagePath,
                                //                                                 fit: BoxFit.cover,
                                //                                               ),
                                //                                             ),
                                //                                           ),
                                //
                                //
                                //                                           SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),
                                //
                                //
                                //                                           Container(
                                //                                             width: 358.wm(context),
                                //                                             alignment: Alignment.center,
                                //                                             child: Text(
                                //                                               "Your account has been created successfully!".tr,
                                //                                               textAlign: TextAlign.center,
                                //                                               style: GoogleFonts.tajawal(
                                //                                                 fontWeight: FontWeight.w700,
                                //                                                 fontStyle: FontStyle.normal,
                                //                                                 fontSize: 18.spm(context),
                                //                                                 color: ColorUtils.black33,
                                //                                                 height: (35.hm(context) / 18.spm(context)),
                                //                                               ),
                                //                                             ),
                                //                                           ),
                                //
                                //                                           Container(
                                //                                             width: 358.wm(context),
                                //                                             alignment: Alignment.center,
                                //                                             child: Text(
                                //                                               "You can now log in and start ordering your favorite meals with ease.".tr,
                                //                                               textAlign: TextAlign.center,
                                //                                               style: GoogleFonts.tajawal(
                                //                                                 fontWeight: FontWeight.w500,
                                //                                                 fontStyle: FontStyle.normal,
                                //                                                 fontSize: 16.spm(context),
                                //                                                 color: ColorUtils.black33,
                                //                                                 height: (35.hm(context) / 16.spm(context)),
                                //                                               ),
                                //                                             ),
                                //                                           ),
                                //
                                //                                         ],
                                //                                       ),
                                //                                     ),
                                //                                   );
                                //                                 },
                                //                               );
                                //                               Future.delayed(Duration(seconds: 2),() async {
                                //                                 Get.back();
                                //                                 Get.off(()=>LoginScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                                //                               });
                                //                             },
                                //                             onFail: (e) {
                                //                               isOtpSubmit.value = false;
                                //                               CustomSnackBar().errorCustomSnackBar(context: context, message: e);
                                //                             },
                                //                             onExceptionFail: (e) {
                                //                               isOtpSubmit.value = false;
                                //                               CustomSnackBar().errorCustomSnackBar(context: context, message: e);
                                //                             },
                                //                           );
                                //                         }
                                //                       });
                                //                     }
                                //                   },
                                //                   child: Center(
                                //                     child: Text(
                                //                       "Verify Otp".tr,
                                //                       textAlign: TextAlign.center,
                                //                       style: GoogleFonts.tajawal(
                                //                         fontWeight: FontWeight.w700,
                                //                         fontStyle: FontStyle.normal,
                                //                         fontSize: 18.spm(context),
                                //                         color: ColorUtils.white255,
                                //                       ),
                                //                     ),
                                //                   ),
                                //                 ),
                                //               ) :
                                //               Container(
                                //                 height: 48.hm(context),
                                //                 width: 300.wm(context),
                                //                 decoration: BoxDecoration(
                                //                   color: Colors.transparent,
                                //                 ),
                                //                 child: Center(child: CircularProgressIndicator(),),
                                //               ),
                                //
                                //               SpacerWidget.spacerWidget(spaceHeight: 18.hm(context)),
                                //
                                //
                                //               Container(
                                //                 width: 358.wm(context),
                                //                 alignment: Alignment.center,
                                //                 child: Text(
                                //                   "Didn't receive the code?".tr,
                                //                   textAlign: TextAlign.center,
                                //                   style: GoogleFonts.tajawal(
                                //                     fontWeight: FontWeight.w700,
                                //                     fontStyle: FontStyle.normal,
                                //                     fontSize: 14.spm(context),
                                //                     color: ColorUtils.black33,
                                //                     height: (25.hm(context) / 14.spm(context)),
                                //                   ),
                                //                 ),
                                //               ),
                                //
                                //
                                //               timeCounter.value == 0 ?
                                //               Container(
                                //                 height: 20.hm(context),
                                //                 width: 358.wm(context),
                                //                 alignment: Alignment.center,
                                //                 child: isResendOtp.value == false ?
                                //                 TextButton(
                                //                   style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                //                   onPressed: () async {
                                //                     await SignUpController.checkLocalCreateAccountResponse().then((value) async {
                                //                       if(value?.data != null) {
                                //                         isResendOtp.value = true;
                                //                         Map<String,dynamic> data = {
                                //                           "email": value?.data?.user?.email,
                                //                         };
                                //                         print(data);
                                //                         await SignUpController.getResendOtpResponse(
                                //                           data: data,
                                //                           onSuccess: (e) async {
                                //                             timeCounter.value = 60;
                                //                             otp1.value.clear();
                                //                             otp2.value.clear();
                                //                             otp3.value.clear();
                                //                             otp4.value.clear();
                                //                             otp5.value.clear();
                                //                             otp6.value.clear();
                                //                             await otpTimer();
                                //                             isResendOtp.value = false;
                                //                             CustomSnackBar().successCustomSnackBar(context: context, message: e);
                                //                           },
                                //                           onFail: (e) {
                                //                             isResendOtp.value = false;
                                //                             CustomSnackBar().errorCustomSnackBar(context: context, message: e);
                                //                           },
                                //                           onExceptionFail: (e) {
                                //                             isResendOtp.value = false;
                                //                             CustomSnackBar().errorCustomSnackBar(context: context, message: e);
                                //                           },
                                //                         );
                                //                       }
                                //                     });
                                //                   },
                                //                   child: Text(
                                //                     "Resend Otp".tr,
                                //                     textAlign: TextAlign.center,
                                //                     style: GoogleFonts.tajawal(
                                //                       fontWeight: FontWeight.w500,
                                //                       fontStyle: FontStyle.normal,
                                //                       fontSize: 14.spm(context),
                                //                       color: ColorUtils.blue192,
                                //                       height: (25.hm(context) / 14.spm(context)),
                                //                     ),
                                //                   ),
                                //                 ) :
                                //                 Center(
                                //                   child: CircularProgressIndicator(),
                                //                 ),
                                //               ) :
                                //               Container(
                                //                 width: 358.wm(context),
                                //                 alignment: Alignment.center,
                                //                 child: Row(
                                //                   mainAxisAlignment: MainAxisAlignment.center,
                                //                   children: [
                                //                     Text(
                                //                       "Resend after".tr,
                                //                       textAlign: TextAlign.center,
                                //                       style: GoogleFonts.tajawal(
                                //                         fontWeight: FontWeight.w500,
                                //                         fontStyle: FontStyle.normal,
                                //                         fontSize: 14.spm(context),
                                //                         color: ColorUtils.black33,
                                //                         height: (25.hm(context) / 14.spm(context)),
                                //                       ),
                                //                     ),
                                //                     Text(
                                //                       "(${timeCounter.value}s)",
                                //                       textAlign: TextAlign.center,
                                //                       style: GoogleFonts.tajawal(
                                //                         fontWeight: FontWeight.w500,
                                //                         fontStyle: FontStyle.normal,
                                //                         fontSize: 14.spm(context),
                                //                         color: ColorUtils.black33,
                                //                         height: (25.hm(context) / 14.spm(context)),
                                //                       ),
                                //                     ),
                                //                   ],
                                //                 ),
                                //               ),
                                //
                                //             ],
                                //           ),
                                //         ),
                                //       ),
                                //     ));
                                //   },
                                // );
                              },
                              onFail: (e) async {
                                isSubmit.value = false;
                                CustomSnackBar().errorCustomSnackBar(context: context, message: e);
                              },
                              onExceptionFail: (e) async {
                                isSubmit.value = false;
                                CustomSnackBar().errorCustomSnackBar(context: context, message: e);
                              },
                            );
                          }
                        },
                        child: Center(
                          child: Text(
                            "Create account".tr,
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

                    SpacerWidget.spacerWidget(spaceHeight: 28.hm(context)),


                    Container(
                      width: 358.wm(context),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Already have an account? ".tr,
                          style: GoogleFonts.tajawal(
                            fontStyle: FontStyle.normal,
                            fontSize: 14.spm(context),
                            color: ColorUtils.black255,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: "Login ".tr,
                              style: GoogleFonts.tajawal(
                                fontStyle: FontStyle.normal,
                                fontSize: 14.spm(context),
                                color: ColorUtils.black51,
                                fontWeight: FontWeight.w500,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Get.off(()=>LoginScreen(),duration: Duration(milliseconds: 300),transition: Transition.fadeIn,preventDuplicates: false);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),


                    SpacerWidget.spacerWidget(spaceHeight: 28.hm(context)),






                  ],
                ),
              ),
            )


          ],
        ),
      ),
    ));
  }


}