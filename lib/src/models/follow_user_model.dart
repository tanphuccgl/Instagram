class XFollowUser {
  Meta? meta;
  List<XFollowUserData>? data;
  bool? success;
  int? status;

  XFollowUser({this.meta, this.data, this.success, this.status});

  XFollowUser.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      data = <XFollowUserData>[];
      json['data'].forEach((v) {
        data!.add(XFollowUserData.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
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

class XFollowUserData {
  int? id;
  IdAccountFollow? idAccountFollow;
  IdAccountFollowed? idAccountFollowed;
  String? createdAt;
  String? updatedAt;
  bool? isYouFollow;

  XFollowUserData(
      {this.id,
      this.idAccountFollow,
      this.idAccountFollowed,
      this.createdAt,
      this.updatedAt,
      this.isYouFollow});

  XFollowUserData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idAccountFollow = json['IdAccountFollow'] != null
        ? IdAccountFollow.fromJson(json['IdAccountFollow'])
        : null;
    idAccountFollowed = json['IdAccountFollowed'] != null
        ? IdAccountFollowed.fromJson(json['IdAccountFollowed'])
        : null;
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    isYouFollow = json['IsYouFollow'];
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
    data['IsYouFollow'] = isYouFollow;
    return data;
  }
}

class IdAccountFollow {
  String? id;
  String? phoneNumber;
  String? email;
  String? username;
  String? role;
  bool? isStatus;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  IdProfile? idProfile;

  IdAccountFollow(
      {this.id,
      this.phoneNumber,
      this.email,
      this.username,
      this.role,
      this.isStatus,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.idProfile});

  IdAccountFollow.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    phoneNumber = json['PhoneNumber'];
    email = json['Email'];
    username = json['Username'];
    role = json['Role'];
    isStatus = json['IsStatus'];
    deleted = json['Deleted'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    idProfile = json['IdProfile'] != null
        ? IdProfile.fromJson(json['IdProfile'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['PhoneNumber'] = phoneNumber;
    data['Email'] = email;
    data['Username'] = username;
    data['Role'] = role;
    data['IsStatus'] = isStatus;
    data['Deleted'] = deleted;
    data['CreatedAt'] = createdAt;
    data['UpdatedAt'] = updatedAt;
    if (idProfile != null) {
      data['IdProfile'] = idProfile!.toJson();
    }
    return data;
  }
}

class IdProfile {
  int? id;
  String? idAccount;
  String? fullName;
  String? phoneNumber;
  String? website;
  bool? gender;
  String? dob;
  String? bio;
  String? avartarUrl;
  bool? deleted;
  String? createdAt;
  String? updatedAt;

  IdProfile(
      {this.id,
      this.idAccount,
      this.fullName,
      this.phoneNumber,
      this.website,
      this.gender,
      this.dob,
      this.bio,
      this.avartarUrl,
      this.deleted,
      this.createdAt,
      this.updatedAt});

  IdProfile.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idAccount = json['IdAccount'];
    fullName = json['FullName'];
    phoneNumber = json['PhoneNumber'];
    website = json['Website'];
    gender = json['Gender'];
    dob = json['Dob'];
    bio = json['Bio'];
    avartarUrl = json['AvartarUrl'];
    deleted = json['Deleted'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['IdAccount'] = idAccount;
    data['FullName'] = fullName;
    data['PhoneNumber'] = phoneNumber;
    data['Website'] = website;
    data['Gender'] = gender;
    data['Dob'] = dob;
    data['Bio'] = bio;
    data['AvartarUrl'] = avartarUrl;
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
  bool? isStatus;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  IdProfile? idProfile;

  IdAccountFollowed(
      {this.id,
      this.phoneNumber,
      this.email,
      this.username,
      this.role,
      this.isStatus,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.idProfile});

  IdAccountFollowed.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    phoneNumber = json['PhoneNumber'];
    email = json['Email'];
    username = json['Username'];
    role = json['Role'];
    isStatus = json['IsStatus'];
    deleted = json['Deleted'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    idProfile = json['IdProfile'] != null
        ? IdProfile.fromJson(json['IdProfile'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['PhoneNumber'] = phoneNumber;
    data['Email'] = email;
    data['Username'] = username;
    data['Role'] = role;
    data['IsStatus'] = isStatus;
    data['Deleted'] = deleted;
    data['CreatedAt'] = createdAt;
    data['UpdatedAt'] = updatedAt;
    if (idProfile != null) {
      data['IdProfile'] = idProfile!.toJson();
    }
    return data;
  }
}
