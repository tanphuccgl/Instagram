class XPost {
  Meta? meta;
  List<XPostData>? data;
  bool? success;
  int? status;

  XPost({this.meta, this.data, this.success, this.status});

  XPost.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      data = <XPostData>[];
      json['data'].forEach((v) {
        data!.add(XPostData.fromJson(v));
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

class XPostData {
  String? id;
  IdAccount? idAccount;
  String? description;
  List<Files>? files;
  int? type;
  bool? turnOffComment;
  bool? hideCountReaction;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  IdProfie? idProfie;
  int? likeCount;
  int? totalComment;
  bool? isReaction;

  XPostData(
      {this.id,
      this.idAccount,
      this.description,
      this.files,
      this.type,
      this.turnOffComment,
      this.hideCountReaction,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.idProfie,
      this.likeCount,
      this.totalComment,
      this.isReaction});

  XPostData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idAccount = json['IdAccount'] != null
        ? IdAccount.fromJson(json['IdAccount'])
        : null;
    description = json['Description'];
    if (json['Files'] != null) {
      files = <Files>[];
      json['Files'].forEach((v) {
        files!.add(Files.fromJson(v));
      });
    }
    type = json['Type'];
    turnOffComment = json['TurnOffComment'];
    hideCountReaction = json['HideCountReaction'];
    deleted = json['Deleted'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    idProfie =
        json['IdProfie'] != null ? IdProfie.fromJson(json['IdProfie']) : null;
    likeCount = json['LikeCount'];
    totalComment = json['TotalComment'];
    isReaction = json['IsReaction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    if (idAccount != null) {
      data['IdAccount'] = idAccount!.toJson();
    }
    data['Description'] = description;
    if (files != null) {
      data['Files'] = files!.map((v) => v.toJson()).toList();
    }
    data['Type'] = type;
    data['TurnOffComment'] = turnOffComment;
    data['HideCountReaction'] = hideCountReaction;
    data['Deleted'] = deleted;
    data['CreatedAt'] = createdAt;
    data['UpdatedAt'] = updatedAt;
    if (idProfie != null) {
      data['IdProfie'] = idProfie!.toJson();
    }
    data['LikeCount'] = likeCount;
    data['TotalComment'] = totalComment;
    data['IsReaction'] = isReaction;
    return data;
  }
}

class IdAccount {
  String? sId;
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
      {this.sId,
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
    sId = json['_id'];
    phoneNumber = json['PhoneNumber'];
    email = json['Email'];
    username = json['Username'];
    role = json['Role'];
    tokenResetPassword = json['TokenResetPassword'];
    isStatus = json['IsStatus'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['PhoneNumber'] = phoneNumber;
    data['Email'] = email;
    data['Username'] = username;
    data['Role'] = role;
    data['TokenResetPassword'] = tokenResetPassword;
    data['IsStatus'] = isStatus;
    data['deleted'] = deleted;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class Files {
  String? fieldname;
  String? originalname;
  String? encoding;
  String? mimetype;
  String? destination;
  String? filename;
  String? path;
  int? size;

  Files(
      {this.fieldname,
      this.originalname,
      this.encoding,
      this.mimetype,
      this.destination,
      this.filename,
      this.path,
      this.size});

  Files.fromJson(Map<String, dynamic> json) {
    fieldname = json['fieldname'];
    originalname = json['originalname'];
    encoding = json['encoding'];
    mimetype = json['mimetype'];
    destination = json['destination'];
    filename = json['filename'];
    path = json['path'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fieldname'] = fieldname;
    data['originalname'] = originalname;
    data['encoding'] = encoding;
    data['mimetype'] = mimetype;
    data['destination'] = destination;
    data['filename'] = filename;
    data['path'] = path;
    data['size'] = size;
    return data;
  }
}

class IdProfie {
  int? iId;
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
  int? iV;

  IdProfie(
      {this.iId,
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
      this.iV});

  IdProfie.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    idAccount = json['IdAccount'];
    fullName = json['FullName'];
    phoneNumber = json['PhoneNumber'];
    website = json['Website'];
    gender = json['Gender'];
    dob = json['Dob'];
    bio = json['Bio'];
    avartarUrl = json['AvartarUrl'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = iId;
    data['IdAccount'] = idAccount;
    data['FullName'] = fullName;
    data['PhoneNumber'] = phoneNumber;
    data['Website'] = website;
    data['Gender'] = gender;
    data['Dob'] = dob;
    data['Bio'] = bio;
    data['AvartarUrl'] = avartarUrl;
    data['deleted'] = deleted;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
