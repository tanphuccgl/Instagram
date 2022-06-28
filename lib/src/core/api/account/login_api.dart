import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/login_model.dart';

class LoginRemoteDataSource {
  Future<XLoginData> postLogin(String username, String password) async {
    var body = jsonEncode({'username': username, 'password': password});

    var value =
        await BaseApi.onPostApiNoToken(body: body, url: ApiUrl.postLogin);
    if (value.isSuccess) {
      var success = XLogin.fromJson(json.decode(value.data ?? ""));

      return success.data!;
    } else {
      throw ServerException();
    }
  }
}
