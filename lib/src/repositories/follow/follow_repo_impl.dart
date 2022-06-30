import 'package:instagram/src/core/api/follow/follow_api.dart';
import 'package:instagram/src/models/follow_model.dart';
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
}
