import 'package:file_picker/file_picker.dart';
import 'package:instagram/src/core/api/post/get_post.dart';
import 'package:instagram/src/core/api/post/post_post.dart';
import 'package:instagram/src/core/api/post/post_reaction_post.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/comment_model.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/repositories/post/post_repo.dart';

class PostRepositoryImpl extends PostRepository {
  @override
  Future<XResult<List<XCommentData>>> getComment(String idPost) async {
    try {
      var data = await ReactionPostRemoteDataSource().getComment(idPost);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<XPost>> getPost(int type, String idAccount) async {
    try {
      var data = await GetPostRemoteDataSource().getPost(type, idAccount);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> postComment(String idPost, String comment) async {
    try {
      var data = await ReactionPostRemoteDataSource()
          .postComment(idPost: idPost, comment: comment);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> postHandleCountReaction(String idPost) async {
    try {
      var data = await ReactionPostRemoteDataSource()
          .postHandleCountReaction(idPost: idPost);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> postHandleTurnOffComment(String idPost) async {
    try {
      var data = await ReactionPostRemoteDataSource()
          .postHandleTurnOffComment(idPost: idPost);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<bool>> postPost(
      {required List<PlatformFile> listFile,
      required int type,
      String? description}) async {
    try {
      var data = await PostRemoteDataSource()
          .postPost(listFile: listFile, type: type, description: description);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> postReactionPost(String idPost) async {
    try {
      var data =
          await ReactionPostRemoteDataSource().postReactionPost(idPost: idPost);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> removeReactionPost(String idPost) async {
    try {
      var data = await ReactionPostRemoteDataSource()
          .removeReactionPost(idPost: idPost);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> postReactionComment(String idComment) async {
    try {
      var data =
          await ReactionPostRemoteDataSource().postReactionComment(idComment);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> removeReactionComment(String idComment) async {
    try {
      var data = await ReactionPostRemoteDataSource()
          .removeReactionComment(idComment: idComment);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<List<XPostData>>> getPostHome(int type) async {
    try {
      var data = await GetPostRemoteDataSource().getPostHome(
        type,
      );
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }
}
