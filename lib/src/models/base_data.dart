class BaseData {
  String? message;
  bool? success;
  int? status;

  BaseData({this.message, this.success, this.status});

  BaseData.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['success'] = success;
    data['status'] = status;
    return data;
  }
}
