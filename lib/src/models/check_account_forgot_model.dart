class XCheckAccountForgot {
  String? message;
  XCheckAccountForgotData? data;
  bool? success;
  int? status;

  XCheckAccountForgot({this.message, this.data, this.success, this.status});

  XCheckAccountForgot.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null
        ? XCheckAccountForgotData.fromJson(json['data'])
        : null;
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['success'] = success;
    data['status'] = status;
    return data;
  }
}

class XCheckAccountForgotData {
  String? id;
  String? phoneNumber;
  String? email;
  String? username;

  XCheckAccountForgotData(
      {this.id, this.phoneNumber, this.email, this.username});

  XCheckAccountForgotData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    phoneNumber = json['PhoneNumber'];
    email = json['Email'];
    username = json['Username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['PhoneNumber'] = phoneNumber;
    data['Email'] = email;
    data['Username'] = username;
    return data;
  }
}
