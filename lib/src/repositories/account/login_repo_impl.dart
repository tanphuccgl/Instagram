import 'package:instagram/src/core/api/account/check_account_api.dart';
import 'package:instagram/src/core/api/account/login_api.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/login_model.dart';
import 'package:instagram/src/models/result.dart';
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
  Future<XResult<BaseData>> checkUsername(String username) async {
    try {
      var data = await CheckAccountRemoteDataSource().checkUsername(username);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }
}
