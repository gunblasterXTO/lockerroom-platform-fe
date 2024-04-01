import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../common/helper/models.dart';
import '../model/login.dart';

class RemoteLoginRepository {
  final String url;
  RemoteLoginRepository({required this.url});

  Future<Map<String, dynamic>> login(String username, String password) async {
    final reqJson =
        LoginRequest(username: username, password: password).toJson();
    print(reqJson);
    try {
      var response = await http.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode(reqJson));
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) {
        final successResp = LoginResponse.fromJson(
            PostSuccessResponse(data: responseBody['data']).toJson());
        return successResp.toJson();
      } else {
        final failResp = FailResponse(
            status: responseBody['status'], detail: responseBody['detail']);
        return failResp.toJson();
      }
    } catch (e) {
      throw ('Error while getting data: $e');
    }
  }
}
