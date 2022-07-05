class XSearchUserName {
  bool? success;
  int? status;
  List<XSearchUserNameData>? data;

  XSearchUserName({this.success, this.status, this.data});

  XSearchUserName.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    if (json['data'] != null) {
      data = <XSearchUserNameData>[];
      json['data'].forEach((v) {
        data!.add(XSearchUserNameData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class XSearchUserNameData {
  String? id;
  String? phoneNumber;
  String? email;
  String? username;
  String? role;
  String? tokenResetPassword;
  bool? isStatus;
  IdProfile? idProfile;

  XSearchUserNameData(
      {this.id,
      this.phoneNumber,
      this.email,
      this.username,
      this.role,
      this.tokenResetPassword,
      this.isStatus,
      this.idProfile});

  XSearchUserNameData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    phoneNumber = json['PhoneNumber'];
    email = json['Email'];
    username = json['Username'];
    role = json['Role'];
    tokenResetPassword = json['TokenResetPassword'];
    isStatus = json['IsStatus'];
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
    data['TokenResetPassword'] = tokenResetPassword;
    data['IsStatus'] = isStatus;
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
      this.deleted});

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
    return data;
  }
}
