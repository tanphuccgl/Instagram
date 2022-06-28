import 'package:http/http.dart' as http;
import 'package:instagram/src/models/prefs.dart';
import 'package:instagram/src/models/result.dart';

class BaseApi {
  static final headers = {
    "Accept": "application/json",
    "content-type": "application/json"
  };
  static final headersWithToken = {
    "Accept": "application/json",
    "content-type": "application/json",
    "Authorization": Prefs.getTokenAccount(),
  };
  static Future<XResult<String>> onPostApiNoToken(
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

  static Future<XResult<String>> onPutApiWithToken(
      {required String body, required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .put(Uri.parse(url), headers: headersWithToken, body: body)
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }

  static Future<XResult<String>> onGetApiNoToken({required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .get(
          Uri.parse(url),
          headers: headers,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }

  static Future<XResult<String>> onGetApiWithToken(
      {required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .get(
          Uri.parse(url),
          headers: headersWithToken,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }
}
