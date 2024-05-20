
import 'package:dummy_project/global/api/api_response.dart';
import 'package:dummy_project/global/enums/method_type.dart';

abstract class ApiClient {
  Future<ApiResponse<T>> request<T>({
    required String path,
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? fromJson,
    bool? showLoader,
  });

  void removeToken();

  void setToken(String token);

  String handleException(Exception exception);
}