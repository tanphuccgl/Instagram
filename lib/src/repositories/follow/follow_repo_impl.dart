import 'package:instagram/src/core/api/follow/follow_api.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/models/follow_user_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/repositories/follow/follow_repo.dart';

class FollowRepositoryImpl extends FollowRepository {
  @override
  Future<XResult<XFollow>> getFollowers() async {
    try {
      var data = await FollowRemoteDataSource().getFollowers();
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<XFollow>> getFollowing() async {
    try {
      var data = await FollowRemoteDataSource().getFollowing();
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> postFollow(String idUser) async {
    try {
      var data = await FollowRemoteDataSource().postFollow(idUser);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> removeFollow(String idUser) async {
    try {
      var data = await FollowRemoteDataSource().removeFollow(idUser);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<XFollowUser>> getFollowersUser(String idAccount) async {
    try {
      var data = await FollowRemoteDataSource().getFollowersUser(idAccount);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<XFollowUser>> getFollowingUser(String idAccount) async {
    try {
      var data = await FollowRemoteDataSource().getFollowingUser(idAccount);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }
}
