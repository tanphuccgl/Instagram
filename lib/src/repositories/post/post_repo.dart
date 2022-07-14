import 'package:file_picker/file_picker.dart';
import 'package:instagram/src/models/post_model.dart';
import 'package:instagram/src/models/result.dart';

abstract class PostRepository {
  Future<XResult<bool>> postPost({
    required List<PlatformFile> listFile,
    required int type,
    String? description,
  });
  Future<XResult<List<XPostData>>> getPost(int type, String idAccount);
}
