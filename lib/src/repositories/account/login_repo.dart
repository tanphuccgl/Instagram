import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/check_account_forgot_model.dart';
import 'package:instagram/src/models/login_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/models/token_forgot_password_model.dart';

abstract class AccountRepository {
  Future<XResult<XLoginData>> postLogin(
      {required String username, required String password});
  Future<XResult<BaseData>> checkUsername(String username);

  Future<XResult<BaseData>> postForgotPassword(String username);
  Future<XResult<XTokenForgotPassword>> postTokenForgotPassword(
      {required String username, required String token});
  Future<XResult<BaseData>> putChangePassword(
      {required String newPassword, required String token});
  Future<XResult<XCheckAccountForgotData>> postCheckAccountForgot(
      String username);
}
