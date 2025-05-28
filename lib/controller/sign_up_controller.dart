import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import '../model/model.dart';
import 'package:rahatak_food_rider_app/controller/controller.dart';

class SignUpController {

  static Future<void> getCreateAccountResponse({
    required Map<String,dynamic> data,
    required File image,
    required File id,
    required File drivingLicense,
    required File medicalExamination,
    required Function onSuccess,
    required Function onFail,
    required Function onExceptionFail,
  }) async {
    try {


      String? mimeTypeImage = image.path == "" ? "" : CustomMimeType.getMimeType(image.path);
      String? mimeTypeId = id.path == "" ? "" : CustomMimeType.getMimeType(id.path);
      String? mimeTypeDrivingLicense = drivingLicense.path == "" ? "" : CustomMimeType.getMimeType(drivingLicense.path);
      String? mimeTypeMedicalExamination = medicalExamination.path == "" ? "" : CustomMimeType.getMimeType(medicalExamination.path);
      print(image.path);


      print(jsonEncode(data));



      dio.FormData formData = dio.FormData.fromMap({
        "data": jsonEncode(data),
        "image": image.path != "" ? await dio.MultipartFile.fromFile(image.path,filename: image.path.split('/').last,contentType: dio.DioMediaType(mimeTypeImage.split('/').first,mimeTypeImage.split('/').last)) : "",
        "id": id.path != "" ? await dio.MultipartFile.fromFile(id.path,filename: id.path.split('/').last,contentType: dio.DioMediaType(mimeTypeId.split('/').first,mimeTypeId.split('/').last)) : "",
        "driving_license": drivingLicense.path != "" ? await dio.MultipartFile.fromFile(drivingLicense.path,filename: drivingLicense.path.split('/').last,contentType: dio.DioMediaType(mimeTypeDrivingLicense.split('/').first,mimeTypeDrivingLicense.split('/').last)) : "",
        "medical_examination": medicalExamination.path != "" ? await dio.MultipartFile.fromFile(medicalExamination.path,filename: medicalExamination.path.split('/').last,contentType: dio.DioMediaType(mimeTypeMedicalExamination.split('/').first,mimeTypeMedicalExamination.split('/').last)) : "",
      });


      var response = await dio.Dio().post(
        "${AppApiUrlController.appApiUrlController()}/auth/rider-sign-up",
        options: dio.Options(
          headers: <String,String>{
            'Content-Type': 'multipart/form-data',
          },
        ),
        data: formData,
      );
      print(jsonEncode(response.data));
      if(response.statusCode == 200 || response.statusCode == 201) {
        await AppLocalStorageController.setSharedPreferencesString(key: "Sign_up_response", stringValue: jsonEncode(response.data));
        onSuccess(response.data["message"]);
      } else {
        onFail(response.data["message"]);
      }
    } on dio.DioException catch (e) {
      print(e.response?.data);
      onExceptionFail(e.response?.data["message"]);
    }
  }


  static Future<RegistrationResponseModel?> checkLocalCreateAccountResponse() async {
    RegistrationResponseModel? registrationResponseModel;
    await AppLocalStorageController.getSharedPreferencesString(key: "Sign_up_response").then((value) {
      if(value == null) {
        registrationResponseModel = RegistrationResponseModel();
      } else {
        registrationResponseModel = RegistrationResponseModel.fromJson(jsonDecode(value));
      }
    });
    return registrationResponseModel;
  }


  static Future<void> getResendOtpResponse({
    required Map<String,dynamic> data,
    required Function onSuccess,
    required Function onFail,
    required Function onExceptionFail,
  }) async {
    try {

      var response = await dio.Dio().post(
        "${AppApiUrlController.appApiUrlController()}/auth/send-otp",
        options: dio.Options(
          headers: <String,String>{
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
        data: jsonEncode(data),
      );
      print(jsonEncode(response.data));
      if(response.statusCode == 200 || response.statusCode == 201) {
        onSuccess(response.data["message"]);
      } else {
        onFail(response.data["message"]);
      }
    } on dio.DioException catch (e) {
      onExceptionFail(e.response?.data["message"]);
    }
  }


  static Future<void> getVerifyOtpResponse({
    required Map<String,dynamic> data,
    required Function onSuccess,
    required Function onFail,
    required Function onExceptionFail,
  }) async {
    try {

      var response = await dio.Dio().post(
        "${AppApiUrlController.appApiUrlController()}/auth/verify-otp",
        options: dio.Options(
          headers: <String,String>{
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
        data: jsonEncode(data),
      );
      print(jsonEncode(response.data));
      if(response.statusCode == 200 || response.statusCode == 201) {
        onSuccess(response.data["message"]);
      } else {
        onFail(response.data["message"]);
      }
    } on dio.DioException catch (e) {
      onExceptionFail(e.response?.data["message"]);
    }
  }




}