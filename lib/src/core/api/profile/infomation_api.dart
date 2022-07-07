import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/infomation_any_user.dart';
import 'package:instagram/src/models/information_model.dart';

class InformationRemoteDataSource {
  Future<XInformationData> getInformation() async {
    var value = await BaseApi.onGetApiWithToken(url: ApiUrl.getInformation);
    if (value.isSuccess) {
      var success = XInformation.fromJson(json.decode(value.data ?? ""));

      return success.data!;
    } else {
      throw ServerException();
    }
  }

  Future<XInformationAnyUserData> getInformationAnyUser(String idUser) async {
    var value =
        await BaseApi.onGetApiWithToken(url: ApiUrl.getProfileAnyUser(idUser));

    if (value.isSuccess) {
      var success = XInformationAnyUser.fromJson(json.decode(value.data ?? ""));

      return success.data!;
    } else {
      throw ServerException();
    }
  }
}
