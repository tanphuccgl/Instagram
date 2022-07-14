import 'package:file_picker/file_picker.dart';
import 'package:instagram/src/core/api/post/get_post.dart';
import 'package:instagram/src/core/api/post/post_post.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/repositories/post/post_repo.dart';

class PostRepositoryImpl extends PostRepository {
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
  Future<XResult<List<XPostData>>> getPost(int type, String idAccount) async {
    try {
      var data = await GetPostRemoteDataSource().getPost(type, idAccount);
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }
}
