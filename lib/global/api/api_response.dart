class ApiResponse<T> {
  T? data;
  String? statusCode;
  bool? isSuccess;
  String? statusMessage;

  ApiResponse({
    this.data,
    this.statusCode,
    this.isSuccess,
    this.statusMessage,
});

  @override
  String toString() => "ApiResponse<$T>{data: $data}, statusCode: $statusCode, success: $isSuccess, statusMessage: $statusMessage";

  factory ApiResponse.fromError(String message, String statusCode) {
    return ApiResponse(
      isSuccess: false,
      statusCode: statusCode,
      statusMessage: message,
    );
  }
}