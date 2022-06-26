import 'package:instagram/src/models/login_model.dart';
import 'package:instagram/src/models/result.dart';

abstract class AccountRepository {
  Future<XResult<XLoginData>> postLogin(
      {required String username, required String password});
}
