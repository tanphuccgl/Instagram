import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/check_account_forgot_model.dart';
import 'package:instagram/src/models/check_account_model.dart';
import 'package:instagram/src/models/login_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/models/token_forgot_password_model.dart';

abstract class AccountRepository {
  Future<XResult<XLoginData>> postLogin(
      {required String username, required String password});

  Future<XResult<XCheckAccount>> checkUsername(String username);

  Future<XResult<BaseData>> checkPhone(String phone);

  Future<XResult<BaseData>> checkEmail(String email);

  Future<XResult<BaseData>> postForgotPassword(String username);

  Future<XResult<XTokenForgotPassword>> postTokenForgotPassword(
      {required String username, required String token});

  Future<XResult<BaseData>> putChangePassword(
      {required String newPassword, required String token});

  Future<XResult<XCheckAccountForgotData>> postCheckAccountForgot(
      String username);

  Future<XResult<BaseData>> postRegister({
    required String username,
    required String password,
    required String fullName,
    required String email,
  });
}
