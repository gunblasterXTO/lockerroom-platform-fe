import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lockerroom/modules/auth/model/register.dart';

class RemoteRegisterRepository {
  final String url;
  RemoteRegisterRepository({required this.url});

  Future<RegisterResponse> register(
    String username,
    String email,
    String password,
  ) async {
    final reqJson =
        RegisterRequest(username: username, email: email, password: password)
            .toJson();

    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(reqJson),
    );
    final Map<String, dynamic> bodyResp = jsonDecode(response.body);
    final resp = RegisterResponse.fromJson(response.statusCode, bodyResp);

    return resp;
  }
}
