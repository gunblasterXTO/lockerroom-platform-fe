import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/login.dart';

class RemoteLoginRepository {
  final String url;
  RemoteLoginRepository({required this.url});

  Future<LoginResponse> login(String username, String password) async {
    final reqJson =
        LoginRequest(username: username, password: password).toJson();

    var response = await http.post(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(reqJson));
    final Map<String, dynamic> bodyResp = jsonDecode(response.body);
    final resp = LoginResponse.fromJson(response.statusCode, bodyResp);

    return resp;
  }
}
