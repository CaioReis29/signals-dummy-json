import 'package:dartz/dartz.dart';
import 'package:dummy_project/global/exceptions/failure.dart';
abstract class LoginService {
  Future<Either<Failure, bool>>login(String userName, String password);
} 