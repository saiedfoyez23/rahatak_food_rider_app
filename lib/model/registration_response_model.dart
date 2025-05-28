class RegistrationResponseModel {
  bool? success;
  String? message;
  RegistrationResponse? data;

  RegistrationResponseModel({this.success, this.message, this.data});

  RegistrationResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new RegistrationResponse.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class RegistrationResponse {
  User? user;

  RegistrationResponse({this.user});

  RegistrationResponse.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  Location? location;
  var sId;
  var email;
  var iV;
  var balance;
  var bankAccount;
  var contact;
  List<String>? coveredAreas;
  var createdAt;
  var drivingLicense;
  var idCard;
  var image;
  var isActive;
  var isAvailable;
  var isDeleted;
  var medicalExamination;
  var name;
  var ratings;
  var states;
  var updatedAt;
  var vehicleNumber;

  User({
    this.location,
    this.sId,
    this.email,
    this.iV,
    this.balance,
    this.bankAccount,
    this.contact,
    this.coveredAreas,
    this.createdAt,
    this.drivingLicense,
    this.idCard,
    this.image,
    this.isActive,
    this.isAvailable,
    this.isDeleted,
    this.medicalExamination,
    this.name,
    this.ratings,
    this.states,
    this.updatedAt,
    this.vehicleNumber
  });

  User.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    sId = json['_id'];
    email = json['email'];
    iV = json['__v'];
    balance = json['balance'];
    bankAccount = json['bank_account'];
    contact = json['contact'];
    coveredAreas = json['covered_areas'].cast<String>();
    createdAt = json['createdAt'];
    drivingLicense = json['driving_license'];
    idCard = json['id_card'];
    image = json['image'];
    isActive = json['is_active'];
    isAvailable = json['is_available'];
    isDeleted = json['is_deleted'];
    medicalExamination = json['medical_examination'];
    name = json['name'];
    ratings = json['ratings'];
    states = json['states'];
    updatedAt = json['updatedAt'];
    vehicleNumber = json['vehicle_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['_id'] = this.sId;
    data['email'] = this.email;
    data['__v'] = this.iV;
    data['balance'] = this.balance;
    data['bank_account'] = this.bankAccount;
    data['contact'] = this.contact;
    data['covered_areas'] = this.coveredAreas;
    data['createdAt'] = this.createdAt;
    data['driving_license'] = this.drivingLicense;
    data['id_card'] = this.idCard;
    data['image'] = this.image;
    data['is_active'] = this.isActive;
    data['is_available'] = this.isAvailable;
    data['is_deleted'] = this.isDeleted;
    data['medical_examination'] = this.medicalExamination;
    data['name'] = this.name;
    data['ratings'] = this.ratings;
    data['states'] = this.states;
    data['updatedAt'] = this.updatedAt;
    data['vehicle_number'] = this.vehicleNumber;
    return data;
  }
}

class Location {
  var type;
  List<double>? coordinates;

  Location({this.type, this.coordinates});

  Location.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}
