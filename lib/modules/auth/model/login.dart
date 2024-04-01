class LoginRequest {
  final String username;
  final String password;
  LoginRequest({required this.username, required this.password});

  Map<String, String> toJson() {
    return {'username': username, 'password': password};
  }
}

class LoginResponse {
  final String accessToken;
  final String tokenType;
  final num expiresIn;
  LoginResponse(
      {required this.accessToken,
      required this.tokenType,
      required this.expiresIn});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        expiresIn: json['expires_in']);
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn
    };
  }
}
