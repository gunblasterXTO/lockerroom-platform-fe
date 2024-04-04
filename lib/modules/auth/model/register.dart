import 'package:lockerroom/common/helper/models.dart';

class RegisterRequest {
  final String username;
  final String email;
  final String password;
  RegisterRequest({
    required this.username,
    required this.email,
    required this.password,
  });

  Map<String, String> toJson() {
    return {'username': username, 'email': email, 'password': password};
  }
}

class RegisterResponseSuccess {
  final String username;
  final String email;
  RegisterResponseSuccess({
    required this.username,
    required this.email,
  });

  factory RegisterResponseSuccess.fromJson(Map<String, dynamic> json) {
    return RegisterResponseSuccess(
      username: json['username'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
    };
  }
}

class RegisterResponse extends ApiResponse {
  final RegisterResponseSuccess? success;
  final FailResponse? fail;

  RegisterResponse({this.success, this.fail, required statusCode})
      : super(statusCode: statusCode);

  factory RegisterResponse.fromJson(int statusCode, Map<String, dynamic> json) {
    if (statusCode == 201) {
      return RegisterResponse(
        statusCode: statusCode,
        success: RegisterResponseSuccess.fromJson(json['data']),
      );
    } else {
      return RegisterResponse(
        statusCode: statusCode,
        fail: FailResponse.fromJson(json),
      );
    }
  }
}
