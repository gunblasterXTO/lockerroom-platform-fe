abstract class ApiResponse {
  final int statusCode;

  ApiResponse({required this.statusCode});
}

class FailResponse {
  final String status;
  final String detail;

  FailResponse({required this.status, required this.detail});

  factory FailResponse.fromJson(Map<String, dynamic> json) {
    return FailResponse(detail: json['detail'], status: json['status']);
  }
}
