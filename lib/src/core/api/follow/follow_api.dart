import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/follow_model.dart';

class FollowRemoteDataSource {
  Future<XFollow> getFollowers() async {
    var value = await BaseApi.onGetApiWithToken(url: ApiUrl.getFollowers);
    if (value.isSuccess) {
      var success = XFollow.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<XFollow> getFollowing() async {
    var value = await BaseApi.onGetApiWithToken(url: ApiUrl.getFollowing);
    if (value.isSuccess) {
      var success = XFollow.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }
}
