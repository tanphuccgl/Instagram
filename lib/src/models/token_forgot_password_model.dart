class XTokenForgotPassword {
  String? message;
  bool? success;
  int? status;
  String? token;

  XTokenForgotPassword({this.message, this.success, this.status, this.token});

  XTokenForgotPassword.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    success = json['success'];
    status = json['status'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['success'] = success;
    data['status'] = status;
    data['token'] = token;
    return data;
  }
}
