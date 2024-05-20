
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dummy_project/global/api/api_client.dart';
import 'package:dummy_project/global/api/api_response.dart';
import 'package:dummy_project/global/constants/api_constants.dart';
import 'package:dummy_project/global/enums/method_type.dart';

class DioClient implements ApiClient{
  late Dio dioClient;

  DioClient() {
    dioClient = Dio()
    ..options.baseUrl = ApiConstants.baseUrl
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
    ));
  }

  @override
  void removeToken() {
    dioClient.options.headers.remove("Authorization");
  }

  @override
  void setToken(String token) {
    dioClient.options.headers["Authorization"] = "Bearer $token";
  }

  @override
  String handleException(Exception exception) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<T>> request<T>({
    required String path, 
    required MethodType method, 
    Map<String, dynamic>? payload, 
    Map<String, dynamic>? queryParameters, 
    T Function(Map<String, dynamic> json)? fromJson, 
    bool? showLoader}) async{
      ApiResponse<T> apiResponse;
      Response response;

      try {
        switch (method) {
          case MethodType.get:
            response = await dioClient.get(
              path,
              data: payload,
              queryParameters: queryParameters,
            );
            break;
          case MethodType.post:
            response = await dioClient.post(
              path,
              data: payload,
              queryParameters: queryParameters,
            );
            break;
            case MethodType.delete:
            response = await dioClient.delete(
              path,
              data: payload,
              queryParameters: queryParameters,
            );
            break;
            case MethodType.put:
            response = await dioClient.put(
              path,
              data: payload,
              queryParameters: queryParameters,
            );
            break;
            case MethodType.patch:
            response = await dioClient.patch(
              path,
              data: payload,
              queryParameters: queryParameters,
            );
            break;
        }

        apiResponse = ApiResponse(
          data: fromJson!(response.data),
          statusCode: response.statusCode.toString(),
          isSuccess: true,
        );
      } on DioException catch(e) {
        apiResponse = ApiResponse<T>.fromError(
          (e.response?.data["status_message"] ?? e.message).toString(), 
          (e.response?.data["status_code"] ?? e.response?.statusCode).toString(),
        );
      }
      log(apiResponse.toString(), name: 'api_response');
      return apiResponse;
  }
}