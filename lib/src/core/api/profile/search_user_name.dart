import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/search_user_name_model.dart';

class SearchRemoteDataSource {
  Future<List<XSearchUserNameData>> getSearchUserName(String username) async {
    var value = await BaseApi.onGetApiWithToken(
        url: ApiUrl.getSearchUserName(username));
    if (value.isSuccess) {
      var success = XSearchUserName.fromJson(json.decode(value.data ?? ""));

      return success.data!;
    } else {
      throw ServerException();
    }
  }
}
