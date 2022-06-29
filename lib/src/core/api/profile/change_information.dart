import 'dart:convert';

import 'package:instagram/src/constants/my_api.dart';
import 'package:instagram/src/core/api/base_api.dart';
import 'package:instagram/src/core/error/exceptions.dart';
import 'package:instagram/src/models/base_data.dart';

class ChangeInformationRemoteDataSource {
  Future<BaseData> changeInformation({
    required String fullName,
    required String username,
    required String website,
    required String phoneNumber,
    required String bio,
  }) async {
    var body = jsonEncode({
      'fullName': fullName,
      'username': username,
      'phoneNumber': phoneNumber,
      'bio': bio,
      'dob': "${DateTime.now}",
      'website': website,
      'gender': true,
    });

    var value =
        await BaseApi.onPutApiWithToken(body: body, url: ApiUrl.putInformation);
    if (value.isSuccess) {
      var success = BaseData.fromJson(json.decode(value.data ?? ""));

      return success;
    } else {
      throw ServerException();
    }
  }
}
