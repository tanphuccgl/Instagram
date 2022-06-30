import 'package:instagram/src/models/follow_model.dart';
import 'package:instagram/src/models/result.dart';

abstract class FollowRepository {
  Future<XResult<XFollow>> getFollowers();
  Future<XResult<XFollow>> getFollowing();
}
