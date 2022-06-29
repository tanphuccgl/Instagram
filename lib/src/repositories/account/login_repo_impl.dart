import 'package:instagram/src/core/api/account/forgot_password_api.dart';
import 'package:instagram/src/core/api/account/login_api.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/check_account_forgot_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/models/login_model.dart';
import 'package:instagram/src/models/token_forgot_password_model.dart';
import 'package:instagram/src/repositories/account/login_repo.dart';

class AccountRepositoryImpl extends AccountRepository {
  @override
  Future<XResult<XLoginData>> postLogin(
      {required String username, required String password}) async {
    try {
      var data = await LoginRemoteDataSource().postLogin(username, password);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> postForgotPassword(String username) async {
    try {
      var data =
          await ForgotPasswordRemoteDataSource().forgotPassword(username);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<XTokenForgotPassword>> postTokenForgotPassword(
      {required String username, required String token}) async {
    try {
      var data = await ForgotPasswordRemoteDataSource()
          .tokenForgotPasswordEmail(username: username, token: token);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> putChangePassword(
      {required String newPassword, required String token}) async {
    try {
      var data = await ForgotPasswordRemoteDataSource()
          .createNewPassword(newPassword: newPassword, token: token);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<XCheckAccountForgotData>> postCheckAccountForgot(
      String username) async {
    try {
      var data =
          await ForgotPasswordRemoteDataSource().checkAccountForgot(username);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }
}
