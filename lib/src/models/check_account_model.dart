class XCheckAccount {
  bool? success;
  int? status;
  String? message;
  List<String>? data;

  XCheckAccount({this.success, this.status, this.message, this.data});

  XCheckAccount.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    data = json['data'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['status'] = status;
    data['message'] = message;
    data['data'] = this.data;
    return data;
  }
}
