import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';

class RegisterRemoteDataSource {
  Future<BaseData> postRegister({
    required String username,
    required String password,
    required String fullName,
    required String email,
  }) async {
    var body = jsonEncode({
      'username': username,
      'password': password,
      'fullName': fullName,
      'email': email,
    });

    var value =
        await BaseApi.onPostApiNoToken(body: body, url: ApiUrl.register);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }
}
