import 'package:file_picker/file_picker.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/comment_model.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/models/result.dart';

abstract class PostRepository {
  Future<XResult<bool>> postPost({
    required List<PlatformFile> listFile,
    required int type,
    String? description,
  });
  Future<XResult<XPost>> getPost(int type, String idAccount);
  Future<XResult<BaseData>> postReactionPost(String idPost);
  Future<XResult<BaseData>> removeReactionPost(String idPost);
  Future<XResult<BaseData>> postHandleCountReaction(String idPost);
  Future<XResult<BaseData>> postHandleTurnOffComment(String idPost);
  Future<XResult<BaseData>> postComment(String idPost, String comment);
  Future<XResult<List<XCommentData>>> getComment(String idPost);
  Future<XResult<BaseData>> postReactionComment(String idComment);
  Future<XResult<BaseData>> removeReactionComment(String idComment);
  Future<XResult<List<XPostData>>> getPostHome(
    int type,
  );
}
