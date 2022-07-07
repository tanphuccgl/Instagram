import 'dart:io';

import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/infomation_any_user.dart';
import 'package:instagram/src/models/information_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/models/search_user_name_model.dart';

abstract class ProfileRepository {
  Future<XResult<XInformationData>> getInformation();
  Future<XResult<BaseData>> putInformation({
    required String fullName,
    required String username,
    required String website,
    required String phoneNumber,
    required String bio,
  });
  Future<XResult<bool>> postAvatar(File file);
  Future<XResult<BaseData>> deleteAvatar();
  Future<XResult<List<XSearchUserNameData>>> getSearchUserName(String username);
  Future<XResult<XInformationAnyUserData>> getInformationAnyUser(String idUser);
}
