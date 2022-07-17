import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/post_model.dart';

class GetPostRemoteDataSource {
  Future<XPost> getPost(int type, String idAccount) async {
    var value =
        await BaseApi.onGetApiWithToken(url: ApiUrl.getPost(type, idAccount));

    if (value.isSuccess) {
      var success = XPost.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<List<XPostData>> getPostHome(
    int type,
  ) async {
    var value = await BaseApi.onGetApiWithToken(
        url: ApiUrl.getPostHome(
      type,
    ));

    if (value.isSuccess) {
      var success = XPost.fromJson(json.decode(value.data ?? ""));

      return success.data!;
    } else {
      throw ServerException();
    }
  }
}
