import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/prefs.dart';

class PostRemoteDataSource {
  Future<bool> postPost({
    required List<PlatformFile> listFile,
    required int type,
    String? description,
  }) async {
    var uri = Uri.parse(ApiUrl.postPost);
    var request = http.MultipartRequest('POST', uri);

    request.headers["Authorization"] = Prefs.getTokenAccount();
    request.headers["content-type"] = "multipart/form-data";
    if (description != null) {
      request.fields["description"] = description;
    }

    request.fields["files"] = "files";
    request.fields['type'] = '$type';

    for (var item in listFile) {
      var file = await http.MultipartFile.fromPath("files", item.path!);
      request.files.add(file);
    }

    var response = await request.send();

    if (response.statusCode == 200 || response.statusCode == 201) {
      return true;
    } else {
      throw ServerException();
    }
  }
}
