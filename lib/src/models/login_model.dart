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
  String? id;
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
      {this.id,
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

  XLoginData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    phoneNumber = json['PhoneNumber'];
    email = json['Email'];
    username = json['Username'];
    role = json['Role'];
    tokenResetPassword = json['TokenResetPassword'];
    isStatus = json['IsStatus'];
    deleted = json['Deleted'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['PhoneNumber'] = phoneNumber;
    data['Email'] = email;
    data['Username'] = username;
    data['Role'] = role;
    data['TokenResetPassword'] = tokenResetPassword;
    data['IsStatus'] = isStatus;
    data['Deleted'] = deleted;
    data['CreatedAt'] = createdAt;
    data['UpdatedAt'] = updatedAt;
    data['Token'] = token;
    return data;
  }
}
