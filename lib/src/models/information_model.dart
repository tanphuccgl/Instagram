class XInformation {
  bool? success;
  int? status;
  XInformationData? data;

  XInformation({this.success, this.status, this.data});

  XInformation.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    data =
        json['data'] != null ? XInformationData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class XInformationData {
  int? id;
  IdAccount? idAccount;
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
  int? totalPeopleYouFollowed;
  int? totalPeopleFollowedYou;

  XInformationData(
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
      this.updatedAt,
      this.totalPeopleYouFollowed,
      this.totalPeopleFollowedYou});

  XInformationData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idAccount = json['IdAccount'] != null
        ? IdAccount.fromJson(json['IdAccount'])
        : null;
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
    totalPeopleYouFollowed = json['TotalPeopleYouFollowed'];
    totalPeopleFollowedYou = json['TotalPeopleFollowedYou'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    if (idAccount != null) {
      data['IdAccount'] = idAccount!.toJson();
    }
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
    data['TotalPeopleYouFollowed'] = totalPeopleYouFollowed;
    data['TotalPeopleFollowedYou'] = totalPeopleFollowedYou;
    return data;
  }
}

class IdAccount {
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

  IdAccount(
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

  IdAccount.fromJson(Map<String, dynamic> json) {
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
