import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';

class CheckAccountRemoteDataSource {
  Future<BaseData> checkUsername(String username) async {
    var value =
        await BaseApi.onGetApiNoToken(url: ApiUrl.checkUsername(username));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }
}
