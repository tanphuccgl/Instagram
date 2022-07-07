import 'dart:io';

import 'package:instagram/src/core/api/profile/change_information.dart';
import 'package:instagram/src/core/api/profile/infomation_api.dart';
import 'package:instagram/src/core/api/profile/search_user_name.dart';
import 'package:instagram/src/core/api/profile/upload_avatar.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/infomation_any_user.dart';
import 'package:instagram/src/models/information_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/models/search_user_name_model.dart';
import 'package:instagram/src/repositories/profile/profile_repo.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  @override
  Future<XResult<XInformationData>> getInformation() async {
    try {
      var data = await InformationRemoteDataSource().getInformation();
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> putInformation({
    required String fullName,
    required String username,
    required String website,
    required String phoneNumber,
    required String bio,
  }) async {
    try {
      var data = await ChangeInformationRemoteDataSource().changeInformation(
        bio: bio,
        fullName: fullName,
        phoneNumber: phoneNumber,
        website: website,
        username: username,
      );
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<bool>> postAvatar(File file) async {
    try {
      var data = await UploadAvatarRemoteDataSource().uploadAvatar(file);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> deleteAvatar() async {
    try {
      var data = await UploadAvatarRemoteDataSource().removeAvatar();
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<List<XSearchUserNameData>>> getSearchUserName(
      String username) async {
    try {
      var data = await SearchRemoteDataSource().getSearchUserName(username);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<XInformationAnyUserData>> getInformationAnyUser(
      String idUser) async {
    try {
      var data =
          await InformationRemoteDataSource().getInformationAnyUser(idUser);

      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }
}
