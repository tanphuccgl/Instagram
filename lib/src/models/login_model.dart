class XLogin {
  String? message;
  bool? success;
  int? status;
  XLoginData? data;

  XLogin({this.message, this.success, this.status, this.data});

  XLogin.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    success = json['success'];
    status = json['status'];
    data = json['data'] != null ? XLoginData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['success'] = success;
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class XLoginData {
  FullName? fullName;
  Address? address;
  int? iId;
  String? dob;
  bool? gender;
  String? phoneNumber;
  String? email;
  String? username;
  String? role;
  String? tokenResetPassword;
  bool? isStatus;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  String? token;

  XLoginData(
      {this.fullName,
      this.address,
      this.iId,
      this.dob,
      this.gender,
      this.phoneNumber,
      this.email,
      this.username,
      this.role,
      this.tokenResetPassword,
      this.isStatus,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.token});
  factory XLoginData.empty() {
    return XLoginData();
  }

  XLoginData.fromJson(Map<String, dynamic> json) {
    fullName =
        json['fullName'] != null ? FullName.fromJson(json['fullName']) : null;
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    iId = json['_id'];
    dob = json['dob'];
    gender = json['gender'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    username = json['username'];
    role = json['role'];
    tokenResetPassword = json['tokenResetPassword'];
    isStatus = json['isStatus'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (fullName != null) {
      data['fullName'] = fullName!.toJson();
    }
    if (address != null) {
      data['address'] = address!.toJson();
    }
    data['_id'] = iId;
    data['dob'] = dob;
    data['gender'] = gender;
    data['phoneNumber'] = phoneNumber;
    data['email'] = email;
    data['username'] = username;
    data['role'] = role;
    data['tokenResetPassword'] = tokenResetPassword;
    data['isStatus'] = isStatus;
    data['deleted'] = deleted;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['token'] = token;
    return data;
  }
}

class FullName {
  String? firstName;
  String? lastName;

  FullName({this.firstName, this.lastName});

  FullName.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    return data;
  }
}

class Address {
  String? detail;
  String? province;
  String? nation;

  Address({this.detail, this.province, this.nation});

  Address.fromJson(Map<String, dynamic> json) {
    detail = json['detail'];
    province = json['province'];
    nation = json['nation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['detail'] = detail;
    data['province'] = province;
    data['nation'] = nation;
    return data;
  }
}
