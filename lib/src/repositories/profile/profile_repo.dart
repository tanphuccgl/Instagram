import 'dart:io';

import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/information_model.dart';
import 'package:instagram/src/models/result.dart';

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
}
