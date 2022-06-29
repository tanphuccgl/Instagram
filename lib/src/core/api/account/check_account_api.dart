import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/check_account_model.dart';

class CheckAccountRemoteDataSource {
  Future<XCheckAccount> checkUsername(String username) async {
    var value =
        await BaseApi.onGetApiNoToken(url: ApiUrl.checkUsername(username));
    if (value.isSuccess) {
      var success = XCheckAccount.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> checkPhone(String phone) async {
    var value =
        await BaseApi.onGetApiNoToken(url: ApiUrl.checkPhoneNumber(phone));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> checkEmail(String email) async {
    var value = await BaseApi.onGetApiNoToken(url: ApiUrl.checkEmail(email));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }
}
