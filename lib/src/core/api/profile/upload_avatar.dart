// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/prefs.dart';
import 'package:path/path.dart';

class UploadAvatarRemoteDataSource {
  Future<bool> uploadAvatar(File file) async {
    // ignore: deprecated_member_use
    var stream = http.ByteStream(DelegatingStream.typed(file.openRead()));

    var length = await file.length();
    var headers = {
      "content-type": "multipart/form-data",
      'Authorization': Prefs.getTokenAccount(),
    };
    var uri = Uri.parse(ApiUrl.postAvatar);
    var request = http.MultipartRequest("POST", uri);
    var multipartFile = http.MultipartFile('file', stream, length,
        contentType: MediaType(
          'image',
          'jpeg',
        ),
        filename: basename(file.path));
    request.headers.addAll(headers);
    request.files.add(multipartFile);
    var response = await request.send();
    response.stream.transform(utf8.decoder).listen((value) {});

    if (response.statusCode == 200 || response.statusCode == 201) {
      return true;
    } else {
      throw ServerException();
    }
  }

  Future<BaseData> removeAvatar() async {
    var value = await BaseApi.onRemoveApiWithToken(url: ApiUrl.removeAvatar);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }
}
