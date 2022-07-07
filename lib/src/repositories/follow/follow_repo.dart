import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/models/follow_user_model.dart';
import 'package:instagram/src/models/result.dart';

abstract class FollowRepository {
  Future<XResult<XFollow>> getFollowers();
  Future<XResult<XFollow>> getFollowing();
  Future<XResult<BaseData>> postFollow(String idUser);
  Future<XResult<BaseData>> removeFollow(String idUser);
  Future<XResult<XFollowUser>> getFollowersUser(String idAccount);
  Future<XResult<XFollowUser>> getFollowingUser(String idAccount);
}
