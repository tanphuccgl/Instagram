class XFollow {
  Meta? meta;
  List<XUserData>? data;
  bool? success;
  int? status;

  XFollow({this.meta, this.data, this.success, this.status});

  XFollow.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      data = <XUserData>[];
      json['data'].forEach((v) {
        data!.add(XUserData.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
  }
  factory XFollow.empty() {
    return XFollow();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['status'] = status;
    return data;
  }
}

class Meta {
  int? total;
  int? pageSize;
  int? pageNumber;

  Meta({this.total, this.pageSize, this.pageNumber});

  Meta.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    pageSize = json['page_size'];
    pageNumber = json['page_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    data['page_size'] = pageSize;
    data['page_number'] = pageNumber;
    return data;
  }
}

class XUserData {
  int? id;
  IdAccountFollow? idAccountFollow;
  IdAccountFollowed? idAccountFollowed;
  String? createdAt;
  String? updatedAt;

  XUserData(
      {this.id,
      this.idAccountFollow,
      this.idAccountFollowed,
      this.createdAt,
      this.updatedAt});

  XUserData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idAccountFollow = json['IdAccountFollow'] != null
        ? IdAccountFollow.fromJson(json['IdAccountFollow'])
        : null;
    idAccountFollowed = json['IdAccountFollowed'] != null
        ? IdAccountFollowed.fromJson(json['IdAccountFollowed'])
        : null;
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
  }
  factory XUserData.empty() {
    return XUserData();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    if (idAccountFollow != null) {
      data['IdAccountFollow'] = idAccountFollow!.toJson();
    }
    if (idAccountFollowed != null) {
      data['IdAccountFollowed'] = idAccountFollowed!.toJson();
    }
    data['CreatedAt'] = createdAt;
    data['UpdatedAt'] = updatedAt;
    return data;
  }
}

class IdAccountFollow {
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

  IdAccountFollow(
      {this.id,
      this.phoneNumber,
      this.email,
      this.username,
      this.role,
      this.tokenResetPassword,
      this.isStatus,
      this.deleted,
      this.createdAt,
      this.updatedAt});

  IdAccountFollow.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class IdAccountFollowed {
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

  IdAccountFollowed(
      {this.id,
      this.phoneNumber,
      this.email,
      this.username,
      this.role,
      this.tokenResetPassword,
      this.isStatus,
      this.deleted,
      this.createdAt,
      this.updatedAt});

  IdAccountFollowed.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}
