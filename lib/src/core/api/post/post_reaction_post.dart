import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/comment_model.dart';

class ReactionPostRemoteDataSource {
  Future<BaseData> postReactionPost({
    required String idPost,
  }) async {
    var body = jsonEncode({
      'idPost': idPost,
      'type': "Love",
    });

    var value = await BaseApi.onPostApiWithToken(
        body: body, url: ApiUrl.postReactionPost);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> removeReactionPost({
    required String idPost,
  }) async {
    var body = jsonEncode({
      'idPost': idPost,
      'type': "Love",
    });

    var value = await BaseApi.onRemoveApiWithToken(
        body: body, url: ApiUrl.removeReactionPost);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> removeReactionComment({
    required String idComment,
  }) async {
    var value = await BaseApi.onRemoveApiWithToken(
        url: ApiUrl.removeReactionComment(idComment));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> postHandleCountReaction({
    required String idPost,
  }) async {
    var value = await BaseApi.onPostApiWithToken(
        url: ApiUrl.postHandleCountReaction(idPost));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> postHandleTurnOffComment({
    required String idPost,
  }) async {
    var value = await BaseApi.onPostApiWithToken(
        url: ApiUrl.postHandleTurnOffComment(idPost));
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> postComment(
      {required String idPost, required String comment}) async {
    var body = jsonEncode({
      'idPost': idPost,
      'description': comment,
    });
    var value =
        await BaseApi.onPostApiWithToken(body: body, url: ApiUrl.postComment);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> postReactionComment(String idComment) async {
    var body = jsonEncode({
      'idComment': idComment,
      'type': "Love",
    });
    var value = await BaseApi.onPostApiWithToken(
        body: body, url: ApiUrl.postReactionComment);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }

  Future<List<XCommentData>> getComment(String idPost) async {
    var value = await BaseApi.onGetApiWithToken(url: ApiUrl.getComment(idPost));

    if (value.isSuccess) {
      var success = XComment.fromJson(json.decode(value.data ?? ""));

      return success.data!;
    } else {
      throw ServerException();
    }
  }
}
