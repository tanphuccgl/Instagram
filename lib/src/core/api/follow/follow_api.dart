import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/models/follow_user_model.dart';

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

  Future<BaseData> postFollow(String idUser) async {
    var value =
        await BaseApi.onPostApiWithToken(url: ApiUrl.postFollow(idUser));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> removeFollow(String idUser) async {
    var value =
        await BaseApi.onRemoveApiWithToken(url: ApiUrl.removeFollow(idUser));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<XFollowUser> getFollowersUser(String idAccount) async {
    var value = await BaseApi.onGetApiWithToken(
        url: ApiUrl.getFollowersUser(idAccount));
    if (value.isSuccess) {
      var success = XFollowUser.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<XFollowUser> getFollowingUser(String idAccount) async {
    var value = await BaseApi.onGetApiWithToken(
        url: ApiUrl.getFollowingUser(idAccount));
    if (value.isSuccess) {
      var success = XFollowUser.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }
}
