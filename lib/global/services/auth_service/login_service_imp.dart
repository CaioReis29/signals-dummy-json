
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy_project/global/constants/api_constants.dart';
import 'package:dummy_project/global/exceptions/failure.dart';
import 'package:dummy_project/global/services/auth_service/login_service.dart';

class LoginServiceImp implements LoginService {
  Dio dio =  Dio();

  @override
  Future<Either<Failure, bool>> login(String userName, String password) async {
    try {
      final data = {"username": userName, "password" : password};

    bool isSucess = false;

    final response = await dio.post(ApiConstants.loginUrl, data: data);

    if(response.statusCode == 200) isSucess = true;

    return Right(isSucess);
    } catch (e) {
      return Left(Failure());
    }
  }
}