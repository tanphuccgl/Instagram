class BaseData {
  int? status;
  bool? success;
  String? message;

  BaseData({this.status, this.success, this.message});

  BaseData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['success'] = success;
    data['message'] = message;
    return data;
  }
}
