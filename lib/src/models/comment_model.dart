class XComment {
  Meta? meta;
  List<XCommentData>? data;
  bool? success;
  int? status;

  XComment({this.meta, this.data, this.success, this.status});

  XComment.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      data = <XCommentData>[];
      json['data'].forEach((v) {
        data!.add(XCommentData.fromJson(v));
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

class XCommentData {
  String? id;
  IdAccount? idAccount;
  String? idPost;
  String? description;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  bool? isReaction;
  IdProfie? idProfie;
  int? totalReact;
  List<Reaction>? reaction;

  XCommentData(
      {this.id,
      this.idAccount,
      this.idPost,
      this.description,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.isReaction,
      this.idProfie,
      this.totalReact,
      this.reaction});

  XCommentData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idAccount = json['IdAccount'] != null
        ? IdAccount.fromJson(json['IdAccount'])
        : null;
    idPost = json['IdPost'];
    description = json['Description'];
    deleted = json['Deleted'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    isReaction = json['IsReaction'];
    idProfie =
        json['IdProfie'] != null ? IdProfie.fromJson(json['IdProfie']) : null;
    totalReact = json['TotalReact'];
    if (json['Reaction'] != null) {
      reaction = <Reaction>[];
      json['Reaction'].forEach((v) {
        reaction!.add(Reaction.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    if (idAccount != null) {
      data['IdAccount'] = idAccount!.toJson();
    }
    data['IdPost'] = idPost;
    data['Description'] = description;
    data['Deleted'] = deleted;
    data['CreatedAt'] = createdAt;
    data['UpdatedAt'] = updatedAt;
    data['IsReaction'] = isReaction;
    if (idProfie != null) {
      data['IdProfie'] = idProfie!.toJson();
    }
    data['TotalReact'] = totalReact;
    if (reaction != null) {
      data['Reaction'] = reaction!.map((v) => v.toJson()).toList();
    }
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

class IdProfie {
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

  IdProfie(
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

  IdProfie.fromJson(Map<String, dynamic> json) {
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

class Reaction {
  int? id;
  IdAccount? idAccount;
  String? idComment;
  String? type;
  bool? deleted;
  String? createdAt;
  String? updatedAt;

  Reaction(
      {this.id,
      this.idAccount,
      this.idComment,
      this.type,
      this.deleted,
      this.createdAt,
      this.updatedAt});

  Reaction.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idAccount = json['IdAccount'] != null
        ? IdAccount.fromJson(json['IdAccount'])
        : null;
    idComment = json['IdComment'];
    type = json['Type'];
    deleted = json['Deleted'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    if (idAccount != null) {
      data['IdAccount'] = idAccount!.toJson();
    }
    data['IdComment'] = idComment;
    data['Type'] = type;
    data['Deleted'] = deleted;
    data['CreatedAt'] = createdAt;
    data['UpdatedAt'] = updatedAt;
    return data;
  }
}
