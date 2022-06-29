import 'package:http/http.dart' as http;
import 'package:instagram/src/models/result.dart';

class BaseApi {
  static final headers = {
    "Accept": "application/json",
    "content-type": "application/json"
  };
  static headersWithAuthOther(String token) => {
        "Accept": "application/json",
        "content-type": "application/json",
        "Authorization": token,
      };
  static Future<XResult<String>> onConnectApiNoToken(
      {required String body, required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .post(Uri.parse(url), headers: headers, body: body)
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }

  static Future<XResult<String>> onPutApiNoToken(
      {required String body, required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .put(Uri.parse(url), headers: headers, body: body)
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }

  static Future<XResult<String>> onPutApiWithTokenOther(
      {required String body,
      required String url,
      required String token}) async {
    final http.Client client = http.Client();

    final response = await client
        .put(Uri.parse(url), headers: headersWithAuthOther(token), body: body)
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }
}
