import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/check_account_forgot_model.dart';
import 'package:instagram/src/models/token_forgot_password_model.dart';

class ForgotPasswordRemoteDataSource {
  Future<BaseData> forgotPassword(String username) async {
    var body = jsonEncode({'username': username});

    var value =
        await BaseApi.onPostApiNoToken(body: body, url: ApiUrl.forgotPassword);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<XTokenForgotPassword> tokenForgotPasswordEmail(
      {required String username, required String token}) async {
    var body = jsonEncode({
      'username': username,
      "token": token,
    });

    var value = await BaseApi.onPostApiNoToken(
        body: body, url: ApiUrl.tokenForgotPasswordEmail);
    if (value.isSuccess) {
      var success =
          XTokenForgotPassword.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> createNewPassword(
      {required String newPassword, required String token}) async {
    var body = jsonEncode({
      'newPassword': newPassword,
    });

    var value = await BaseApi.onPutApiWithTokenOther(
        token: token, body: body, url: ApiUrl.createNewPassword);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<XCheckAccountForgotData> checkAccountForgot(String username) async {
    var body = jsonEncode({
      'username': username,
    });

    var value = await BaseApi.onPostApiNoToken(
        body: body, url: ApiUrl.checkAccountForgot);
    if (value.isSuccess) {
      var success = XCheckAccountForgot.fromJson(json.decode(value.data ?? ""));

      return success.data!;
    } else {
      throw ServerException();
    }
  }
}
