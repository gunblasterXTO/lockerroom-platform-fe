import 'package:lockerroom/common/helper/models.dart';

class LoginRequest {
  final String username;
  final String password;
  LoginRequest({required this.username, required this.password});

  Map<String, String> toJson() {
    return {'username': username, 'password': password};
  }
}

class LoginResponseSuccess {
  final String accessToken;
  final String tokenType;
  final num expiresIn;
  LoginResponseSuccess({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  factory LoginResponseSuccess.fromJson(Map<String, dynamic> json) {
    return LoginResponseSuccess(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      expiresIn: json['expires_in'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
    };
  }
}

class LoginResponse extends ApiResponse {
  final LoginResponseSuccess? success;
  final FailResponse? fail;

  LoginResponse({this.success, this.fail, required statusCode})
      : super(statusCode: statusCode);

  factory LoginResponse.fromJson(int statusCode, Map<String, dynamic> json) {
    if (statusCode >= 200 && statusCode < 300) {
      return LoginResponse(
        statusCode: statusCode,
        success: LoginResponseSuccess.fromJson(json['data']),
      );
    } else {
      return LoginResponse(
        statusCode: statusCode,
        fail: FailResponse.fromJson(json),
      );
    }
  }
}
