import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/models/result.dart';

abstract class FollowRepository {
  Future<XResult<XFollow>> getFollowers();
  Future<XResult<XFollow>> getFollowing();
  Future<XResult<BaseData>> postFollow(String idUser);
  Future<XResult<BaseData>> removeFollow(String idUser);
}
