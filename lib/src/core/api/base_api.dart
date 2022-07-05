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
  static headersWithAuthOther(String token) => {
        "Accept": "application/json",
        "content-type": "application/json",
        "Authorization": token,
      };

  // Post

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

  static Future<XResult<String>> onPostApiWithToken(
      {String? body, required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .post(Uri.parse(url), headers: headersWithToken, body: body)
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }

// Get

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

  static Future<XResult<String>> onGetApiNoToken2({required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .get(
          Uri.parse(url),
          headers: headers,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    }
    if (response.statusCode == 400) {
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

  // Put
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

  //Remove

  static Future<XResult<String>> onRemoveApiWithToken(
      {String? body, required String url}) async {
    final http.Client client = http.Client();

    final response = await client
        .delete(Uri.parse(url), headers: headersWithToken, body: body)
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return XResult.success(response.body);
    } else {
      return XResult.error('error');
    }
  }
}
